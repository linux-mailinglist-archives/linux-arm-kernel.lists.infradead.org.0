Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465CAF5176
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGZAeVZBg9TCKz209xh5M1UiX8zYvNoT2M7tkmEnG4A=; b=h0fOqExddJ4SDU
	/eHIGSrcumY6k0Lc+gd46SrzbuZHPlOMNPYtfNV9LP9KmdV6k11MKCw8JNwI7VmnC5MjHETLPtFB1
	uC1I38Gatik9BZ1PbCTox2ji03zPdIV7RwOjo3MW979FvpGHokr4E85MWm173OwP1NkWRrF0XybW8
	3MUhc8Ught2gsLc9vzJQ9CT7LXaeWA0Waf5ZtolQLrmXhC/Oe/yAcqq2Vc0DZIQT+yO8JsoEk2/oe
	PqpSld0WRe0rr5+X7k45xMnMRgqbOexOKGuJgXbkni8FrwzLPmEKBRsHkGjqHLHhLpRU343XOVFvF
	y0fUyp0TbYLKQCPJuqKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7PP-00073l-Lc; Fri, 08 Nov 2019 16:46:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7PI-00072q-OO
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:46:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDA9F46A;
 Fri,  8 Nov 2019 08:46:39 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 036793F71A;
 Fri,  8 Nov 2019 08:46:38 -0800 (PST)
Date: Fri, 8 Nov 2019 16:46:36 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 1/2] arm64: kaslr: Announce KASLR status on boot
Message-ID: <20191108164636.GJ11465@lakrids.cambridge.arm.com>
References: <20191108162001.11737-1-broonie@kernel.org>
 <20191108162001.11737-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108162001.11737-2-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_084644_881923_BEBB1411 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 04:20:00PM +0000, Mark Brown wrote:
> Currently the KASLR code is silent at boot unless it forces on KPTI in
> which case a message will be printed for that. This can lead to users
> incorrectly believing their system has the feature enabled when it in
> fact does not, and if they notice the problem the lack of any
> diagnostics makes it harder to understand the problem. Add an initcall
> which prints a message showing the status of KASLR during boot to make
> the status clear.
> 
> This is particularly useful in cases where we don't have a seed. It
> seems to be a relatively common error for system integrators and
> administrators to enable KASLR in their configuration but not provide
> the seed at runtime, often due to seed provisioning breaking at some
> later point after it is initially enabled and verified.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/kaslr.c | 41 ++++++++++++++++++++++++++++++++++++---
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 416f537bf614..0039dc50e556 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -19,6 +19,14 @@
>  #include <asm/pgtable.h>
>  #include <asm/sections.h>
>  
> +enum kaslr_status {
> +	KASLR_ENABLED,
> +	KASLR_DISABLED_CMDLINE,
> +	KASLR_DISABLED_NO_SEED,
> +	KASLR_DISABLED_FDT_REMAP,
> +};
> +
> +enum kaslr_status __ro_after_init kaslr_status;

This can probably be __initdata since it's only consumed by an __init
call.

Otherwise this looks sound to me; with that:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

>  u64 __ro_after_init module_alloc_base;
>  u16 __initdata memstart_offset_seed;
>  
> @@ -91,15 +99,19 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  	 */
>  	early_fixmap_init();
>  	fdt = fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
> -	if (!fdt)
> +	if (!fdt) {
> +		kaslr_status = KASLR_DISABLED_FDT_REMAP;
>  		return 0;
> +	}
>  
>  	/*
>  	 * Retrieve (and wipe) the seed from the FDT
>  	 */
>  	seed = get_kaslr_seed(fdt);
> -	if (!seed)
> +	if (!seed) {
> +		kaslr_status = KASLR_DISABLED_NO_SEED;
>  		return 0;
> +	}
>  
>  	/*
>  	 * Check if 'nokaslr' appears on the command line, and
> @@ -107,8 +119,10 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  	 */
>  	cmdline = kaslr_get_cmdline(fdt);
>  	str = strstr(cmdline, "nokaslr");
> -	if (str == cmdline || (str > cmdline && *(str - 1) == ' '))
> +	if (str == cmdline || (str > cmdline && *(str - 1) == ' ')) {
> +		kaslr_status = KASLR_DISABLED_CMDLINE;
>  		return 0;
> +	}
>  
>  	/*
>  	 * OK, so we are proceeding with KASLR enabled. Calculate a suitable
> @@ -170,3 +184,24 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  
>  	return offset;
>  }
> +
> +static int __init kaslr_init(void)
> +{
> +	switch (kaslr_status) {
> +	case KASLR_ENABLED:
> +		pr_info("KASLR enabled\n");
> +		break;
> +	case KASLR_DISABLED_CMDLINE:
> +		pr_info("KASLR disabled on command line\n");
> +		break;
> +	case KASLR_DISABLED_NO_SEED:
> +		pr_warn("KASLR disabled due to lack of seed\n");
> +		break;
> +	case KASLR_DISABLED_FDT_REMAP:
> +		pr_warn("KASLR disabled due to FDT remapping failure\n");
> +		break;
> +	}
> +
> +	return 0;
> +}
> +core_initcall(kaslr_init)
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
