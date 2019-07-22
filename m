Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93827052D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qrzGbAoSc8elL+W64GiW1C4z1o9R4bSq2mzg+6p5EP8=; b=qvg3DioMgm41Rd
	dU5JPXyTQTs0nwflLVXkSXieG86nPay6/cljib9Xwt7LiTDaUV1drgdl4dK5dKa/ccG+vXwiMrSHD
	M06q5RTqM3O5E2KTyMVhW4+TN7LbGpkLpjCGSgOJo2tNr/K+gJxbsqT7ASI2Wp5+2rEHVTpOqK//p
	dcNfWVvXG4oVnXlzsFZmoCnJvof/zzCJfcxdNaG7c9wXoUBXXJJfWRSqdLUIOLCVNIfM+4QC3eMwl
	HC/qCjfXSw7OMO+eJXSWYVCkVfxm9EJVOrHz3xFtmHooS/YA2CqEwpD0202L/Y9koKKIbpi5lCRLa
	14SgpODTRkBj6r/KnKJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaxr-0004Lc-HO; Mon, 22 Jul 2019 16:15:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaxV-0004IX-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:14:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA2E028;
 Mon, 22 Jul 2019 09:14:39 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 746C83F694;
 Mon, 22 Jul 2019 09:14:38 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-acpi@vger.kernel.org
Subject: [PATCH] ACPI/IORT: Rename arm_smmu_v3_set_proximity() 'node' local
 variable
Date: Mon, 22 Jul 2019 17:14:33 +0100
Message-Id: <20190722161433.23027-1-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_091441_168371_5940724D 
X-CRM114-Status: GOOD (  12.24  )
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 36a2ba07757d ("ACPI/IORT: Reject platform device creation on NUMA
node mapping failure") introduced a local variable 'node' in
arm_smmu_v3_set_proximity() that shadows the struct acpi_iort_node
pointer function parameter.

Execution was unaffected but it is prone to errors and can lead
to subtle bugs.

Rename the local variable to prevent any issue.

Reported-by: Will Deacon <will@kernel.org>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/acpi/arm64/iort.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index d4551e33fa71..15dbfd657d82 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1256,12 +1256,12 @@ static int  __init arm_smmu_v3_set_proximity(struct device *dev,
 
 	smmu = (struct acpi_iort_smmu_v3 *)node->node_data;
 	if (smmu->flags & ACPI_IORT_SMMU_V3_PXM_VALID) {
-		int node = acpi_map_pxm_to_node(smmu->pxm);
+		int dev_node = acpi_map_pxm_to_node(smmu->pxm);
 
-		if (node != NUMA_NO_NODE && !node_online(node))
+		if (dev_node != NUMA_NO_NODE && !node_online(dev_node))
 			return -EINVAL;
 
-		set_dev_node(dev, node);
+		set_dev_node(dev, dev_node);
 		pr_info("SMMU-v3[%llx] Mapped to Proximity domain %d\n",
 			smmu->base_address,
 			smmu->pxm);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
