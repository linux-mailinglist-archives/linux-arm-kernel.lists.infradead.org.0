Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D420B2C4AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yh/MCBLO7NAAYuKLNyajCz5uOT/VKYKBf9nbluPm5VI=; b=Yxvycu+2Mi4PIwvU98f7eAOsy
	qxNzH2xB1eZSOZnCLDZFJlWyVTVyAbHNE8NlDQBMScpFaA97Cdc69x6ik9nVnIb+mSQz+angrPO40
	pC/ADAH+XYC1oP8ArzSSfeR+1TqSd2Jr9+ZuyhQCvJDDpXanqo2O6UZ+Znps/nalg9bO9gXUnpPXl
	08NLIcMTPH5UluJ0oJicugKLf4q0hik0kNFlYZHtJtzAAKCej85t0bNQrJrEWDfKFiC2EsCOkMHR1
	19yGmM2yHYaSMHsMlYKoDkFKuZOoqHfO1zzoD5zbxfh4FExudUWDGwoyqZ9ZO48hdfIuhbEpn9opG
	68s+DAH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZZl-0001K4-Ia; Tue, 28 May 2019 10:43:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZZd-0001Iy-JX; Tue, 28 May 2019 10:43:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18D7A341;
 Tue, 28 May 2019 03:43:15 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 652ED3F59C;
 Tue, 28 May 2019 03:43:13 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA32 configurable
To: Miles Chen <miles.chen@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <1558973315-19655-1-git-send-email-miles.chen@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <814b9bd0-38de-4b8d-92b3-d663931d90bf@arm.com>
Date: Tue, 28 May 2019 11:43:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558973315-19655-1-git-send-email-miles.chen@mediatek.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_034317_649848_FAE95E79 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wsd_upstream@mediatek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/2019 17:08, Miles Chen wrote:
> This change makes CONFIG_ZONE_DMA32 defuly y and allows users
> to overwrite it.
> 
> For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
> first step to manage all available memory by a single
> zone(normal zone) to reduce the overhead of multiple zones.
> 
> The change also fixes a build error when CONFIG_NUMA=y and
> CONFIG_ZONE_DMA32=n.
> 
> arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
>                  max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> 
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> ---
>   arch/arm64/Kconfig   | 3 ++-
>   arch/arm64/mm/init.c | 2 ++
>   2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 76f6e4765f49..9d20a736d1d1 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -260,7 +260,8 @@ config GENERIC_CALIBRATE_DELAY
>   	def_bool y
>   
>   config ZONE_DMA32
> -	def_bool y
> +	bool "Support DMA32 zone"

This probably warrants an "if EMBEDDED" or "if EXPERT", since turning it 
off produces a kernel which won't work at all on certain systems (I've 
played around with this before...)

> +	default y
>   
>   config HAVE_GENERIC_GUP
>   	def_bool y
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index d2adffb81b5d..96829ce21f99 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -191,8 +191,10 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>   {
>   	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
>   
> +#ifdef CONFIG_ZONE_DMA32
>   	if (IS_ENABLED(CONFIG_ZONE_DMA32))

There's no point keeping the IS_ENABLED() check when it's entirely 
redundant with the #ifdefs.

Robin.

>   		max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> +#endif
>   	max_zone_pfns[ZONE_NORMAL] = max;
>   
>   	free_area_init_nodes(max_zone_pfns);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
