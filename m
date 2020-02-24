Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012FC16AC88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxDoDla3zdHHIb7iEHxxCRyb+uD/qp8/n1FMrzk60HY=; b=TrZpRMw3M2aFjT
	Wn00/SUQMr8Zum9cMYl2zG90eE10wg+xqWAZ3ZAVpWEmjwO1FT9Rln1gntsoQnYGBvjuiCy768KYx
	vIOqd0Fnum0UWUDssumdTRam2hnPayLYLjyQWIKVCkBH13NBv6vhC1IEqlKlHahUqB3tBA0dijsQJ
	CbpGAyUU9I3AA95vd+q4X46N7/67vFKcTHm/yff51jjHDNS82A7dA2CfkbFeEo6+MvjwXoUpYQaR6
	AcqV5TXmsX749izyqjtuzqVtFQX2biLHTH9D5N3ZSU8vzgC2Hm5YrLOziW9eS6X1gVUX8UCqxByPk
	NKX5A3fELp98BY94J1UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6H5m-0004Kx-S8; Mon, 24 Feb 2020 17:00:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6H4V-0002G1-Cl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:59:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so71355wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XLHzcG1rM7CKaHACIaWqlr851SfTiMG1TWiRRSjmhnI=;
 b=cYA2Ki3712y1AnkYyhSFyI0gPtpDlkJM+1q36yhaQXLM5yHq3MpQEGpQGFn5acTJNq
 F0BBJHCxoFTbdxkeT2vlUqDSU2bBZcU0lb8elvwHyd4Vg/zVkkyjhd5+jJVBYTxNoe/1
 T887AvB5daQAFRCqRCHFVryjl79Ik52OOPX76rCW6nsW+PTelLhaY0/XaXm/hm7XJZOT
 bDtyCARPGJe9qEjvAqV4E1zbPS4JHztKZyP48RYwOQ+6UtYGoT41rVTvmBpGTezTRswQ
 jOK+z0mNca9ZAwbWfU/DpnD214mbXaRo45wfSK3F3fh4dc+SQHsQqOySm7gSx2MTFu0R
 hVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XLHzcG1rM7CKaHACIaWqlr851SfTiMG1TWiRRSjmhnI=;
 b=kovvPzbFVRKAcbn/yjPMEFg/817xe48HiifILmIdz1641sjRt8P8Kv4rOTPbwG9832
 hxkoQZowbQ+IgagkSVb3kGa7ZzXv2Xk9zmz5JF3wiCcZ8DEd9+MMgORnfA9lBiVDd4f4
 Mv6hIfRfKjrxTSk/WubV90GuUH434mBDx5kBvWKgw1gNjRswKLypuHo6MJXMo85hk+Ly
 Ri93NYxGxZsygtYWZiu2O8DsyBO9y28UkFDvMrGi/R6GnliJo0fJNeYjV1XHGnO1zGjV
 o68UgNfsbQ0o3dlSQX4yYjuioCxzCN/6G9wvWgrsveMGzddzM4Pw47rZo6e4gPBNawD+
 tg5Q==
X-Gm-Message-State: APjAAAXKkhOYRz/k3FDCzaWgVmNENhEk9W8dyF59RbL3bXRjMSVwFyXq
 jo2avwu7IehsfFwLXyvyPx9M9Q==
X-Google-Smtp-Source: APXvYqyAQvDHFPlwol084YtmoxeK9ALvce8BoTf5MrLynyThLVJi07+L0kfZvMdagU1zen+M1p+zPA==
X-Received: by 2002:a7b:c088:: with SMTP id r8mr33668wmh.18.1582563545996;
 Mon, 24 Feb 2020 08:59:05 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id b10sm19473978wrt.90.2020.02.24.08.59.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:59:05 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH v2 4/6] iommu/arm-smmu-v3: Add command queue batching helpers
Date: Mon, 24 Feb 2020 17:58:44 +0100
Message-Id: <20200224165846.345993-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224165846.345993-1-jean-philippe@linaro.org>
References: <20200224165846.345993-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_085907_444090_FD37E1FA 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

As more functions will implement command queue batching, add two helpers
to simplify building a command list.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 37 ++++++++++++++++++++++++++-----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 068a16d0eabe..beeec366bc41 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -548,6 +548,11 @@ struct arm_smmu_cmdq {
 	atomic_t			lock;
 };
 
+struct arm_smmu_cmdq_batch {
+	u64				cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
+	int				num;
+};
+
 struct arm_smmu_evtq {
 	struct arm_smmu_queue		q;
 	u32				max_stalls;
@@ -1482,6 +1487,24 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
 	return arm_smmu_cmdq_issue_cmdlist(smmu, NULL, 0, true);
 }
 
+static void arm_smmu_cmdq_batch_add(struct arm_smmu_device *smmu,
+				    struct arm_smmu_cmdq_batch *cmds,
+				    struct arm_smmu_cmdq_ent *cmd)
+{
+	if (cmds->num == CMDQ_BATCH_ENTRIES) {
+		arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, false);
+		cmds->num = 0;
+	}
+	arm_smmu_cmdq_build_cmd(&cmds->cmds[cmds->num * CMDQ_ENT_DWORDS], cmd);
+	cmds->num++;
+}
+
+static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
+				      struct arm_smmu_cmdq_batch *cmds)
+{
+	return arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, true);
+}
+
 /* Context descriptor manipulation functions */
 static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 			     int ssid, bool leaf)
@@ -2220,10 +2243,9 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 				   size_t granule, bool leaf,
 				   struct arm_smmu_domain *smmu_domain)
 {
-	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	unsigned long start = iova, end = iova + size;
-	int i = 0;
+	struct arm_smmu_cmdq_batch cmds = {};
 	struct arm_smmu_cmdq_ent cmd = {
 		.tlbi = {
 			.leaf	= leaf,
@@ -2242,18 +2264,11 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 	}
 
 	while (iova < end) {
-		if (i == CMDQ_BATCH_ENTRIES) {
-			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
-			i = 0;
-		}
-
 		cmd.tlbi.addr = iova;
-		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
+		arm_smmu_cmdq_batch_add(smmu, &cmds, &cmd);
 		iova += granule;
-		i++;
 	}
-
-	arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, true);
+	arm_smmu_cmdq_batch_submit(smmu, &cmds);
 
 	/*
 	 * Unfortunately, this can't be leaf-only since we may have
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
