Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A891A8723
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSfmLTE583CaFXEFPbXtFAyWzUhmLjXrohVePx/yje0=; b=PZfupzHIw/Vkuw
	L4W/rh4KueFwUMUlkC948DnmB45eILFZjJ1kzhQg2b+ALCHKh3jpMDwyC2Jly82Wi78Siyb77VQTA
	fSJfpOUNfA79kt/k5gEdwOGSBl3pIxUBSG5hnZ7o6qEf8XP7rNg0nND3mPCqNkmjnkRswisgrr7TV
	54nBJDt+Eqyqi0KEvfu07+LfA6hEaE4+s2OfMgdzkovU4JGc1sPvHQVOf3sDv8Z/9ISGGZJjsXwGK
	59CzXzM1ITMUvGrUlh6hyOrItFWmE60VFEjgLcCfXJuoU8Yfa2/ZjiLMRjE59RKFHSPuqwUxHVVxJ
	jXNzxDwduIsPIFPQ+FrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP6h-0005IW-TZ; Tue, 14 Apr 2020 17:12:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzW-0002dg-Sq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:05:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id v8so12945946wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u0HAzwSaZgER/8QZ83ZQZ3tP3MIVx8mETnUVm6/V0ok=;
 b=JkRjzmM2nMv/rv2CSYLN179blYrWt4qE24gHB6fvaK7iiCOzcyiruWS8RU9vxYUOUd
 0DZH/sOQaty0opTw21po0Pm0ce4idbw6mhOoJyXv3eY9TOcKLpYHanIILGQXh0SPsuBH
 h9azjdsiRzdAW07LSYDzEApf7YxGv371mAn1Xh9vAcvWKSIsmFS44VWE5+1YU+JMwimg
 mWkknrUrtlHzRjoS5eJYOwn673r7L12TP2n2Mx4tjf3LC5ho++Wq5QhNzHWG6JpcdRzo
 mzkuOLuA/vuC/zDAS62oUNeZMqxysc/T5vD8EvfiVKBMC5a1CYf1g6Tcih7PJmG6ir92
 ekMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u0HAzwSaZgER/8QZ83ZQZ3tP3MIVx8mETnUVm6/V0ok=;
 b=Ky/R3O3BXSSKht0sykK3sfwyKVyjFVkVlV39aaYA2G8DT5oL9rvsHPk4QlEZ8uyh6v
 lJGQ2QIBmkVkJahqVb7AAVTViBZtER/3g+a1cXaidS7u9xfHg5qhMZxqxvrWqmuo+rAv
 kStATGpRr11+1yttf4l2O8rpe5dWGlkRa8MwAgb63t2zuY0UDk58cEHShlIRBPfX7wul
 yG3Hq8eeOn7pdqWTcdwS9GYpdps6NbVYlgueV5y/BJnppM+sCMVhOzD+acLq4aOeR3Xy
 CMXK0K/ny/i9AWGYmKAe3My60F4KGyzBTyNMmT/CrT6Np8LCU59AeE+HQ5lkshcIRrhs
 /mxA==
X-Gm-Message-State: AGi0PuaOE/ivMAQO3UN+Gkndq26oIhcgwC303ZFttaPmW1RQf9TbJVfJ
 rPSE1zI2iRATUry/spafeAPs5w==
X-Google-Smtp-Source: APiQypLUqywIpZq3/12p2mCLDdQ4JGrywsXNVqfp8FvSh3tZw2ecvsNlH/ESSfnJwGNoxP55MEbspw==
X-Received: by 2002:a7b:c459:: with SMTP id l25mr796940wmi.52.1586883893294;
 Tue, 14 Apr 2020 10:04:53 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:52 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 25/25] iommu/arm-smmu-v3: Add support for PRI
Date: Tue, 14 Apr 2020 19:02:53 +0200
Message-Id: <20200414170252.714402-26-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100455_112054_2268C859 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For PCI devices that support it, enable the PRI capability and handle PRI
Page Requests with the generic fault handler. It is enabled on demand by
iommu_sva_device_init().

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 284 +++++++++++++++++++++++++++++-------
 1 file changed, 234 insertions(+), 50 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index a7becf1c5347e..8017700c33c46 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -251,6 +251,7 @@
 #define STRTAB_STE_1_S1COR		GENMASK_ULL(5, 4)
 #define STRTAB_STE_1_S1CSH		GENMASK_ULL(7, 6)
 
+#define STRTAB_STE_1_PPAR		(1UL << 18)
 #define STRTAB_STE_1_S1STALLD		(1UL << 27)
 
 #define STRTAB_STE_1_EATS		GENMASK_ULL(29, 28)
@@ -381,6 +382,9 @@
 #define CMDQ_PRI_0_SID			GENMASK_ULL(63, 32)
 #define CMDQ_PRI_1_GRPID		GENMASK_ULL(8, 0)
 #define CMDQ_PRI_1_RESP			GENMASK_ULL(13, 12)
+#define CMDQ_PRI_1_RESP_FAILURE		0UL
+#define CMDQ_PRI_1_RESP_INVALID		1UL
+#define CMDQ_PRI_1_RESP_SUCCESS		2UL
 
 #define CMDQ_RESUME_0_SID		GENMASK_ULL(63, 32)
 #define CMDQ_RESUME_0_RESP_TERM		0UL
@@ -453,12 +457,6 @@ module_param_named(disable_bypass, disable_bypass, bool, S_IRUGO);
 MODULE_PARM_DESC(disable_bypass,
 	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
 
-enum pri_resp {
-	PRI_RESP_DENY = 0,
-	PRI_RESP_FAIL = 1,
-	PRI_RESP_SUCC = 2,
-};
-
 enum arm_smmu_msi_index {
 	EVTQ_MSI_INDEX,
 	GERROR_MSI_INDEX,
@@ -545,7 +543,7 @@ struct arm_smmu_cmdq_ent {
 			u32			sid;
 			u32			ssid;
 			u16			grpid;
-			enum pri_resp		resp;
+			u8			resp;
 		} pri;
 
 		#define CMDQ_OP_RESUME		0x44
@@ -623,6 +621,7 @@ struct arm_smmu_evtq {
 
 struct arm_smmu_priq {
 	struct arm_smmu_queue		q;
+	struct iopf_queue		*iopf;
 };
 
 /* High-level stream table and context descriptor structures */
@@ -756,6 +755,8 @@ struct arm_smmu_master {
 	unsigned int			num_streams;
 	bool				ats_enabled;
 	bool				stall_enabled;
+	bool				pri_supported;
+	bool				prg_resp_needs_ssid;
 	unsigned int			ssid_bits;
 };
 
@@ -1034,14 +1035,6 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		cmd[0] |= FIELD_PREP(CMDQ_PRI_0_SSID, ent->pri.ssid);
 		cmd[0] |= FIELD_PREP(CMDQ_PRI_0_SID, ent->pri.sid);
 		cmd[1] |= FIELD_PREP(CMDQ_PRI_1_GRPID, ent->pri.grpid);
-		switch (ent->pri.resp) {
-		case PRI_RESP_DENY:
-		case PRI_RESP_FAIL:
-		case PRI_RESP_SUCC:
-			break;
-		default:
-			return -EINVAL;
-		}
 		cmd[1] |= FIELD_PREP(CMDQ_PRI_1_RESP, ent->pri.resp);
 		break;
 	case CMDQ_OP_RESUME:
@@ -1621,6 +1614,7 @@ static int arm_smmu_page_response(struct device *dev,
 {
 	struct arm_smmu_cmdq_ent cmd = {0};
 	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+	bool pasid_valid = resp->flags & IOMMU_PAGE_RESP_PASID_VALID;
 	int sid = master->streams[0].id;
 
 	if (master->stall_enabled) {
@@ -1638,8 +1632,27 @@ static int arm_smmu_page_response(struct device *dev,
 		default:
 			return -EINVAL;
 		}
+	} else if (master->pri_supported) {
+		cmd.opcode		= CMDQ_OP_PRI_RESP;
+		cmd.substream_valid	= pasid_valid &&
+					  master->prg_resp_needs_ssid;
+		cmd.pri.sid		= sid;
+		cmd.pri.ssid		= resp->pasid;
+		cmd.pri.grpid		= resp->grpid;
+		switch (resp->code) {
+		case IOMMU_PAGE_RESP_FAILURE:
+			cmd.pri.resp = CMDQ_PRI_1_RESP_FAILURE;
+			break;
+		case IOMMU_PAGE_RESP_INVALID:
+			cmd.pri.resp = CMDQ_PRI_1_RESP_INVALID;
+			break;
+		case IOMMU_PAGE_RESP_SUCCESS:
+			cmd.pri.resp = CMDQ_PRI_1_RESP_SUCCESS;
+			break;
+		default:
+			return -EINVAL;
+		}
 	} else {
-		/* TODO: insert PRI response here */
 		return -ENODEV;
 	}
 
@@ -2236,6 +2249,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
 			 FIELD_PREP(STRTAB_STE_1_STRW, strw));
 
+		if (master->prg_resp_needs_ssid)
+			dst[1] |= STRTAB_STE_1_PPAR;
+
 		if (smmu->features & ARM_SMMU_FEAT_STALLS &&
 		    !master->stall_enabled)
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
@@ -2480,61 +2496,110 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
 
 static void arm_smmu_handle_ppr(struct arm_smmu_device *smmu, u64 *evt)
 {
-	u32 sid, ssid;
-	u16 grpid;
-	bool ssv, last;
-
-	sid = FIELD_GET(PRIQ_0_SID, evt[0]);
-	ssv = FIELD_GET(PRIQ_0_SSID_V, evt[0]);
-	ssid = ssv ? FIELD_GET(PRIQ_0_SSID, evt[0]) : 0;
-	last = FIELD_GET(PRIQ_0_PRG_LAST, evt[0]);
-	grpid = FIELD_GET(PRIQ_1_PRG_IDX, evt[1]);
-
-	dev_info(smmu->dev, "unexpected PRI request received:\n");
-	dev_info(smmu->dev,
-		 "\tsid 0x%08x.0x%05x: [%u%s] %sprivileged %s%s%s access at iova 0x%016llx\n",
-		 sid, ssid, grpid, last ? "L" : "",
-		 evt[0] & PRIQ_0_PERM_PRIV ? "" : "un",
-		 evt[0] & PRIQ_0_PERM_READ ? "R" : "",
-		 evt[0] & PRIQ_0_PERM_WRITE ? "W" : "",
-		 evt[0] & PRIQ_0_PERM_EXEC ? "X" : "",
-		 evt[1] & PRIQ_1_ADDR_MASK);
-
-	if (last) {
-		struct arm_smmu_cmdq_ent cmd = {
-			.opcode			= CMDQ_OP_PRI_RESP,
-			.substream_valid	= ssv,
-			.pri			= {
-				.sid	= sid,
-				.ssid	= ssid,
-				.grpid	= grpid,
-				.resp	= PRI_RESP_DENY,
-			},
+	u32 sid = FIELD_PREP(PRIQ_0_SID, evt[0]);
+
+	bool pasid_valid, last;
+	struct arm_smmu_master *master;
+	struct iommu_fault_event fault_evt = {
+		.fault.type = IOMMU_FAULT_PAGE_REQ,
+		.fault.prm = {
+			.pasid		= FIELD_GET(PRIQ_0_SSID, evt[0]),
+			.grpid		= FIELD_GET(PRIQ_1_PRG_IDX, evt[1]),
+			.addr		= evt[1] & PRIQ_1_ADDR_MASK,
+		},
+	};
+	struct iommu_fault_page_request *pr = &fault_evt.fault.prm;
+
+	pasid_valid = evt[0] & PRIQ_0_SSID_V;
+	last = evt[0] & PRIQ_0_PRG_LAST;
+
+	/* Discard Stop PASID marker, it isn't used */
+	if (!(evt[0] & (PRIQ_0_PERM_READ | PRIQ_0_PERM_WRITE)) && last)
+		return;
+
+	if (last)
+		pr->flags |= IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE;
+	if (pasid_valid)
+		pr->flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
+	if (evt[0] & PRIQ_0_PERM_READ)
+		pr->perm |= IOMMU_FAULT_PERM_READ;
+	if (evt[0] & PRIQ_0_PERM_WRITE)
+		pr->perm |= IOMMU_FAULT_PERM_WRITE;
+	if (evt[0] & PRIQ_0_PERM_EXEC)
+		pr->perm |= IOMMU_FAULT_PERM_EXEC;
+	if (evt[0] & PRIQ_0_PERM_PRIV)
+		pr->perm |= IOMMU_FAULT_PERM_PRIV;
+
+	master = arm_smmu_find_master(smmu, sid);
+	if (WARN_ON(!master))
+		return;
+
+	if (iommu_report_device_fault(master->dev, &fault_evt)) {
+		/*
+		 * No handler registered, so subsequent faults won't produce
+		 * better results. Try to disable PRI.
+		 */
+		struct iommu_page_response resp = {
+			.flags		= pasid_valid ?
+					  IOMMU_PAGE_RESP_PASID_VALID : 0,
+			.pasid		= pr->pasid,
+			.grpid		= pr->grpid,
+			.code		= IOMMU_PAGE_RESP_FAILURE,
 		};
 
-		arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+		dev_warn(master->dev,
+			 "PPR 0x%x:0x%llx 0x%x: nobody cared, disabling PRI\n",
+			 pasid_valid ? pr->pasid : 0, pr->addr, pr->perm);
+		if (last)
+			arm_smmu_page_response(master->dev, NULL, &resp);
 	}
 }
 
 static irqreturn_t arm_smmu_priq_thread(int irq, void *dev)
 {
+	int num_handled = 0;
+	bool overflow = false;
 	struct arm_smmu_device *smmu = dev;
 	struct arm_smmu_queue *q = &smmu->priq.q;
 	struct arm_smmu_ll_queue *llq = &q->llq;
+	size_t queue_size = 1 << llq->max_n_shift;
 	u64 evt[PRIQ_ENT_DWORDS];
 
+	spin_lock(&q->wq.lock);
 	do {
-		while (!queue_remove_raw(q, evt))
+		while (!queue_remove_raw(q, evt)) {
+			spin_unlock(&q->wq.lock);
 			arm_smmu_handle_ppr(smmu, evt);
+			spin_lock(&q->wq.lock);
+			if (++num_handled == queue_size) {
+				q->batch++;
+				wake_up_all_locked(&q->wq);
+				num_handled = 0;
+			}
+		}
 
-		if (queue_sync_prod_in(q) == -EOVERFLOW)
+		if (queue_sync_prod_in(q) == -EOVERFLOW) {
 			dev_err(smmu->dev, "PRIQ overflow detected -- requests lost\n");
+			overflow = true;
+		}
 	} while (!queue_empty(llq));
 
 	/* Sync our overflow flag, as we believe we're up to speed */
 	llq->cons = Q_OVF(llq->prod) | Q_WRP(llq, llq->cons) |
 		      Q_IDX(llq, llq->cons);
 	queue_sync_cons_out(q);
+
+	wake_up_all_locked(&q->wq);
+	spin_unlock(&q->wq.lock);
+
+	/*
+	 * On overflow, the SMMU might have discarded the last PPR in a group.
+	 * There is no way to know more about it, so we have to discard all
+	 * partial faults already queued.
+	 */
+	if (overflow)
+		iopf_queue_discard_partial(smmu->priq.iopf);
+
 	return IRQ_HANDLED;
 }
 
@@ -2569,6 +2634,36 @@ static int arm_smmu_flush_evtq(void *cookie, struct device *dev, int pasid)
 	return ret;
 }
 
+/*
+ * arm_smmu_flush_priq - wait until all requests currently in the queue have
+ *                       been consumed.
+ *
+ * See arm_smmu_flush_evtq().
+ */
+static int arm_smmu_flush_priq(void *cookie, struct device *dev, int pasid)
+{
+	int ret;
+	u64 batch;
+	bool overflow = false;
+	struct arm_smmu_device *smmu = cookie;
+	struct arm_smmu_queue *q = &smmu->priq.q;
+
+	spin_lock(&q->wq.lock);
+	if (queue_sync_prod_in(q) == -EOVERFLOW) {
+		dev_err(smmu->dev, "priq overflow detected -- requests lost\n");
+		overflow = true;
+	}
+
+	batch = q->batch;
+	ret = wait_event_interruptible_locked(q->wq, queue_empty(&q->llq) ||
+					      q->batch >= batch + 2);
+	spin_unlock(&q->wq.lock);
+
+	if (overflow)
+		iopf_queue_discard_partial(smmu->priq.iopf);
+	return ret;
+}
+
 static int arm_smmu_device_disable(struct arm_smmu_device *smmu);
 
 static irqreturn_t arm_smmu_gerror_handler(int irq, void *dev)
@@ -3270,6 +3365,75 @@ static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
 	pci_disable_pasid(pdev);
 }
 
+static int arm_smmu_init_pri(struct arm_smmu_master *master)
+{
+	int pos;
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return -EINVAL;
+
+	if (!(master->smmu->features & ARM_SMMU_FEAT_PRI))
+		return 0;
+
+	pdev = to_pci_dev(master->dev);
+	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_PRI);
+	if (!pos)
+		return 0;
+
+	/* If the device supports PASID and PRI, set STE.PPAR */
+	if (master->ssid_bits)
+		master->prg_resp_needs_ssid = pci_prg_resp_pasid_required(pdev);
+
+	master->pri_supported = true;
+	return 0;
+}
+
+static int arm_smmu_enable_pri(struct arm_smmu_master *master)
+{
+	int ret;
+	struct pci_dev *pdev;
+	/*
+	 * TODO: find a good inflight PPR number. We should divide the PRI queue
+	 * by the number of PRI-capable devices, but it's impossible to know
+	 * about future (probed late or hotplugged) devices. So we're at risk of
+	 * dropping PPRs (and leaking pending requests in the FQ).
+	 */
+	size_t max_inflight_pprs = 16;
+
+	if (!master->pri_supported || !master->ats_enabled)
+		return -ENODEV;
+
+	pdev = to_pci_dev(master->dev);
+
+	ret = pci_reset_pri(pdev);
+	if (ret)
+		return ret;
+
+	ret = pci_enable_pri(pdev, max_inflight_pprs);
+	if (ret) {
+		dev_err(master->dev, "cannot enable PRI: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void arm_smmu_disable_pri(struct arm_smmu_master *master)
+{
+	struct pci_dev *pdev;
+
+	if (!dev_is_pci(master->dev))
+		return;
+
+	pdev = to_pci_dev(master->dev);
+
+	if (!pdev->pri_enabled)
+		return;
+
+	pci_disable_pri(pdev);
+}
+
 static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 {
 	unsigned long flags;
@@ -3705,6 +3869,8 @@ static int arm_smmu_add_device(struct device *dev)
 	    smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
 		master->stall_enabled = true;
 
+	arm_smmu_init_pri(master);
+
 	ret = iommu_device_link(&smmu->iommu, dev);
 	if (ret)
 		goto err_disable_pasid;
@@ -3741,6 +3907,7 @@ static void arm_smmu_remove_device(struct device *dev)
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
 	iopf_queue_remove_device(smmu->evtq.iopf, dev);
+	iopf_queue_remove_device(smmu->priq.iopf, dev);
 	WARN_ON(iommu_sva_disable(dev));
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
@@ -3864,7 +4031,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 
 static bool arm_smmu_iopf_supported(struct arm_smmu_master *master)
 {
-	return master->stall_enabled;
+	return master->stall_enabled || master->pri_supported;
 }
 
 static bool arm_smmu_dev_has_feature(struct device *dev,
@@ -3922,6 +4089,15 @@ static int arm_smmu_dev_enable_sva(struct device *dev)
 		ret = iopf_queue_add_device(master->smmu->evtq.iopf, dev);
 		if (ret)
 			goto err_disable_sva;
+	} else if (master->pri_supported) {
+		ret = iopf_queue_add_device(master->smmu->priq.iopf, dev);
+		if (ret)
+			goto err_disable_sva;
+
+		if (arm_smmu_enable_pri(master)) {
+			iopf_queue_remove_device(master->smmu->priq.iopf, dev);
+			goto err_disable_sva;
+		}
 	}
 	return 0;
 
@@ -3957,7 +4133,9 @@ static int arm_smmu_dev_disable_feature(struct device *dev,
 
 	switch (feat) {
 	case IOMMU_DEV_FEAT_SVA:
+		arm_smmu_disable_pri(master);
 		iopf_queue_remove_device(master->smmu->evtq.iopf, dev);
+		iopf_queue_remove_device(master->smmu->priq.iopf, dev);
 		return iommu_sva_disable(dev);
 	default:
 		return -EINVAL;
@@ -4101,6 +4279,11 @@ static int arm_smmu_init_queues(struct arm_smmu_device *smmu)
 	if (!(smmu->features & ARM_SMMU_FEAT_PRI))
 		return 0;
 
+	smmu->priq.iopf = iopf_queue_alloc(dev_name(smmu->dev),
+					   arm_smmu_flush_priq, smmu);
+	if (!smmu->priq.iopf)
+		return -ENOMEM;
+
 	return arm_smmu_init_one_queue(smmu, &smmu->priq.q, ARM_SMMU_PRIQ_PROD,
 				       ARM_SMMU_PRIQ_CONS, PRIQ_ENT_DWORDS,
 				       "priq");
@@ -5078,6 +5261,7 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 	iommu_device_sysfs_remove(&smmu->iommu);
 	arm_smmu_device_disable(smmu);
 	iopf_queue_free(smmu->evtq.iopf);
+	iopf_queue_free(smmu->priq.iopf);
 
 	return 0;
 }
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
