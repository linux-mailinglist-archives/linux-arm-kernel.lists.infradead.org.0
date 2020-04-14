Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856C01A870D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lA5qrBpQLfFU0bPes8VhoR/TxZQm++IpJ7oeS00sO7Y=; b=Cc24Jy+eAZIDjp
	6SAotB2TWzaHHZWo5O+DydkaBB8GxVSV1dNNbXxNCwUfOCdVrN0OOr0rF5SIqmgA9Q8l0YdMlbPZr
	y/vParTujPhmfrRoUui2R6OSal56XmJsMqGmAFsZiup6tz+GRPniVGVjp3UL4nnsBOENPk6r7Sg/g
	jYyJncKAHBITZ4q1RJBwjU9zDQydZqeEaUvcv7/pxI/Rkrp6oyhWu/j7iypJJzGHUzCQtdG7PfC5W
	2RnDy5kVh9s4FVnbT2eUO4PXNQw5OASRZKLBTbDc83X9E90qeDCI9XwcT3q6nrxFSgzyQJdXTS/33
	rjSHkqnh/V8diEZg9PJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP4m-0001E0-M1; Tue, 14 Apr 2020 17:10:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzO-0002RK-MU
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so10960769wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iFQo4eLK0C51ieV33vlbkwWvrpzk0Iu0nUGg4g65CHs=;
 b=JI5QkA97eezOSapi2fPqRY+esAG4E9fuADRTO9KkwAXqshRxQg2LKwGOVpQ8bEJ81f
 7XPxMj7271i5R78HnNq28pZSLk3B7jV9yN0c4/bTfJRpnWpYm9Lt2jtqPzuqS2HV02Z2
 hkq9kvDb8FIDY1FaOeaNgULZXDgiAcMd9YqMGytbbSvWq4fOyoPZG5zIKdYtbwIwjSXa
 /p9Mczkd/c2xupqo0EB5V5OSAvg3O/E1/F5JPD2SgV6IMuTc6+yiI7lkQVerTEvPWxXm
 XspXwZKvxZ42rz0b7zJEQWuYEyF6WUnRsl/SYo5BgSVSgOvKFQDMOtkvWsn7y2Hxn6V5
 9ulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iFQo4eLK0C51ieV33vlbkwWvrpzk0Iu0nUGg4g65CHs=;
 b=bmhu2SYSjH+DbREARsrEPC6YDmKcdfsdL3NqolhJkH+C4viH0S41KTudeuC0XHgNxC
 IeTNvptqBV8GjqVQMkiyL1HUo1Y9g8ua10FYx6jcosEOSVMDq/lkDw3At287AK7fdz9K
 XgDgK9zrRDeDo1FRQZ/OvmwC3lq48miCiAxhXB1Sc1tuDpTqscgpgP/vydfwM2UR9+1U
 OI4bBAy015TcsVE/pwUiNf9U/2zhjY9DqimqSdsqa2WvQt6f/Zp3vKs3DPzqa9zCTfoM
 8BQcHVEZfMTnIm2RT2M7d/nJpNyHM4DkoJWXl6671O+l6vekoChLt/vReN82+E0XKWD5
 zQZQ==
X-Gm-Message-State: AGi0Puba46hRIy8AvBYdXf/fRaXVzQLkHnGAXescjV6XgB5HUBVXn8U6
 LEkgGdKKVa/SPv0a+BHXIAxGYQ==
X-Google-Smtp-Source: APiQypLZa+lawPw64nTDrcMPpw0HQPprW6BlaWllx/hPptH94lEGFoejVXa1lUE2ugeNThH+6x6yTQ==
X-Received: by 2002:a5d:4085:: with SMTP id o5mr23364377wrp.327.1586883883718; 
 Tue, 14 Apr 2020 10:04:43 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:43 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 18/25] iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
Date: Tue, 14 Apr 2020 19:02:46 +0200
Message-Id: <20200414170252.714402-19-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100446_960079_5713D2D2 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

iommu-sva calls us when an mm is modified. Perform the required ATC
invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: more comments
---
 drivers/iommu/arm-smmu-v3.c | 70 ++++++++++++++++++++++++++++++-------
 1 file changed, 58 insertions(+), 12 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 6640c2ac2a7c5..c4bffb14461aa 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2375,6 +2375,20 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	size_t inval_grain_shift = 12;
 	unsigned long page_start, page_end;
 
+	/*
+	 * ATS and PASID:
+	 *
+	 * If substream_valid is clear, the PCIe TLP is sent without a PASID
+	 * prefix. In that case all ATC entries within the address range are
+	 * invalidated, including those that were requested with a PASID! There
+	 * is no way to invalidate only entries without PASID.
+	 *
+	 * When using STRTAB_STE_1_S1DSS_SSID0 (reserving CD 0 for non-PASID
+	 * traffic), translation requests without PASID create ATC entries
+	 * without PASID, which must be invalidated with substream_valid clear.
+	 * This has the unpleasant side-effect of invalidating all PASID-tagged
+	 * ATC entries within the address range.
+	 */
 	*cmd = (struct arm_smmu_cmdq_ent) {
 		.opcode			= CMDQ_OP_ATC_INV,
 		.substream_valid	= !!ssid,
@@ -2418,12 +2432,12 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	cmd->atc.size	= log2_span;
 }
 
-static int arm_smmu_atc_inv_master(struct arm_smmu_master *master)
+static int arm_smmu_atc_inv_master(struct arm_smmu_master *master, int ssid)
 {
 	int i;
 	struct arm_smmu_cmdq_ent cmd;
 
-	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
+	arm_smmu_atc_inv_to_cmd(ssid, 0, 0, &cmd);
 
 	for (i = 0; i < master->num_sids; i++) {
 		cmd.atc.sid = master->sids[i];
@@ -2934,7 +2948,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_master(master);
+	arm_smmu_atc_inv_master(master, 0);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
@@ -3131,7 +3145,22 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
 static void arm_smmu_mm_invalidate(struct device *dev, int pasid, void *entry,
 				   unsigned long iova, size_t size)
 {
-	/* TODO: Invalidate ATC */
+	int i;
+	struct arm_smmu_cmdq_ent cmd;
+	struct arm_smmu_cmdq_batch cmds = {};
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	if (!master->ats_enabled)
+		return;
+
+	arm_smmu_atc_inv_to_cmd(pasid, iova, size, &cmd);
+
+	for (i = 0; i < master->num_sids; i++) {
+		cmd.atc.sid = master->sids[i];
+		arm_smmu_cmdq_batch_add(master->smmu, &cmds, &cmd);
+	}
+
+	arm_smmu_cmdq_batch_submit(master->smmu, &cmds);
 }
 
 static int arm_smmu_mm_attach(struct device *dev, int pasid, void *entry,
@@ -3168,26 +3197,43 @@ static void arm_smmu_mm_clear(struct device *dev, int pasid, void *entry)
 	 * for this ASID, so we need to do it manually.
 	 */
 	arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
-
-	/* TODO: invalidate ATC */
+	arm_smmu_atc_inv_domain(smmu_domain, pasid, 0, 0);
 }
 
 static void arm_smmu_mm_detach(struct device *dev, int pasid, void *entry,
 			       bool detach_domain, bool cleared)
 {
 	struct arm_smmu_ctx_desc *cd = entry;
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
 	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 
-	if (detach_domain) {
+	if (detach_domain)
 		arm_smmu_write_ctx_desc(smmu_domain, pasid, NULL);
 
-		if (!cleared)
-			/* See comment in arm_smmu_mm_clear() */
-			arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
-	}
+	/*
+	 * If we went through clear(), we've already invalidated, and no new TLB
+	 * entry can have been formed.
+	 */
+	if (cleared)
+		return;
+
+	if (detach_domain) {
+		/* See comment in arm_smmu_mm_clear() */
+		arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
+		arm_smmu_atc_inv_domain(smmu_domain, pasid, 0, 0);
 
-	/* TODO: invalidate ATC */
+	} else if (master->ats_enabled) {
+		/*
+		 * There are more devices bound with this PASID in this domain,
+		 * so we cannot yet clear the PASID entry, and this device could
+		 * create new ATC entries. Invalidate the ATC for the sake of
+		 * it. On unbinding the last device we'll properly invalidate
+		 * all ATCs in the domain. Alternatively, an early detach_dev()
+		 * on this device will also flush the ATC.
+		 */
+		arm_smmu_atc_inv_master(master, pasid);
+	}
 }
 
 static void *arm_smmu_mm_alloc(struct mm_struct *mm)
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
