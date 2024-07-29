---
- dashboard: model_metrics_integ
  title: Model Metrics Integ
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qyLYtFHK7vJVs3NKLXinlc
  elements:
  - name: model_metrics
    title: Model Metrics
    model: metric_integ
    explore: metric
    type: looker_line
    fields: [metric.metric_value, metric.iteration_id]
    filters:
      metric.metric_name: '"criteo_10m_100-1-server/client_work/train/auc-roc"'
    sorts: [metric.metric_value]
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
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    row: 0
    col: 0
    width: 24
    height: 6
