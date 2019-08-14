Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989C8DCBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGV4DsdmSQoRaKfnem1t8+Q4Q0WGT7bA0+JM+sh6e0o=; b=eGc4t1onw7EHCu
	BYxE3ecMEvWL5inBicKJNbd8Pif7OoRLPjYf5vTUaIkaLcD9zNvsAl6s+BagPOK4F8HZ8HtKapJOj
	dxSWKQ6/8sWItJ/JHKqBhJiPmiY0MgRThxN5jNNAtR/KZ1vdnJE48FaC80fmxe5eC6RFxXQBAN40W
	QO65BHkjRPCOri777NeaCTTbB7XUgm5jAM8FHjrJE8eNfFZWrebzXN/sice/l1cggj55t4eqbxXQe
	Ta/01Ba80hijaf31PiitGpfpt5Z1BPDgEbLe0pUISJO0JDyRETJFQ4lb8LAV3AsDOWmuarmvcUQau
	7WPjqfArM6wvodKfR9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxf8-0001BN-A0; Wed, 14 Aug 2019 18:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxes-0001B3-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:06:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00F632084F;
 Wed, 14 Aug 2019 18:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565805961;
 bh=puKdRnZ9LG6uknCkDTCLnECmpG0XfmA88XteJcC0jh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vaMyS1BJywCuDwrnch6OBd8r5eplRXAp4jPYZAuzOJ7M2Q7m57u/Q3LLBrxhyTg4t
 zPflWXiqZbT87UNk22LqQOg8kMAO5LgWrwosJI3QzshH1I43CmAVV85deRIvPqgGdd
 P7pWTMZwpaVohqULOWsxSX4oRe6JjKSd6yaRjMgw=
Date: Wed, 14 Aug 2019 19:05:57 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 04/15] iommu/arm-smmu: Rework cb_base handling
Message-ID: <20190814180556.5asp5qflrxxjipal@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <f4dccad78815ca0a2dd7926be7052759d099b920.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4dccad78815ca0a2dd7926be7052759d099b920.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_110602_178026_A62BA0C5 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:07:41PM +0100, Robin Murphy wrote:
> To keep register-access quirks manageable, we want to structure things
> to avoid needing too many individual overrides. It seems fairly clean to
> have a single interface which handles both global and context registers
> in terms of the architectural pages, so the first preparatory step is to
> rework cb_base into a page number rather than an absolute address.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index d9a93e5f422f..463bc8d98adb 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -95,7 +95,7 @@
>  #endif
>  
>  /* Translation context bank */
> -#define ARM_SMMU_CB(smmu, n)	((smmu)->cb_base + ((n) << (smmu)->pgshift))
> +#define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->cb_base + (n)) << (smmu)->pgshift))
>  
>  #define MSI_IOVA_BASE			0x8000000
>  #define MSI_IOVA_LENGTH			0x100000
> @@ -168,8 +168,8 @@ struct arm_smmu_device {
>  	struct device			*dev;
>  
>  	void __iomem			*base;
> -	void __iomem			*cb_base;
> -	unsigned long			pgshift;
> +	unsigned int			cb_base;

I think this is now a misnomer. Would you be able to rename it cb_pfn or
something, please?

Otherwise, this seems fine.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
