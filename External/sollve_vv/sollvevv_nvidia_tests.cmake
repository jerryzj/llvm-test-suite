message(STATUS "Using SOLLVE V&V tests known to work with Clang/Flang on Nvidia GPUs")
set(TEST_SUITE_SOLLVEVV_TESTS
  4.5/application_kernels/alpaka_complex_template.cpp
  4.5/application_kernels/gemv_target.cpp
  4.5/application_kernels/gemv_target_many_matrices.cpp
  4.5/application_kernels/gemv_target_reduction.cpp
  4.5/application_kernels/gemv_target_teams_dist_par_for.cpp
  4.5/application_kernels/gridmini_map_struct_float_mul.cpp
  4.5/application_kernels/linked_list.c
  4.5/application_kernels/mmm_target.c
  4.5/application_kernels/mmm_target_parallel_for_simd.c
  4.5/application_kernels/omp_default_device.c
  4.5/application_kernels/qmcpack_target_math.c
  4.5/application_kernels/reduction_separated_directives.c
  4.5/application_kernels/reduction_separated_directives.cpp
  4.5/declare_target/test_declare_target_end_declare_target.c
  4.5/declare_target/test_declare_target_extended_list.c
  4.5/declare_target/test_declare_target_link_extended_list.c
  4.5/declare_target/test_declare_target_to_extended_list.c
  4.5/offloading_success.c
  4.5/offloading_success.cpp
  4.5/target/test_target_defaultmap.c
  4.5/target/test_target_depends.c
  4.5/target/test_target_device.c
  4.5/target/test_target_firstprivate.c
  4.5/target/test_target_if.c
  4.5/target/test_target_is_device_ptr.c
  4.5/target/test_target_map_array_default.c
  4.5/target/test_target_map_classes_default.cpp
  4.5/target/test_target_map_global_arrays.c
  4.5/target/test_target_map_local_array.c
  4.5/target/test_target_map_pointer.c
  4.5/target/test_target_map_pointer_no_map_type_modifier.c
  4.5/target/test_target_map_scalar_no_map_type_modifier.c
  4.5/target/test_target_map_struct_default.c
  4.5/target/test_target_map_zero_length_pointer.c
  4.5/target/test_target_private.c
  4.5/target_data/test_target_data_if.c
  4.5/target_data/test_target_data_map_alloc.c
  4.5/target_data/test_target_data_map_array_sections.c
  4.5/target_data/test_target_data_map_classes.cpp
  4.5/target_data/test_target_data_map_devices.c
  4.5/target_data/test_target_data_map_from.c
  4.5/target_data/test_target_data_map_pointer_translation.c
  4.5/target_data/test_target_data_map_to.c
  4.5/target_data/test_target_data_map_to_from.c
  4.5/target_data/test_target_data_map_tofrom.c
  4.5/target_data/test_target_data_pointer_swap.c
  4.5/target_data/test_target_data_use_device_ptr.c
  4.5/target_enter_data/test_target_enter_data_classes_inheritance.cpp
  4.5/target_enter_data/test_target_enter_data_classes_simple.cpp
  4.5/target_enter_data/test_target_enter_data_depend.c
  4.5/target_enter_data/test_target_enter_data_devices.c
  4.5/target_enter_data/test_target_enter_data_global_array.c
  4.5/target_enter_data/test_target_enter_data_if.c
  4.5/target_enter_data/test_target_enter_data_malloced_array.c
  4.5/target_enter_data/test_target_enter_data_struct.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_classes_complex.cpp
  4.5/target_enter_exit_data/test_target_enter_exit_data_classes_simple.cpp
  4.5/target_enter_exit_data/test_target_enter_exit_data_depend.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_devices.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_if.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_map_global_array.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_map_malloced_array.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_map_pointer_translation.c
  4.5/target_enter_exit_data/test_target_enter_exit_data_struct.c
  4.5/target_parallel/test_target_parallel.c
  4.5/target_simd/test_nested_target_simd.c
  4.5/target_simd/test_target_simd.c
  4.5/target_simd/test_target_simd_collapse.c
  4.5/target_simd/test_target_simd_safelen.c
  4.5/target_simd/test_target_simd_simdlen.c
  4.5/target_teams_distribute/test_target_teams_distribute.c
  4.5/target_teams_distribute/test_target_teams_distribute_collapse.c
  4.5/target_teams_distribute/test_target_teams_distribute_default_none.c
  4.5/target_teams_distribute/test_target_teams_distribute_default_shared.c
  4.5/target_teams_distribute/test_target_teams_distribute_defaultmap.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_array_section.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_disjoint_section.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_in_in.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_in_out.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_list.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_out_in.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_out_out.c
  4.5/target_teams_distribute/test_target_teams_distribute_depend_unused_data.c
  4.5/target_teams_distribute/test_target_teams_distribute_device.c
  4.5/target_teams_distribute/test_target_teams_distribute_dist_schedule.c
  4.5/target_teams_distribute/test_target_teams_distribute_firstprivate.c
  4.5/target_teams_distribute/test_target_teams_distribute_if.c
  4.5/target_teams_distribute/test_target_teams_distribute_is_device_ptr.c
  4.5/target_teams_distribute/test_target_teams_distribute_lastprivate.c
  4.5/target_teams_distribute/test_target_teams_distribute_map.c
  4.5/target_teams_distribute/test_target_teams_distribute_nowait.c
  4.5/target_teams_distribute/test_target_teams_distribute_num_teams.c
  4.5/target_teams_distribute/test_target_teams_distribute_private.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_add.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_and.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_bitand.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_bitor.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_bitxor.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_max.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_min.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_multiply.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_or.c
  4.5/target_teams_distribute/test_target_teams_distribute_reduction_subtract.c
  4.5/target_teams_distribute/test_target_teams_distribute_shared.c
  4.5/target_teams_distribute/test_target_teams_distribute_thread_limit.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_defaultmap.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_devices.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_firstprivate.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_map_default.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_map_from.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_map_to.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_map_tofrom.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_num_teams.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_private.c
  4.5/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_schedule_private.c
  4.5/target_update/test_target_update_depend.c
  4.5/target_update/test_target_update_devices.c
  4.5/target_update/test_target_update_from.c
  4.5/target_update/test_target_update_if.c
  4.5/target_update/test_target_update_to.c
  4.5/task/test_target_and_task_nowait.c
  4.5/task/test_task_target.c
  5.0/allocate/test_allocate.c
  5.0/application_kernels/declare_target_base_and_derived_class.cpp
  5.0/application_kernels/declare_target_base_class.cpp
  5.0/application_kernels/gridmini_map_class.cpp
  5.0/application_kernels/gridmini_map_struct_array.cpp
  5.0/application_kernels/gridmini_map_struct_float_mul.cpp
  5.0/application_kernels/gridmini_map_template.cpp
  5.0/application_kernels/gridmini_map_template_array.cpp
  5.0/application_kernels/gridmini_ptr.cpp
  5.0/application_kernels/lsms_triangular_packing.cpp
  5.0/atomic/test_atomic_acquire_release.c
  5.0/atomic/test_atomic_hint.c
  5.0/atomic/test_atomic_num_hint.c
  5.0/atomic/test_atomic_num_hint_device.c
  5.0/declare_mapper/test_declare_mapper_target_struct.c
  5.0/declare_target/test_declare_target_device_type_any.c
  5.0/declare_target/test_declare_target_device_type_host.c
  5.0/declare_target/test_declare_target_device_type_nohost.c
  5.0/declare_target/test_declare_target_nested.c
  5.0/declare_target/test_declare_target_parallel_for.c
  5.0/declare_target/test_nested_declare_target.c
  5.0/declare_variant/test_declare_variant.c
  5.0/depobj/test_depobj_depend_update_destroy.cpp
  5.0/flush/test_flush_no_memory_order_clause.c
  5.0/loop/test_loop_bind.c
  5.0/loop/test_loop_collapse.c
  5.0/loop/test_loop_collapse_device.c
  5.0/loop/test_loop_lastprivate.c
  5.0/loop/test_loop_lastprivate_device.c
  5.0/loop/test_loop_nested.c
  5.0/loop/test_loop_order_concurrent.c
  5.0/loop/test_loop_order_concurrent_device.c
  5.0/loop/test_loop_private.c
  5.0/loop/test_loop_private_device.c
  5.0/loop/test_loop_reduction_add.c
  5.0/loop/test_loop_reduction_add_device.c
  5.0/loop/test_loop_reduction_add_mod.c
  5.0/loop/test_loop_reduction_and.c
  5.0/loop/test_loop_reduction_and_device.c
  5.0/loop/test_loop_reduction_bitand.c
  5.0/loop/test_loop_reduction_bitand_device.c
  5.0/loop/test_loop_reduction_bitor.c
  5.0/loop/test_loop_reduction_bitor_device.c
  5.0/loop/test_loop_reduction_bitxor.c
  5.0/loop/test_loop_reduction_bitxor_device.c
  5.0/loop/test_loop_reduction_max.c
  5.0/loop/test_loop_reduction_max_device.c
  5.0/loop/test_loop_reduction_min.c
  5.0/loop/test_loop_reduction_min_device.c
  5.0/loop/test_loop_reduction_multiply.c
  5.0/loop/test_loop_reduction_multiply_device.c
  5.0/loop/test_loop_reduction_or.c
  5.0/loop/test_loop_reduction_or_device.c
  5.0/loop/test_loop_reduction_subtract.c
  5.0/loop/test_loop_reduction_subtract_device.c
  5.0/master_taskloop/test_master_taskloop.c
  5.0/master_taskloop/test_master_taskloop_device.c
  5.0/master_taskloop_simd/test_master_taskloop_simd.c
  5.0/master_taskloop_simd/test_master_taskloop_simd_device.c
  5.0/metadirective/test_metadirective_arch_is_nvidia.c
  5.0/metadirective/test_metadirective_arch_nvidia_or_amd.c
  5.0/parallel_for/test_parallel_for_allocate.c
  5.0/parallel_for/test_parallel_for_notequals.c
  5.0/parallel_for/test_parallel_for_order_concurrent.c
  5.0/parallel_for_simd/test_parallel_for_simd_atomic.c
  5.0/parallel_master/test_parallel_master.c
  5.0/parallel_master/test_parallel_master_device.c
  5.0/parallel_master_taskloop/test_parallel_master_taskloop.c
  5.0/parallel_master_taskloop/test_parallel_master_taskloop_device.c
  5.0/parallel_master_taskloop_simd/test_parallel_master_taskloop_simd.c
  5.0/parallel_master_taskloop_simd/test_parallel_master_taskloop_simd_device.c
  5.0/program_control/test_capture_omp_affinity.c
  5.0/program_control/test_omp_get_device_num.c
  5.0/program_control/test_omp_get_supported_active_levels.c
  5.0/program_control/test_omp_target_offload_env_DEFAULT.c
  5.0/program_control/test_omp_target_offload_env_DISABLED.c
  5.0/program_control/test_omp_target_offload_env_MANDATORY.c
  5.0/program_control/test_set_and_get_omp_affinity.c
  5.0/requires/test_requires_atomic_default_mem_order_acq_rel.c
  5.0/requires/test_requires_atomic_default_mem_order_relaxed.c
  5.0/requires/test_requires_atomic_default_mem_order_seq_cst.c
  5.0/requires/test_requires_unified_address.c
  5.0/scan/test_scan.c
  5.0/simd/test_simd_if.c
  5.0/simd/test_simd_nontemporal.c
  5.0/simd/test_simd_order_concurrent.c
  5.0/target/test_target_defaultmap_default.c
  5.0/target/test_target_defaultmap_none.c
  5.0/target/test_target_defaultmap_to_from_tofrom.c
  5.0/target/test_target_imperfect_loop.c
  5.0/target/test_target_in_reduction.c
  5.0/target/test_target_map_classes_default.cpp
  5.0/target/test_target_map_with_close_modifier.c
  5.0/target/test_target_mapping_before_alloc.c
  5.0/target/test_target_parallel_for_notequals.c
  5.0/target/test_target_task_depend_mutexinoutset.c
  5.0/target/test_target_uses_allocators_cgroup.c
  5.0/target/test_target_uses_allocators_default.c
  5.0/target/test_target_uses_allocators_high_bw.c
  5.0/target/test_target_uses_allocators_large_cap.c
  5.0/target/test_target_uses_allocators_low_lat.c
  5.0/target/test_target_uses_allocators_pteam.c
  5.0/target/test_target_uses_allocators_thread.c
  5.0/target_data/test_target_data_use_device_addr.c
  5.0/target_data/test_target_data_use_device_ptr.c
  5.0/target_loop/test_target_loop_teams_distribute.cpp
  5.0/target_requires/test_target_requires_atomic_default_mem_order_relaxed.c
  5.0/target_simd/test_target_simd_if.c
  5.0/target_simd/test_target_simd_nontemporal.c
  5.0/target_simd/test_target_simd_order_concurrent.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_add.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_and.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_bitand.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_bitor.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_bitxor.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_max.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_min.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_multiply.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_or.c
  5.0/target_teams_distribute/test_target_teams_distribute_reduction_subtract.c
  5.0/target_teams_distribute_parallel_for/test_target_teams_distribute_parallel_for_collapse.c
  5.0/target_teams_distribute_parallel_for_simd/test_target_teams_distribute_parallel_for_simd_atomic.c
  5.0/task/test_parallel_for_reduction_task.c
  5.0/task/test_task_affinity.c
  5.0/task/test_task_depend_iterator.cpp
  5.0/task/test_task_depend_mutexinoutset.c
  5.0/task/test_task_detach.c
  5.0/task/test_task_in_reduction.c
  5.0/task/test_task_in_reduction_dynamically_enclosed.c
  5.0/taskgroup/test_taskgroup_task_reduction.c
  5.0/taskloop/test_taskloop_in_reduction.c
  5.0/taskloop/test_taskloop_reduction.c
  5.0/taskloop_simd/test_taskloop_simd_in_reduction.c
  5.0/taskloop_simd/test_taskloop_simd_reduction.c
  5.0/teams/test_team_default_shared.c
  5.0/teams/test_teams.c
  5.0/teams/test_teams_distribute_default_none.c
  5.0/teams_loop/test_target_teams_loop_collapse.c
  5.0/teams_loop/test_target_teams_loop_device.c
  5.0/teams_loop/test_target_teams_loop_nowait.c
  5.0/teams_loop/test_target_teams_loop_reduction.c
  5.1/allocate/test_allocate_allocator_align.c
  5.1/allocate/test_calloc_host.c
  5.1/allocate/test_omp_aligned_alloc_host.c
  5.1/allocate/test_omp_alloctrait_key.c
  5.1/assume/test_assumes_contains.c
  5.1/assume/test_begin_end_assumes_contains.c
  5.1/cpp_attribute_specifier/test_cpp_attribute_specifier.cpp
  5.1/declare_variant/test_begin_end_declare_variant.c
  5.1/default/test_default_firstprivate_parallel.c
  5.1/default/test_default_firstprivate_taskloop.c
  5.1/default/test_task_default_firstprivate.c
  5.1/default/test_task_default_private.c
  5.1/default/test_task_target_default_firstprivate.c
  5.1/depend/test_depend_inout_omp_all_memory.c
  5.1/depend/test_depend_inoutset.c
  5.1/depend/test_target_depend_out_omp_all_memory.c
  5.1/error/test_error_at_execution.c
  5.1/error/test_error_message.c
  5.1/error/test_error_message_at_compilation.c
  5.1/error/test_error_message_at_execution.c
  5.1/error/test_error_severity_warning.c
  5.1/interop/test_interop_target.c
  5.1/loop/test_full_loop_unroll.c
  5.1/loop/test_loop_unroll.c
  5.1/loop/test_partial_loop_unroll.c
  5.1/masked/test_masked.c
  5.1/masked/test_masked_filter.c
  5.1/memory_routines/test_get_mapped_ptr.c
  5.1/metadirective/test_metadirective_nothing.c
  5.1/order/test_loop_order_reproducible.c
  5.1/order/test_loop_order_unconstrained.c
  5.1/order/test_parallel_for_order_reproducible.c
  5.1/order/test_parallel_for_order_unconstrained.c
  5.1/order/test_taskloop_simd_order_reproducible_device.c
  5.1/order/test_taskloop_simd_order_unconstrained_device.c
  5.1/runtime_calls/test_omp_display_env.c
  5.1/runtime_calls/test_teams_region_routines.c
  5.1/target/test_target_defaultmap_present_aggregate.c
  5.1/target/test_target_defaultmap_present_pointer.c
  5.1/target/test_target_has_device_addr.c
  5.1/target/test_target_map_present_ordering.c
  5.1/target/test_target_map_with_present_modifier.c
  5.1/target/test_target_memcpy_rect_async_depobj.c
  5.1/target/test_target_memcpy_rect_async_no_obj.c
  5.1/target_update/test_target_update_to_present.c
  5.1/taskloop/test_taskloop_grainsize_strict.c
  5.1/taskloop/test_taskloop_numtask_strict.c
  5.1/taskwait/test_task_nowait.c
  5.1/teams/test_target_teams_default_firstprivate.c
  5.1/teams/test_target_teams_thread_limit.c
  5.1/tile/test_tile.c
  5.2/metadirective/test_metadirective_otherwise.c
  5.2/misc/test_printf_in_target_region.c
  5.2/runtime_calls/test_omp_in_explicit_task.c
  4.5/offloading_success.F90
  4.5/application_kernels/declare_target_subroutine.F90
  5.0/atomic/test_atomic_acquire_release.F90
  5.0/atomic/test_atomic_hint.F90
  5.0/atomic/test_atomic_num_hint_device.F90
  5.0/atomic/test_atomic_num_hint.F90
  4.5/target_simd/test_nested_target_simd.F90
  5.2/implementation_defined/test_ompx_free.F90
  5.2/implementation_defined/test_omx_fixed.F
  5.0/parallel_for_simd/test_parallel_for_simd_atomic.F90
  5.2/misc/test_print_in_target_region.F90
  5.0/requires/test_requires_atomic_default_mem_order_acq_rel.F90
  5.0/requires/test_requires_atomic_default_mem_order_relaxed.F90
  5.0/requires/test_requires_atomic_default_mem_order_seq_cst.F90
  5.0/simd/test_simd_if.F90
  4.5/target_data/test_target_data_map.F90
  4.5/target/test_target_depends.F90
  4.5/target_enter_data/test_target_enter_data_allocate_array_alloc.F90
  4.5/target_enter_data/test_target_enter_data_allocate_array_to.F90
  4.5/target_enter_data/test_target_enter_data_if.F90
  4.5/target_enter_data/test_target_enter_data_module_array.F90
  4.5/target_enter_data/test_target_enter_data_set_default_device.F90
  4.5/target_enter_exit_data/test_target_enter_exit_data_allocate_array_alloc_delete.F90
  4.5/target_enter_exit_data/test_target_enter_exit_data_if.F90
  4.5/target_enter_exit_data/test_target_enter_exit_data_module_array.F90
  4.5/target_enter_exit_data/test_target_enter_exit_data_set_default_device.F90
  4.5/target/test_target_map_module_array.F90
  4.5/target/test_target_map_pointer_default.F90
  4.5/target/test_target_map_pointer.F90
  4.5/target/test_target_map_program_arrays.F90
  4.5/target/test_target_map_scalar_default.F90
  4.5/target/test_target_map_subroutines_arrays.F90
  4.5/target_parallel/test_target_parallel.F90
  4.5/target_simd/test_target_simd_collapse.F90
  4.5/target_simd/test_target_simd.F90
  4.5/target_simd/test_target_simd_safelen.F90
  4.5/target_simd/test_target_simd_simdlen.F90
  4.5/target_update/test_target_update_from.F90
  4.5/target_update/test_target_update_if.F90
  4.5/target_update/test_target_update_to.F90
)
