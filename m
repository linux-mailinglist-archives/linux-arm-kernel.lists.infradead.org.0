Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A6494C7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pxkTMzK0uYrl/9PLRIfQaM0RwWAgCcPk07R7dq0BKx8=; b=Bf0p30PBR17ZZB
	aiDR1s+eFuh6FosZQHrT+IbTHbrdyPmMxuFdxQ/+7idqFSnYDBXavgYwVVzKb3Ciiovnrm6JguE1U
	Ng0vznVhvlGLosgl7Py8tCkleTh4HFW7Ul43unkaA1loDHtMfdbJsvVDkF56BBGbixy8BNsJXmUVV
	PysTeYJJSp46JDrPwHQj3POfhOlnrXREg7M97NjGh8l1P63MsRc9ct+o1J4yZAJBqmGd24jrxietx
	7TolNT27O2EZjgfy9rD/l1zk6M0VO6bMQRYKLI8GdqSH2PIre2qSZtLWVo/B1PvQwYbdS0rZ+9RSx
	FldRa82/RbfksOuFZd+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmG0-0003cM-MX; Mon, 19 Aug 2019 18:19:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmFl-0003ah-B1
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:19:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0603360;
 Mon, 19 Aug 2019 11:19:35 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D565D3F246;
 Mon, 19 Aug 2019 11:19:34 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 0/4] iommu/io-pgtable: Cleanup and prep for split tables
Date: Mon, 19 Aug 2019 19:19:27 +0100
Message-Id: <cover.1566238530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_111937_426269_174F7984 
X-CRM114-Status: GOOD (  10.86  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Although the io-pgtable-arm formats started out with the notion of being
able to provide a complete ready-to-use context for VMSA-compliant users
to consume, the reality is that users inevitably still have to make their
own adjustments to that context anyway. Worse, though, is that some of
that cruft starts actively getting in the way of future work like
supporting split tables using both TTBRs.

These patches clean things up by stripping io-pgatble's context back to
just the parts directly relevant to what it abstracts, and formalising
the expectation that this only forms a basis from which users can
construct their own complete context.

Series based on v2 of "Arm SMMU refactoring" here:
https://patchwork.kernel.org/patch/11096263/

Robin.


Robin Murphy (4):
  iommu/io-pgtable-arm: Rationalise MAIR handling
  iommu/io-pgtable-arm: Rationalise TTBRn handling
  iommu/io-pgtable-arm: Rationalise TCR handling
  iommu/io-pgtable-arm: Prepare for TTBR1 usage

 drivers/iommu/arm-smmu-v3.c        | 11 +++--------
 drivers/iommu/arm-smmu.c           | 14 +++++++-------
 drivers/iommu/arm-smmu.h           |  2 ++
 drivers/iommu/io-pgtable-arm-v7s.c | 22 +++++++++-------------
 drivers/iommu/io-pgtable-arm.c     | 23 +++++++++--------------
 drivers/iommu/ipmmu-vmsa.c         |  4 ++--
 drivers/iommu/msm_iommu.c          |  4 ++--
 drivers/iommu/mtk_iommu.c          |  4 ++--
 drivers/iommu/qcom_iommu.c         |  9 ++++-----
 include/linux/io-pgtable.h         |  6 +++---
 10 files changed, 43 insertions(+), 56 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
