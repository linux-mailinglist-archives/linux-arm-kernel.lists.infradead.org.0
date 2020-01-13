Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509B01393CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5+J42aN75zzXmTKYQZALTOKhZvYrgkezH+gKzlxGQQ4=; b=Z2WoKcRp+wmvTs
	OVVqEpSlhGVAVre8j0k2n2RjeS5GjKYFtJca2I5RvmkAV2nf/HD/RUbj/jB+tQzhe295PAcmxUp2q
	yl2Ysaw9tTsT74wyz8vOphtdKJfhHvHvR6I9YKqToX4/5juuI/1m9D/imfzPcmNpVOE6Z1U/XNDhD
	xQSklG68WZ2H49F8yehBlshDxhNbk6W/dB+xLThqZf7cAnpsAxLXS0aDS8+tkxswdAjeQf2gG3Jjj
	XV8Zbny2F42TNBoPQVlj9DZx85c+aJJA6Y8xEwmZFPtyr5hFfTOwLoHpl/N48uzhqt1LSD6/qityI
	opOIxuhX1lGtlZxKNcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0sV-0004Di-GS; Mon, 13 Jan 2020 14:39:39 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0sJ-0004By-1z
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:39:28 +0000
Received: by mail-oi1-f195.google.com with SMTP id c16so8435376oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 06:39:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=81zWfeXhBaixkcEUs8f4gK08iAzMzzHoyfXswbOOolg=;
 b=jOAoedsq6BoWJb2iocxeTx7BW+izdMgmeVkCf2fSOQ6SOfmZCanyzpsA8XD91gVGSe
 GEI/FeaIr0ldrVC6CWNIQS8eV/snGnsla7RNt9TWANJ0sUoOMNQq0FWdcN13t1AEIYdL
 uR3gj7fuuEiA+j4nfvW4YdHK27gjU8S5SSYm3sWLmFBlK8SW32fhFzAogrSvjn3jUk1j
 Pa5RJsZi6gc5Yn7eeJrLBZYQyS/ymYDzQWqsxPBTR4IqMRdoBihZDQ98iFHUfKuEgKiN
 YN2PLXywFCG3/kJ6pvieY+cH98p8a4I0E1wyBIdf5y7Boz+80cb4KED+XHV/H8jwKHWS
 Ewsw==
X-Gm-Message-State: APjAAAW0kY6thrFfcFJzcNpig8iFA2Bm/Ehy7SXXtltHLbVmtGd+H1W1
 b+uuWtX8A7KTr6SbVV948w==
X-Google-Smtp-Source: APXvYqwZal0CQqyNCpa063ctZkqNNitnuhA40bOLoRHYGv6idil39oKfY/8szsTcvMNL/RHpu5rmwA==
X-Received: by 2002:aca:ed57:: with SMTP id l84mr13263125oih.8.1578926365612; 
 Mon, 13 Jan 2020 06:39:25 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id c7sm4219269otm.63.2020.01.13.06.39.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 06:39:25 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
Date: Mon, 13 Jan 2020 08:39:24 -0600
Message-Id: <20200113143924.11576-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_063927_121208_368E2A75 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
1-32 chunks of a power of 2 multiple pages. First we determine from the
size what power of 2 multiple we can use and then adjust the granule to
32x that size.

Cc: Eric Auger <eric.auger@redhat.com>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c | 53 +++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e91b4a098215..8b6b3e2aa383 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -70,6 +70,9 @@
 #define IDR1_SSIDSIZE			GENMASK(10, 6)
 #define IDR1_SIDSIZE			GENMASK(5, 0)
 
+#define ARM_SMMU_IDR3			0xc
+#define IDR3_RIL			(1 << 10)
+
 #define ARM_SMMU_IDR5			0x14
 #define IDR5_STALL_MAX			GENMASK(31, 16)
 #define IDR5_GRAN64K			(1 << 6)
@@ -327,9 +330,14 @@
 #define CMDQ_CFGI_1_LEAF		(1UL << 0)
 #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
 
+#define CMDQ_TLBI_0_NUM			GENMASK_ULL(16, 12)
+#define CMDQ_TLBI_RANGE_NUM_MAX		32
+#define CMDQ_TLBI_0_SCALE		GENMASK_ULL(24, 20)
 #define CMDQ_TLBI_0_VMID		GENMASK_ULL(47, 32)
 #define CMDQ_TLBI_0_ASID		GENMASK_ULL(63, 48)
 #define CMDQ_TLBI_1_LEAF		(1UL << 0)
+#define CMDQ_TLBI_1_TTL			GENMASK_ULL(9, 8)
+#define CMDQ_TLBI_1_TG			GENMASK_ULL(11, 10)
 #define CMDQ_TLBI_1_VA_MASK		GENMASK_ULL(63, 12)
 #define CMDQ_TLBI_1_IPA_MASK		GENMASK_ULL(51, 12)
 
@@ -455,9 +463,13 @@ struct arm_smmu_cmdq_ent {
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
 
@@ -595,6 +607,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_HYP		(1 << 12)
 #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
 #define ARM_SMMU_FEAT_VAX		(1 << 14)
+#define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -856,13 +869,21 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
 		break;
 	case CMDQ_OP_TLBI_NH_VA:
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
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
@@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
 	}
 
+	if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
+		unsigned long tg, scale;
+
+		/* Get the leaf page size */
+		tg = __ffs(smmu_domain->domain.pgsize_bitmap);
+
+		/* Determine the power of 2 multiple number of pages */
+		scale = __ffs(size / (1UL << tg));
+		cmd.tlbi.scale = scale;
+
+		cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
+
+		/* Convert page size of 12,14,16 (log2) to 1,2,3 */
+		cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
+
+		/* Determine what level the granule is at */
+		cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
+
+		/* Adjust granule to the maximum range */
+		granule = CMDQ_TLBI_RANGE_NUM_MAX * (1 << scale) * (1UL << tg);
+	}
+
 	while (iova < end) {
 		if (i == CMDQ_BATCH_ENTRIES) {
 			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
 			i = 0;
 		}
 
+		/* Only possible for range invalidate */
+		if (granule > (end - iova))
+			cmd.tlbi.num = ((end - iova) /
+					(granule / CMDQ_TLBI_RANGE_NUM_MAX)) - 1;
+
 		cmd.tlbi.addr = iova;
 		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
 		iova += granule;
@@ -3449,6 +3497,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
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
