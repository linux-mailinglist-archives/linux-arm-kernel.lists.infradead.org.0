Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A538715BC7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdpwaxV8QEDNAxKR9N8XdM1jAzW6NPwieLi0DBBJuvM=; b=o6JvJLO4mqDYn8
	C6keJzZq1wyPG7vzJKCmY2NHzB0jOIK5eXlBuVfNob4NYLbCvqavJ3c4P1LO151Kge6Flypej71xC
	BV5A1WJ87I6r6W81b9NWs4G5ac9ItT+X5GctDPhqMQKqhZ0S7TlYQ17yeswawz2NUHJnHH3HSTlle
	kmnQkffrVFnAdrnxtoDWZDBQKDH6BsEZ3642qDDSAb0LeUSTgBGEN8pleA/ffhLZRCQl6KWhPPruk
	0i1Y832p3UuL3o34OL7S0QRpWnmXyY86UyHxBxpBIKx47VZxzqiDHvdHyWMf6tbVXAo04Crr6+Awp
	jxzGI2xx1/tpAdK+Fzww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BXA-00040f-TH; Thu, 13 Feb 2020 10:15:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2BWH-0002zP-M5
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:14:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so5889015wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y+lM1OggU9vK/FviSwCUPaJKK1SLUZczy02wSxpHTGA=;
 b=ITOJlvKtsqox/MA6KOfSi+vJ4namB81DtZOp6kWDIQxD7b+TlFocFAIVJlOuqeOJLw
 jnAwAYyOuE6iT1yKNsgrNsdlEVUXwo0f3f5XuFfWJeuedyhb6vC8ALBJtqp0b6WqHzE8
 qcrcDhLWP3E8SPA1MNxxhfnEcRr0f1sF8smyS60fScZh4qfp1bR0L2/19nrMx0VVcLtI
 R8R3J4ILmTuTwu4U4gig0mCX91+1y3N5G1JCG1U2azXLUt2MiXV280vRSIQCkl3byt1t
 V4PuXsmwZIfmXYs2bhHjNKBDr/fRVv7wge5cBW1xYX5hvuhkTT1LsLrJ04K0mX/sWEIs
 Z+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y+lM1OggU9vK/FviSwCUPaJKK1SLUZczy02wSxpHTGA=;
 b=V4nAcjKGkVN2m2S1flnM9ncqJdkGkkzvy8mwKBPTo0YuX6o9dqOxbSq8l/gqnpGrsp
 FmFU20ZQvBnHiZsy7v7OG41hNvNHjvSWjZ5Bo6l0AU0ZqAF7Q2SW3u7CNkNX8Qei8a/N
 oW8dYE7SQP1VclF+Gkzo2og4T7lVQYHQXuK8rZIypQHDlhrDwfkh4knnRp+AV0WGYq8z
 XPD3FuzjTk8XLEshFH16jEGiPiXgT4lLJwFhgb9XfTdTrBWZiF467xzCBFId2U0QXLCL
 cJ/zlTRKwVoachsb6ATmU2QZJlHiBemqJNcdDkNdJQYPIaFJ+8rq55Y6HVGqA96ItkY5
 futQ==
X-Gm-Message-State: APjAAAUoPlSFHxtUo44ZNmDGXgcYAT5HUzbSLag5cSZxo6Px43lF+cPV
 /IdaxVTLdPQR2g5W6TON80cXbg==
X-Google-Smtp-Source: APXvYqyIF3pDX0A+K0urbcmvtOzcjcAguWoWW+hZyO7RemW9wjkDXElnYRLpdtxPkurp4xCvx2E5jQ==
X-Received: by 2002:adf:df90:: with SMTP id z16mr20487511wrl.273.1581588886767; 
 Thu, 13 Feb 2020 02:14:46 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y131sm2428059wmc.13.2020.02.13.02.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 02:14:46 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, will@kernel.org, bhelgaas@google.com
Subject: [PATCH 3/4] iommu/arm-smmu-v3: Batch context descriptor invalidation
Date: Thu, 13 Feb 2020 11:14:34 +0100
Message-Id: <20200213101435.229932-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213101435.229932-1-jean-philippe@linaro.org>
References: <20200213101435.229932-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_021453_748725_2DDE642F 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: zhangfei.gao@linaro.org, joro@8bytes.org, robin.murphy@arm.com,
 jonathan.cameron@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than publishing one command at a time when invalidating a context
descriptor, batch the commands for all SIDs in the domain.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 6b76df37025e..11123fbf22a5 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1487,8 +1487,10 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 			     int ssid, bool leaf)
 {
 	size_t i;
+	int cmdn = 0;
 	unsigned long flags;
 	struct arm_smmu_master *master;
+	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cmdq_ent cmd = {
 		.opcode	= CMDQ_OP_CFGI_CD,
@@ -1501,13 +1503,19 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
 	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
 		for (i = 0; i < master->num_sids; i++) {
+			if (cmdn == CMDQ_BATCH_ENTRIES) {
+				arm_smmu_cmdq_issue_cmdlist(smmu, cmds, cmdn, false);
+				cmdn = 0;
+			}
+
 			cmd.cfgi.sid = master->sids[i];
-			arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+			arm_smmu_cmdq_build_cmd(&cmds[cmdn * CMDQ_ENT_DWORDS], &cmd);
+			cmdn++;
 		}
 	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	arm_smmu_cmdq_issue_sync(smmu);
+	arm_smmu_cmdq_issue_cmdlist(smmu, cmds, cmdn, true);
 }
 
 static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
