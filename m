Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2339D16AC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kng4mEmAnmKbsiEjR2fzyI+7MkUIC/8eBPn87GU2sd4=; b=T3fgEExZY4B9sJ
	/bx/7zgyXTH8iG6PYKhNG+yRY+7/vRzTseByay+hgqRl0TBuncFmTCa9VPiSOd7R6gDoxK8JAmZbJ
	H4gEFTv7L5nNsthnfMuefbpuiDt9hGUVirtYzQW2Xsw9SgX9vUz6TRFW6AV94pRmOc16uuB6xJYoA
	ge/xgtJzUFiIANytAYJzK9z+SV9J99bsQBqQXffAho9BW87poDy5DdIL/QCOh05PyMh+38JymI3gP
	KJzPJh6SUdc8QKd1oLBp5k8UaQzdrIgYstdtkb4lVFUABfSws/hyN2SL0DRSlPeYevpXoQHcJkHKm
	jv5Qi8sDUz6Cjj7EOFgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H6C-0004rH-Ad; Mon, 24 Feb 2020 17:00:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4X-0002HZ-B5
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so31958wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8wR4JvjjnPlxADINM207T0IRGzt73ZsNoWPOZadfSNk=;
 b=MVNhbcg8wD57oQ9I2JyLERVR2yKCiLO+U8+KIMgmDXq5uE3Xz17SRqISJlYfd4ir0f
 R4kd49dYtzzGIjmUKtm2Nil6peOKseDxSX6LLgZymQYn3PjxOlFG7DMwufOltiWTpMwW
 nAvv/0bXQehpLWgHnz/JM8FzL1XTmsAaoNNKJDC2OGvlpi33JinznQOQFLaMEP8oSMB6
 p2D8+W5IrG6gxs6dgpvB2oEc9zTKeiWuWpX4iz8pcAiJETSzXOdN8W2cI7+0K3InfFhi
 mhvq6KoZzQD35eEblEKVN/M5SfSNB4cjLRfBZyi4z0D6gsum8FD4M5GXqNy0vqyUQ8Ek
 kgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8wR4JvjjnPlxADINM207T0IRGzt73ZsNoWPOZadfSNk=;
 b=qypHcmfuAKI/IIu2Fnkoqm/8kg0ZV0wdd/E7XAe4UFqvNBl5Cp4k3jvsvt9ybU3CKY
 fEkR3SHXx5rKY5W175Y0bME3EaOM8luKc6bvFEAW2sITSBGPK5TuOsIQaW1Br94me/1z
 9usltyjA6TE3LMIr5ciTUaW6Bfp/QYsbNAo3qiCK7bI/zmRBwrM0OZhLAgS24OerMQx3
 rjhBjhe2SiOinIjDZqpC0H3zNsWk1Bz9PBYh64BBgJX7M+pzQyOJJX0wXNCX49k2yKRN
 vsrzn5wsudsATaXE8fpU8vMRo2XoGZiR+6U2J/V4l3ukrngBiIZiLsokHDUENO4NCO16
 ANng==
X-Gm-Message-State: APjAAAUzw1b6abfTCwXy0xjbpJC9Lt3wfCoFbrg5eM+57ey/rRihmBcB
 wwpXzT16S77RkCHyB7Y4tYFzMA==
X-Google-Smtp-Source: APXvYqy5NCQ4cadqxMUKN5tm7gQWKMw6tJ7/zLaq1h3uCOJopLS3L3IpJR06WXC/akjTuCTTeW4gnw==
X-Received: by 2002:a05:600c:54e:: with SMTP id
 k14mr22152694wmc.115.1582563547735; 
 Mon, 24 Feb 2020 08:59:07 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:07 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 6/6] iommu/arm-smmu-v3: Batch ATC invalidation commands
Date: Mon, 24 Feb 2020 17:58:46 +0100
Message-Id: <20200224165846.345993-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224165846.345993-1-jean-philippe@linaro.org>
References: <20200224165846.345993-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085909_408760_B2DAB501 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 robh@kernel.org, jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Herring <robh@kernel.org>

Similar to commit 2af2e72b18b4 ("iommu/arm-smmu-v3: Defer TLB
invalidation until ->iotlb_sync()"), build up a list of ATC invalidation
commands and submit them all at once to the command queue instead of
one-by-one.

As there is only one caller of arm_smmu_atc_inv_master() left, we can
simplify it and avoid passing in struct arm_smmu_cmdq_ent.

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Signed-off-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 12b2a0fa747e..4f0a38dae6db 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2158,17 +2158,16 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	cmd->atc.size	= log2_span;
 }
 
-static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
-				   struct arm_smmu_cmdq_ent *cmd)
+static int arm_smmu_atc_inv_master(struct arm_smmu_master *master)
 {
 	int i;
+	struct arm_smmu_cmdq_ent cmd;
 
-	if (!master->ats_enabled)
-		return 0;
+	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
 
 	for (i = 0; i < master->num_sids; i++) {
-		cmd->atc.sid = master->sids[i];
-		arm_smmu_cmdq_issue_cmd(master->smmu, cmd);
+		cmd.atc.sid = master->sids[i];
+		arm_smmu_cmdq_issue_cmd(master->smmu, &cmd);
 	}
 
 	return arm_smmu_cmdq_issue_sync(master->smmu);
@@ -2177,10 +2176,11 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
 static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 				   int ssid, unsigned long iova, size_t size)
 {
-	int ret = 0;
+	int i;
 	unsigned long flags;
 	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_master *master;
+	struct arm_smmu_cmdq_batch cmds = {};
 
 	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
 		return 0;
@@ -2205,11 +2205,18 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
 
 	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
-	list_for_each_entry(master, &smmu_domain->devices, domain_head)
-		ret |= arm_smmu_atc_inv_master(master, &cmd);
+	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
+		if (!master->ats_enabled)
+			continue;
+
+		for (i = 0; i < master->num_sids; i++) {
+			cmd.atc.sid = master->sids[i];
+			arm_smmu_cmdq_batch_add(smmu_domain->smmu, &cmds, &cmd);
+		}
+	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	return ret ? -ETIMEDOUT : 0;
+	return arm_smmu_cmdq_batch_submit(smmu_domain->smmu, &cmds);
 }
 
 /* IO_PGTABLE API */
@@ -2629,7 +2636,6 @@ static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 
 static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 {
-	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_domain *smmu_domain = master->domain;
 
 	if (!master->ats_enabled)
@@ -2641,8 +2647,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
-	arm_smmu_atc_inv_master(master, &cmd);
+	arm_smmu_atc_inv_master(master);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
