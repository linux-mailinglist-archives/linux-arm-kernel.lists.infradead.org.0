Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33442DDB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rz+urBiSFRO4YauJexgc+sqpVHK9BaeTE4Ar0zfDC6o=; b=F1aJgF3Xm/c+/a
	jVw3E2j++NE+ujq/crxQm7mtbi2OXz/lxNFyc4GwTpdZ72clD5z4GrV720RUDuuS/O5FRxJLp7J6M
	kVzZOnBtHrvo5I2g5oAbdIl1lt9RbZaZanqeIwpeVut0zcbJodJAA4PJtzX80/pOpVkcYqAkiFWqG
	eTex+b6OVd0FtLV73gWznVXA6if6WC9RyJd6eftR58CDphCNIfSgnoQLTJrjMNXK8hg2EXc+QOT2J
	mffOh1l6JFUby6l3ZIiDuB+lqoIXMBwyTWLc8K27KayWaGeH7DgNnAezsUANGUge3ZnIabjTvpQdm
	tor+XtAFlBZP7LdS/hlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyHS-0004f3-KS; Wed, 29 May 2019 13:06:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyHL-0004ee-W9
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:06:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC4BEA78;
 Wed, 29 May 2019 06:06:03 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEA1C3F59C;
 Wed, 29 May 2019 06:06:01 -0700 (PDT)
Date: Wed, 29 May 2019 14:05:59 +0100
From: Will Deacon <will.deacon@arm.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2] iommu/arm-smmu: Avoid constant zero in TLBI writes
Message-ID: <20190529130559.GB11023@fuggles.cambridge.arm.com>
References: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_060604_038742_017FE0F5 
X-CRM114-Status: GOOD (  24.81  )
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 iommu <iommu@lists.linux-foundation.org>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 01:55:48PM +0200, Marc Gonzalez wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> Apparently, some Qualcomm arm64 platforms which appear to expose their
> SMMU global register space are still, in fact, using a hypervisor to
> mediate it by trapping and emulating register accesses. Sadly, some
> deployed versions of said trapping code have bugs wherein they go
> horribly wrong for stores using r31 (i.e. XZR/WZR) as the source
> register.

^^^
This should be in the comment instead of "qcom bug".

> While this can be mitigated for GCC today by tweaking the constraints
> for the implementation of writel_relaxed(), to avoid any potential
> arms race with future compilers more aggressively optimising register
> allocation, the simple way is to just remove all the problematic
> constant zeros. For the write-only TLB operations, the actual value is
> irrelevant anyway and any old nearby variable will provide a suitable
> GPR to encode. The one point at which we really do need a zero to clear
> a context bank happens before any of the TLB maintenance where crashes
> have been reported, so is apparently not a problem... :/

Hmm. It would be nice to understand this a little better. In which cases
does XZR appear to work?

> Reported-by: AngeloGioacchino Del Regno <kholk11@gmail.com>
> Reviewed-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Tested-by: AngeloGioacchino Del Regno <kholk11@gmail.com>
> Tested-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> Changes from v1:
> - Tweak commit message (remove "compilers", s/hangs/crashes)
> - Add a comment before writel_relaxed
> ---
>  drivers/iommu/arm-smmu.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 5e54cc0a28b3..3f352268fa8b 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -423,7 +423,8 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>  {
>  	unsigned int spin_cnt, delay;
>  
> -	writel_relaxed(0, sync);
> +	/* Write "garbage" (rather than 0) to work around a qcom bug */
> +	writel_relaxed((unsigned long)sync, sync);
>  	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>  		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
>  			if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
> @@ -1763,8 +1764,9 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>  	}
>  
>  	/* Invalidate the TLB, just in case */
> -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> -	writel_relaxed(0, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
> +	/* Write "garbage" (rather than 0) to work around a qcom bug */
> +	writel_relaxed(reg, gr0_base + ARM_SMMU_GR0_TLBIALLH);
> +	writel_relaxed(reg, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);

Any reason not to make these obviously dummy values e.g.:

	/*
	 * Text from the commit message about broken hypervisor
	 */
	#define QCOM_DUMMY_VAL_NOT_XZR	~0U

That makes the callsites much easier to understand and I doubt there's a
performance impact from allocating an extra register here.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
