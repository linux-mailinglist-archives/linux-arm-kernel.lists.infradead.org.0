Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A228516B40E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 23:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o2JvZy6L+dcT5EVcExkFU4qoG4+UfuaE+5+U361ZPTs=; b=jlslJVIWHPF15N
	nHMN4a4p+2stmTxRdO0tZZHDhzXe1xbw7bDj7kDWznkb6grM+GY2Kb5HVN2WXprED9BiKjbua6fvi
	YcRZYNy9S9KSUxYmF4wxAdSZZKyPJRw21p/3y7CkMcvcPXaYev2d5FcgfCk+fx+cOzyPAGRztQkJ8
	ElgveYEt8DgG4rZ5I+lNh4uNuJzhtFb31KEYLLK0121cuC3yikIY8Lz0GGJ6smtZkkoSv4hMef5fX
	ZFLnaJnkLvA+1Cckj6WlMV/CVqfzOYlKSh0bUfQpLtSj+2qTCSsK6v56VXYWjjP571KarIKim/hN+
	OfZMcUdPnXI0U9kVo/xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6MGP-0006Am-Ig; Mon, 24 Feb 2020 22:31:45 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6MGD-0006AL-Se
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 22:31:37 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so10582923oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 14:31:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X0o0qn30+2qhaLvp/K43OKgrKlefJ1YZwBIeqT8fip8=;
 b=spzzzuIcXl0cuLnjSWvydMrjztA0ciY1+faqOI/RhwjB6uRUgKIAJZEHqXUSWNvPba
 Rojgn/G8C75lCUapdyBNIwTdPKxKaBF7XbeemR6/468VsL5OUSmFoPU++ZqoXAzLT2YE
 dE2zTqjr7GfrSsnJzaxcsdY2PpTTdOAoRduF/vV1I529U08rlsvm43DnjaogecAfdEyV
 wjQPdqdK4rhMkJfdQjRHiPf7RUK/DdVATwVijPkrDI7ylNNjEylmGxUqevi8AU6HdlEu
 Ipx0hI8wAzkpk0mXhLcs2rZPjXKE4zDCs6uIiV2433LBBhQyqWF9RNlgo60YSvIl0zLt
 MbTA==
X-Gm-Message-State: APjAAAXKdr2teePDysg8fl1iU+xj/p1xdP/K8hQnq3xssLFHIuPcHUom
 /EekiDp3fTpHP9YPuF8k/ki0etw=
X-Google-Smtp-Source: APXvYqwImtfpO7cq3d/nvmBua0GvNcIRNfGXYiR6EwkjeEy39WQ9UqgEnv7VmFgw94cPHGoiaIPUdA==
X-Received: by 2002:aca:54cc:: with SMTP id i195mr1048848oib.126.1582583490642; 
 Mon, 24 Feb 2020 14:31:30 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id w201sm4523757oif.29.2020.02.24.14.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 14:31:30 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
Date: Mon, 24 Feb 2020 16:31:29 -0600
Message-Id: <20200224223129.1068-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_143133_926897_B547EF76 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Eric Auger <eric.auger@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arm SMMUv3.2 adds support for TLB range invalidate operations.
Support for range invalidate is determined by the RIL bit in the IDR3
register.

The range invalidate is in units of the leaf page size and operates on
1-32 chunks of a power of 2 multiple pages. First, we determine from the
size what power of 2 multiple we can use. Then we calculate how many
chunks (1-31) of the power of 2 size for the range on the iteration. On
each iteration, we move up in size by at least 5 bits.

Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v3:
- Use inv_range local instead of modifying granule
- Simplify the TG calculation
- Use shift instead of divide by power of 2.
---
 drivers/iommu/arm-smmu-v3.c | 69 +++++++++++++++++++++++++++++++++++--
 1 file changed, 67 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index aa3ac2a03807..d8697f959ac0 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -69,6 +69,9 @@
 #define IDR1_SSIDSIZE			GENMASK(10, 6)
 #define IDR1_SIDSIZE			GENMASK(5, 0)
 
+#define ARM_SMMU_IDR3			0xc
+#define IDR3_RIL			(1 << 10)
+
 #define ARM_SMMU_IDR5			0x14
 #define IDR5_STALL_MAX			GENMASK(31, 16)
 #define IDR5_GRAN64K			(1 << 6)
@@ -346,9 +349,14 @@
 #define CMDQ_CFGI_1_LEAF		(1UL << 0)
 #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
 
+#define CMDQ_TLBI_0_NUM			GENMASK_ULL(16, 12)
+#define CMDQ_TLBI_RANGE_NUM_MAX		31
+#define CMDQ_TLBI_0_SCALE		GENMASK_ULL(24, 20)
 #define CMDQ_TLBI_0_VMID		GENMASK_ULL(47, 32)
 #define CMDQ_TLBI_0_ASID		GENMASK_ULL(63, 48)
 #define CMDQ_TLBI_1_LEAF		(1UL << 0)
+#define CMDQ_TLBI_1_TTL			GENMASK_ULL(9, 8)
+#define CMDQ_TLBI_1_TG			GENMASK_ULL(11, 10)
 #define CMDQ_TLBI_1_VA_MASK		GENMASK_ULL(63, 12)
 #define CMDQ_TLBI_1_IPA_MASK		GENMASK_ULL(51, 12)
 
@@ -473,9 +481,13 @@ struct arm_smmu_cmdq_ent {
 		#define CMDQ_OP_TLBI_S2_IPA	0x2a
 		#define CMDQ_OP_TLBI_NSNH_ALL	0x30
 		struct {
+			u8			num;
+			u8			scale;
 			u16			asid;
 			u16			vmid;
 			bool			leaf;
+			u8			ttl;
+			u8			tg;
 			u64			addr;
 		} tlbi;
 
@@ -627,6 +639,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_HYP		(1 << 12)
 #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
 #define ARM_SMMU_FEAT_VAX		(1 << 14)
+#define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -895,14 +908,22 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
 		break;
 	case CMDQ_OP_TLBI_NH_VA:
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
 		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
+		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
+		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
 		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
 		break;
 	case CMDQ_OP_TLBI_S2_IPA:
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
 		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
+		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
+		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
 		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_IPA_MASK;
 		break;
 	case CMDQ_OP_TLBI_NH_ASID:
@@ -2220,7 +2241,8 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 {
 	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	unsigned long start = iova, end = iova + size;
+	unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
+	size_t inv_range = granule;
 	int i = 0;
 	struct arm_smmu_cmdq_ent cmd = {
 		.tlbi = {
@@ -2239,15 +2261,53 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
 	}
 
+	if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
+		/* Get the leaf page size */
+		tg = __ffs(smmu_domain->domain.pgsize_bitmap);
+
+		/* Convert page size of 12,14,16 (log2) to 1,2,3 */
+		cmd.tlbi.tg = (tg - 10) / 2;
+
+		/* Determine what level the granule is at */
+		cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
+
+		num_pages = size >> tg;
+	}
+
 	while (iova < end) {
 		if (i == CMDQ_BATCH_ENTRIES) {
 			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
 			i = 0;
 		}
 
+		if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
+			/*
+			 * On each iteration of the loop, the range is 5 bits
+			 * worth of the aligned size remaining.
+			 * The range in pages is:
+			 *
+			 * range = (num_pages & (0x1f << __ffs(num_pages)))
+			 */
+			unsigned long scale, num;
+
+			/* Determine the power of 2 multiple number of pages */
+			scale = __ffs(num_pages);
+			cmd.tlbi.scale = scale;
+
+			/* Determine how many chunks of 2^scale size we have */
+			num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
+			cmd.tlbi.num = num - 1;
+
+			/* range is num * 2^scale * pgsize */
+			inv_range = num << (scale + tg);
+
+			/* Clear out the lower order bits for the next iteration */
+			num_pages -= num << scale;
+		}
+
 		cmd.tlbi.addr = iova;
 		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
-		iova += granule;
+		iova += inv_range;
 		i++;
 	}
 
@@ -3700,6 +3760,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 	if (smmu->sid_bits <= STRTAB_SPLIT)
 		smmu->features &= ~ARM_SMMU_FEAT_2_LVL_STRTAB;
 
+	/* IDR3 */
+	reg = readl_relaxed(smmu->base + ARM_SMMU_IDR3);
+	if (FIELD_GET(IDR3_RIL, reg))
+		smmu->features |= ARM_SMMU_FEAT_RANGE_INV;
+
 	/* IDR5 */
 	reg = readl_relaxed(smmu->base + ARM_SMMU_IDR5);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
