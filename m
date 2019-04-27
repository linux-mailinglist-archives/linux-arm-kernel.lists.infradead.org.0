Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F16B3DF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vQlNUYIO4xaOy5X9ZO7ptopDFrhQ4Pc3F24MftGVL8=; b=umRBx/D/5JZD0V
	sqrJKJTMxD4AAf3WdNsEjy2bTJqxOc8/qK9o+GDxFLAPSo4/hXk985JZ0v7qhKyiLPzkgzFJdVOZj
	AZDdqFq6QQOVBCj7raGNAG/4g5LvHB2uIKLRCHArUUIrWxU5Edl3c7/pnQ1VP2qLehDSEFTK6FUfO
	KSiqX3YUAKsyd6PbP5qFKtMbfI6m83Qv4S7pr61pCjioCchNYSgUwQU/hB91uDJVlgmDxyW7syKT6
	iP8uNyKs7LMof1+xDE+y+t5D2LSKaov3re+cyXvzhP+kkwjczTkqw3wPYOeaWVwBqE7XBu7Xhnpe0
	x5y2QZSd278WAg1mpk6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQ0R-0002oG-Tr; Sat, 27 Apr 2019 16:16:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQ0L-0002na-51
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 16:16:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E41880D;
 Sat, 27 Apr 2019 09:16:41 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E623F3F246;
 Sat, 27 Apr 2019 09:16:39 -0700 (PDT)
Date: Sat, 27 Apr 2019 17:16:37 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH 2/2] arm64: cacheinfo: Update cache_line_size detected
 from PPTT
Message-ID: <20190427161636.blc7dqsq7os4wvho@mbp>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556242821-5080-2-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_091645_393292_0C146810 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: john.garry@huawei.com, Will Deacon <will.deacon@arm.com>,
 qiuzhenfa@hisilicon.com, linux-arm-kernel@lists.infradead.org,
 guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 09:40:21AM +0800, Shaokun Zhang wrote:
> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
> index 926434f413fa..f120d48b27ac 100644
> --- a/arch/arm64/include/asm/cache.h
> +++ b/arch/arm64/include/asm/cache.h
> @@ -91,11 +91,7 @@ static inline u32 cache_type_cwg(void)
>  
>  #define __read_mostly __attribute__((__section__(".data..read_mostly")))
>  
> -static inline int cache_line_size(void)
> -{
> -	u32 cwg = cache_type_cwg();
> -	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
> -}
> +extern int cache_line_size(void);

Nitpick: no need for 'extern' on function prototypes.

>  /*
>   * Read the effective value of CTR_EL0.
> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
> index 0bf0a835122f..0b26d53790a8 100644
> --- a/arch/arm64/kernel/cacheinfo.c
> +++ b/arch/arm64/kernel/cacheinfo.c
> @@ -28,6 +28,21 @@
>  #define CLIDR_CTYPE(clidr, level)	\
>  	(((clidr) & CLIDR_CTYPE_MASK(level)) >> CLIDR_CTYPE_SHIFT(level))
>  
> +int cache_line_size(void)
> +{
> +	u32 cwg = cache_type_cwg();
> +
> +	if (cwg == 0)
> +		return ARCH_DMA_MINALIGN;
> +#ifdef CONFIG_ACPI
> +	/* compare cache line size detected from PPTT with CWG reporting */
> +	if (coherency_max_size > (4 << cwg))
> +		return coherency_max_size;
> +#endif
> +
> +	return 4 << cwg;
> +}

I'd rather have cache_line_size() report the PPTT information if
available, ignoring CWG with a fallback to the latter if not available.

We don't use cache_line_size() for DMA cache coherency, only
performance, so I think it's safe to return a value smaller than CWG in
cache_line_size().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
