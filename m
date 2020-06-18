Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA2E1FF854
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2EnDiM3JTv3/P3P+AxSHMkav/i+K2mdelbpWX/OKv4=; b=KtzZJa7uBcn3PQ
	Cv+vnZKbLgjLPVQ5MPHBYMsrpjWbO2tPy4EV3WKN81dQ5R2maGCOvLYhZaC71RQpjtuzLV+dHxIzf
	YLZ1iCOaXOU2HTh5pM6WskyQL31AadV2T66eJBsQbSS7KXH0qa1m6B1aR49dBfV6ST0YoRiDHvfYe
	gmQdP0fmsDKtZczL8skBP8IENDK7MJuSvebCdVlbk1KMxnNjWYi3YlkS1BlfvWfKa8ZGuQrdkqm2A
	aKbZv2Kob8f6KZIBI+8ha4dRS7vLqzXygUtp0Ljx2BAnQGb6NTx1mvtntU2WPn5jHLUR6+FPvUKL+
	FfuebMjgiMeWNuvGNl+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwvO-0000Cz-F8; Thu, 18 Jun 2020 15:57:58 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqN-0002Eb-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:58 +0000
Received: by mail-ej1-x641.google.com with SMTP id gl26so6922014ejb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WJ6cCCV8E6DMFD7HqvFq9WRcUvuKrkpNdYaDLNUVviA=;
 b=nbPHVqQ4T+kuk9t8qrzVLGO2UEs5ToyO9mWMZ41PrASGRYC47YvXea1KDC9gDv25Md
 jtIzi3L7g542lm5vl1vNYWnl3LW7kdNQbBQKQwC2PkP5LFi6I9SJt1E2rpG/3mGzYBB2
 htIOMn3gzhav+OS8Em4uEM8SHSczva7uyIuO04C1EYODgPhoZxpLfS8AM5ED8QgXim4R
 rY/YaGnn+bWlzEiIY8ceUIF6biDZiVmVaE6Kmg/zKCqHph9n17pkcS7fCpstKVVP8VuY
 l4nA+Ux69hXavZ4QiDwUcRa3y8V/VIWa3AJEl/xf41kb1fLuFalWazAHILTp/PWsqczP
 HkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WJ6cCCV8E6DMFD7HqvFq9WRcUvuKrkpNdYaDLNUVviA=;
 b=los4qfc0Hhd1nKgSlf66hoQszRfq3xv10c2Th7btX8rfSv7S7fvsn2iKbUBSw9aWRZ
 TSV5C2juwlvLqlTrRKY9IbHvU9lA7A/UQSJsQvvOc3Qwg4hGsH6R5zlXfcLG2VBxiUDi
 L5PyozYdTAGZ0wItwLciNdFQBOEO+EMtWJ7edeibAMVKH5U37z9l/bfCR713adSGCyCD
 z8sc2v/NqpXgPKCArwlyScd43iEnO8rHxeWDqee+47ALeqTgJ/dMO3m/pEGTLEtgCc+G
 jTqYAnGMlNeYpKnsyJMLJ57HbuG1mdpZ1EHilKYwru+O8T7Zw+8i3PPU7IvvHIOtJHTx
 feQg==
X-Gm-Message-State: AOAM5325BNOdYI3qZmUTltK1n+HzuZQwLgQo1HBpInFXmVXMwvVYwp9k
 ba1j5mMjE7fGjezaMNaKxN2jwg==
X-Google-Smtp-Source: ABdhPJwT/k720uyCWIrCGDDjhYeelrlNaUkLfPLh0LBU3DqPpBSXfORheDk7AjOINMKzueIk2y95Ug==
X-Received: by 2002:a17:907:2052:: with SMTP id
 pg18mr4376057ejb.513.1592495566301; 
 Thu, 18 Jun 2020 08:52:46 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:45 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 07/12] iommu/arm-smmu-v3: Share process page tables
Date: Thu, 18 Jun 2020 17:51:20 +0200
Message-Id: <20200618155125.1548969-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085247_786109_079495B5 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, catalin.marinas@arm.com,
 joro@8bytes.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 robin.murphy@arm.com, hch@infradead.org, zhengxiang9@huawei.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 xuzaibo@huawei.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With Shared Virtual Addressing (SVA), we need to mirror CPU TTBR, TCR,
MAIR and ASIDs in SMMU contexts. Each SMMU has a single ASID space split
into two sets, shared and private. Shared ASIDs correspond to those
obtained from the arch ASID allocator, and private ASIDs are used for
"classic" map/unmap DMA.

A possible conflict happens when trying to use a shared ASID that has
already been allocated for private use by the SMMU driver. This will be
addressed in a later patch by replacing the private ASID. At the
moment we return -EBUSY.

Each mm_struct shared with the SMMU will have a single context
descriptor. Add a refcount to keep track of this. It will be protected
by the global SVA lock.

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 150 +++++++++++++++++++++++++++++++++++-
 1 file changed, 146 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 937aa1af428d5..cabd942e4cbf3 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -22,6 +22,7 @@
 #include <linux/iommu.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
+#include <linux/mmu_context.h>
 #include <linux/msi.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -33,6 +34,8 @@
 
 #include <linux/amba/bus.h>
 
+#include "io-pgtable-arm.h"
+
 /* MMIO registers */
 #define ARM_SMMU_IDR0			0x0
 #define IDR0_ST_LVL			GENMASK(28, 27)
@@ -589,6 +592,9 @@ struct arm_smmu_ctx_desc {
 	u64				ttbr;
 	u64				tcr;
 	u64				mair;
+
+	refcount_t			refs;
+	struct mm_struct		*mm;
 };
 
 struct arm_smmu_l1_ctx_desc {
@@ -727,6 +733,7 @@ struct arm_smmu_option_prop {
 };
 
 static DEFINE_XARRAY_ALLOC1(asid_xa);
+static DEFINE_MUTEX(sva_lock);
 
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
@@ -1662,7 +1669,8 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 #ifdef __BIG_ENDIAN
 			CTXDESC_CD_0_ENDI |
 #endif
-			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
+			CTXDESC_CD_0_R | CTXDESC_CD_0_A |
+			(cd->mm ? 0 : CTXDESC_CD_0_ASET) |
 			CTXDESC_CD_0_AA64 |
 			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
 			CTXDESC_CD_0_V;
@@ -1766,12 +1774,144 @@ static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
 	cdcfg->cdtab = NULL;
 }
 
-static void arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
+static void arm_smmu_init_cd(struct arm_smmu_ctx_desc *cd)
 {
+	refcount_set(&cd->refs, 1);
+}
+
+static bool arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
+{
+	bool free;
+	struct arm_smmu_ctx_desc *old_cd;
+
 	if (!cd->asid)
-		return;
+		return false;
+
+	free = refcount_dec_and_test(&cd->refs);
+	if (free) {
+		old_cd = xa_erase(&asid_xa, cd->asid);
+		WARN_ON(old_cd != cd);
+	}
+	return free;
+}
+
+static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
+{
+	struct arm_smmu_ctx_desc *cd;
 
-	xa_erase(&asid_xa, cd->asid);
+	cd = xa_load(&asid_xa, asid);
+	if (!cd)
+		return NULL;
+
+	if (cd->mm) {
+		/* All devices bound to this mm use the same cd struct. */
+		refcount_inc(&cd->refs);
+		return cd;
+	}
+
+	/* Ouch, ASID is already in use for a private cd. */
+	return ERR_PTR(-EBUSY);
+}
+
+__maybe_unused
+static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
+{
+	u16 asid;
+	int ret = 0;
+	u64 tcr, par, reg;
+	struct arm_smmu_ctx_desc *cd;
+	struct arm_smmu_ctx_desc *old_cd = NULL;
+
+	lockdep_assert_held(&sva_lock);
+
+	asid = mm_context_get(mm);
+	if (!asid)
+		return ERR_PTR(-ESRCH);
+
+	cd = kzalloc(sizeof(*cd), GFP_KERNEL);
+	if (!cd) {
+		ret = -ENOMEM;
+		goto err_put_context;
+	}
+
+	arm_smmu_init_cd(cd);
+
+	old_cd = arm_smmu_share_asid(asid);
+	if (IS_ERR(old_cd)) {
+		ret = PTR_ERR(old_cd);
+		goto err_free_cd;
+	} else if (old_cd) {
+		if (WARN_ON(old_cd->mm != mm)) {
+			ret = -EINVAL;
+			goto err_free_cd;
+		}
+		kfree(cd);
+		mm_context_put(mm);
+		return old_cd;
+	}
+
+	/* Fails if a private ASID has been allocated since we last checked */
+	ret = xa_insert(&asid_xa, asid, cd, GFP_KERNEL);
+	if (ret)
+		goto err_free_cd;
+
+	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
+	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
+	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
+	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
+	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
+
+	switch (PAGE_SIZE) {
+	case SZ_4K:
+		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_4K);
+		break;
+	case SZ_16K:
+		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_16K);
+		break;
+	case SZ_64K:
+		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_64K);
+		break;
+	default:
+		WARN_ON(1);
+		ret = -EINVAL;
+		goto err_free_asid;
+	}
+
+	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	par = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
+	tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_IPS, par);
+
+	cd->ttbr = virt_to_phys(mm->pgd);
+	cd->tcr = tcr;
+	/*
+	 * MAIR value is pretty much constant and global, so we can just get it
+	 * from the current CPU register
+	 */
+	cd->mair = read_sysreg(mair_el1);
+	cd->asid = asid;
+	cd->mm = mm;
+
+	return cd;
+
+err_free_asid:
+	arm_smmu_free_asid(cd);
+err_free_cd:
+	kfree(cd);
+err_put_context:
+	mm_context_put(mm);
+	return ERR_PTR(ret);
+}
+
+__maybe_unused
+static void arm_smmu_free_shared_cd(struct arm_smmu_ctx_desc *cd)
+{
+	lockdep_assert_held(&sva_lock);
+
+	if (arm_smmu_free_asid(cd)) {
+		/* Unpin ASID */
+		mm_context_put(cd->mm);
+		kfree(cd);
+	}
 }
 
 /* Stream table manipulation functions */
@@ -2481,6 +2621,8 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 	typeof(&pgtbl_cfg->arm_lpae_s1_cfg.tcr) tcr = &pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 
+	arm_smmu_init_cd(&cfg->cd);
+
 	ret = xa_alloc(&asid_xa, &asid, &cfg->cd,
 		       XA_LIMIT(1, (1 << smmu->asid_bits) - 1), GFP_KERNEL);
 	if (ret)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
