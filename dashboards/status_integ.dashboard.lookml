---
- dashboard: status_integ
  title: Status Integ
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qyLYtFHK7vJVs3NKLXinlc
  elements:
  - title: Task
    name: Task
    model: fcp_integ
    explore: task
    type: looker_grid
    fields: [task.population_name, task.task_id, task.status, task.min_aggregation_size,
      task.max_aggregation_size, task.min_client_version, task.max_client_version,
      task.total_iteration, task.created_time_time]
    sorts: [task.created_time_time desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      task.task_id: 95
      task.status: 114
      task.min_aggregation_size: 165
      task.max_aggregation_size: 184
      task.min_client_version: 176
      task.max_client_version: 178
      task.total_iteration: 163
    defaults_version: 1
    listen:
      Created Time: task.created_time_time
      Population Name: task.population_name
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Iteration
    name: Iteration
    model: fcp_integ
    explore: iteration
    type: looker_grid
    fields: [iteration.population_name, iteration.task_id, iteration.iteration_id,
      iteration.status, iteration.report_goal, iteration.min_client_version, iteration.max_client_version,
      iteration.max_aggregation_size]
    sorts: [iteration.population_name, iteration.iteration_id desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    defaults_version: 1
    listen:
      Population Name: iteration.population_name
      Task ID: iteration.task_id
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Assigned Assignment Per Minute
    name: Assigned Assignment Per Minute
    model: fcp_integ
    explore: apm_assigned
    type: looker_line
    fields: [apm_assigned.created_time_minute_minute, apm_assigned.count_per_minute]
    fill_fields: [apm_assigned.created_time_minute_minute]
    sorts: [apm_assigned.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Task ID: apm_assigned.task_id
      Population Name: apm_assigned.population_name
      Created Time: apm_assigned.created_time_minute_minute
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Local Completed Assignment Per Minute
    name: Local Completed Assignment Per Minute
    model: fcp_integ
    explore: apm_local_completed
    type: looker_line
    fields: [apm_local_completed.count_per_minute, apm_local_completed.created_time_minute_minute]
    fill_fields: [apm_local_completed.created_time_minute_minute]
    sorts: [apm_local_completed.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_local_completed.task_id
      Population Name: apm_local_completed.population_name
      Created Time: apm_local_completed.created_time_minute_minute
    row: 19
    col: 0
    width: 24
    height: 7
  - title: Upload Completed Assignment Per Minute
    name: Upload Completed Assignment Per Minute
    model: fcp_integ
    explore: apm_upload_completed
    type: looker_line
    fields: [apm_upload_completed.count_per_minute, apm_upload_completed.created_time_minute_minute]
    fill_fields: [apm_upload_completed.created_time_minute_minute]
    sorts: [apm_upload_completed.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_upload_completed.task_id
      Population Name: apm_upload_completed.population_name
      Created Time: apm_upload_completed.created_time_minute_minute
    row: 26
    col: 0
    width: 24
    height: 7
  - title: Local Not Eligible Assignment Per Minute
    name: Local Not Eligible Assignment Per Minute
    model: fcp_integ
    explore: apm_local_not_eligible
    type: looker_line
    fields: [apm_local_not_eligible.count_per_minute, apm_local_not_eligible.created_time_minute_minute]
    fill_fields: [apm_local_not_eligible.created_time_minute_minute]
    sorts: [apm_local_not_eligible.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_local_not_eligible.task_id
      Population Name: apm_local_not_eligible.population_name
      Created Time: apm_local_not_eligible.created_time_minute_minute
    row: 33
    col: 0
    width: 24
    height: 7
  - title: Local Timeout Assignment Per Minute
    name: Local Timeout Assignment Per Minute
    model: fcp_integ
    explore: apm_local_timeout
    type: looker_line
    fields: [apm_local_timeout.count_per_minute, apm_local_timeout.created_time_minute_minute]
    fill_fields: [apm_local_timeout.created_time_minute_minute]
    sorts: [apm_local_timeout.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_local_timeout.task_id
      Population Name: apm_local_timeout.population_name
      Created Time: apm_local_timeout.created_time_minute_minute
    row: 47
    col: 0
    width: 24
    height: 7
  - title: Local Failed Assignment Per Minute
    name: Local Failed Assignment Per Minute
    model: fcp_integ
    explore: apm_local_not_eligible
    type: looker_line
    fields: [apm_local_not_eligible.count_per_minute, apm_local_not_eligible.created_time_minute_minute]
    fill_fields: [apm_local_not_eligible.created_time_minute_minute]
    sorts: [apm_local_not_eligible.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_local_not_eligible.task_id
      Population Name: apm_local_not_eligible.population_name
      Created Time: apm_local_not_eligible.created_time_minute_minute
    row: 54
    col: 0
    width: 24
    height: 7
  - title: Canceled Assignment Per Minute
    name: Canceled Assignment Per Minute
    model: fcp_integ
    explore: apm_canceled
    type: looker_line
    fields: [apm_canceled.count_per_minute, apm_canceled.created_time_minute_minute]
    fill_fields: [apm_canceled.created_time_minute_minute]
    sorts: [apm_canceled.created_time_minute_minute desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Task ID: apm_canceled.task_id
      Population Name: apm_canceled.population_name
      Created Time: apm_canceled.created_time_minute_minute
    row: 63
    col: 0
    width: 24
    height: 7
  filters:
  - name: Population Name
    title: Population Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: fcp_integ
    explore: apm_assigned
    listens_to_filters: []
    field: apm_assigned.population_name
  - name: Created Time
    title: Created Time
    type: field_filter
    default_value: 1 week
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fcp_integ
    explore: apm_assigned
    listens_to_filters: []
    field: apm_assigned.created_time_minute_minute
  - name: Task ID
    title: Task ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: fcp_integ
    explore: apm_assigned
    listens_to_filters: []
    field: apm_assigned.task_id
