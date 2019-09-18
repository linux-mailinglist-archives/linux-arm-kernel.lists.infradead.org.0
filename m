Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8BDB67E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ji/gXE058+rWXHw5wq49bR4E02aEodqoNHExscmDW8=; b=sywh/1CBveI4Nh
	ErRs2w5rQu/2qcLlAjaq37E2HOQ7ReX5rm9t6mL1jPkoZzPuPI7LHu0s//OdzS45o4jElNg9RXSw3
	52qF5YyM/6tqHyyPSD7EZZjKKaytXme6iFrhlC0auyhE+HAFHNURfD9q431nfCbeqBiwXNKaiSuub
	2ByiNGR+6YTgqtugMB1HQBDSQhJidyRxW90yVUrL13KR5XEAhIsyWlB0koTuoia+aPXq2tIcTHSgd
	PzAOyJGyEFXauQd2YVNkfCzOy/OEv6AtCZ+ru3X55WBm8QqUT5jwr0Z35dYHbhyQsXVB03286IgVc
	/dGiCrwJKFUv/5IYtlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcek-0004hb-Up; Wed, 18 Sep 2019 16:18:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAceY-0004fz-TU
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:18:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1FC5337;
 Wed, 18 Sep 2019 09:17:59 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DC8203F59C;
 Wed, 18 Sep 2019 09:17:58 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 0/4] iommu/arm-smmu: Remove arm_smmu_flush_ops
Date: Wed, 18 Sep 2019 17:17:47 +0100
Message-Id: <cover.1568820087.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_091803_001018_C3035FDB 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: iommu@lists.linux-foundation.org, joro@8bytes.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Off the back of Will's iommu_flush_ops work, here's an initial followup
to replace the temporary solution in arm-smmu with a full conversion.
Removing teh extra layer of indirection should generally make things a
good bit more efficient, and rather more readable to boot.

Robin.


Robin Murphy (4):
  iommu/arm-smmu: Remove .tlb_inv_range indirection
  iommu/arm-smmu: Remove "leaf" indirection
  iommu/arm-smmu: Move .tlb_sync method to implementation
  iommu/arm-smmu: Remove arm_smmu_flush_ops

 drivers/iommu/arm-smmu.c | 178 +++++++++++++++++++++------------------
 drivers/iommu/arm-smmu.h |  11 +--
 2 files changed, 97 insertions(+), 92 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
