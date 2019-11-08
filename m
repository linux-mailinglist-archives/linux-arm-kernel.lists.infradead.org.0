Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C65F4D57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKIhph0WbKZOzEEBd9tJ8Lf3arA8RArUvwcstmeTuXE=; b=HgBaqI+Dur7HnK
	b7UjJaQnpzU25u8Nd1lcCrEHMkg+Usd04Q1iddHDAkVUr/1bA2dFLwtmgUT/9jq3GQVDCn1thhfpp
	sxwnlDsugpDFKu/RGJDCrhn3ZXs3//yNhsQUPulE4yM6HBjadNel8r7XZicEyrGiq5mEsro2R2SCe
	GByG+lZ0M4krS4c4+yPjCcSG4+PXalczs1ymozIKtXr8hNX+yze10K5RiJHWcILwSCox8NdCtBVru
	hoVvS036BMhMGZYAZw6qlMLTIjL+8+Vc3gByypbdRmD1dTGCA5AzWse2MaahQR40BWsL/mhpUJtaB
	U4LWKtSh53Ui11mOGWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4TL-0004Hr-Nk; Fri, 08 Nov 2019 13:38:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4TE-0004HG-K8
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:38:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B064046A;
 Fri,  8 Nov 2019 05:38:33 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 257AE3F719; Fri,  8 Nov 2019 05:38:33 -0800 (PST)
Date: Fri, 8 Nov 2019 13:38:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kaslr: Print warning if KASLR is disabled due to
 lack of seed
Message-ID: <20191108133830.GB22834@arrakis.emea.arm.com>
References: <20191107121241.8458-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107121241.8458-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_053836_704081_73E61B17 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 12:12:41PM +0000, Mark Brown wrote:
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 416f537bf614..c2ba5e783ada 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -98,8 +98,10 @@ u64 __init kaslr_early_init(u64 dt_phys)
>  	 * Retrieve (and wipe) the seed from the FDT
>  	 */
>  	seed = get_kaslr_seed(fdt);
> -	if (!seed)
> +	if (!seed) {
> +		pr_warn("No seed available for KASLR, disabling\n");
>  		return 0;
> +	}
>  
>  	/*
>  	 * Check if 'nokaslr' appears on the command line, and

For some reason, this patch locks up the VM on TX2, stuck in a recursive
fault. Too early for a printk?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
