Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F92914A84E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 17:47:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWWKyDkS5h4r0Y0mSuk1bvQZ6r/7Xknb38SgQAXZSHU=; b=tdqVehR7+zCXgl
	DAN9RA4uJ0520+XOfKkZdTzuqJi9x4iLv9JqBvWIDQBajAnkJnJe6uoV7DfgEMiXENVp+jyh8tZle
	VUJIUwB1lXVHsAlB1UfmMQYJnz5/+b63z3ddQK59Y5odtamZ1PZjg0XKW7s9ACaTOyR/WnOAzFZp1
	lrJmWCmybe+DhfWPKPE4RpnTeESRwzqT9177i7/BaGAswjjA5QGuLO9i/gX6aQlN3wN29Y9SUOmF/
	EVva9saM5INijBOkpW5jS9DyGCCIXroqPawPDdHPhets+rl6L/ldNfpy6AHwU4+46s0OtCe3ilYyX
	L6Rpt9Im5dsHWFwZIg0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw7Y8-0007Jw-7Y; Mon, 27 Jan 2020 16:47:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw7Y0-0007J5-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 16:47:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A9A331B;
 Mon, 27 Jan 2020 08:47:33 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3545F3F67D;
 Mon, 27 Jan 2020 08:47:31 -0800 (PST)
Subject: Re: [PATCH v2 4/6] Documentation: arm64: document support for the AMU
 extension
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-5-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <b63b6f10-22c8-79be-cc97-08484874bd62@arm.com>
Date: Mon, 27 Jan 2020 16:47:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218182607.21607-5-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_084736_153424_450209A4 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/12/2019 18:26, Ionela Voinescu wrote:
> +Basic support
> +-------------
> +
> +The kernel can safely run a mix of CPUs with and without support for the
> +activity monitors extension. Therefore, when CONFIG_ARM64_AMU_EXTN is
> +selected we unconditionally enable the capability to allow any late CPU
> +(secondary or hotplugged) to detect and use the feature.
> +
> +When the feature is detected on a CPU, a per-CPU variable (amu_feat) is
> +set, but this does not guarantee the correct functionality of the
> +counters, only the presence of the extension.
> +
> +Firmware (code running at higher exception levels, e.g. arm-tf) support is
> +needed to:
> + - Enable access for lower exception levels (EL2 and EL1) to the AMU
> +   registers.
> + - Enable the counters. If not enabled these will read as 0.

Just to make sure I understand - if AMUs are physically present but not
enabled by FW, we'll still
- see them as implemented in ID_AA64PFR0_EL1.AMU
- see some counters as available with e.g. AMCGCR_ELO.CG0NC > 0

But reading some AMEVCNTR<g><n> will return 0?

> + - Save/restore the counters before/after the CPU is being put/brought up
> +   from the 'off' power state.
> +
> +When using kernels that have this configuration enabled but boot with
> +broken firmware the user may experience panics or lockups when accessing
> +the counter registers.

Yikes

> Even if these symptoms are not observed, the
> +values returned by the register reads might not correctly reflect reality.
> +Most commonly, the counters will read as 0, indicating that they are not
> +enabled. If proper support is not provided in firmware it's best to disable
> +CONFIG_ARM64_AMU_EXTN.
> +

I haven't seen something that would try to catch this on the kernel side.
Can we try to detect that (e.g. at least one counter returns > 0) in
cpu_amu_enable() and thus not write to the CPU-local 'amu_feat'?

While we're on the topic of detecting broken stuff, what if some CPUs
implement some auxiliary counters that some others don't?

> +The fixed counters of AMUv1 are accessible though the following system
> +register definitions:
> + - SYS_AMEVCNTR0_CORE_EL0
> + - SYS_AMEVCNTR0_CONST_EL0
> + - SYS_AMEVCNTR0_INST_RET_EL0
> + - SYS_AMEVCNTR0_MEM_STALL_EL0
> +
> +Auxiliary platform specific counters can be accessed using
> +SYS_AMEVCNTR1_EL0(n), where n is a value between 0 and 15.
> +
> +Details can be found in: arch/arm64/include/asm/sysreg.h.
> +
> diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
> index 5d78a6f5b0ae..a3f1a47b6f1c 100644
> --- a/Documentation/arm64/booting.rst
> +++ b/Documentation/arm64/booting.rst
> @@ -248,6 +248,20 @@ Before jumping into the kernel, the following conditions must be met:
>      - HCR_EL2.APK (bit 40) must be initialised to 0b1
>      - HCR_EL2.API (bit 41) must be initialised to 0b1
>  
> +  For CPUs with Activity Monitors Unit v1 (AMUv1) extension present:
> +  - If EL3 is present:
> +    CPTR_EL3.TAM (bit 30) must be initialised to 0b0
> +    CPTR_EL2.TAM (bit 30) must be initialised to 0b0
> +    AMCNTENSET0_EL0 must be initialised to 0b1111

Nit: Or be a superset of the above, right? AIUI v1 only mandates the lower
4 bits to be set. Probably doesn't matter that much...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
