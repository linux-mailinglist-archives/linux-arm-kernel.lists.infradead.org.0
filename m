Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731751393CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2p/SpGl2JFeiPKJ76l4hPbrqFhmQ2InojhMLvdJpCpY=; b=jtZK0ma/ogZfkf
	+WL5wyAQSokKXCOEtD154oLJ8zqHYQUAWixBW5W2AepcZnnvXjeKZHsz/EQGj0077HdgNzsnJ6T6a
	F2h/rVCRZYdE2G9z7bOciLZSilm2RHBK62Riw2ZWqe08Dr4ytIS28vl0LlOpicorM+ABvQca2O305
	ad09srf0nLASp6aZhJL3w0PRMR1V8LlRZoPSYB50OkHK6okeWCs1H/agcDH5Q3IWTs8UoE5Ef8dUg
	IqHp+6FjDfQFjx+hVl8xBBFPxJTdeasUFtutgthmcwlX07k9QMdjbnvJjB16/GCLQc/GbNl+uAUJG
	E3LoJTLy0+9UUjKvYPxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0s8-0003yf-O5; Mon, 13 Jan 2020 14:39:16 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0s2-0003xx-B3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:39:11 +0000
Received: by mail-ot1-f67.google.com with SMTP id a15so9132971otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 06:39:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VtgiiMw/nSVvHGkHXZg14Y2SSF3Fx9R0a3AgHhFUHIk=;
 b=FOXbARjg3QhYE1haiqO2FDmEhIr2YhYcq1vnF8Wj1Iq9t2+DWK9ncbgtwvZCt7Cz/e
 fcEsu7mLc39OlFVKl0jx0ehw0uBv9QxKyXAs1SksP7Il7wOfAFCt7lImZ8STZk8J1c6c
 M/wuVSggJiBNide7gZYrFZtpTFE97ScMuo6qcxBX+LKENibFe2XHWzkH4d/dX2HwJkiy
 cHxFOYOmAqNgfNNNryDmTqmGEOAPmK87H1Mi4Cq/lFccO89c/03kwYs/NAF9303wJztd
 b2ZAw3Tb1iCSCD4s5q9QnU0rgRhIL59pJjzOBZMs3/PmGE0IB1Pl8HdvZ4r1KgCPNZxx
 Qr4Q==
X-Gm-Message-State: APjAAAXkWzzaRLsu0Kv7LA2md99RFYCmzMfDmQ3gys5UHKW5Yja1Ngvd
 RToD0JqFKwTL0o3sU9+X1g==
X-Google-Smtp-Source: APXvYqx40v9ylI3py5hHwlwa3VsVzEwMz5HBJYylHRKFudS95stYyegw9PC7rrp0iP+RxFjgsgWYcw==
X-Received: by 2002:a9d:7e8a:: with SMTP id m10mr12380578otp.27.1578926347370; 
 Mon, 13 Jan 2020 06:39:07 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id m3sm4188519otf.13.2020.01.13.06.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 06:39:06 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] iommu/arm-smmu-v3: Batch ATC invalidation commands
Date: Mon, 13 Jan 2020 08:39:06 -0600
Message-Id: <20200113143906.11121-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_063910_375485_EAF13317 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to commit 2af2e72b18b4 ("iommu/arm-smmu-v3: Defer TLB
invalidation until ->iotlb_sync()"), build up a list of ATC invalidation
commands and submit them all at once to the command queue instead of
one-by-one.

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..e91b4a098215 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1919,10 +1919,11 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
 static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 				   int ssid, unsigned long iova, size_t size)
 {
-	int ret = 0;
+	int i, cmdn = 0;
 	unsigned long flags;
 	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_master *master;
+	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
 
 	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
 		return 0;
@@ -1947,11 +1948,25 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
 
 	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
-	list_for_each_entry(master, &smmu_domain->devices, domain_head)
-		ret |= arm_smmu_atc_inv_master(master, &cmd);
+	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
+		if (!master->ats_enabled)
+			continue;
+
+		for (i = 0; i < master->num_sids; i++) {
+			if (cmdn == CMDQ_BATCH_ENTRIES) {
+				arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu,
+					cmds, cmdn, false);
+				cmdn = 0;
+			}
+
+			cmd.atc.sid = master->sids[i];
+			arm_smmu_cmdq_build_cmd(&cmds[cmdn * CMDQ_ENT_DWORDS], &cmd);
+			cmdn++;
+		}
+	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	return ret ? -ETIMEDOUT : 0;
+	return arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu, cmds, cmdn, true);
 }
 
 /* IO_PGTABLE API */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
