Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2642AE5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pX6kCaatXLNcqy02Ezkxa1SFaUQCGkkgThW13o8jq1s=; b=nv5AEDR1ManOIA
	L6S9z8B5LYKWFqYNi5h9M/Vhn97aMUUL4zbRowET9Sh+uao1v9FpxzoCO6AUpuiMSo2+MVtfdtDEq
	uusvSrz2n/N9TDVF7Yqar225T1IZSDLGj8XjbmM0Qcg0DtSW+RddpFbDyGJr6MK79jVzXaPceSN4o
	IaXE8A2TCmHQb4k3ncLsdQ41HjsIKYKo1Osk1AEviQuyGHzBuPDpz/ikfow4HYKQz2ZeDubD1pkHQ
	pFX/O3T7TWIGvnoK5I8uEI1tN9DvnXUM9lUna3ORNYB80M/krlusrYuPIuyOWkbmHtq50AcQgA16j
	2esCjgBtMsnuLU7+Hy3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8oJ-0007dG-FA; Mon, 27 May 2019 06:08:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8oC-0007cq-5k
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:08:33 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68B6E2075E;
 Mon, 27 May 2019 06:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558937311;
 bh=whtFdsckGzCPEkaQlXnqUsZh6c2LH490Sb3G6lofpws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x743Qp7sU13eieitAhmmIsWD1+3gSc4TduX14oZisxlV6Aa6RK8T/hJiS3VxrZ9QR
 P1PmSH9O01f82B/AttB8RnGoXzbufqHoiuc8X5S9MWfkuvrG3TZDgIvOnjF0FpJWv+
 yvbZ3EfZSeVuFlpF5YhQ1j3Qju0TffhuRqMRuRtQ=
Date: Mon, 27 May 2019 08:08:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v3 2/2] arm64: cacheinfo: Update cache_line_size detected
 from DT or PPTT
Message-ID: <20190527060829.GA8106@kroah.com>
References: <1558922768-29155-1-git-send-email-zhangshaokun@hisilicon.com>
 <1558922768-29155-2-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558922768-29155-2-git-send-email-zhangshaokun@hisilicon.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_230832_227451_CD1FB6C2 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Zhenfa Qiu <qiuzhenfa@hisilicon.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 10:06:08AM +0800, Shaokun Zhang wrote:
> cache_line_size is derived from CTR_EL0.CWG field and is called mostly
> for I/O device drivers. For HiSilicon certain plantform, like the
> Kunpeng920 server SoC, cache line sizes are different between L1/2
> cache and L3 cache while L1 cache line size is 64-byte and L3 is 128-byte,
> but CTR_EL0.CWG is misreporting using L1 cache line size.
> 
> We shall correct the right value which is important for I/O performance.
> Let's update the cache line size if it is detected from DT or PPTT
> information.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Jeremy Linton <jeremy.linton@arm.com>
> Cc: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
> Reported-by: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
>  arch/arm64/include/asm/cache.h |  6 +-----
>  arch/arm64/kernel/cacheinfo.c  | 11 +++++++++++
>  2 files changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
> index 926434f413fa..758af6340314 100644
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
> +int cache_line_size(void);
>  
>  /*
>   * Read the effective value of CTR_EL0.
> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
> index 0bf0a835122f..3d54b0024246 100644
> --- a/arch/arm64/kernel/cacheinfo.c
> +++ b/arch/arm64/kernel/cacheinfo.c
> @@ -28,6 +28,17 @@
>  #define CLIDR_CTYPE(clidr, level)	\
>  	(((clidr) & CLIDR_CTYPE_MASK(level)) >> CLIDR_CTYPE_SHIFT(level))
>  
> +int cache_line_size(void)
> +{
> +	u32 cwg = cache_type_cwg();
> +
> +	if (coherency_max_size != 0)
> +		return coherency_max_size;

Ah, you use it here.

> +
> +	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;

Shouldn't you set the variable if it is 0 here as well?

> +}
> +EXPORT_SYMBOL(cache_line_size);

EXPORT_SYMBOL_GPL()?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
