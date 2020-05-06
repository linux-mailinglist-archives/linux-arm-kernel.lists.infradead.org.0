Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A471C78A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QHkUwaJE2jR71RLCrYrxYszz/skhKJu090Qdnmvvmlc=; b=YXQYJHzms2Kjoa
	ggBfdGPcZ9AfwXgG+I668kXiLvemyTN86bW66/tWps8dkva8Et7VQQ9fIjwfAvTVQfqWTPen8H2e6
	0S1bKG5Lv7HOAVtBCfQNmgFvWBy+zZJsGRS30TMQKeX3f2mYUkJ7fpaJBuywn129UgdI+AMPMNBAP
	Qc/bOniQIp1/3Nfi83PCNhg3t0qcZSXz2MrUQiYvmL0CGeUiVwelfFCbaQ2PX1fLlnhOQt2jJB9Aw
	OeEcGWUhEdsGNQS/7E89YOgNNxETa1oaMO7N8xe0sHDynM/ba8Wy5mv9pjZyTt9+e4//uUXaIhAAi
	232eZ4zHboj18inXHD3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOAj-0001cZ-OX; Wed, 06 May 2020 17:49:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOAU-0001Y4-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:49:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id v12so1916441wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 10:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hWHyRKp89JVQR9Wj2q/H7Wn4Rwh+/TR6MPPzYZ0wjPA=;
 b=Dd6f0irrkcgPWqK7bSdzbaR69zH5LEy11m2PBDkF8rr58MdIVe3XqiidJt1QLQOUkd
 OnFIlEIRK1ptPTFYN1mIrjiH8mfZp7bqRXx1nyuPZTBlsbezWVdvP1RndtQehhuoIQL+
 Tn8ROK+nP0nDJgN69aFDSbIwkKrEdN+vs8l2uz/tPMcbBnjlLBLZg3C+cy7FH5OOoA0g
 QZdYe/vNkPVE44XNv7+d5FZVLNRAdWrP4sosF0lVv6YpU+4YdA2w0ZCBxiIz6+XsbKqW
 mgzOQHZV04Fp4+dSUWOoxHvOAeG578UhI88lY+amhvReZZ6Z83+hRxgL1n8qfa2SZLyB
 cVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hWHyRKp89JVQR9Wj2q/H7Wn4Rwh+/TR6MPPzYZ0wjPA=;
 b=po6LIqLQW9DM4jcwR+CImj7MgWnsrSR+m1c68A5T94U9UmuZTN5dKPvFvVgybUSeP1
 6zvRaxVNHjC2uSl1zfKspyRFrYFAkm3uzVzs3/Prvv1VzBN70k4X3F338FBOaHhZkJC+
 A+o8PopiDphnc4gd5xxHuOVDM7c12Y1YyXGdabTGHAYnaCIUXHWv1l0aGlf9w2x/igRC
 E6jIGeW02QV1xmZzPS4hzWPyatbAmYh2XC9lKW5Wvj1rgPYkMoXoyfTmOynxvhgnxFgi
 ADWEwiqOd6tr0atqXWwCMKYtbAX5ugUwHPmzoyUrhHl1YFuJHi4jLy6Cf2Gc1vhBvwfe
 Y2wg==
X-Gm-Message-State: AGi0PuaWInblXIBktXSAIfaI/ZsacVhu+RG+pULc2GzIyYsBIBlVKN8Y
 kqP3dUkrdignGoH+CVddOXAlYQ==
X-Google-Smtp-Source: APiQypIiuuHXkr4RsT4xMD4MRnNE4uCLdKVt7VMRDOvlSsSmryUY3pQdNlr5jSgfb/IfLZSpUF/GQg==
X-Received: by 2002:a5d:414f:: with SMTP id c15mr10706505wrq.61.1588787353314; 
 Wed, 06 May 2020 10:49:13 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id f5sm3762161wrp.70.2020.05.06.10.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 10:49:12 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] iommu/arm-smmu-v3: Don't reserve implementation defined
 register space
Date: Wed,  6 May 2020 19:46:30 +0200
Message-Id: <20200506174629.1504153-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_104914_924743_A77F21A0 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

To avoid this conflict, only reserve the MMIO region we actually use:
the first 0xe0 bytes of page 0 and the first 0xd0 bytes of page 1.
Although devm_ioremap() still works on full pages under the hood, this
way we benefit from resource conflict checks.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
A nicer (and hopefully working) solution to the problem dicussed here:
https://lore.kernel.org/linux-iommu/20200421155745.19815-1-jean-philippe@linaro.org/
---
 drivers/iommu/arm-smmu-v3.c | 50 +++++++++++++++++++++++++++++++++----
 1 file changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7a1..fc85cdd5b62cca 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -171,6 +171,9 @@
 #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
 #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
 
+#define ARM_SMMU_PAGE0_REG_SZ		0xe0
+#define ARM_SMMU_PAGE1_REG_SZ		0xd0
+
 /* Common MSI config fields */
 #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
 #define MSI_CFG2_SH			GENMASK(5, 4)
@@ -628,6 +631,7 @@ struct arm_smmu_strtab_cfg {
 struct arm_smmu_device {
 	struct device			*dev;
 	void __iomem			*base;
+	void __iomem			*page1;
 
 #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
 #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
@@ -733,11 +737,14 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
 static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
 						 struct arm_smmu_device *smmu)
 {
-	if ((offset > SZ_64K) &&
-	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
-		offset -= SZ_64K;
+	void __iomem *base = smmu->base;
 
-	return smmu->base + offset;
+	if (offset > SZ_64K) {
+		offset -= SZ_64K;
+		if (smmu->page1)
+			base = smmu->page1;
+	}
+	return base + offset;
 }
 
 static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
@@ -4021,6 +4028,28 @@ err_reset_pci_ops: __maybe_unused;
 	return err;
 }
 
+static void __iomem *arm_smmu_ioremap(struct device *dev,
+				      resource_size_t start,
+				      resource_size_t size)
+{
+	void __iomem *dest_ptr;
+	struct resource *res;
+
+	res = devm_request_mem_region(dev, start, size, dev_name(dev));
+	if (!res) {
+		dev_err(dev, "can't request SMMU region %pa\n", &start);
+		return IOMEM_ERR_PTR(-EINVAL);
+	}
+
+	dest_ptr = devm_ioremap(dev, start, size);
+	if (!dest_ptr) {
+		dev_err(dev, "ioremap failed for SMMU region %pR\n", res);
+		devm_release_mem_region(dev, start, size);
+		dest_ptr = IOMEM_ERR_PTR(-ENOMEM);
+	}
+	return dest_ptr;
+}
+
 static int arm_smmu_device_probe(struct platform_device *pdev)
 {
 	int irq, ret;
@@ -4056,10 +4085,21 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 	ioaddr = res->start;
 
-	smmu->base = devm_ioremap_resource(dev, res);
+	/*
+	 * Only map what we need, because the IMPLEMENTATION DEFINED registers
+	 * may be used for the PMCGs, which are reserved by the PMU driver.
+	 */
+	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_PAGE0_REG_SZ);
 	if (IS_ERR(smmu->base))
 		return PTR_ERR(smmu->base);
 
+	if (arm_smmu_resource_size(smmu) > SZ_64K) {
+		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
+					       ARM_SMMU_PAGE1_REG_SZ);
+		if (IS_ERR(smmu->page1))
+			return PTR_ERR(smmu->page1);
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
