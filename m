Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC5F1BFF06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qpi4bIOHAXUXv10jLBVqC8o4kT3ehaO4oPx1WprhT/Y=; b=TniRYQh9qVXNup
	A+oE9V1FafTQuYQHyZRKAH3ezQk8kYrQATEUKJJGxtsLITiqOgBYL8zE/TD+jYD2KPhBlk7ysWg/N
	QP1KqTsiDTnv1Dwl1xxzvSnx1kjX6d+u1QSWBU5hP2G+L3cSSNxy5KzdYZig8y0weUbwROTBqsXOp
	oMruUJSAM4N2vFKimal3V4ZrAMm13TRM4Xs6FoPhu+ae3hpo9nVR4swFIG5jAQRnMiuGzHCwE2ph1
	eYigO4boZGXxFA8zj6dLCRzg/5/yGy7iTqiYLrfU5X82mzBfEuwAINVuSNbVtjAICcYsSH3hHjVci
	+h1LgTP5bAzKwD9AUS6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAU6-000334-TW; Thu, 30 Apr 2020 14:48:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMo-0002jM-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so2218788wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DKphyCjURIGSd4y6wjHsmbY5mcon1QmXiFOJXs0A/cw=;
 b=LIlcbmyIcQGRfXYmq96/5qZuY/lCxqUkgshO+w5kLbTlwuwRf5jeYxy7hh0fAmvp9o
 5SIf7gwLwcIWG3SSnDotoCkes2BUze2YSZMyC8YVva8WZQ6/uaQz9+hPfg/VekagfnwT
 m92YFKexjm8UwHwyCyEND2Z5dtBg0UaWrebHaPsFENUbRnfvbOyoO3Uj0TlV0o1mCIm6
 59Ymj5ibR0nVqUlryRDlBusI8KWw6FDt58iJCsBfWS9khDHA9pfhu7wRm4nKW2U9yfHw
 gxzYa+PYs+NKm+52LxsRe4h9HjPDMNFG3CsYJXy0MZekqKN1HjKZhqFjY/MEGz1MgLiI
 jknw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKphyCjURIGSd4y6wjHsmbY5mcon1QmXiFOJXs0A/cw=;
 b=JwoZBzL+30btCJMth8xg8OxHIiEH8LgyCkneGF7q8DbI+QfvzWLVB8EBU+lRqWbGB6
 o4RCC8Q35cntvcYe3xdMwxSuQNp1yN2BPRXHorOnIGhME5x1KawsFkQfL9i+3Tj4Lpt9
 1AstrKXhe/ewZ8SP/JrO80aVRDHetgRke2exlVzSnit3XEoEPteRntgsDYGScc91bOQl
 iUeiUQTE6paYhZsU8nQFJf7b/4d1QVwyxYTInna/ihbN0WHiwyfpRROQkMN37ycaojAI
 NxlxjiKXVrAlymmMuuZUmeRnlghoOymbnaSvTBgOk6Wh/TKkng87o8U5SMQU7UB6I1ML
 TPdQ==
X-Gm-Message-State: AGi0PuZodaCuc8GcPhTIvaCenFJ/ctwaXezRAdMiSt4Ks+QHfbTVqmb7
 H87HZmnMFULyKB1AMki2u1wNCg==
X-Google-Smtp-Source: APiQypJni8P3Fdsu2W39QyIL/q4uvzPh/+cSPBeuwZIk5xY5sZZc8dd7xaLajfttPjIwRnw7paFAfw==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr3204262wmh.157.1588257644855; 
 Thu, 30 Apr 2020 07:40:44 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:44 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 22/25] iommu/arm-smmu-v3: Add stall support for platform
 devices
Date: Thu, 30 Apr 2020 16:34:21 +0200
Message-Id: <20200430143424.2787566-23-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074046_748793_AEB7FE55 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMU provides a Stall model for handling page faults in platform
devices. It is similar to PCI PRI, but doesn't require devices to have
their own translation cache. Instead, faulting transactions are parked
and the OS is given a chance to fix the page tables and retry the
transaction.

Enable stall for devices that support it (opt-in by firmware). When an
event corresponds to a translation error, call the IOMMU fault handler.
If the fault is recoverable, it will call us back to terminate or
continue the stall.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/Kconfig       |   1 +
 include/linux/iommu.h       |   2 +
 drivers/iommu/arm-smmu-v3.c | 286 ++++++++++++++++++++++++++++++++++--
 drivers/iommu/of_iommu.c    |   5 +-
 4 files changed, 283 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index f863c4562feeb..f9307d543d3b5 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -433,6 +433,7 @@ config ARM_SMMU_V3
 	depends on ARM64
 	select IOMMU_API
 	select IOMMU_SVA
+	select IOMMU_PAGE_FAULT
 	select IOMMU_IO_PGTABLE_LPAE
 	select GENERIC_MSI_IRQ_DOMAIN
 	help
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index a1201c94f6ace..fbea2e80dd7d3 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -567,6 +567,7 @@ struct iommu_group *fsl_mc_device_group(struct device *dev);
  * @iommu_fwnode: firmware handle for this device's IOMMU
  * @iommu_priv: IOMMU driver private data for this device
  * @num_pasid_bits: number of PASID bits supported by this device
+ * @can_stall: the device is allowed to stall
  * @num_ids: number of associated device IDs
  * @ids: IDs which this device may present to the IOMMU
  */
@@ -574,6 +575,7 @@ struct iommu_fwspec {
 	const struct iommu_ops	*ops;
 	struct fwnode_handle	*iommu_fwnode;
 	u32			num_pasid_bits;
+	bool			can_stall;
 	unsigned int		num_ids;
 	u32			ids[];
 };
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index fda62ea35dc23..eb32a7cb5e920 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -383,6 +383,13 @@
 #define CMDQ_PRI_1_GRPID		GENMASK_ULL(8, 0)
 #define CMDQ_PRI_1_RESP			GENMASK_ULL(13, 12)
 
+#define CMDQ_RESUME_0_SID		GENMASK_ULL(63, 32)
+#define CMDQ_RESUME_0_RESP_TERM		0UL
+#define CMDQ_RESUME_0_RESP_RETRY	1UL
+#define CMDQ_RESUME_0_RESP_ABORT	2UL
+#define CMDQ_RESUME_0_RESP		GENMASK_ULL(13, 12)
+#define CMDQ_RESUME_1_STAG		GENMASK_ULL(15, 0)
+
 #define CMDQ_SYNC_0_CS			GENMASK_ULL(13, 12)
 #define CMDQ_SYNC_0_CS_NONE		0
 #define CMDQ_SYNC_0_CS_IRQ		1
@@ -399,6 +406,25 @@
 
 #define EVTQ_0_ID			GENMASK_ULL(7, 0)
 
+#define EVT_ID_TRANSLATION_FAULT	0x10
+#define EVT_ID_ADDR_SIZE_FAULT		0x11
+#define EVT_ID_ACCESS_FAULT		0x12
+#define EVT_ID_PERMISSION_FAULT		0x13
+
+#define EVTQ_0_SSV			(1UL << 11)
+#define EVTQ_0_SSID			GENMASK_ULL(31, 12)
+#define EVTQ_0_SID			GENMASK_ULL(63, 32)
+#define EVTQ_1_STAG			GENMASK_ULL(15, 0)
+#define EVTQ_1_STALL			(1UL << 31)
+#define EVTQ_1_PRIV			(1UL << 33)
+#define EVTQ_1_EXEC			(1UL << 34)
+#define EVTQ_1_READ			(1UL << 35)
+#define EVTQ_1_S2			(1UL << 39)
+#define EVTQ_1_CLASS			GENMASK_ULL(41, 40)
+#define EVTQ_1_TT_READ			(1UL << 44)
+#define EVTQ_2_ADDR			GENMASK_ULL(63, 0)
+#define EVTQ_3_IPA			GENMASK_ULL(51, 12)
+
 /* PRI queue */
 #define PRIQ_ENT_SZ_SHIFT		4
 #define PRIQ_ENT_DWORDS			((1 << PRIQ_ENT_SZ_SHIFT) >> 3)
@@ -523,6 +549,13 @@ struct arm_smmu_cmdq_ent {
 			enum pri_resp		resp;
 		} pri;
 
+		#define CMDQ_OP_RESUME		0x44
+		struct {
+			u32			sid;
+			u16			stag;
+			u8			resp;
+		} resume;
+
 		#define CMDQ_OP_CMD_SYNC	0x46
 		struct {
 			u64			msiaddr;
@@ -558,6 +591,10 @@ struct arm_smmu_queue {
 
 	u32 __iomem			*prod_reg;
 	u32 __iomem			*cons_reg;
+
+	/* Event and PRI */
+	u64				batch;
+	wait_queue_head_t		wq;
 };
 
 struct arm_smmu_queue_poll {
@@ -581,6 +618,7 @@ struct arm_smmu_cmdq_batch {
 
 struct arm_smmu_evtq {
 	struct arm_smmu_queue		q;
+	struct iopf_queue		*iopf;
 	u32				max_stalls;
 };
 
@@ -718,6 +756,7 @@ struct arm_smmu_master {
 	struct arm_smmu_stream		*streams;
 	unsigned int			num_streams;
 	bool				ats_enabled;
+	bool				stall_enabled;
 	bool				sva_enabled;
 	struct list_head		bonds;
 	unsigned int			ssid_bits;
@@ -737,6 +776,7 @@ struct arm_smmu_domain {
 
 	struct io_pgtable_ops		*pgtbl_ops;
 	bool				non_strict;
+	bool				stall_enabled;
 	atomic_t			nr_ats_masters;
 
 	enum arm_smmu_domain_stage	stage;
@@ -1031,6 +1071,11 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		}
 		cmd[1] |= FIELD_PREP(CMDQ_PRI_1_RESP, ent->pri.resp);
 		break;
+	case CMDQ_OP_RESUME:
+		cmd[0] |= FIELD_PREP(CMDQ_RESUME_0_SID, ent->resume.sid);
+		cmd[0] |= FIELD_PREP(CMDQ_RESUME_0_RESP, ent->resume.resp);
+		cmd[1] |= FIELD_PREP(CMDQ_RESUME_1_STAG, ent->resume.stag);
+		break;
 	case CMDQ_OP_CMD_SYNC:
 		if (ent->sync.msiaddr) {
 			cmd[0] |= FIELD_PREP(CMDQ_SYNC_0_CS, CMDQ_SYNC_0_CS_IRQ);
@@ -1597,6 +1642,45 @@ static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
 	return arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, true);
 }
 
+static int arm_smmu_page_response(struct device *dev,
+				  struct iommu_fault_event *unused,
+				  struct iommu_page_response *resp)
+{
+	struct arm_smmu_cmdq_ent cmd = {0};
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+	int sid = master->streams[0].id;
+
+	if (master->stall_enabled) {
+		cmd.opcode		= CMDQ_OP_RESUME;
+		cmd.resume.sid		= sid;
+		cmd.resume.stag		= resp->grpid;
+		switch (resp->code) {
+		case IOMMU_PAGE_RESP_INVALID:
+		case IOMMU_PAGE_RESP_FAILURE:
+			cmd.resume.resp = CMDQ_RESUME_0_RESP_ABORT;
+			break;
+		case IOMMU_PAGE_RESP_SUCCESS:
+			cmd.resume.resp = CMDQ_RESUME_0_RESP_RETRY;
+			break;
+		default:
+			return -EINVAL;
+		}
+	} else {
+		/* TODO: insert PRI response here */
+		return -ENODEV;
+	}
+
+	arm_smmu_cmdq_issue_cmd(master->smmu, &cmd);
+	/*
+	 * Don't send a SYNC, it doesn't do anything for RESUME or PRI_RESP.
+	 * RESUME consumption guarantees that the stalled transaction will be
+	 * terminated... at some point in the future. PRI_RESP is fire and
+	 * forget.
+	 */
+
+	return 0;
+}
+
 /* Context descriptor manipulation functions */
 static void arm_smmu_tlb_inv_asid(struct arm_smmu_device *smmu, u16 asid)
 {
@@ -1759,8 +1843,7 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
 			CTXDESC_CD_0_V;
 
-		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
-		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
+		if (smmu_domain->stall_enabled)
 			val |= CTXDESC_CD_0_S;
 	}
 
@@ -2175,7 +2258,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			 FIELD_PREP(STRTAB_STE_1_STRW, strw));
 
 		if (smmu->features & ARM_SMMU_FEAT_STALLS &&
-		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
+		    !master->stall_enabled)
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
 		val |= (s1_cfg->cdcfg.cdtab_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
@@ -2252,7 +2335,6 @@ static int arm_smmu_init_l2_strtab(struct arm_smmu_device *smmu, u32 sid)
 	return 0;
 }
 
-__maybe_unused
 static struct arm_smmu_master *
 arm_smmu_find_master(struct arm_smmu_device *smmu, u32 sid)
 {
@@ -2279,23 +2361,123 @@ arm_smmu_find_master(struct arm_smmu_device *smmu, u32 sid)
 }
 
 /* IRQ and event handlers */
+static int arm_smmu_handle_evt(struct arm_smmu_device *smmu, u64 *evt)
+{
+	int ret;
+	u32 perm = 0;
+	struct arm_smmu_master *master;
+	bool ssid_valid = evt[0] & EVTQ_0_SSV;
+	u8 type = FIELD_GET(EVTQ_0_ID, evt[0]);
+	u32 sid = FIELD_GET(EVTQ_0_SID, evt[0]);
+	struct iommu_fault_event fault_evt = { };
+	struct iommu_fault *flt = &fault_evt.fault;
+
+	/* Stage-2 is always pinned at the moment */
+	if (evt[1] & EVTQ_1_S2)
+		return -EFAULT;
+
+	master = arm_smmu_find_master(smmu, sid);
+	if (!master)
+		return -EINVAL;
+
+	if (evt[1] & EVTQ_1_READ)
+		perm |= IOMMU_FAULT_PERM_READ;
+	else
+		perm |= IOMMU_FAULT_PERM_WRITE;
+
+	if (evt[1] & EVTQ_1_EXEC)
+		perm |= IOMMU_FAULT_PERM_EXEC;
+
+	if (evt[1] & EVTQ_1_PRIV)
+		perm |= IOMMU_FAULT_PERM_PRIV;
+
+	if (evt[1] & EVTQ_1_STALL) {
+		flt->type = IOMMU_FAULT_PAGE_REQ;
+		flt->prm = (struct iommu_fault_page_request) {
+			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
+			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
+			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
+			.perm = perm,
+			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
+		};
+
+		if (ssid_valid)
+			flt->prm.flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
+	} else {
+		flt->type = IOMMU_FAULT_DMA_UNRECOV;
+		flt->event = (struct iommu_fault_unrecoverable) {
+			.flags = IOMMU_FAULT_UNRECOV_ADDR_VALID |
+				 IOMMU_FAULT_UNRECOV_FETCH_ADDR_VALID,
+			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
+			.perm = perm,
+			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
+			.fetch_addr = FIELD_GET(EVTQ_3_IPA, evt[3]),
+		};
+
+		if (ssid_valid)
+			flt->event.flags |= IOMMU_FAULT_UNRECOV_PASID_VALID;
+
+		switch (type) {
+		case EVT_ID_TRANSLATION_FAULT:
+		case EVT_ID_ADDR_SIZE_FAULT:
+		case EVT_ID_ACCESS_FAULT:
+			flt->event.reason = IOMMU_FAULT_REASON_PTE_FETCH;
+			break;
+		case EVT_ID_PERMISSION_FAULT:
+			flt->event.reason = IOMMU_FAULT_REASON_PERMISSION;
+			break;
+		default:
+			/* TODO: report other unrecoverable faults. */
+			return -EFAULT;
+		}
+	}
+
+	ret = iommu_report_device_fault(master->dev, &fault_evt);
+	if (ret && flt->type == IOMMU_FAULT_PAGE_REQ) {
+		/* Nobody cared, abort the access */
+		struct iommu_page_response resp = {
+			.pasid		= flt->prm.pasid,
+			.grpid		= flt->prm.grpid,
+			.code		= IOMMU_PAGE_RESP_FAILURE,
+		};
+		arm_smmu_page_response(master->dev, NULL, &resp);
+	}
+
+	return ret;
+}
+
 static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
 {
-	int i;
+	int i, ret;
+	int num_handled = 0;
 	struct arm_smmu_device *smmu = dev;
 	struct arm_smmu_queue *q = &smmu->evtq.q;
 	struct arm_smmu_ll_queue *llq = &q->llq;
+	size_t queue_size = 1 << llq->max_n_shift;
 	u64 evt[EVTQ_ENT_DWORDS];
 
+	spin_lock(&q->wq.lock);
 	do {
 		while (!queue_remove_raw(q, evt)) {
 			u8 id = FIELD_GET(EVTQ_0_ID, evt[0]);
 
-			dev_info(smmu->dev, "event 0x%02x received:\n", id);
-			for (i = 0; i < ARRAY_SIZE(evt); ++i)
-				dev_info(smmu->dev, "\t0x%016llx\n",
-					 (unsigned long long)evt[i]);
+			spin_unlock(&q->wq.lock);
+			ret = arm_smmu_handle_evt(smmu, evt);
+			spin_lock(&q->wq.lock);
 
+			if (++num_handled == queue_size) {
+				q->batch++;
+				wake_up_all_locked(&q->wq);
+				num_handled = 0;
+			}
+
+			if (ret) {
+				dev_info(smmu->dev, "event 0x%02x received:\n",
+					 id);
+				for (i = 0; i < ARRAY_SIZE(evt); ++i)
+					dev_info(smmu->dev, "\t0x%016llx\n",
+						 (unsigned long long)evt[i]);
+			}
 		}
 
 		/*
@@ -2309,6 +2491,11 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
 	/* Sync our overflow flag, as we believe we're up to speed */
 	llq->cons = Q_OVF(llq->prod) | Q_WRP(llq, llq->cons) |
 		    Q_IDX(llq, llq->cons);
+	queue_sync_cons_out(q);
+
+	wake_up_all_locked(&q->wq);
+	spin_unlock(&q->wq.lock);
+
 	return IRQ_HANDLED;
 }
 
@@ -2372,6 +2559,36 @@ static irqreturn_t arm_smmu_priq_thread(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
+/*
+ * arm_smmu_flush_evtq - wait until all events currently in the queue have been
+ *                       consumed.
+ *
+ * Wait until there are no more event for this @pasid in the queue. Either until
+ * the queue becomes empty or, if new events are continually added the queue,
+ * until the event queue thread has handled a full batch (where one batch
+ * corresponds to the queue size). For that we take the batch number when
+ * entering flush() and wait for the event queue thread to increment it twice.
+ * Note that we don't handle overflows on q->batch. If it occurs, just wait for
+ * the queue to become empty.
+ */
+static int arm_smmu_flush_evtq(struct arm_smmu_device *smmu)
+{
+	int ret;
+	u64 batch;
+	struct arm_smmu_queue *q = &smmu->evtq.q;
+
+	spin_lock(&q->wq.lock);
+	if (queue_sync_prod_in(q) == -EOVERFLOW)
+		dev_err(smmu->dev, "evtq overflow detected -- requests lost\n");
+
+	batch = q->batch;
+	ret = wait_event_interruptible_locked(q->wq, queue_empty(&q->llq) ||
+					      q->batch >= batch + 2);
+	spin_unlock(&q->wq.lock);
+
+	return ret;
+}
+
 static int arm_smmu_device_disable(struct arm_smmu_device *smmu);
 
 static irqreturn_t arm_smmu_gerror_handler(int irq, void *dev)
@@ -2805,6 +3022,8 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 
 	cfg->s1cdmax = master->ssid_bits;
 
+	smmu_domain->stall_enabled = master->stall_enabled;
+
 	ret = arm_smmu_alloc_cd_tables(smmu_domain);
 	if (ret)
 		goto out_free_asid;
@@ -3146,6 +3365,11 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 			smmu_domain->s1_cfg.s1cdmax, master->ssid_bits);
 		ret = -EINVAL;
 		goto out_unlock;
+	} else if (smmu_domain->stall_enabled != master->stall_enabled) {
+		dev_err(dev, "cannot attach to stall-%s domain\n",
+			smmu_domain->stall_enabled ? "enabled" : "disabled");
+		ret = -EINVAL;
+		goto out_unlock;
 	}
 
 	master->domain = smmu_domain;
@@ -3432,6 +3656,13 @@ arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm, void *drvdata)
 
 static void arm_smmu_sva_unbind(struct iommu_sva *handle)
 {
+	struct arm_smmu_bond *bond = sva_to_bond(handle);
+	struct arm_smmu_master *master = dev_iommu_priv_get(handle->dev);
+
+	if (master->stall_enabled)
+		arm_smmu_flush_evtq(master->smmu);
+	iopf_queue_flush_dev(handle->dev, bond->mm->pasid);
+
 	mutex_lock(&arm_smmu_sva_lock);
 	__arm_smmu_sva_unbind(handle);
 	mutex_unlock(&arm_smmu_sva_lock);
@@ -3604,6 +3835,10 @@ static int arm_smmu_add_device(struct device *dev)
 		master->ssid_bits = min_t(u8, master->ssid_bits,
 					  CTXDESC_LINEAR_CDMAX);
 
+	if ((smmu->features & ARM_SMMU_FEAT_STALLS && fwspec->can_stall) ||
+	    smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
+		master->stall_enabled = true;
+
 	ret = iommu_device_link(&smmu->iommu, dev);
 	if (ret)
 		goto err_disable_pasid;
@@ -3639,6 +3874,7 @@ static void arm_smmu_remove_device(struct device *dev)
 
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
+	iopf_queue_remove_device(smmu->evtq.iopf, dev);
 	WARN_ON(master->sva_enabled);
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
@@ -3762,7 +3998,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 
 static bool arm_smmu_iopf_supported(struct arm_smmu_master *master)
 {
-	return false;
+	return master->stall_enabled;
 }
 
 static bool arm_smmu_dev_has_feature(struct device *dev,
@@ -3807,13 +4043,28 @@ static bool arm_smmu_dev_feature_enabled(struct device *dev,
 
 static int arm_smmu_dev_enable_sva(struct device *dev)
 {
+	int ret;
 	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
 
+	if (master->stall_enabled) {
+		ret = iopf_queue_add_device(master->smmu->evtq.iopf, dev);
+		if (ret)
+			return ret;
+	}
+
+	ret = iommu_register_device_fault_handler(dev, iommu_queue_iopf, dev);
+	if (ret)
+		goto err_disable_iopf;
+
 	mutex_lock(&arm_smmu_sva_lock);
 	master->sva_enabled = true;
 	mutex_unlock(&arm_smmu_sva_lock);
 
 	return 0;
+
+err_disable_iopf:
+	iopf_queue_remove_device(master->smmu->evtq.iopf, dev);
+	return ret;
 }
 
 static int arm_smmu_dev_disable_sva(struct device *dev)
@@ -3829,6 +4080,9 @@ static int arm_smmu_dev_disable_sva(struct device *dev)
 	master->sva_enabled = false;
 	mutex_unlock(&arm_smmu_sva_lock);
 
+	iommu_unregister_device_fault_handler(dev);
+	iopf_queue_remove_device(master->smmu->evtq.iopf, dev);
+
 	/*
 	 * Since the MMU notifier ops are held in the domain, it is not safe to
 	 * free the domain until all MMU notifiers are freed.
@@ -3894,6 +4148,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.sva_bind		= arm_smmu_sva_bind,
 	.sva_unbind		= arm_smmu_sva_unbind,
 	.sva_get_pasid		= arm_smmu_sva_get_pasid,
+	.page_response		= arm_smmu_page_response,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
@@ -3937,6 +4192,10 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 	q->q_base |= FIELD_PREP(Q_BASE_LOG2SIZE, q->llq.max_n_shift);
 
 	q->llq.prod = q->llq.cons = 0;
+
+	init_waitqueue_head(&q->wq);
+	q->batch = 0;
+
 	return 0;
 }
 
@@ -3990,6 +4249,12 @@ static int arm_smmu_init_queues(struct arm_smmu_device *smmu)
 	if (ret)
 		return ret;
 
+	if (smmu->features & ARM_SMMU_FEAT_STALLS) {
+		smmu->evtq.iopf = iopf_queue_alloc(dev_name(smmu->dev));
+		if (!smmu->evtq.iopf)
+			return -ENOMEM;
+	}
+
 	/* priq */
 	if (!(smmu->features & ARM_SMMU_FEAT_PRI))
 		return 0;
@@ -4970,6 +5235,7 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 	iommu_device_unregister(&smmu->iommu);
 	iommu_device_sysfs_remove(&smmu->iommu);
 	arm_smmu_device_disable(smmu);
+	iopf_queue_free(smmu->evtq.iopf);
 
 	return 0;
 }
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 20738aacac89e..dd70177509543 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -205,9 +205,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 		}
 
 		fwspec = dev_iommu_fwspec_get(dev);
-		if (!err && fwspec)
+		if (!err && fwspec) {
 			of_property_read_u32(master_np, "pasid-num-bits",
 					     &fwspec->num_pasid_bits);
+			fwspec->can_stall = of_property_read_bool(master_np,
+								  "dma-can-stall");
+		}
 	}
 
 	/*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
