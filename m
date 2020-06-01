Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714F31EA32A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp2z0DK5Umw2e4RyXKMxgBDh1xDCpkG2v4s1sOmNWlc=; b=QQ/4kx1MTzTDCu
	sSZSPmfT09HwXLhWOLlyPT5LE3K/5mJP4lQXV/hT3NfPUuZ0RBFzvNr4V4PxOY6XPwq7kOs+0Df6Q
	cuKLhj1iQn6Fx0zFkJmpS0ATvAMHI/4Ne5SuzNI6CemueN+MEx8IG3lhtOPhm+kUAz33ziYHmpqGi
	lVdTR239N8NR4oS/qV45uH4e/iC+4LGbzclrpXewf2VkJyLQIdQAgay//FGb9DGEuMLV+OxXLfV1p
	jmm7OGtbd23FFrXzfRfXaCoX2sfPN+SzuG8ZMqtk20+vyD2KpqH+e0dPhneuUL4QDP3hRlfp7GoL+
	S87+mS/Fz2EFZsuKrS/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfj2c-0002wB-9U; Mon, 01 Jun 2020 11:55:42 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj1q-0008SQ-08
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:54:55 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 54D2BCBCB725E06F887B;
 Mon,  1 Jun 2020 19:54:48 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 19:54:38 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>
Subject: [PATCH RFC 2/2] iommu/arm-smmu-v3: Remove cmpxchg() in
 arm_smmu_cmdq_issue_cmdlist()
Date: Mon, 1 Jun 2020 19:50:48 +0800
Message-ID: <1591012248-37956-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1591012248-37956-1-git-send-email-john.garry@huawei.com>
References: <1591012248-37956-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_045454_223911_3ABE3901 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

It has been shown that the cmpxchg() for finding space in the cmdq can
be a bottleneck:
- For more CPUs contenting the cmdq, cmpxchg() will fail more often.
- Since the software-maintained cons pointer is updated on the same 64b
  memory region, the chance of cmpxchg() failure increases again.

The cmpxchg() is removed as part of 2 related changes:
- If a CMD_SYNC is always issued for a batch, the cmdq can - in theory -
  never fill, since we always wait for a CMD_SYNC to be consumed. We must
  issue the CMD_SYNC so that a CPU will be always limited to issuing
  max_cmd_per_batch commands. Generally for DMA unmap ops, a CMD_SYNC
  is always issued anyway.
  As such, the cmdq locking is removed, and we only longer maintain cons
  in software (this needs to be revised for !MSI support).
- Update prod and cmdq owner in a single operation. For this, we count the
  prod and owner in separate regions in arm_smmu_ll_queue.prod.
  As with simple binary counting, once the prod+wrap fields overflow, they
  will zero. They will overflow into "owner" region, but this is ok as we
  have accounted for the extra value.
  As for the "owner", we now count this value, instead of setting a flag.
  Similar to before, once the owner has finished gathering, it will clear
  this mask. As such, a CPU declares itself as the "owner" when it reads
  zero for this field. This zeroing will also clear possible overflow in
  wrap+prod region.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 58 +++++++++++----------------------------------
 1 file changed, 14 insertions(+), 44 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e607ab5a4cbd..d6c7d82f9cf8 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1375,7 +1375,7 @@ static int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
 				       u64 *cmds, int n, bool sync)
 {
 	u64 cmd_sync[CMDQ_ENT_DWORDS];
-	u32 prod;
+	u32 prod, prodx;
 	unsigned long flags;
 	bool owner;
 	struct arm_smmu_cmdq *cmdq = &smmu->cmdq;
@@ -1383,33 +1383,21 @@ static int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
 		.max_n_shift = cmdq->q.llq.max_n_shift,
 	}, head = llq;
 	int ret = 0;
+	u32 owner_val = 1 << cmdq->q.llq.owner_count_shift;
+	u32 prod_mask = GENMASK(cmdq->q.llq.max_n_shift, 0);
+	u32 owner_mask = GENMASK(30, cmdq->q.llq.owner_count_shift);
+
+	/* always issue a CMD_SYNC TODO: fixup callers for this */
+	sync = true;
 
 	/* 1. Allocate some space in the queue */
 	local_irq_save(flags);
-	llq.val = READ_ONCE(cmdq->q.llq.val);
-	do {
-		u64 old;
-
-		while (!queue_has_space(&llq, n + sync)) {
-			local_irq_restore(flags);
-			if (arm_smmu_cmdq_poll_until_not_full(smmu, &llq))
-				dev_err_ratelimited(smmu->dev, "CMDQ timeout\n");
-			local_irq_save(flags);
-		}
 
-		head.cons = llq.cons;
-		head.prod = queue_inc_prod_n(&llq, n + sync) |
-					     CMDQ_PROD_OWNED_FLAG;
+	prodx = atomic_fetch_add(n + sync + owner_val, &cmdq->q.llq.atomic.prod);
 
-		old = cmpxchg_relaxed(&cmdq->q.llq.val, llq.val, head.val);
-		if (old == llq.val)
-			break;
-
-		llq.val = old;
-	} while (1);
-	owner = !(llq.prod & CMDQ_PROD_OWNED_FLAG);
-	head.prod &= ~CMDQ_PROD_OWNED_FLAG;
-	llq.prod &= ~CMDQ_PROD_OWNED_FLAG;
+	owner = !(prodx & owner_mask);
+	llq.prod = prod_mask & prodx;
+	head.prod = queue_inc_prod_n(&llq, n + sync);
 
 	/*
 	 * 2. Write our commands into the queue As with simple binary counting, once the prod+wrap fields overflow, they
  will zero. They will overflow into "owner" region, but this is ok as we
  have accounted for the extra value.
@@ -1420,14 +1408,6 @@ static int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
 		prod = queue_inc_prod_n(&llq, n);
 		arm_smmu_cmdq_build_sync_cmd(cmd_sync, smmu, prod);
 		queue_write(Q_ENT(&cmdq->q, prod), cmd_sync, CMDQ_ENT_DWORDS);
-
-		/*
-		 * In order to determine completion of our CMD_SYNC, we must
-		 * ensure that the queue can't wrap twice without us noticing.
-		 * We achieve that by taking the cmdq lock as shared before
-		 * marking our slot as valid.
-		 */
-		arm_smmu_cmdq_shared_lock(cmdq);
 	}
 
 	/* 3. Mark our slots as valid, ensuring commands are visible first */
@@ -1439,11 +1419,10 @@ static int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
 		/* a. Wait for previous owner to finish */
 		atomic_cond_read_relaxed(&cmdq->owner_prod, VAL == llq.prod);
 
-		/* b. Stop gathering work by clearing the owned flag */
-		prod = atomic_fetch_andnot_relaxed(CMDQ_PROD_OWNED_FLAG,
+		/* b. Stop gathering work by clearing the owned mask */
+		prod = atomic_fetch_andnot_relaxed(owner_mask,
 						   &cmdq->q.llq.atomic.prod);
-		prod &= ~CMDQ_PROD_OWNED_FLAG;
-
+		prod &= prod_mask;
 		/*
 		 * c. Wait for any gathered work to be written to the queue.
 		 * Note that we read our own entries so that we have the control
@@ -1476,15 +1455,6 @@ static int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
 					    readl_relaxed(cmdq->q.prod_reg),
 					    readl_relaxed(cmdq->q.cons_reg));
 		}
-
-		/*
-		 * Try to unlock the cmq lock. This will fail if we're the last
-		 * reader, in which case we can safely update cmdq->q.llq.cons
-		 */
-		if (!arm_smmu_cmdq_shared_tryunlock(cmdq)) {
-			WRITE_ONCE(cmdq->q.llq.cons, llq.cons);
-			arm_smmu_cmdq_shared_unlock(cmdq);
-		}
 	}
 
 	local_irq_restore(flags);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
