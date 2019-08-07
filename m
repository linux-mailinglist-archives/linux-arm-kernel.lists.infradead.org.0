Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE11855A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 00:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ps+X9I2nrHICRIoDzffOCZArnIjRsKAaZr1yz0kiLM0=; b=E4e
	UPhuZxxOgQSX6HwyNbp3fKVJHcPq0T/gL7LEd1nfpNUTRiT54WcTRggXawukePBg815eVvZfyLgbg
	TDz/Ix22muzEi4YJy3r+2QYSYIsOvQkm7Yf1wkMOAnVARpqbHGx2U76D7gQodIHpKIuDbTHpB9WVD
	5uoJPlP5bWJmfYpHNuL9eJVrkxC+LIIanuma+IaOe+pSwgk/lO0z/+5aUt33IuE5zwtZJAavbJZhR
	HoeVcweRorBayMbd6rdRCyOanIHRLqyfN7LgZeqXUMEOOok/YXny0f3AuVLvwemVAlBUww3VdFuB/
	h/MD4UcLcl5rxJPIw3nOlezM4xRbVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUHt-00021u-Oh; Wed, 07 Aug 2019 22:20:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUHj-00021A-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 22:19:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 89E4D60ACA; Wed,  7 Aug 2019 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216393;
 bh=AsxvbLeJVZmEE+jtGajQWWI22/FywEfAo7Ps7nevM1w=;
 h=From:To:Cc:Subject:Date:From;
 b=Nv37NQ2cJqFLUaZYxTPgpGRuiBMG3a/aduUmxQqm0hOEdFD0v8BHw/XkJvXx9MXLY
 QD6k4BLVMZrYqORNFL7AT6s57PpXlFeOzdBUsKxd4bF1CiiObO2CDt2MMO8KLcslDK
 PYuUm1tcheUeIatIS646Zg62x8xk/GzNpsgTy3DU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6D93A608A5;
 Wed,  7 Aug 2019 22:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216392;
 bh=AsxvbLeJVZmEE+jtGajQWWI22/FywEfAo7Ps7nevM1w=;
 h=From:To:Cc:Subject:Date:From;
 b=Q3Ox/+VICQiHcBcLyDCeEOg2zst+yk0qsF7GtHJI8k0lKTmAURfRpS2R1Iok0vbyh
 xOX7U18y23C8rJNCp+s0JyzOUKNjBrOa0M0d0yES4EM6nJ0VLIdOPQ29/8s0tGrRGi
 iF2L2ibuY46XWUR5y1HhjpQ7DsPxegjXw1f4G4B4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6D93A608A5
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
Date: Wed,  7 Aug 2019 16:19:44 -0600
Message-Id: <1565216386-28309-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_151955_102493_D6CC84B8 
X-CRM114-Status: GOOD (  13.92  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>,
 jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Zhen Lei <thunder.leizhen@huawei.com>,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is part of an ongoing evolution for enabling split pagetable support for
arm-smmu. Previous versions can be found [1].

In the discussion for v2 Robin pointed out that this is a very Adreno specific
use case and that is exactly true. Not only do we want to configure and use a
pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
not allocate a pagetable for it or touch it until the GPU hardware does so. As
much as I want it to be a generic concept it really isn't.

This revision leans into that idea. Most of the same io-pgtable code is there
but now it is wrapped as an Adreno GPU specific format that is selected by the
compatible string in the arm-smmu device.

Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
to save on wasted memory.

This isn't as clean as I would like it to be but I think that this is a better
direction than trying to pretend that the generic format would work.

I'm tempting fate by posting this and then taking some time off, but I wanted
to try to kick off a conversation or at least get some flames so I can try to
refine this again next week. Please take a look and give some advice on the
direction.

[1] https://patchwork.freedesktop.org/series/63403/

Jordan

Jordan Crouse (2):
  iommu/io-pgtable-arm: Add support for ARM_ADRENO_GPU_LPAE io-pgtable
    format
  iommu/arm-smmu: Add support for Adreno GPU pagetable formats

 drivers/iommu/arm-smmu.c       |   8 +-
 drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
 drivers/iommu/io-pgtable.c     |   1 +
 include/linux/io-pgtable.h     |   2 +
 4 files changed, 209 insertions(+), 16 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
