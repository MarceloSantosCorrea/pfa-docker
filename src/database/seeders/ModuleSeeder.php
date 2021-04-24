<?php

namespace Database\Seeders;

use App\Models\Module;
use Illuminate\Database\Seeder;

class ModuleSeeder extends Seeder
{
    public function run()
    {
        $modules = [
            'Docker',
            'Fundamentos de Arquitetura de Software',
            'Comunicação',
            'RabbitMQ',
            'Autenticação e Keycloak',
            'Domain Driven Design e Arquitetura hexagonal',
            'Arquitetura do projeto prático - Codeflix',
            'Microsserviço: Catálogo de vídeos com Laravel ( Back-end )',
            'Microsserviço: Catálogo de vídeos com React ( Front-end )',
            'Microsserviço de Encoder de Vídeo com Go Lang',
            'Microsserviço - API do Catálogo com Node.JS (Back-end)',
            'Microsserviço - Aplicação do Assinante com React.js (Front-end)',
            'Autenticação entre os microsserviços',
        ];
        foreach ($modules as $module) {
            Module::factory()->create([
                'name' => $module,
            ]);
        }
    }
}
