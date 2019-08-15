Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC6E8EF64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLvglzz4y7tx2RKzWM2f3eThyExT2Mc7tWRHcdfnQ9s=; b=bStlyVDvDb+7T1
	eUp0t4YihC9T5MAY6g1q6HzvuavlVat4Pv2D2TC3KUd9WUqSZydDheAtnFD9lLO6VJbne1SwWj7el
	E9OLv7x5WS00eI+XhyvBtJOD5QgrYtdksM2sanetHBLeiEo01hhN7m5OyihTjzbp5HJYu/sOhAidC
	Jsiq677oJhV+uj/PZAs6CKn9WfDu29Lpy0kdQcQmoy+1DJTLXVQeMRA2usN9t8YYrhDcvwWfs3GeG
	VkB2nvSvB8YdBkUwR1J6CI0lJWy8N+u+rj1m0VgOsOEXUEgpIQ7ESgV+qVzjpq9pTZ5srqnkhrWLR
	NFVZyZC4q32aFze4//bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHkr-00076h-Af; Thu, 15 Aug 2019 15:33:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHkT-00075u-O7
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:33:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D7E40607C6; Thu, 15 Aug 2019 15:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565883187;
 bh=uo5H+y/d8CeAGVlGgEqg/owuTjfwykTO28LcSJ+xr/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JWIflaVW/rZSI/hUOugJSCSUO8I4S63HY3j17Tc7s3XxV9diSrv9R3sVX+iJ+q4c0
 UbUTibEJS01goUX2qKNI7HUjTFac97bC2jTjO3ZqSShs+1wq8EZ+CVNOKsC+WmVCzD
 VB+7sMNRxEbktuQQ4wiqjFCqVmhteIGBWYN3krzQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 09845602DB;
 Thu, 15 Aug 2019 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565883186;
 bh=uo5H+y/d8CeAGVlGgEqg/owuTjfwykTO28LcSJ+xr/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RzWtWebSM6sga9d+OFbdNomQXt2erULsaPlh8pnTHBZtZyGoEFu/YQWnwWPs72tQk
 qOKjG9KEdXR6TLhBuDZEmtumeRgnsWuqmbxssYDp3D8XHF0kWV1JwF/qKTDVRqvmsX
 pE5VXpZ0oG+3PfHMM6LMzK8I5mAQKLk7o64a0K2M=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 09845602DB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Thu, 15 Aug 2019 09:33:04 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: Re: [Freedreno] [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
Message-ID: <20190815153304.GD28465@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: freedreno@lists.freedesktop.org,
 Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>,
 jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org,
 Zhen Lei <thunder.leizhen@huawei.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_083309_830278_526C75C0 
X-CRM114-Status: GOOD (  27.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, jean-philippe.brucker@arm.com,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Zhen Lei <thunder.leizhen@huawei.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 04:21:38PM -0600, Jordan Crouse wrote:
> (Sigh, resend. I freaked out my SMTP server)
> 
> This is part of an ongoing evolution for enabling split pagetable support for
> arm-smmu. Previous versions can be found [1].
> 
> In the discussion for v2 Robin pointed out that this is a very Adreno specific
> use case and that is exactly true. Not only do we want to configure and use a
> pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
> not allocate a pagetable for it or touch it until the GPU hardware does so. As
> much as I want it to be a generic concept it really isn't.
> 
> This revision leans into that idea. Most of the same io-pgtable code is there
> but now it is wrapped as an Adreno GPU specific format that is selected by the
> compatible string in the arm-smmu device.
> 
> Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
> to save on wasted memory.
> 
> This isn't as clean as I would like it to be but I think that this is a better
> direction than trying to pretend that the generic format would work.
> 
> I'm tempting fate by posting this and then taking some time off, but I wanted
> to try to kick off a conversation or at least get some flames so I can try to
> refine this again next week. Please take a look and give some advice on the
> direction.

Will, Robin -

Modulo the impl changes from Robin, do you think that using a dedicated
pagetable format is the right approach for supporting split pagetables for the
Adreno GPU?

If so, then is adding the changes to io-pgtable-arm.c possible for 5.4 and then
add the implementation specific code on top of Robin's stack later or do you
feel they should come as part of a package deal?

Jordan

> Jordan Crouse (2):
>   iommu/io-pgtable-arm: Add support for ARM_ADRENO_GPU_LPAE io-pgtable
>     format
>   iommu/arm-smmu: Add support for Adreno GPU pagetable formats
> 
>  drivers/iommu/arm-smmu.c       |   8 +-
>  drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
>  drivers/iommu/io-pgtable.c     |   1 +
>  include/linux/io-pgtable.h     |   2 +
>  4 files changed, 209 insertions(+), 16 deletions(-)
> 
> -- 
> 2.7.4
> 
> _______________________________________________
> Freedreno mailing list
> Freedreno@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/freedreno

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
