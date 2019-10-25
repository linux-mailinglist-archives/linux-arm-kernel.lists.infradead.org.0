Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC64E534E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vtxd2z8am3YTfAYjBZ+QDMhSRqk1yG1WsaiE+FWSkqY=; b=XwdztQVcn9Gfek
	9IYc8ywZjiV8mp6Wxi/bT7M4lH3DS75xY/Xdh7zWnpnlq2VNwGU6kIaLJjCgPwKwnYuDCqp+PMr9K
	rkeXLoJ+PkyNl5h9c6xvfAg5DPjWV63pBuwtdt8EeyUzmiFRWvrD+gnHqcqoTBsnI4VCFJFQhbnMW
	Lthxr5CbbixG4nSTCOEO/S33mGp4bhzPmxVGh5FjVzXSOPZF3/lJNl/ORV5IiJBgpKISGodHMmISn
	Bz7EeHkcGJFy5GDnWH57NN4f1xSqWjTcqy27Q4lxZ6ptMWo5K8LHOAf0q7jiV2orQ0BjNw1gPuUak
	e1fxDEK1pTosRF8eZEhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO41M-0003vn-0C; Fri, 25 Oct 2019 18:09:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO410-0003tL-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A8E828;
 Fri, 25 Oct 2019 11:08:43 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 981493F6C4;
 Fri, 25 Oct 2019 11:08:42 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 00/10] iommu/io-pgtable: Cleanup and prep for split tables
Date: Fri, 25 Oct 2019 19:08:29 +0100
Message-Id: <cover.1572024119.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110846_248427_7BB79C91 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Since the flawed first attempt, I've reworked things with an abstracted
TCR and an explicit TTBR1 quirk. I originally envisaged the need to pass
the quirk all the way down to the TLBI calls, hence getting diverted
into trying to make the parameter passing less cluttered in general, but
in the end it turned out fairly neat to just fix the indexing such that
we can always just pass around the original unmodified IOVA. Most of the
new patches come from staring at that indexing code for long enough to
see the subtle inefficiencies that were worth ironing out, plus a bit of
random cleanup which doesn't feel worth posting separately.

Note that these patches depend on the fixes already queued in -rc4,
otherwise there will be conflicts in arm_mali_lpae_alloc_pgtable().

Robin.


Robin Murphy (10):
  iommu/io-pgtable: Make selftest gubbins consistently __init
  iommu/io-pgtable-arm: Rationalise size check
  iommu/io-pgtable-arm: Simplify bounds checks
  iommu/io-pgtable-arm: Simplify start level lookup
  iommu/io-pgtable-arm: Simplify PGD size handling
  iommu/io-pgtable-arm: Simplify level indexing
  iommu/io-pgtable-arm: Rationalise MAIR handling
  iommu/io-pgtable-arm: Rationalise TTBRn handling
  iommu/io-pgtable-arm: Rationalise TCR handling
  iommu/io-pgtable-arm: Prepare for TTBR1 usage

 drivers/iommu/arm-smmu-v3.c        |  45 ++----
 drivers/iommu/arm-smmu.c           |  20 +--
 drivers/iommu/arm-smmu.h           |  27 ++++
 drivers/iommu/io-pgtable-arm-v7s.c |  37 +++--
 drivers/iommu/io-pgtable-arm.c     | 238 ++++++++++++++---------------
 drivers/iommu/io-pgtable.c         |   2 +-
 drivers/iommu/ipmmu-vmsa.c         |   4 +-
 drivers/iommu/msm_iommu.c          |   4 +-
 drivers/iommu/mtk_iommu.c          |   4 +-
 drivers/iommu/qcom_iommu.c         |  15 +-
 include/linux/io-pgtable.h         |  19 ++-
 11 files changed, 209 insertions(+), 206 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
