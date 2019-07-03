Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3315A5E2C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b9VpiKi236sbCE5rtxKjgLja8zE+WxB2A/p8lyKBmFg=; b=LJ0kJb+kyH4iVm
	8EUPMEVoOjHCleb+dI0iuTWVrfLwsJs01BgCwlMSqspWC2QdZoJuKf0TTq3x4ROyXpH1+ItHGG1Kq
	xaBIZnMAszV29PWIz5xEUrIFjMKgJt99t0/AAmHxsSuM3uy+8Cv4hSQmpZ7WzIi1nEVI/dmtEPh4u
	PLt6S4MgtH/QitFkxp1H4Ro4OYi4IBs0zRxWJcN4ds+AdWYzcKyVbvLgPft0JaOcIxKj1HbyGQz7w
	W6hPtrh69Rrw5ReUcl4NuBw8CW8UlEGltwIcolv9e0gdFPfsnMvFVzBxPrb8IGN1zfLzU9ltgCB84
	VYoW6KRvnq/cd1c1N24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hidOJ-0003HU-7k; Wed, 03 Jul 2019 11:25:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hidO6-0003H4-14
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:25:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 580EC344;
 Wed,  3 Jul 2019 04:25:21 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8861A3F703;
 Wed,  3 Jul 2019 04:25:20 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: will@kernel.org
Subject: [PATCH] iommu/arm-smmu-v3: Invalidate ATC when detaching a device
Date: Wed,  3 Jul 2019 12:19:20 +0100
Message-Id: <20190703111920.23637-1-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_042522_119541_3F287E8B 
X-CRM114-Status: UNSURE (   8.96  )
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
Cc: joro@8bytes.org, robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We make the invalid assumption in arm_smmu_detach_dev() that the ATC is
clear after calling pci_disable_ats(). For one thing, only enabling the
PCIe ATS capability constitutes an implicit invalidation event, so the
comment was wrong. More importantly, the ATS capability isn't necessarily
disabled by pci_disable_ats() in a PF, if the associated VFs have ATS
enabled. Explicitly invalidate all ATC entries in arm_smmu_detach_dev().
The endpoint cannot form new ATC entries because STE.EATS is clear.

Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
Reported-by: Manoj Kumar <Manoj.Kumar3@arm.com>
Reported-by: Robin Murphy <Robin.Murphy@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
 drivers/iommu/arm-smmu-v3.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 4d5a694f02c2..0fee8f7957ec 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1884,9 +1884,13 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
 
 static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 {
+	struct arm_smmu_cmdq_ent cmd;
+
 	if (!master->ats_enabled || !dev_is_pci(master->dev))
 		return;
 
+	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
+	arm_smmu_atc_inv_master(master, &cmd);
 	pci_disable_ats(to_pci_dev(master->dev));
 	master->ats_enabled = false;
 }
@@ -1906,7 +1910,6 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 	master->domain = NULL;
 	arm_smmu_install_ste_for_dev(master);
 
-	/* Disabling ATS invalidates all ATC entries */
 	arm_smmu_disable_ats(master);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
