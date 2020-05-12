Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2121CEAF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kMaIPaiOpTawW1kIrgQxvs5qNPqpANdjIdczeKJN24k=; b=DpG1FZlM8C4bnw
	62b1NN1PYmCV5yXdRt+Mla+RaKXAXLa4Jq+4+z7T66W3uDfHfGJ0KQ4LySCl6lzXArwGNpu6qzyR7
	x2Zozk7jCOd4KpNO+9F9HPTIUg9PbtvypOjt/hkp02buIuYAk81NckBGlT3x4DUtz9o4K8cCf1Hhy
	TXSm9NaIJEUpgQV7OsVLD6cWI3xj/thkL19QFAuufDfm2EKdVzmgQTQMeVAnXZ02H1UueV+NehGZt
	K+WTFwGN8ODVLaX63UAnJ88UIFMgawJac04vEEdvVjJF+3bDHX+KW9lnOUT6a5ukVmlS1OqcK8k3E
	9n9j+wPMjkEsmJs+HVUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKwA-0005Fd-4e; Tue, 12 May 2020 02:46:30 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKw1-0005FA-EE; Tue, 12 May 2020 02:46:22 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04C2jEc6028153; Mon, 11 May 2020 19:46:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=pfpt0818;
 bh=rhQoW8BpzMqDDXf+UQygBmfLJMFRQqK44P1gCbd5QDU=;
 b=BMYNFeb/J/tuSmV5irQ0m+daIQJJAjLNnhv/BUEUEN2cfTVvKwBDt776MkOAC36ehfAh
 RqcLXmZZL2kGuhspx3105eAvWPaUsREkjlIWd0jzZq5rn+fdm6ryofv1QZ6fklzYNx0n
 I5PjoMrQu4xOKpBhz9mT9tK4kBnerIVe0lKbYZ95j6jXbsOfNNhzIj0We2oVRdqARdqW
 mOZNC7ag7v7VQR8pauUmm7izg7joFFYpdBIhuqk1LnmNQXmwPkDZD2uAE2seHFhKxZU3
 3dtjjQCsFClmq+XUYuQVeVgotlD9SHAzyHUn1+ZqZJp8i5/ca1MGcSM0ZSfP0FufilrS Bg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 30wsvqhrn7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 19:46:12 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 11 May 2020 19:46:10 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 May 2020 19:46:10 -0700
Received: from dc5-eodlnx05.marvell.com (dc5-eodlnx05.marvell.com
 [10.69.113.147])
 by maili.marvell.com (Postfix) with ESMTP id 6EB3D3F703F;
 Mon, 11 May 2020 19:46:10 -0700 (PDT)
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: <linux-arm-kernel@lists.infradead.org>, <kexec@lists.infradead.org>,
 <robin.murphy@arm.com>, <maz@kernel.org>, <will@kernel.org>
Subject: [PATCH][v2] iommu: arm-smmu-v3: Copy SMMU table for kdump kernel
Date: Mon, 11 May 2020 19:46:06 -0700
Message-ID: <1589251566-32126-1-git-send-email-pkushwaha@marvell.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_11:2020-05-11,
 2020-05-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_194621_500292_CD68087E 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: bhsharma@redhat.com, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 helgaas@kernel.org, gkulkarni@marvell.com, prabhakar.pkin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An SMMU Stream table is created by the primary kernel. This table is
used by the SMMU to perform address translations for device-originated
transactions. Any crash (if happened) launches the kdump kernel which
re-creates the SMMU Stream table. New transactions will be translated
via this new table.

There are scenarios, where devices are still having old pending
transactions (configured in the primary kernel). These transactions
come in-between Stream table creation and device-driver probe.
As new stream table does not have entry for older transactions,
it will be aborted by SMMU.

Similar observations were found with PCIe-Intel 82576 Gigabit
Network card. It sends old Memory Read transaction in kdump kernel.
Transactions configured for older Stream table entries, that do not
exist any longer in the new table, will cause a PCIe Completion Abort.
Returned PCIe completion abort further leads to AER Errors from APEI
Generic Hardware Error Source (GHES) with completion timeout.
A network device hang is observed even after continuous
reset/recovery from driver, Hence device is no more usable.

So, If we are in a kdump kernel try to copy SMMU Stream table from
primary/old kernel to preserve the mappings until the device driver
takes over.

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
---
Changes for v2: Used memremap in-place of ioremap

V2 patch has been sanity tested. 

V1 patch has been tested with
A) PCIe-Intel 82576 Gigabit Network card in following
configurations with "no AER error". Each iteration has
been tested on both Suse kdump rfs And default Centos distro rfs.

 1)  with 2 level stream table 
       ----------------------------------------------------
       SMMU               |  Normal Ping   | Flood Ping
       -----------------------------------------------------
       Default Operation  |  100 times     | 10 times
       -----------------------------------------------------
       IOMMU bypass       |  41 times      | 10 times
       -----------------------------------------------------

 2)  with Linear stream table. 
       -----------------------------------------------------
       SMMU               |  Normal Ping   | Flood Ping
       ------------------------------------------------------
       Default Operation  |  100 times     | 10 times
       ------------------------------------------------------
       IOMMU bypass       |  55 times      | 10 times
       -------------------------------------------------------

B) This patch is also tested with Micron Technology Inc 9200 PRO NVMe
SSD card with 2 level stream table using "fio" in mixed read/write and
only read configurations. It is tested for both Default Operation and
IOMMU bypass mode for minimum 10 iterations across Centos kdump rfs and
default Centos ditstro rfs.

This patch is not full proof solution. Issue can still come
from the point device is discovered and driver probe called. 
This patch has reduced window of scenario from "SMMU Stream table 
creation - device-driver" to "device discovery - device-driver".
Usually, device discovery to device-driver is very small time. So
the probability is very low. 

Note: device-discovery will overwrite existing stream table entries 
with both SMMU stage as by-pass.


 drivers/iommu/arm-smmu-v3.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..d492d92c2dd7 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1847,7 +1847,13 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			break;
 		case STRTAB_STE_0_CFG_S1_TRANS:
 		case STRTAB_STE_0_CFG_S2_TRANS:
-			ste_live = true;
+			/*
+			 * As kdump kernel copy STE table from previous
+			 * kernel. It still may have valid stream table entries.
+			 * Forcing entry as false to allow overwrite.
+			 */
+			if (!is_kdump_kernel())
+				ste_live = true;
 			break;
 		case STRTAB_STE_0_CFG_ABORT:
 			BUG_ON(!disable_bypass);
@@ -3264,6 +3270,9 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
 		return -ENOMEM;
 	}
 
+	if (is_kdump_kernel())
+		return 0;
+
 	for (i = 0; i < cfg->num_l1_ents; ++i) {
 		arm_smmu_write_strtab_l1_desc(strtab, &cfg->l1_desc[i]);
 		strtab += STRTAB_L1_DESC_DWORDS << 3;
@@ -3272,6 +3281,23 @@ static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
 	return 0;
 }
 
+static void arm_smmu_copy_table(struct arm_smmu_device *smmu,
+			       struct arm_smmu_strtab_cfg *cfg, u32 size)
+{
+	struct arm_smmu_strtab_cfg rdcfg;
+
+	rdcfg.strtab_dma = readq_relaxed(smmu->base + ARM_SMMU_STRTAB_BASE);
+	rdcfg.strtab_base_cfg = readq_relaxed(smmu->base
+					      + ARM_SMMU_STRTAB_BASE_CFG);
+
+	rdcfg.strtab_dma &= STRTAB_BASE_ADDR_MASK;
+	rdcfg.strtab = memremap(rdcfg.strtab_dma, size, MEMREMAP_WB);
+
+	memcpy_fromio(cfg->strtab, rdcfg.strtab, size);
+
+	cfg->strtab_base_cfg = rdcfg.strtab_base_cfg;
+}
+
 static int arm_smmu_init_strtab_2lvl(struct arm_smmu_device *smmu)
 {
 	void *strtab;
@@ -3307,6 +3333,9 @@ static int arm_smmu_init_strtab_2lvl(struct arm_smmu_device *smmu)
 	reg |= FIELD_PREP(STRTAB_BASE_CFG_SPLIT, STRTAB_SPLIT);
 	cfg->strtab_base_cfg = reg;
 
+	if (is_kdump_kernel())
+		arm_smmu_copy_table(smmu, cfg, l1size);
+
 	return arm_smmu_init_l1_strtab(smmu);
 }
 
@@ -3334,6 +3363,11 @@ static int arm_smmu_init_strtab_linear(struct arm_smmu_device *smmu)
 	reg |= FIELD_PREP(STRTAB_BASE_CFG_LOG2SIZE, smmu->sid_bits);
 	cfg->strtab_base_cfg = reg;
 
+	if (is_kdump_kernel()) {
+		arm_smmu_copy_table(smmu, cfg, size);
+		return 0;
+	}
+
 	arm_smmu_init_bypass_stes(strtab, cfg->num_l1_ents);
 	return 0;
 }
-- 
2.18.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
