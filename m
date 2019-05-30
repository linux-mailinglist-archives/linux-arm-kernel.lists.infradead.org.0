Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586972F88F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 10:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qwWf7CT62b3kTqXjikYGXAQFhA7liBBoZDDgxgm/IA=; b=MhCt/q35oWJDWA
	/fv+CL/xD+UDbDqTczTkXkn6D4WcHnD/+xevw4yxFGCiLSjKNdZsgVpaEcStx56RLEAQnpDoF68NI
	2Xo903zhXuTKtTnEAFYQr0UTqS7wKimOg/5v7HEefd5B4twq1hbdwdhSVTosAHDs1wNQrTNWYMOgi
	3MU840DPptPRzi0He4lY8Tfqbh46bq1aWPbmnS0H8A2uoMKSeXlyfYLDDuF1YDBvEgIKChhD/tbW3
	7lT+Zp2p0XxXu2IGDUTXnehII350L5JHvy+uu74NAQZz1T5c6YqTOJQTn3UvQecMVs9yRXLyf87s3
	8DoJzHLUp2BzHzA6j7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWGSC-0004LL-B5; Thu, 30 May 2019 08:30:28 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGS4-0004KT-Fq
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 08:30:23 +0000
Received: by mail-wm1-f66.google.com with SMTP id u78so3344245wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 01:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pIqrbsE6/Nv/138vVdlcEQnoXvw/3uCQiUSd/l1oIaY=;
 b=e/TdfrYormPMJIQziGaFZYzDK94q4tjXri81DyJSoTjC5EQmrf7oRzjF0VkA1XaRJW
 JnDfkxYoj1XYcbzWgsnHyGYgWZghZiVETAIQtSdNESgX8We1uZ7IHwIQ9SbPLCN+e8cR
 USf02X9NcMwSUi+QyW2Ynn5Ua2vSR+QbIJYXfEVdNgHgcom97xtBw3zSdDZ/L6jiiFMA
 64MOJjWeNQObOmYgvf61W2my0OF/5Pz5KFanLkF3CDfWU1X5ALd5qU0vqgcA1kB6ugcZ
 ZLB9wHv/2uCUJaOPO+z1Uf/0LBTWmklynV5htRNCpK52hMlpQaKehdGWtFR/ddPFq6gP
 0h8Q==
X-Gm-Message-State: APjAAAVwzb9elC1vqXaOyx7onmmfyvT/St60gm/p/0dhjJF19kBIS3Kt
 QnrjlOQSEdS8BS7pjwOVlLfQ2Q==
X-Google-Smtp-Source: APXvYqxguQuxTuphnJ9ISpnJqaH4xcMLu4CCyeeLtDHqpdu4VJX+hsaHIz6Atqsiq1kkBiYITPXGpg==
X-Received: by 2002:a7b:c043:: with SMTP id u3mr910083wmc.56.1559205017089;
 Thu, 30 May 2019 01:30:17 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3da1:318a:275c:408?
 ([2001:b07:6468:f312:3da1:318a:275c:408])
 by smtp.gmail.com with ESMTPSA id y8sm1688765wmi.8.2019.05.30.01.30.15
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 01:30:16 -0700 (PDT)
Subject: Re: [PATCH 09/22] docs: mark orphan documents as such
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1559171394.git.mchehab+samsung@kernel.org>
 <e0bf4e767dd5de9189e5993fbec2f4b1bafd2064.1559171394.git.mchehab+samsung@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <ea534992-07ff-15d8-e48b-5fde37c88f73@redhat.com>
Date: Thu, 30 May 2019 10:30:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e0bf4e767dd5de9189e5993fbec2f4b1bafd2064.1559171394.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_013020_530438_E5CE0459 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, David Airlie <airlied@linux.ie>,
 Andrew Donnellan <ajd@linux.ibm.com>, linux-pm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matan Ziv-Av <matan@svgalib.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/19 01:23, Mauro Carvalho Chehab wrote:
> Sphinx doesn't like orphan documents:
> 
>     Documentation/accelerators/ocxl.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/overview.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/stm32f429-overview.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/stm32f746-overview.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/stm32f769-overview.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/stm32h743-overview.rst: WARNING: document isn't included in any toctree
>     Documentation/arm/stm32/stm32mp157-overview.rst: WARNING: document isn't included in any toctree
>     Documentation/gpu/msm-crash-dump.rst: WARNING: document isn't included in any toctree
>     Documentation/interconnect/interconnect.rst: WARNING: document isn't included in any toctree
>     Documentation/laptops/lg-laptop.rst: WARNING: document isn't included in any toctree
>     Documentation/powerpc/isa-versions.rst: WARNING: document isn't included in any toctree
>     Documentation/virtual/kvm/amd-memory-encryption.rst: WARNING: document isn't included in any toctree
>     Documentation/virtual/kvm/vcpu-requests.rst: WARNING: document isn't included in any toctree
> 
> So, while they aren't on any toctree, add :orphan: to them, in order
> to silent this warning.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Please leave out KVM, I'll fix that instead.  Thanks for the report!

Paolo

> ---
>  Documentation/accelerators/ocxl.rst                 | 2 ++
>  Documentation/arm/stm32/overview.rst                | 2 ++
>  Documentation/arm/stm32/stm32f429-overview.rst      | 2 ++
>  Documentation/arm/stm32/stm32f746-overview.rst      | 2 ++
>  Documentation/arm/stm32/stm32f769-overview.rst      | 2 ++
>  Documentation/arm/stm32/stm32h743-overview.rst      | 2 ++
>  Documentation/arm/stm32/stm32mp157-overview.rst     | 2 ++
>  Documentation/gpu/msm-crash-dump.rst                | 2 ++
>  Documentation/interconnect/interconnect.rst         | 2 ++
>  Documentation/laptops/lg-laptop.rst                 | 2 ++
>  Documentation/powerpc/isa-versions.rst              | 2 ++
>  Documentation/virtual/kvm/amd-memory-encryption.rst | 2 ++
>  Documentation/virtual/kvm/vcpu-requests.rst         | 2 ++
>  13 files changed, 26 insertions(+)
> 
> diff --git a/Documentation/accelerators/ocxl.rst b/Documentation/accelerators/ocxl.rst
> index 14cefc020e2d..b1cea19a90f5 100644
> --- a/Documentation/accelerators/ocxl.rst
> +++ b/Documentation/accelerators/ocxl.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  ========================================================
>  OpenCAPI (Open Coherent Accelerator Processor Interface)
>  ========================================================
> diff --git a/Documentation/arm/stm32/overview.rst b/Documentation/arm/stm32/overview.rst
> index 85cfc8410798..f7e734153860 100644
> --- a/Documentation/arm/stm32/overview.rst
> +++ b/Documentation/arm/stm32/overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  ========================
>  STM32 ARM Linux Overview
>  ========================
> diff --git a/Documentation/arm/stm32/stm32f429-overview.rst b/Documentation/arm/stm32/stm32f429-overview.rst
> index 18feda97f483..65bbb1c3b423 100644
> --- a/Documentation/arm/stm32/stm32f429-overview.rst
> +++ b/Documentation/arm/stm32/stm32f429-overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  STM32F429 Overview
>  ==================
>  
> diff --git a/Documentation/arm/stm32/stm32f746-overview.rst b/Documentation/arm/stm32/stm32f746-overview.rst
> index b5f4b6ce7656..42d593085015 100644
> --- a/Documentation/arm/stm32/stm32f746-overview.rst
> +++ b/Documentation/arm/stm32/stm32f746-overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  STM32F746 Overview
>  ==================
>  
> diff --git a/Documentation/arm/stm32/stm32f769-overview.rst b/Documentation/arm/stm32/stm32f769-overview.rst
> index 228656ced2fe..f6adac862b17 100644
> --- a/Documentation/arm/stm32/stm32f769-overview.rst
> +++ b/Documentation/arm/stm32/stm32f769-overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  STM32F769 Overview
>  ==================
>  
> diff --git a/Documentation/arm/stm32/stm32h743-overview.rst b/Documentation/arm/stm32/stm32h743-overview.rst
> index 3458dc00095d..c525835e7473 100644
> --- a/Documentation/arm/stm32/stm32h743-overview.rst
> +++ b/Documentation/arm/stm32/stm32h743-overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  STM32H743 Overview
>  ==================
>  
> diff --git a/Documentation/arm/stm32/stm32mp157-overview.rst b/Documentation/arm/stm32/stm32mp157-overview.rst
> index 62e176d47ca7..2c52cd020601 100644
> --- a/Documentation/arm/stm32/stm32mp157-overview.rst
> +++ b/Documentation/arm/stm32/stm32mp157-overview.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  STM32MP157 Overview
>  ===================
>  
> diff --git a/Documentation/gpu/msm-crash-dump.rst b/Documentation/gpu/msm-crash-dump.rst
> index 757cd257e0d8..240ef200f76c 100644
> --- a/Documentation/gpu/msm-crash-dump.rst
> +++ b/Documentation/gpu/msm-crash-dump.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  =====================
>  MSM Crash Dump Format
>  =====================
> diff --git a/Documentation/interconnect/interconnect.rst b/Documentation/interconnect/interconnect.rst
> index c3e004893796..56e331dab70e 100644
> --- a/Documentation/interconnect/interconnect.rst
> +++ b/Documentation/interconnect/interconnect.rst
> @@ -1,5 +1,7 @@
>  .. SPDX-License-Identifier: GPL-2.0
>  
> +:orphan:
> +
>  =====================================
>  GENERIC SYSTEM INTERCONNECT SUBSYSTEM
>  =====================================
> diff --git a/Documentation/laptops/lg-laptop.rst b/Documentation/laptops/lg-laptop.rst
> index aa503ee9b3bc..f2c2ffe31101 100644
> --- a/Documentation/laptops/lg-laptop.rst
> +++ b/Documentation/laptops/lg-laptop.rst
> @@ -1,5 +1,7 @@
>  .. SPDX-License-Identifier: GPL-2.0+
>  
> +:orphan:
> +
>  LG Gram laptop extra features
>  =============================
>  
> diff --git a/Documentation/powerpc/isa-versions.rst b/Documentation/powerpc/isa-versions.rst
> index 812e20cc898c..66c24140ebf1 100644
> --- a/Documentation/powerpc/isa-versions.rst
> +++ b/Documentation/powerpc/isa-versions.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  CPU to ISA Version Mapping
>  ==========================
>  
> diff --git a/Documentation/virtual/kvm/amd-memory-encryption.rst b/Documentation/virtual/kvm/amd-memory-encryption.rst
> index 659bbc093b52..33d697ab8a58 100644
> --- a/Documentation/virtual/kvm/amd-memory-encryption.rst
> +++ b/Documentation/virtual/kvm/amd-memory-encryption.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  ======================================
>  Secure Encrypted Virtualization (SEV)
>  ======================================
> diff --git a/Documentation/virtual/kvm/vcpu-requests.rst b/Documentation/virtual/kvm/vcpu-requests.rst
> index 5feb3706a7ae..c1807a1b92e6 100644
> --- a/Documentation/virtual/kvm/vcpu-requests.rst
> +++ b/Documentation/virtual/kvm/vcpu-requests.rst
> @@ -1,3 +1,5 @@
> +:orphan:
> +
>  =================
>  KVM VCPU Requests
>  =================
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
