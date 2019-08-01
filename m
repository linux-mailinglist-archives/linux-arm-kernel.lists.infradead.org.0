Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FEB7DB4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hZVxHFstyaxo43ubsBufGsuTZkfc0NGvCR4lKWJ2hP8=; b=A5hBjwWzw2JqPr
	cbmxvBlq/UKIlszgbAIMTGaaemC6LF9P3Zf0rZPNzPNyYrBmvi1eZnSRxlqw9HcFDTEFivYyStpyo
	brVmDS66f7GrPneu8fiOuDiKC2N0ks7Bs8Xj9dhpWnKd8JV0xXOW3oBlzYdEckwUldNVPzEyybJX1
	YrH4rX/KmZ1pr1a6yj2ySQQWmfupL5UWaO+DDH7zSeNGDNE4q8Ed9K1dH+CGza6HGvijVS/gbGzYb
	tnG6tO3RLWlCVeGxrbIyKA2TpoX4RO6zMfin4nD5na9oZiodFEjgTQM5ugBwKVU9fb9db5Kr4mFeW
	M20IAGqjd5A2631RoxYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htA5p-0000ZJ-8I; Thu, 01 Aug 2019 12:22:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htA5c-0000Y9-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:21:50 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5C0348E4323954FF7DE6;
 Thu,  1 Aug 2019 20:21:41 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 1 Aug 2019 20:21:31 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, John Garry
 <john.garry@huawei.com>, Robin Murphy <robin.murphy@arm.com>, Will Deacon
 <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, iommu
 <iommu@lists.linux-foundation.org>, linux-kernel
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid unnecessary
 operations
Date: Thu, 1 Aug 2019 20:20:40 +0800
Message-ID: <20190801122040.26024-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_052148_789494_3D8204E3 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
smmu domain does not contain any ats master, the operations of
arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
are always executed. This will impact performance, especially in
multi-core and stress scenarios. For my FIO test scenario, about 8%
performance reduced.

In fact, we can use a atomic member to record how many ats masters the
smmu contains. And check that without traverse the list and check all
masters one by one in the lock protection.

Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index a9a9fabd396804a..1b370d9aca95f94 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -631,6 +631,7 @@ struct arm_smmu_domain {
 
 	struct io_pgtable_ops		*pgtbl_ops;
 	bool				non_strict;
+	atomic_t			nr_ats_masters;
 
 	enum arm_smmu_domain_stage	stage;
 	union {
@@ -1531,7 +1532,7 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_master *master;
 
-	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
+	if (!atomic_read(&smmu_domain->nr_ats_masters))
 		return 0;
 
 	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
@@ -1869,6 +1870,7 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
 	size_t stu;
 	struct pci_dev *pdev;
 	struct arm_smmu_device *smmu = master->smmu;
+	struct arm_smmu_domain *smmu_domain = master->domain;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
 
 	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
@@ -1887,12 +1889,15 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
 		return ret;
 
 	master->ats_enabled = true;
+	atomic_inc(&smmu_domain->nr_ats_masters);
+
 	return 0;
 }
 
 static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 {
 	struct arm_smmu_cmdq_ent cmd;
+	struct arm_smmu_domain *smmu_domain = master->domain;
 
 	if (!master->ats_enabled || !dev_is_pci(master->dev))
 		return;
@@ -1901,6 +1906,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	arm_smmu_atc_inv_master(master, &cmd);
 	pci_disable_ats(to_pci_dev(master->dev));
 	master->ats_enabled = false;
+	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
 static void arm_smmu_detach_dev(struct arm_smmu_master *master)
@@ -1915,10 +1921,10 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 	list_del(&master->domain_head);
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	master->domain = NULL;
 	arm_smmu_install_ste_for_dev(master);
 
 	arm_smmu_disable_ats(master);
+	master->domain = NULL;
 }
 
 static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
