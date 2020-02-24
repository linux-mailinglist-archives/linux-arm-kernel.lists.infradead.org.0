Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610E716AF23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:30:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rjn9mkLB7tl0KAT5zpLO05Hf5Kg9nhKFkZ7FY1AbQgQ=; b=bmRITPUlp8WABY
	/RzhDhj1EJLjmd2hAwuG6cSbiZi4fsXmB9DCzVqZGasD0KNgNnVkhnrg0mUtGOTlhKST8ccxWb0eY
	NZPaEXcMKUHmszy69v640TJAJi0HWpFlWmsAqaN/PFX6lF9FF80OuHBBdAg6Fl3RlBBK3uM2o0eZk
	zjrfoC8pVlvbEGBzxOY2qzm+gSRjHYSZG0JCCixgENz8dOB9gIk7595i9T+3areR+vHZhQtr9hzSi
	ZgHjOBg7DubvPmG3uWZ7mQMJe0lSiCm+I/lQMbnW+zauWpWBD207/IlPTt9xxLKk+x3lVR/YQwEBG
	ld/LJ+9fDbjnlgEZ02BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IUq-00037z-Un; Mon, 24 Feb 2020 18:30:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPU-0005m7-GQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id e8so11578132wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OqyBSLsjWoTwUeyl/94+2rCzV9+vYMPMP4GIUnRD0qA=;
 b=YllwiJrZdJ1NjO07lPuBqd6vBWp/2/geoV9/Zzog5cPbDrIrLFnmIwe3ONCoKCVSiG
 ZAYw10/1nei1dfdmPsqeVoOWU9YTNhg6z5DCfIauUNueL2OSnQ7hdxBfDVjpfBwG5pr5
 WlzCkO9JAW+/l+cBIHevykIdN1AVsIJ+/ItvELyk4F9HPziiDWRCPa6TCA+HVyDENaUx
 YQ0aZDPJUpiBlN2ZSrd27WwxwNsN5H2lEPJj8yn1/e8hAZ12hdJY3fHnzNfUrlBxT7bQ
 NxIifg85M9zkTlKSWlFIWhJbk1CamOGpKA+2XMby8Q9upRPoweAV5jj9BHvMdYmg3o2Q
 u7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OqyBSLsjWoTwUeyl/94+2rCzV9+vYMPMP4GIUnRD0qA=;
 b=dxiJirgYoCbWnEuLkfx+7KlA8bgrMOexAaoYKmqnXXjY6EkePXZoV5tWe4yZoQ0LXO
 61P6Py4RglKK8Xk18X5oHqzyyUtdPY3SZhZDO174+iMxR4DdoHoo/G/85nF/M0xmbpI2
 CXe+VX42IYpcUZN/ZpC2iORK1j+//mmUIqwdQP+ceWQAn7w2ejhyEaqv2s0OIHM3QAt+
 Qrg90Zf2sTw1G/y1SHTIP1t4b1ZJVCkGkbIFGdgkHgAgWw0BuqK+vl42ODPQPNChFud/
 MjnyG+6h9d79rPVoG5myS1KIKtysL9b6hA/BDpdla7pOVuhEq21M1Cy45xmVU5UgAQK1
 4XgQ==
X-Gm-Message-State: APjAAAWvSHnmJvu4AcApGUbk55D5bJpJTkAn6iS5o+leX1VdnF7eHwtT
 DIaLAPnIXNI2M2DcUK0Yd5HMBA==
X-Google-Smtp-Source: APXvYqweLQT3Woeir8eRQoWOxeTHyd8FqFAJUftioLhxJBGnZqgw7j5oKrWyOIQLiBydPtpty1UXkw==
X-Received: by 2002:a05:6000:188:: with SMTP id
 p8mr66983633wrx.336.1582568690310; 
 Mon, 24 Feb 2020 10:24:50 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:49 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 19/26] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
Date: Mon, 24 Feb 2020 19:23:54 +0100
Message-Id: <20200224182401.353359-20-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102452_785735_F1CD48B8 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org, yi.l.liu@intel.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

If the SMMU supports it and the kernel was built with HTTU support, enable
hardware update of access and dirty flags. This is essential for shared
page tables, to reduce the number of access faults on the fault queue.

We can enable HTTU even if CPUs don't support it, because the kernel
always checks for HW dirty bit and updates the PTE flags atomically.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 95b4caceae1a..015e8e59e0ef 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -57,6 +57,8 @@
 #define IDR0_ASID16			(1 << 12)
 #define IDR0_ATS			(1 << 10)
 #define IDR0_HYP			(1 << 9)
+#define IDR0_HD				(1 << 7)
+#define IDR0_HA				(1 << 6)
 #define IDR0_BTM			(1 << 5)
 #define IDR0_COHACC			(1 << 4)
 #define IDR0_TTF			GENMASK(3, 2)
@@ -305,6 +307,9 @@
 #define CTXDESC_CD_0_TCR_IPS		GENMASK_ULL(34, 32)
 #define CTXDESC_CD_0_TCR_TBI0		(1ULL << 38)
 
+#define CTXDESC_CD_0_TCR_HA		(1UL << 43)
+#define CTXDESC_CD_0_TCR_HD		(1UL << 42)
+
 #define CTXDESC_CD_0_AA64		(1UL << 41)
 #define CTXDESC_CD_0_S			(1UL << 44)
 #define CTXDESC_CD_0_R			(1UL << 45)
@@ -646,6 +651,8 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_E2H		(1 << 15)
 #define ARM_SMMU_FEAT_BTM		(1 << 16)
 #define ARM_SMMU_FEAT_SVA		(1 << 17)
+#define ARM_SMMU_FEAT_HA		(1 << 18)
+#define ARM_SMMU_FEAT_HD		(1 << 19)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -1665,10 +1672,17 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 		 * this substream's traffic
 		 */
 	} else { /* (1) and (2) */
+		u64 tcr = cd->tcr;
+
 		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
 		cdptr[2] = 0;
 		cdptr[3] = cpu_to_le64(cd->mair);
 
+		if (!(smmu->features & ARM_SMMU_FEAT_HD))
+			tcr &= ~CTXDESC_CD_0_TCR_HD;
+		if (!(smmu->features & ARM_SMMU_FEAT_HA))
+			tcr &= ~CTXDESC_CD_0_TCR_HA;
+
 		/*
 		 * STE is live, and the SMMU might read dwords of this CD in any
 		 * order. Ensure that it observes valid values before reading
@@ -1676,7 +1690,7 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 		 */
 		arm_smmu_sync_cd(smmu_domain, ssid, true);
 
-		val = cd->tcr |
+		val = tcr |
 #ifdef __BIG_ENDIAN
 			CTXDESC_CD_0_ENDI |
 #endif
@@ -1919,10 +1933,12 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 		return old_cd;
 	}
 
+	/* HA and HD will be filtered out later if not supported by the SMMU */
 	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
+	      CTXDESC_CD_0_TCR_HA | CTXDESC_CD_0_TCR_HD |
 	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
 
 	switch (PAGE_SIZE) {
@@ -4211,6 +4227,12 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 			smmu->features |= ARM_SMMU_FEAT_E2H;
 	}
 
+	if (reg & (IDR0_HA | IDR0_HD)) {
+		smmu->features |= ARM_SMMU_FEAT_HA;
+		if (reg & IDR0_HD)
+			smmu->features |= ARM_SMMU_FEAT_HD;
+	}
+
 	/*
 	 * If the CPU is using VHE, but the SMMU doesn't support it, the SMMU
 	 * will create TLB entries for NH-EL1 world and will miss the
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
