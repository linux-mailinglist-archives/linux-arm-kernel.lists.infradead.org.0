Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936761A870A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUx5CzXruylCUamm6LbtNLxosvXQSBIT89V4wvQbjpk=; b=B5whI3nju6BMB8
	O3v/5VhEg78bb5/j84obQKMmQgzxNUFEkaiQUjlpODGknE4xQhczbo90nyMXCZSSR9FYOv3ie8utK
	sAs6aYVj3WaM9Ui30AkALrxGalZttMFHdQw8sABjbdh5gpajaNMIsg61K/s96SiF5wpcEziUhCZ5b
	0bM/wYavCRflyqOzQIS3fhHQT3H9uXsfvHHLKj9rnXXIo+vBcgsVYh1+b0Ig0SEY203bGIxU2FAGm
	E3rVxzN8ml44xJKlCkoPCUt+Oev/cJsa+BAt2KwVyneYNwQn49TLoLUNTIGd4Xp+p1gn9c2b4+3rt
	altG20lw+ib3x2eh3X9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP46-0000l8-Gv; Tue, 14 Apr 2020 17:09:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzK-0002Nf-KT
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so13827772wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kX7S6lLPtPxuthnaqmJScAqBjqH/apZcE9CXTwQeOvU=;
 b=UGA3KLMwsLNY89811V7EK3id91XIRFmER1PcDwpN6xrw1GtsOaQizxrRHRtGEE4TX3
 do1n0AFiqJF6QCTHbjBBQVWUHDTYjRFS4XwOivdCaMdJVcZ+EpuQGdACDtk5jJ/ALrk9
 QWkfPd8rxSd35yJXezznRHoO4af8sVb2YJHI6dIC9yyRjSbGXaAgyzJpjh5J52Jc+RGL
 hLOrTCp1qBgro6BphrKqLYQaG6dLMZ31qsFfaosesRKQkqeQP5unheE0t4aNORXh1gBn
 VVxXwA1j6xT4GQQP6HFNo1G8EqTDEoncXmNvd+5q+FMzHAwz4AFOArEfPYMYNEYf/6yH
 eumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kX7S6lLPtPxuthnaqmJScAqBjqH/apZcE9CXTwQeOvU=;
 b=CNPD7wm+juNyxelQmvS08DkRRSM+JCQsMqtVIVv6OPgbo2kXQ2rgd6cXo+3Vd5BnVL
 E9Ne7gVcuyd/diuD8IQEvtzcMQqC5Qx+Az/FHQgKRfjc/x3whDyRCz5AHSiFBHw/PVRJ
 gPWej/w8LKpG9hU74S+eJtCy9GQumASqGuoHG9Kbax01dY7nLsCFxYyYzyJUIxeJBROx
 KHZS8aHsWqvLnwlAwLrz8KI7OZ6dxJ10yHKSJqFFJ7yqi16vQiGmpcfMhcRx4VOtcZ99
 P9jb5xjT/7sciFt8v3danNAeVqjMtirNY5uofuSMa4lUfsG7/DHmTKRTsD6DYonMJQ6S
 HFhw==
X-Gm-Message-State: AGi0Pua7WRGY0ry0zMMIF7KvOr/MEcJuXOly58no1cVMlIjm7IoP/lFA
 uE9AFe1pEXz1NdJea7pu0Og+wg==
X-Google-Smtp-Source: APiQypL0sw4GI3orm6Mwz7O2HA+cidMWHFaRPNOxNBIJlp7Uv38brpt7BnSl5ju9KFU9AbCgedQXVw==
X-Received: by 2002:a1c:8084:: with SMTP id b126mr752667wmd.135.1586883880974; 
 Tue, 14 Apr 2020 10:04:40 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:40 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 16/25] iommu/arm-smmu-v3: Add SVA feature checking
Date: Tue, 14 Apr 2020 19:02:44 +0200
Message-Id: <20200414170252.714402-17-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100442_777232_4320ABFF 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com, jgg@ziepe.ca,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aggregate all sanity-checks for sharing CPU page tables with the SMMU
under a single ARM_SMMU_FEAT_SVA bit. For PCIe SVA, users also need to
check FEAT_ATS and FEAT_PRI. For platform SVA, they will most likely have
to check FEAT_STALLS.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: bump feature bit
---
 drivers/iommu/arm-smmu-v3.c | 72 +++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e7de8a7459fa4..d209d85402a83 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -657,6 +657,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
 #define ARM_SMMU_FEAT_E2H		(1 << 16)
 #define ARM_SMMU_FEAT_BTM		(1 << 17)
+#define ARM_SMMU_FEAT_SVA		(1 << 18)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -3930,6 +3931,74 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
 	return 0;
 }
 
+static bool arm_smmu_supports_sva(struct arm_smmu_device *smmu)
+{
+	unsigned long reg, fld;
+	unsigned long oas;
+	unsigned long asid_bits;
+
+	u32 feat_mask = ARM_SMMU_FEAT_BTM | ARM_SMMU_FEAT_COHERENCY;
+
+	if ((smmu->features & feat_mask) != feat_mask)
+		return false;
+
+	if (!(smmu->pgsize_bitmap & PAGE_SIZE))
+		return false;
+
+	/*
+	 * Get the smallest PA size of all CPUs (sanitized by cpufeature). We're
+	 * not even pretending to support AArch32 here.
+	 */
+	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
+	switch (fld) {
+	case 0x0:
+		oas = 32;
+		break;
+	case 0x1:
+		oas = 36;
+		break;
+	case 0x2:
+		oas = 40;
+		break;
+	case 0x3:
+		oas = 42;
+		break;
+	case 0x4:
+		oas = 44;
+		break;
+	case 0x5:
+		oas = 48;
+		break;
+	case 0x6:
+		oas = 52;
+		break;
+	default:
+		return false;
+	}
+
+	/* abort if MMU outputs addresses greater than what we support. */
+	if (smmu->oas < oas)
+		return false;
+
+	/* We can support bigger ASIDs than the CPU, but not smaller */
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_ASID_SHIFT);
+	asid_bits = fld ? 16 : 8;
+	if (smmu->asid_bits < asid_bits)
+		return false;
+
+	/*
+	 * See max_pinned_asids in arch/arm64/mm/context.c. The following is
+	 * generally the maximum number of bindable processes.
+	 */
+	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+		asid_bits--;
+	dev_dbg(smmu->dev, "%d shared contexts\n", (1 << asid_bits) -
+		num_possible_cpus() - 2);
+
+	return true;
+}
+
 static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 {
 	u32 reg;
@@ -4142,6 +4211,9 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 
 	smmu->ias = max(smmu->ias, smmu->oas);
 
+	if (arm_smmu_supports_sva(smmu))
+		smmu->features |= ARM_SMMU_FEAT_SVA;
+
 	dev_info(smmu->dev, "ias %lu-bit, oas %lu-bit (features 0x%08x)\n",
 		 smmu->ias, smmu->oas, smmu->features);
 	return 0;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
