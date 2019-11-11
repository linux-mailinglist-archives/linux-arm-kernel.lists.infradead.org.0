Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B833F7681
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:37:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwNQA+vgya2Nt3sC4xvEnWnQp+7AmPSevqh294woCbA=; b=MfA04cPc6KbA1w
	qI6mpdbbLUCmiBsqxfppGhsp5vMzD2kr89LvfCE247GpMRvN0h2MARcOAr4oNbsC5Ogcj5Ht3O3fm
	hMCV3zusb/w/acJpHTPk84A4ptTv4WiweZdRTaJZZgs1RgPhHboXZRUXI8pwqgvxFDGYYZYzlY/z5
	ybj8s+wtpwGG5Qao1oZed8OfrzK+ZHogyCPxnUzroFYd+D3t7S5r+65ifZwg9wn7S1N0uo+rywAag
	1ENx1N0aQnsPpUBculiyoHX0076IjTc5XZgQMdBGv8E4mK3LYrBK/GtDphrT3Aenx52FmS/DPhCKv
	XFz+Cyk/ZEJU2WFFymlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAoa-000787-Dq; Mon, 11 Nov 2019 14:37:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAoQ-00077U-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:37:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECE18214E0;
 Mon, 11 Nov 2019 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573483022;
 bh=St7ZnV5WSa+yszDcbQGqtCcdVAO1nZ3efPLKJ2qswg4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vFVvRPU0o3E4Rfl2RAfAAvItIYq3+SRTw2zPaCArwNfgUnw/DVX9zhjbOzLtdjhHn
 IbSSPpJ4Fq/uxMOq+Xf96Hd8rmpv2vCxp6gWSx3iq8mhGzXzQfuOK+DjLt6u++8YY4
 CRJ0R/AlPz6gdJZphnyAK1J1zuqe/GRh/brPPwS8=
Date: Mon, 11 Nov 2019 14:36:57 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 1/2] iommu/arm-smmu-v3: Don't display an error when IRQ
 lines are missing
Message-ID: <20191111143656.GA10488@willie-the-truck>
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111111721.4145919-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063702_954181_82ABBA34 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: iommu@lists.linux-foundation.org, robin.murphy@arm.com, joro@8bytes.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 12:17:20PM +0100, Jean-Philippe Brucker wrote:
> Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
> to platform_get_irq*()"), platform_get_irq_byname() displays an error
> when the IRQ isn't found. Since the SMMUv3 driver uses that function to
> query which interrupt method is available, the message is now displayed
> during boot for any SMMUv3 that doesn't implement the combined
> interrupt, or that implements MSIs.
> 
> [   20.700337] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ combined not found
> [   20.706508] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ eventq not found
> [   20.712503] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ priq not found
> [   20.718325] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ gerror not found
> 
> Use platform_get_irq_byname_optional() to avoid displaying a spurious
> error.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index bfa4a0f39ed0..a89797f346a4 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -5207,19 +5207,19 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>  
>  	/* Interrupt lines */
>  
> -	irq = platform_get_irq_byname(pdev, "combined");
> +	irq = platform_get_irq_byname_optional(pdev, "combined");
>  	if (irq > 0)
>  		smmu->combined_irq = irq;
>  	else {
> -		irq = platform_get_irq_byname(pdev, "eventq");
> +		irq = platform_get_irq_byname_optional(pdev, "eventq");
>  		if (irq > 0)
>  			smmu->evtq.q.irq = irq;
>  
> -		irq = platform_get_irq_byname(pdev, "priq");
> +		irq = platform_get_irq_byname_optional(pdev, "priq");
>  		if (irq > 0)
>  			smmu->priq.q.irq = irq;
>  
> -		irq = platform_get_irq_byname(pdev, "gerror");
> +		irq = platform_get_irq_byname_optional(pdev, "gerror");
>  		if (irq > 0)
>  			smmu->gerr_irq = irq;
>  	}

Thanks, looks mechanical enough for me:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
