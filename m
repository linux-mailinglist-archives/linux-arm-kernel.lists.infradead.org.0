Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6148DAE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sU/2KR7c/h2xWALjcmlmLk9tLTrMeT3A5vtREUzfj/U=; b=F8DbhgHBqMjquq
	/JVyw8RINANNHHkDVUmfeiD0DK1IHr33QRuh0GQfurMrCT7lD9nsT5yyPuWha5SAs8idbG9Bek5gD
	IWurjvCNLQmBpeuLuFKWdLeRVkrPkc65Uh0SJjCuyczjYZTy+eBj1clAoIeQxg0eFoIkNcYSd1DS0
	H49RgLTtRMoVSDEyS3AjdaG4K9YEC30uYOdnw8ztDEwl7m63iLKpLGm1jw1r84N9C3qGPBQq88CoT
	oDAJ1nfk5+Vmoe0QyShd8IKfmq+b3NFeIA1WsKk4z4mb4rUn5Azi3s3QdDrFq2CLbA4XU9+uiQFEU
	5laBXKOrrDryu+WITQwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwxW-0005WN-5l; Wed, 14 Aug 2019 17:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwwu-0005W3-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:20:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C575B2084D;
 Wed, 14 Aug 2019 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565803235;
 bh=dt28HiKeDA9L5mGvly1JScUvZrWg1DeQplEWd5mOXVE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x2iO+k3qoVbzAWsj9n4cmCZJpdzYPI/bRqvYH5bbDp/N0s2sKO6LvHdfx/1XWmbNW
 Bk8/fUmRIQ7U9AqwZDhyub7FlgLSvSb8wGg/FtwC1CEF6pjFd3Gm/ktqXgn0Z5FmXa
 ZvutSr2KnRj5UzSjttcADHwPeZqs9Qj+v0SPIpS8=
Date: Wed, 14 Aug 2019 18:20:30 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 01/15] iommu/arm-smmu: Convert GR0 registers to bitfields
Message-ID: <20190814172030.accr7azgkkkwumt2@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <910cad718be01904db20ce73d8d54e7481290136.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <910cad718be01904db20ce73d8d54e7481290136.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_102036_119988_1AB55445 
X-CRM114-Status: GOOD (  12.55  )
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

On Fri, Aug 09, 2019 at 06:07:38PM +0100, Robin Murphy wrote:
> FIELD_PREP remains a terrible name, but the overall simplification will
> make further work on this stuff that much more manageable. This also
> serves as an audit of the header, wherein we can impose a consistent
> grouping and ordering of the offset and field definitions
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu-regs.h | 126 ++++++++++++++++------------------
>  drivers/iommu/arm-smmu.c      |  51 +++++++-------
>  2 files changed, 84 insertions(+), 93 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
> index 1c278f7ae888..d189f025537a 100644
> --- a/drivers/iommu/arm-smmu-regs.h
> +++ b/drivers/iommu/arm-smmu-regs.h
> @@ -10,111 +10,101 @@
>  #ifndef _ARM_SMMU_REGS_H
>  #define _ARM_SMMU_REGS_H
>  
> +#include <linux/bits.h>
> +
>  /* Configuration registers */
>  #define ARM_SMMU_GR0_sCR0		0x0
> -#define sCR0_CLIENTPD			(1 << 0)
> -#define sCR0_GFRE			(1 << 1)
> -#define sCR0_GFIE			(1 << 2)
> -#define sCR0_EXIDENABLE			(1 << 3)
> -#define sCR0_GCFGFRE			(1 << 4)
> -#define sCR0_GCFGFIE			(1 << 5)
> -#define sCR0_USFCFG			(1 << 10)
> -#define sCR0_VMIDPNE			(1 << 11)
> -#define sCR0_PTM			(1 << 12)
> -#define sCR0_FB				(1 << 13)
> -#define sCR0_VMID16EN			(1 << 31)
> -#define sCR0_BSU_SHIFT			14
> -#define sCR0_BSU_MASK			0x3
> +#define sCR0_VMID16EN			BIT(31)
> +#define sCR0_BSU			GENMASK(15, 14)
> +#define sCR0_FB				BIT(13)
> +#define sCR0_PTM			BIT(12)
> +#define sCR0_VMIDPNE			BIT(11)
> +#define sCR0_USFCFG			BIT(10)
> +#define sCR0_GCFGFIE			BIT(5)
> +#define sCR0_GCFGFRE			BIT(4)
> +#define sCR0_EXIDENABLE			BIT(3)
> +#define sCR0_GFIE			BIT(2)
> +#define sCR0_GFRE			BIT(1)
> +#define sCR0_CLIENTPD			BIT(0)
>  
>  /* Auxiliary Configuration register */
>  #define ARM_SMMU_GR0_sACR		0x10
>  
>  /* Identification registers */
>  #define ARM_SMMU_GR0_ID0		0x20
> +#define ID0_S1TS			BIT(30)
> +#define ID0_S2TS			BIT(29)
> +#define ID0_NTS				BIT(28)
> +#define ID0_SMS				BIT(27)
> +#define ID0_ATOSNS			BIT(26)
> +#define ID0_PTFS_NO_AARCH32		BIT(25)
> +#define ID0_PTFS_NO_AARCH32S		BIT(24)
> +#define ID0_CTTW			BIT(14)
> +#define ID0_NUMIRPT			GENMASK(23, 16)

nit: assuming this should be above ID0_CTTW so things are in descending
bit order?

Other than that, looks good to me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
