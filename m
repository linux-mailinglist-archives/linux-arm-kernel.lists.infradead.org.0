Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02614950D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 00:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2R11FuccugUEVV+HITs0PKKdaoXA/kcQAhN1kdDzyA8=; b=OA7Lx0HqcETKbg
	T39/q4ti9Cotht0dyRWUFo8uw8smi57yAxdkYm/NDF20/RrUwrsLw/tNwuwDWxUFyDlMtKCu2mYKO
	3Nu3M7ge+UVHNlLkYS4W3Y4LBDSNM/P/CxrJUDneWBiQCvCF3X+DcNK//RRUTg8vImvDlidVFgeOA
	2uVXKin08sEpNEzELJ6pEjgKye4IrrIULFkbF+1Ie4oxeFwOAM4yqt5mGF96R7AL+T24dvUhvLstI
	8mfkyT65Dh2BRC8x07AM+DD8b5scOO0OwfoZEtLYIUcaILzE8b/p5uV3MVK4PH346ZqqxJrDYy+We
	/3nPc+wC1eaa1aLCIlsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqEs-0004Sp-9z; Mon, 19 Aug 2019 22:34:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqEf-0004Rz-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 22:34:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B794960769; Mon, 19 Aug 2019 22:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566254082;
 bh=k/EgUsTzu4RwsB7lsqAa1G7TslPF7mLAqK9TxAyERwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JBDxn7rbFeImSLClHBcuxI7/RRnsGc308ub4SDdRiNnXkQ/UF0xvB7Gf55FMK/3AU
 8WxCO2t4LgdAnD6CTWru3+FT3aMwhbtpQdBNWEzOVkFXUZPpy/hjVzWVCPWe4XSZIH
 isukimzdOdt+jBWF92u49gHsKfP5UocDMrwZcVIM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 669F7602A8;
 Mon, 19 Aug 2019 22:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566254082;
 bh=k/EgUsTzu4RwsB7lsqAa1G7TslPF7mLAqK9TxAyERwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JBDxn7rbFeImSLClHBcuxI7/RRnsGc308ub4SDdRiNnXkQ/UF0xvB7Gf55FMK/3AU
 8WxCO2t4LgdAnD6CTWru3+FT3aMwhbtpQdBNWEzOVkFXUZPpy/hjVzWVCPWe4XSZIH
 isukimzdOdt+jBWF92u49gHsKfP5UocDMrwZcVIM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 669F7602A8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Mon, 19 Aug 2019 16:34:39 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 4/4] iommu/io-pgtable-arm: Prepare for TTBR1 usage
Message-ID: <20190819223439.GG28465@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org,
 joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, robdclark@gmail.com
References: <cover.1566238530.git.robin.murphy@arm.com>
 <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_153445_767405_256D0512 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robdclark@gmail.com, joro@8bytes.org, will@kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:19:31PM +0100, Robin Murphy wrote:
> Now that callers are free to use a given table for TTBR1 if they wish
> (all they need do is shift the provided attributes when constructing
> their final TCR value), the only remaining impediment is the address
> validation on map/unmap. The fact that the LPAE address space split is
> symmetric makes this easy to accommodate - by simplifying the current
> range checks into explicit tests that address bits above IAS are all
> zero, it then follows straightforwardly to add the inverse test to
> allow the all-ones case as well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 09cb20671fbb..f39c50356351 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -475,13 +475,13 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = ARM_LPAE_START_LVL(data);
>  	arm_lpae_iopte prot;
> +	long iaext = (long)iova >> data->iop.cfg.ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
>  		return 0;
>  
> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
> -		    paddr >= (1ULL << data->iop.cfg.oas)))
> +	if (WARN_ON((iaext && ~iaext) || paddr >> data->iop.cfg.oas))
>  		return -ERANGE;
>  
>  	prot = arm_lpae_prot_to_pte(data, iommu_prot);

We'll want to cast away the sign extended bits before mapping the iova, this
might be a good patch for that too as long as we are calculating the iaext.

> @@ -647,8 +647,9 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>  	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int lvl = ARM_LPAE_START_LVL(data);
> +	long iaext = (long)iova >> data->iop.cfg.ias;
>  
> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias)))
> +	if (WARN_ON(iaext && ~iaext))
>  		return 0;
>  
>  	return __arm_lpae_unmap(data, iova, size, lvl, ptep);

And here too.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
