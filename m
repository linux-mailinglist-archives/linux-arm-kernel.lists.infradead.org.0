Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA50914DD81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=khwAJMQfGSovUBA035TFVRxWhO3tRx9sg691sQ3PPjA=; b=qGIXYmkcoWwV9FIcm4CCNThJp
	4gKtsN8te7KK1zBotSV0z2MpAppd7yqos6U/AdLSVaosFkF4ojzH2yXvHulU2tOlw+MZYAs7hoSbP
	LTg6ynyHNgobO7XM7JAk6mkwqNAc3fslJ+nUswf3g6j7o80eouGNDFC6W6aE7h+8MglIQYmucX305
	J4ofWxatK7YZ1+zmpY3QaGFUagE5hHUAZAOe/0cWbTIKBbmYYJCB3UKtR743qWq9ECvUvRXqDUoB4
	BEGuDaz6xb1nZ5KTlJrRvL+V6U6z+SGOn8uKux0dNCL5UrkwKAIecwNOq8kLqBQ6emb+9tI7CEHhg
	CXGD+Efug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBN6-0006nA-3e; Thu, 30 Jan 2020 15:04:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBMx-0006lj-Ck
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:04:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA19731B;
 Thu, 30 Jan 2020 07:04:29 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C43C3F68E;
 Thu, 30 Jan 2020 07:04:28 -0800 (PST)
Subject: Re: [PATCH v2 4/6] Documentation: arm64: document support for the AMU
 extension
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-5-ionela.voinescu@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <c9f80a08-7f0d-59e9-eb90-466b1314e1f1@arm.com>
Date: Thu, 30 Jan 2020 15:04:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191218182607.21607-5-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_070435_523104_80C0E732 
X-CRM114-Status: GOOD (  31.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 mingo@redhat.com, ggherdovich@suse.cz, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On 18/12/2019 18:26, Ionela Voinescu wrote:
> The activity monitors extension is an optional extension introduced
> by the ARMv8.4 CPU architecture.
> 
> Add initial documentation for the AMUv1 extension:
>   - arm64/amu.txt: AMUv1 documentation
>   - arm64/booting.txt: system registers initialisation
>   - arm64/cpu-feature-registers.txt: visibility to userspace

We have stopped adding "invisible" fields to the list. So, you
can drop the changes to cpu-feature-registers.txt.

> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> ---
>   Documentation/arm64/amu.rst                   | 107 ++++++++++++++++++
>   Documentation/arm64/booting.rst               |  14 +++
>   Documentation/arm64/cpu-feature-registers.rst |   2 +
>   Documentation/arm64/index.rst                 |   1 +
>   4 files changed, 124 insertions(+)
>   create mode 100644 Documentation/arm64/amu.rst
> 
> diff --git a/Documentation/arm64/amu.rst b/Documentation/arm64/amu.rst
> new file mode 100644
> index 000000000000..62a6635522e1
> --- /dev/null
> +++ b/Documentation/arm64/amu.rst
> @@ -0,0 +1,107 @@
> +=======================================================
> +Activity Monitors Unit (AMU) extension in AArch64 Linux
> +=======================================================
> +
> +Author: Ionela Voinescu <ionela.voinescu@arm.com>
> +
> +Date: 2019-09-10
> +
> +This document briefly describes the provision of Activity Monitors Unit
> +support in AArch64 Linux.
> +
> +
> +Architecture overview
> +---------------------
> +
> +The activity monitors extension is an optional extension introduced by the
> +ARMv8.4 CPU architecture.
> +
> +The activity monitors unit, implemented in each CPU, provides performance
> +counters intended for system management use. The AMU extension provides a
> +system register interface to the counter registers and also supports an
> +optional external memory-mapped interface.
> +
> +Version 1 of the Activity Monitors architecture implements a counter group
> +of four fixed and architecturally defined 64-bit event counters.
> +  - CPU cycle counter: increments at the frequency of the CPU.
> +  - Constant counter: increments at the fixed frequency of the system
> +    clock.
> +  - Instructions retired: increments with every architecturally executed
> +    instruction.
> +  - Memory stall cycles: counts instruction dispatch stall cycles caused by
> +    misses in the last level cache within the clock domain.
> +
> +When in WFI or WFE these counters do not increment.
> +
> +The Activity Monitors architecture provides space for up to 16 architected
> +event counters. Future versions of the architecture may use this space to
> +implement additional architected event counters.
> +
> +Additionally, version 1 implements a counter group of up to 16 auxiliary
> +64-bit event counters.
> +
> +On cold reset all counters reset to 0.
> +
> +
> +Basic support
> +-------------
> +
> +The kernel can safely run a mix of CPUs with and without support for the
> +activity monitors extension.


  Therefore, when CONFIG_ARM64_AMU_EXTN is
> +selected we unconditionally enable the capability to allow any late CPU
> +(secondary or hotplugged) to detect and use the feature.
> +
> +When the feature is detected on a CPU, a per-CPU variable (amu_feat) is
> +set, but this does not guarantee the correct functionality of the
> +counters, only the presence of the extension.

nit: I would rather omit the implementation details (esp variable names)
in the documentation. It may become a pain to keep this in sync with the
code changes. You could simply mention, "we keep track of the 
availability of the feature" per CPU. If someone wants to figure out
how, they can always read the code.

> +
> +Firmware (code running at higher exception levels, e.g. arm-tf) support is
> +needed to:
> + - Enable access for lower exception levels (EL2 and EL1) to the AMU
> +   registers.
> + - Enable the counters. If not enabled these will read as 0.
> + - Save/restore the counters before/after the CPU is being put/brought up
> +   from the 'off' power state.
> +
> +When using kernels that have this configuration enabled but boot with
> +broken firmware the user may experience panics or lockups when accessing
> +the counter registers. Even if these symptoms are not observed, the
> +values returned by the register reads might not correctly reflect reality.
> +Most commonly, the counters will read as 0, indicating that they are not
> +enabled. If proper support is not provided in firmware it's best to disable
> +CONFIG_ARM64_AMU_EXTN.

For the sake of one kernel runs everywhere, do we need some other
mechanism to disable the AMU. e.g kernel parameter to disable amu
at runtime ?

> diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
> index 5d78a6f5b0ae..a3f1a47b6f1c 100644
> --- a/Documentation/arm64/booting.rst
> +++ b/Documentation/arm64/booting.rst
> @@ -248,6 +248,20 @@ Before jumping into the kernel, the following conditions must be met:
>       - HCR_EL2.APK (bit 40) must be initialised to 0b1
>       - HCR_EL2.API (bit 41) must be initialised to 0b1
>   
> +  For CPUs with Activity Monitors Unit v1 (AMUv1) extension present:
> +  - If EL3 is present:
> +    CPTR_EL3.TAM (bit 30) must be initialised to 0b0
> +    CPTR_EL2.TAM (bit 30) must be initialised to 0b0
> +    AMCNTENSET0_EL0 must be initialised to 0b1111
> +    AMCNTENSET1_EL0 must be initialised to a platform specific value
> +    having 0b1 set for the corresponding bit for each of the auxiliary
> +    counters present.
> +  - If the kernel is entered at EL1:
> +    AMCNTENSET0_EL0 must be initialised to 0b1111
> +    AMCNTENSET1_EL0 must be initialised to a platform specific value
> +    having 0b1 set for the corresponding bit for each of the auxiliary
> +    counters present.
> +
>   The requirements described above for CPU mode, caches, MMUs, architected
>   timers, coherency and system registers apply to all CPUs.  All CPUs must
>   enter the kernel in the same exception level.
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index b6e44884e3ad..4770ae54032b 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -150,6 +150,8 @@ infrastructure:
>        +------------------------------+---------+---------+
>        | DIT                          | [51-48] |    y    |
>        +------------------------------+---------+---------+
> +     | AMU                          | [47-44] |    n    |
> +     +------------------------------+---------+---------+

As mentioned above, please drop it.


Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
