Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574171FB42C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSsclHJVyjRRi1Ilr+Mav9osL6IN+JbFK9UdOK3Ue4g=; b=KR6j/sN5pfovkI
	Jozghe465QFlR1B3vsM/pto9tvoVf1b1x97Z4+RukWMhHH1LRUT1IdrXTgX/1p5IjhUcs04OpizGm
	NwcRsw41KjtWJvi8WIIM6BqGyhFPiz7ldVPmwTk7zDjXu1vfo/6tKo92s8+mEMs8oo+Vlsrv9ujZ4
	I6tJxxKJGq+KHEbwF0UQSA2UTahoctlYfKZn2TqtMNscTJ0GzXzUVsh+Wkbqt8B1Uhb3/JURVyF4O
	daT3Tw8hDO2y2O2ZU5wE/obA6G92KBPW5FUullo0ZLgX4LsmNFjUQ+uKhC0Eu3jFznW65VMV2UFp/
	LSkNynB5/7aPtWK4ka6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCVJ-0004mU-HP; Tue, 16 Jun 2020 14:23:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCCB-00050H-7D
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:04:21 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BDC26A55E90A4815332F;
 Tue, 16 Jun 2020 22:03:57 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 22:03:51 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>
Subject: [PATCH RFC v2 2/4] iommu/arm-smmu-v3: Calculate bits for prod and
 owner
Date: Tue, 16 Jun 2020 21:59:51 +0800
Message-ID: <1592315993-164290-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1592315993-164290-1-git-send-email-john.garry@huawei.com>
References: <1592315993-164290-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070411_452386_EC139B74 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: trivial@kernel.org, maz@kernel.org, joro@8bytes.org,
 John Garry <john.garry@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the arm_smmu_ll_queue.prod will be for counting the "owner" value
and also HW prod pointer, calculate how many bits are available for and
used by each.

This is based on the number of possible CPUs in the system. And we require
that each CPU can issue a minimum of 2 commands per batch - 1 x CMD_SYNC
and at least 1 x other.

Ignoring limits of HW max_n_shift and HW cmdq memory allocation, approx 16K
is the max supported CPUs. For this, max_n_shift would be 14.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 41 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index a8e814c652fe..c3562dc35d45 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -532,6 +532,8 @@ struct arm_smmu_ll_queue {
 		u8			__pad[SMP_CACHE_BYTES];
 	} ____cacheline_aligned_in_smp;
 	u32				max_n_shift;
+	u32				max_cmd_per_batch;
+	u32				owner_count_shift;
 };
 
 struct arm_smmu_queue {
@@ -1515,7 +1517,10 @@ static void arm_smmu_cmdq_batch_add(struct arm_smmu_device *smmu,
 				    struct arm_smmu_cmdq_batch *cmds,
 				    struct arm_smmu_cmdq_ent *cmd)
 {
-	if (cmds->num == CMDQ_BATCH_ENTRIES) {
+	struct arm_smmu_cmdq *q = &smmu->cmdq;
+	struct arm_smmu_ll_queue *llq = &q->q.llq;
+
+	if (cmds->num == llq->max_cmd_per_batch) {
 		arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, false);
 		cmds->num = 0;
 	}
@@ -3141,8 +3146,26 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 				   unsigned long cons_off,
 				   size_t dwords, const char *name)
 {
+	int cpus = num_possible_cpus();
 	size_t qsz;
 
+	/*
+	 * We can get the number of bits required for owner counting by
+	 * log2(nr possible cpus) + 1
+	 */
+	int bits_for_cmdq_owner = ilog2(cpus) + 1;
+	/*
+	 * 1-bit for overflow, 1-bit for wrap, 1-bit extra to ensure prod+wrap
+	 * does not overflow into CPU count.
+	 */
+	int bits_available_for_prod = 32 - 3 - bits_for_cmdq_owner;
+	int entries_for_prod;
+
+	if (bits_available_for_prod < 1) /* How many CPUs??? */
+		return -ENOMEM;
+
+	q->llq.max_n_shift = min_t(int, q->llq.max_n_shift,
+				   bits_available_for_prod);
 	do {
 		qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
 		q->base = dmam_alloc_coherent(smmu->dev, qsz, &q->base_dma,
@@ -3152,6 +3175,22 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 
 		q->llq.max_n_shift--;
 	} while (1);
+	entries_for_prod = 1 << q->llq.max_n_shift;
+
+	/*
+	 * We need at least 2 commands in a batch (1 x CMD_SYNC and 1 x
+	 * whatever else).
+	 */
+	if (entries_for_prod < 2 * cpus)
+		return -ENOMEM;
+
+	/*
+	 * When finding max_cmd_per_batch, deduct 1 entry per batch to take
+	 * account CMD_SYNC
+	 */
+	q->llq.max_cmd_per_batch = min_t(u32, (entries_for_prod - cpus) / cpus,
+					 CMDQ_BATCH_ENTRIES);
+	q->llq.owner_count_shift = q->llq.max_n_shift + 2;
 
 	if (!q->base) {
 		dev_err(smmu->dev,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
