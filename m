Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E693F1EA327
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bIHtePJ0Ggiy81/h6VHalJjdJH3mYORNIpddOhuJ3w=; b=XqeXJRjfqyFsm0
	GbHssUFWRwkDNwzKGEazUJ4Y2SjHgoHtXyOVA2lZymBP1x8OhLHhbm1dOZK+OleRpBQ5ztNBuW1p0
	JZX6ep7kv/6V4ElTGPQZ2wEx37KZocBe9Z7jWmsX0TK4d9rc5bS0DSkAPoiPtbJEA1oo+2yW62f2x
	XWaz9OOnJj83Z9TTscx2kpwW5pFTgHQ2shgurChqSG4jiJpwcnNSMgDDKjdG4BOQml7QjRzrMb8VE
	1IV96/VuwsTvDSlytS1KKaviMiA8J/9A0stvPnNcNkJLXUo6etytauYfQRPV1VkCvYUSMQ6T4cqQ1
	dLeL0AzZVfUXGKqoIQWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfj2J-0000DI-3b; Mon, 01 Jun 2020 11:55:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj1o-0008SO-Bx
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:54:54 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5C1D6AE3451ABF32B2F5;
 Mon,  1 Jun 2020 19:54:48 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 19:54:37 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>
Subject: [PATCH RFC 1/2] iommu/arm-smmu-v3: Calculate bits for prod and owner
Date: Mon, 1 Jun 2020 19:50:47 +0800
Message-ID: <1591012248-37956-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1591012248-37956-1-git-send-email-john.garry@huawei.com>
References: <1591012248-37956-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_045452_566451_B933CA70 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
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
Cc: song.bao.hua@hisilicon.com, maz@kernel.org, joro@8bytes.org,
 John Garry <john.garry@huawei.com>, iommu@lists.linux-foundation.org,
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
is the max supported CPUs. For this, max_n_shift would be 15.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..e607ab5a4cbd 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -530,6 +530,8 @@ struct arm_smmu_ll_queue {
 		u8			__pad[SMP_CACHE_BYTES];
 	} ____cacheline_aligned_in_smp;
 	u32				max_n_shift;
+	u32				max_cmd_per_batch;
+	u32				owner_count_shift;
 };
 
 struct arm_smmu_queue {
@@ -1512,7 +1514,10 @@ static void arm_smmu_cmdq_batch_add(struct arm_smmu_device *smmu,
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
@@ -3156,8 +3161,24 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 				   unsigned long cons_off,
 				   size_t dwords, const char *name)
 {
+	int cpus = num_possible_cpus();
 	size_t qsz;
 
+	/*
+	 * We can get the number of bits required for owner counting by
+	 * log2(nr possible cpus) + 1, but we have to take into account that he
+	 * wrap+prod could overflow before the owner zeroes, so add 1
+	 * more (to cpus) for bits_for_cmdq_owner calculation.
+	 */
+	int bits_for_cmdq_owner = ilog2(cpus + 1) + 1;
+	/* 1-bit for overflow, 1-bit for wrap */
+	int bits_available_for_prod = 32 - 2 - bits_for_cmdq_owner;
+	int entries_for_prod;
+
+	if (bits_available_for_prod < 1) /* this would be insane - how many CPUs? */
+		return -ENOMEM;
+
+	q->llq.max_n_shift = min_t(int, q->llq.max_n_shift, bits_available_for_prod);
 	do {
 		qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
 		q->base = dmam_alloc_coherent(smmu->dev, qsz, &q->base_dma,
@@ -3167,6 +3188,17 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 
 		q->llq.max_n_shift--;
 	} while (1);
+	entries_for_prod = 1 << q->llq.max_n_shift;
+
+	/*
+	 * We need at least 2 commands in a batch (1 x CMD_SYNC and 1 x whatever else).
+	 * Assuming orig max_n_shift >= 17, this would mean ~16K CPUs max.
+	 */
+	if (entries_for_prod < 2 * cpus)
+		return -ENOMEM;
+
+	q->llq.max_cmd_per_batch = min_t(u32, entries_for_prod / cpus, CMDQ_BATCH_ENTRIES);
+	q->llq.owner_count_shift = q->llq.max_n_shift + 1;
 
 	if (!q->base) {
 		dev_err(smmu->dev,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
