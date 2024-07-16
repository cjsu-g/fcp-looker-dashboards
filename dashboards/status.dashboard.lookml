---
- dashboard: status
  title: Status
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qyLYtFHK7vJVs3NKLXinlc
  elements:
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
      Created Time Minute Minute: apm_assigned.created_time_minute_minute
    row: 0
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
      Created Time Minute Minute: apm_upload_completed.created_time_minute_minute
    row: 7
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
  - name: Created Time Minute Minute
    title: Created Time Minute Minute
    type: field_filter
    default_value: 2024/06/26 22:57 to 2024/07/15 22:57
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
