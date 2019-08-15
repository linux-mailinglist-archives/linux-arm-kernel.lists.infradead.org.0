Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E260C8E962
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Cnfsk7ntcNe14Yk0chQV8O8t6DhfSk+mm9eV6AM0pA=; b=aAxw2xLraLF2Wy
	q12PLyE8F673psyHhLqsr5/7jlTazjyVihlPCqAF8g3pyycauY7qZPk+rp9Wj4KB7F/hzm9+86GXp
	BKDb1jU+M08a3BxuCPDYypMY/PopaPgRNUAqAXfR2VGwL8lYSFfBC/Azl8QR6CGOBBEtnCbRL51Iw
	4cZdshlj7IcZnwnQ5Vlgla29tuo++c1HesCwimFS8KFgDCbJXcdNv4nmm7D+HGmIpqOMhASvtpXIv
	Jd0Q1dBaq01/Bfsby6r5oNJNKHs17UIl5lVs6hjRgd9+RvTgmvZ3hRRHIVXPIFhn/yG28vbXnoCwO
	u2OXRds74cCZluA8lZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDR2-0006eO-U0; Thu, 15 Aug 2019 10:56:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDQN-0006KY-T1
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:56:09 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06C0121744;
 Thu, 15 Aug 2019 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565866567;
 bh=dsvbwhM91K+mxTLiSJ4SAk9JzF9IdMrk/WuDkDXupdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WyVS7gmVGAYle4zAnMuu8ny0ra2EWnqmRiJmr4nsudfTE5drfVcZE5fOFnV6CnpOz
 yjWUHEmkCXY/4Y5EARRa0EHcijYz5hzweyCdvJipEDSXGzIZybaFEdkM9ongJKDagE
 4Ym2PB//p4/6y8bdgZZUtIn43dL6NgX8TWYKPl+Y=
Date: Thu, 15 Aug 2019 11:56:03 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 05/15] iommu/arm-smmu: Split
 arm_smmu_tlb_inv_range_nosync()
Message-ID: <20190815105602.hk53orjumysfezff@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <33a49ca158509c95d50b0d3f9cba03bba2facdf3.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33a49ca158509c95d50b0d3f9cba03bba2facdf3.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035608_394260_22FF4B15 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:07:42PM +0100, Robin Murphy wrote:
> Since we now use separate iommu_gather_ops for stage 1 and stage 2
> contexts, we may as well divide up the monolithic callback into its
> respective stage 1 and stage 2 parts.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 66 ++++++++++++++++++++++------------------
>  1 file changed, 37 insertions(+), 29 deletions(-)

This will conflict with my iommu API batching stuff, but I can sort that
out if/when it gets queued by Joerg.

> -		if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
> -			iova &= ~12UL;
> -			iova |= cfg->asid;
> -			do {
> -				writel_relaxed(iova, reg);
> -				iova += granule;
> -			} while (size -= granule);
> -		} else {
> -			iova >>= 12;
> -			iova |= (u64)cfg->asid << 48;
> -			do {
> -				writeq_relaxed(iova, reg);
> -				iova += granule >> 12;
> -			} while (size -= granule);
> -		}
> -	} else {
> -		reg += leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L :
> -			      ARM_SMMU_CB_S2_TLBIIPAS2;
> -		iova >>= 12;
> +	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
> +		iova &= ~12UL;

Oh baby. You should move code around more often, so I'm forced to take a
second look!

Can you cook a fix for this that we can route separately, please? I see
it also made its way into qcom_iommu.c...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
