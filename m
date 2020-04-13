Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D481A6586
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 13:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FxA+yJAwLNUvY3Tvh/1i4kOOfoXj4CobtqWu93bLUJ4=; b=FEZnRw56b/S8CMPdSqZffUDAx
	pKXXHn5Myfvr0ZVwKqgLuleFo8PXF9gQJsUf3raZH8ttOUjfWUC2THlb6Ze2tfBL0M16z5Dku1TwM
	5dYMHo9vL1uB9Ok8qVpIvM3LzANpLTx1n/qklCsMgjCCCxhc+otLFUzUoSWlZN3y7QLRPj7LoPiLW
	znGmZ/f5TJJqgOUeBhX7R9Vq50pnqgm4CWV7/vm84kh0LFR7UfPpYRVJ6IXeRpe8Z6A51PrBdSq8w
	Ir8ys2ncN4ezZl9ZsW8dfuLtfhd2jHKcPgipkwhjZN/VjEFnTjh3YfpCGQd4CbfiMj1U26LJsa2L8
	0vwA8L51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNx3e-0007VH-QR; Mon, 13 Apr 2020 11:15:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNx3Y-0007Ut-TA
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 11:15:14 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58B2420732;
 Mon, 13 Apr 2020 11:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586776512;
 bh=a81X80t2sZFhIGis/7HHaSNsaPBgGS34DBZLFyzQPHI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mkHc1QaLdL65/mmqxl8LmMG+29kGsWj+/8m5hdnl7lkr3/exqY0pviWejtXv27YVt
 W0TH14Je5E9nNjdf2Jb76aaFdJJOC0bs1TXUBI/pBmLM5SwRWgLlT+zBMPQp5mKrJs
 OTBJQN+E9pZIGXZ4ESgxwe0/HhD11SANmZmfxlkU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jNx3W-002qIl-J8; Mon, 13 Apr 2020 12:15:10 +0100
MIME-Version: 1.0
Date: Mon, 13 Apr 2020 12:15:10 +0100
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: mm: drop kimage_voffset which was only used by KVM
In-Reply-To: <20200413103645.25183-1-ardb@kernel.org>
References: <20200413103645.25183-1-ardb@kernel.org>
Message-ID: <72bedac6fce0cb47cad5bc4561d2184f@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ardb@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_041512_963219_9C54F705 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-13 11:36, Ard Biesheuvel wrote:
> Now that KVM support has been removed from the 32-bit ARM port,
> drop the export kimage_voffset symbol, which no longer has any
> users.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm/mm/mmu.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index ec8d0008bfa1..36660bb031d1 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -74,8 +74,6 @@ struct cachepolicy {
>  	pteval_t	pte;
>  };
> 
> -unsigned long kimage_voffset __ro_after_init;
> -
>  static struct cachepolicy cache_policies[] __initdata = {
>  	{
>  		.policy		= "uncached",
> @@ -1636,9 +1634,6 @@ void __init paging_init(const struct machine_desc 
> *mdesc)
> 
>  	empty_zero_page = virt_to_page(zero_page);
>  	__flush_dcache_page(NULL, empty_zero_page);
> -
> -	/* Compute the virt/idmap offset, mostly for the sake of KVM */
> -	kimage_voffset = (unsigned long)&kimage_voffset -
> virt_to_idmap(&kimage_voffset);
>  }
> 
>  void __init early_mm_init(const struct machine_desc *mdesc)

Acked-by: Marc Zyngier <maz@kernel.org>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
