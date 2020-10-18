# MetaStruct

## MetaStruct::Graph

`MetaStruct::Graph` - directed acyclic graph. Realized as a representational data structure (without mutation interfaces).

### Graph Creation

- create `MetaStruct::Graph::Node`:

```ruby
MetaStruct::Graph::Node.create(
  uuid: _your_uuid_, # autogenerated via SecureRandom.uuid by default
  labels: _your_labels_, # [] by default
  properties: _your_properties_ # {} by default
)
```

- create `MetaStruct::Graph::Edge`:

```ruby
MetaStruct::Graph::Edge.create(
  left_node: _your_left_node_, # an instance of MetaStruct::Graph::Node
  right_node: _your_right_node_, # an instance of MetaStruct::Graph::Node
  labels: _your_labels_, # [] by default
  properties: _your_properties_, # {} by default
  weight: _your_weight_ # 0 by default
)
```

- build graph (`MetaStruct::Graph`):

```ruby
MetaStruct::Graph.create(
  nodes: _your_array_of_nodes_, # [] by default
  edges: _your_array_of_edges # [] by default
)
```

## Contributing

- Fork it ( https://github.com/0exp/meta_struct/fork )
- Create your feature branch (`git checkout -b feature/my-new-feature`)
- Commit your changes (`git commit -am '[my-new-featre] Add some feature'`)
- Push to the branch (`git push origin feature/my-new-feature`)
- Create new Pull Request

## License

Released under MIT License.

## Authors

[Rustam Ibragimov](https://github.com/0exp)
