@extends('layouts.indexa')

@section('titulo', '::: Patin Paracao')

@section('brander')
    <a class="navbar-brand" href="#">
        <img src="assets/img/AdminLTELogo.png" class="img-fluid avatar" alt="">
    </a>
@endsection

@section('items_nav')
    <li class="nav-item">
        <a class="nav-link" href="{{ route('login') }}">Iniciar Sesion</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('register') }}">Registrarse</a>
    </li>
@endsection

{{-- @section('hero')
@endsection --}}

@section('descripcion')
@livewire('consultindex')
@endsection

@section('firma')
by Exequiel Polito Acosta &copy; 2023
@endsection
