Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E750B1BFEF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8Sdp0EmnVSVeJ0uCXQnXThmxjMmnv0P4drJyNjX+NA=; b=Z4wo/uNhVx5vER
	fmtghCTGQbQ7dg+r7LPLAMMoOdXMMAaEg07jTJAfgi2ZdNOF+bVSXIv12Di9tR/QdwbFrZHp+RXqX
	RDigTFUR0NFspUa4SNi5lV2zGGwfJ5Qul+CM3XNxBCJeLh8vqFIF5ULssH7fO8lThzXvzkUwQKCkg
	zsDOEIevWRUB8YAwCEDO29Yg38dzXx3xrSYCo0kYmUQRopgRtReXDuxDnjTsWWje3fjSPoFoapcW1
	amZVnR++OCAqAnEvMB2bc6eQsOku+w5YH8ViSiEhBq5uZAYf+oTZ2nowJLMJLFrBntKZckLvbmemV
	lpcQ89O8dDp/14aymcVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUARc-0000g9-6F; Thu, 30 Apr 2020 14:45:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMf-0002Yx-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id z6so2211497wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v8m/gvQmdEE9q+Hk6vZz26imXwSjnQ8yRBvjHzdBrII=;
 b=AVtmLG7xYoehDlrnZavnpbAOhvBcGvD8THICXsw2+FmNJiMb6JVlWTGYe4FmG1dmI8
 At5vrjT6MtoEzwTTzQ/y3NsrffNNLmUePhwD3TlPy1PXULk/Y1uUJsFvECAPDGCNQ7fo
 WPg9bTKlMkc/notJMFKWvoyOjQPeX73fDxPWn0d0WwMcnOwyW751edW/3yr44yceNv+8
 ZQ70u9G30xYPpT6uX7q7q6j5dFb0RDjmuo9I0d3VzU/CaL7ueffD2Q/3MwJgwJUt4wz9
 WDvu7KNJaJSo6FtBHyshkNa/Aiz+MdDoA/jrjtMFAOdffIGw3K2yfTNouUR0Lyfn5K4Z
 tUjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v8m/gvQmdEE9q+Hk6vZz26imXwSjnQ8yRBvjHzdBrII=;
 b=SLAX0Kr5mp0oagpuXa+67Q3YjKxrqUIHkJowdqMn6eFd41tHRDyS5KB81Qhajh0JP/
 ZPNIz6k7V2WGmmpRu/00DhpUvF7iqnP2DF6vUxMFDg/c9DXHPlrJJtDoTBzifl8+S77X
 2Wcfr1vRiPeH596ibVE/VRTszpdflkPFnM15KDarqQfDof6QUlAVeZ4dSEjKhV4+c8ik
 z1xCqJ0xJBTHoGO54C+uGUgEna++WPYkniLewJh1jma5FSHER2HitMf8FeQRrsEDtHsE
 nTrD350OlfLFfvNPjHDkL+ON0G8jPP47rEFsE/4vi9Zb3fDpYQzmFga12OdCajcF9uZv
 b7hg==
X-Gm-Message-State: AGi0PuaPcchaN2coAMjru55fRV/1WWFq6CK6hLOV08K7i98FoMSUH2jh
 t1eMfA0UESagj5J7cke9psSvFA==
X-Google-Smtp-Source: APiQypKC2Ra8wot+z9FmTb6X9lIUjfF/migCT+XYOIs58HdBF3GJl8+jq+TxpZeczK0hV/dLr58P0Q==
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr3325816wmm.9.1588257636329; 
 Thu, 30 Apr 2020 07:40:36 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:35 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 15/25] iommu/arm-smmu-v3: Add SVA feature checking
Date: Thu, 30 Apr 2020 16:34:14 +0200
Message-Id: <20200430143424.2787566-16-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074037_823730_AB753D18 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
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
 drivers/iommu/arm-smmu-v3.c | 72 +++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index a562c4b243292..9b90cc57a609b 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -657,6 +657,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
 #define ARM_SMMU_FEAT_E2H		(1 << 16)
 #define ARM_SMMU_FEAT_BTM		(1 << 17)
+#define ARM_SMMU_FEAT_SVA		(1 << 18)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -3925,6 +3926,74 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
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
@@ -4137,6 +4206,9 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 
 	smmu->ias = max(smmu->ias, smmu->oas);
 
+	if (arm_smmu_supports_sva(smmu))
+		smmu->features |= ARM_SMMU_FEAT_SVA;
+
 	dev_info(smmu->dev, "ias %lu-bit, oas %lu-bit (features 0x%08x)\n",
 		 smmu->ias, smmu->oas, smmu->features);
 	return 0;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
