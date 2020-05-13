Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648931D109E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OJjbp2zWlms72x4E7ZFRuacIkKzlz/W95+ACLXdrPtY=; b=FYpw84MeMTv8gU
	BTJLaKmNqfOWjHH3EPTuYrDBY6UolTHZyR15MRv9UqJPsv+yaVFacs23WZ6i6OqQ48GqIHKBCGOPn
	djOuQeoL/npIZoE5cfcPlUZMS3dC6BmfPvPPlUOZl5OwZZQIRw0rDTMaDolOzZE83jyyWaAn+qMPl
	zo5GP7fLdUMQ1zZkqLvqFLfhcsr2q+QjjHx75MW71urfRbTztoEHU7kVMIBMRjaszHr8nC4Urtnwz
	6R2IXjzUf6kJ5DKx+cIEaxdOTzmvG4v/lg/RSE0gh8QEKvhPjJpE6REmY1IBOLYMcYF9AgrEN0JRm
	sAMxqI1PKQ6RPZXW2TYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpEz-0001O5-Mt; Wed, 13 May 2020 11:07:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpEl-0001Lm-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:07:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so6425316wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kyjTfTHMVUTV+THehJYOS1UTUTs5x0t0xpjX4MdtCY=;
 b=DEil9n0gXHGymALBWdas81BFDTL11HXaPejLvIufToKD+XdRHMpgiczE8uCg/IJKMk
 o+Ho9++LbXsr35XpyqX4c4IJQFeMtyCfa25Z+NkqaczakuaLa1cgb/SuqfBlyqu6uIZt
 LuAyrWw70W+TIUDw0tnkwSVEv8E3TEmZkifC9tCH35x+lsGOxkCmABqxj5LnZh0orEl9
 nIEnrm4QxZoTh+mfb2TigA02rRa6ecGNneaJNG7znMXL4WYPOgGsciE2XnqqPHj7XGU2
 UeDj3pweIS0VsnlznSbC/qYmY0zQMH4uf5UCs32Q0qeQG+QL0cM0f9w0i2oc2ys7GVnv
 XfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kyjTfTHMVUTV+THehJYOS1UTUTs5x0t0xpjX4MdtCY=;
 b=VEpebcwo12bq7P3E+tJxCXSjNdJKJL5S6TtssE/+VynKZapw4oT8lAfWZSF2ZUUrGn
 LjLuunjUacRHHeOZwHYK9eKthVxdUmbhcyC9INCs26D7K3/LZd9ClebvM57yxmCx1XvT
 9gbLh060B9SclKAWuaQVGd4HU8LzfoDdYFn/2BdtpnNRMJtXgXTgZi1UXP14KJfGEc1Q
 2xUCG/Ds3C1Fblvn0irOLrrRvtLN8u27QBt8+uPkaK5IQ5sziHlWBJogjr2bdf8gH8b6
 8eFH1ns2bfRWmzSbkkF/nIREurEvbujbKIj+VTcK0pfpgB2lhfTlmcr+atXYifi/hHKB
 RIrw==
X-Gm-Message-State: AGi0PuaqUQVFcriSx0DeRBd+yShWHPMhIqnFRVXJ0KzB6v+otJWV7mhr
 ERVemHqtCkViGfj5ABrSg4EEyQ==
X-Google-Smtp-Source: APiQypKgqLRpEdbQmb0PocsKhfcvRtSmsH2tuQKK5KGLEZF0EGrIVAw4HabuB3b2XrZh4uTNbgbGow==
X-Received: by 2002:adf:fa44:: with SMTP id y4mr17940958wrr.135.1589368061182; 
 Wed, 13 May 2020 04:07:41 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id q144sm3023804wme.0.2020.05.13.04.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 04:07:40 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] iommu/arm-smmu-v3: Don't reserve implementation defined
 register space
Date: Wed, 13 May 2020 13:02:57 +0200
Message-Id: <20200513110255.597203-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_040743_425805_4A122F12 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, lorenzo.pieralisi@arm.com,
 will@kernel.org, joro@8bytes.org, tuanphan@amperemail.onmicrosoft.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
inside the first 64kB region of the SMMU. Since PMCG are managed by a
separate driver, this layout causes resource reservation conflicts
during boot.

To avoid this conflict, don't reserve the MMIO regions that are
implementation defined. Although devm_ioremap_resource() still works on
full pages under the hood, this way we benefit from resource conflict
checks.

Fixes: 7d839b4b9e00 ("perf/smmuv3: Add arm64 smmuv3 pmu driver")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v1->v2: simplify following Robin's comments
https://lore.kernel.org/linux-iommu/20200506174629.1504153-1-jean-philippe@linaro.org/
---
 drivers/iommu/arm-smmu-v3.c | 35 +++++++++++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7a1..af21d24a09e888 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -171,6 +171,8 @@
 #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
 #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
 
+#define ARM_SMMU_REG_SZ			0xe00
+
 /* Common MSI config fields */
 #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
 #define MSI_CFG2_SH			GENMASK(5, 4)
@@ -628,6 +630,7 @@ struct arm_smmu_strtab_cfg {
 struct arm_smmu_device {
 	struct device			*dev;
 	void __iomem			*base;
+	void __iomem			*page1;
 
 #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
 #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
@@ -733,9 +736,8 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
 static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
 						 struct arm_smmu_device *smmu)
 {
-	if ((offset > SZ_64K) &&
-	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
-		offset -= SZ_64K;
+	if (offset > SZ_64K)
+		return smmu->page1 + offset - SZ_64K;
 
 	return smmu->base + offset;
 }
@@ -4021,6 +4023,18 @@ err_reset_pci_ops: __maybe_unused;
 	return err;
 }
 
+static void __iomem *arm_smmu_ioremap(struct device *dev, resource_size_t start,
+				      resource_size_t size)
+{
+	struct resource res = {
+		.flags = IORESOURCE_MEM,
+		.start = start,
+		.end = start + size - 1,
+	};
+
+	return devm_ioremap_resource(dev, &res);
+}
+
 static int arm_smmu_device_probe(struct platform_device *pdev)
 {
 	int irq, ret;
@@ -4056,10 +4070,23 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 	ioaddr = res->start;
 
-	smmu->base = devm_ioremap_resource(dev, res);
+	/*
+	 * Don't map the IMPLEMENTATION DEFINED regions, since they may contain
+	 * the PMCG registers which are reserved by the PMU driver.
+	 */
+	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_REG_SZ);
 	if (IS_ERR(smmu->base))
 		return PTR_ERR(smmu->base);
 
+	if (arm_smmu_resource_size(smmu) > SZ_64K) {
+		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
+					       ARM_SMMU_REG_SZ);
+		if (IS_ERR(smmu->page1))
+			return PTR_ERR(smmu->page1);
+	} else {
+		smmu->page1 = smmu->base;
+	}
+
 	/* Interrupt lines */
 
 	irq = platform_get_irq_byname_optional(pdev, "combined");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
