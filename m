Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D5E15CCA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v2cmqBWPFKDHmU6Zbqp+S6fSvp3bEG0NE8YjvG4aaWo=; b=tKyCjcuKY/uw1o
	Z46Q5jyp6mwSVBjCk50js+157opUn62x5V+Mi+H9e6v6M14PrBcu391JiBN4j1dRrTA2uNLCXuXct
	u2LnAXJG6tcTqtgrpfNurcgMBkf9awpxk+jQCdfd24QnPs+CnB8szAE1Oss2pK68Iamw8WVZp0cH8
	J3J0u1vOt3AIjhlJ8nVghiQftqFzqZgzEAXNFPw6SyXQ5xcz43ZjO2DK0NDNO/WhBiwELaKJkr0HC
	SfNY5Uu8BZyWTnhyfbF7OsQ43wn4EIgi20IzstKNWYJlKzZ71TOWfiVqBp3LC227Fu1KD3OWQHr0+
	g/1J6o64aKhreaPZ/oZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LWt-00039Q-11; Thu, 13 Feb 2020 20:56:11 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LWk-0002yR-St
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:56:04 +0000
Received: by mail-ot1-f65.google.com with SMTP id g64so6954271otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:56:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8T4KZ9WPX/QG720bALpUhREygAU9QP3LfeGnDm+c2RA=;
 b=jI5PzJcLwjEzdBlvRokyNw434tulnU+LQuRyWp9wpNLOCLtqc8wtmjv6vAn320zUZ1
 oBo9jJnbxx/dg8TTfWAoyuPApT3R2ZYDhP1MXmmfB6rwQeZPBkEE7yfhXjKzqwA8YH42
 XEOZGiP3B/cH1gdhR+UYSbXXuud8fT6e6ytx91UM6PJ/8lZnxznrPimh1Ml3wEhMHyj7
 iXYuj08uFXl9j8Yq0KJUpxOrGQ1IffWxsuDJbE5Xbm8c6GLyEV/aPqLPBVmt047Gker2
 ExFe7483IYaha7BL0Sh2mKxWVAPfEKIL2f5gt1ZMgqmOdWLJZbNHUSBO31YBAIRZbDcd
 lk5A==
X-Gm-Message-State: APjAAAV4MpaAW/96u27bD9lIIKKpIHk1EKPB6QGTLxPAdUjtLeGX+3um
 KyNotF+BUSuZImPqDN48Tg==
X-Google-Smtp-Source: APXvYqyjQU7dv79E9GbBxsmRvWQGcRrem7mUgXwGmLPvnHpl2Xl7OXrwF+Jt97aDkPa6p9cgvuSJFg==
X-Received: by 2002:a9d:7e99:: with SMTP id m25mr14436716otp.212.1581627361538; 
 Thu, 13 Feb 2020 12:56:01 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id t131sm1051285oih.35.2020.02.13.12.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:56:01 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2] iommu/arm-smmu-v3: Batch ATC invalidation commands
Date: Thu, 13 Feb 2020 14:56:00 -0600
Message-Id: <20200213205600.19690-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_125602_936365_6E512E53 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

As there is only one caller of arm_smmu_atc_inv_master() left, we can
simplify it and avoid passing in struct arm_smmu_cmdq_ent.

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Simplify arm_smmu_atc_inv_master()
 - Rebase on v5.6-rc1

 drivers/iommu/arm-smmu-v3.c | 38 ++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index aa3ac2a03807..8161d9e6c068 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2132,17 +2132,16 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
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
@@ -2151,10 +2150,11 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
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
@@ -2179,11 +2179,25 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
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
@@ -2611,7 +2625,6 @@ static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 
 static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 {
-	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_domain *smmu_domain = master->domain;
 
 	if (!master->ats_enabled)
@@ -2623,8 +2636,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
-	arm_smmu_atc_inv_master(master, &cmd);
+	arm_smmu_atc_inv_master(master);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
