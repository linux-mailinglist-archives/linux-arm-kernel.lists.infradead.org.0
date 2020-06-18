Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC11FF85F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmBb9QC0oBb8Dk0a5LmN3RpQMFqkd66utBqzQ9+PjVk=; b=Y95YAGF876+Hxe
	i7Viz15Np94JXNEq9YgU4FHaGXYzn8Gx97PWSzWYxqBsqH6/SSv0BFmgnl7y9R4mUVMwaitwN27sv
	/fOdtjUgi8JbybcW/XiV4qXlfk/6CvF8tThxWX8Li88Lp6joXS+wwqsllXnAvzqhCBYJvoPUbLKj+
	noUVv39tIGv6TKTvPWUWjCrwyXoY951CPg82o/YcRCmg1yL0ckli8zRnu+37nuFpXpnD2PIEfXN0G
	FBGtE4fObDT2bSZDqYGvnf1ARpDKzjX5hCz7gLsf9ln9ebVc5VJjvJBxABu3K1EgxzJ19w9qhp9OB
	EPUw44nPUjsL49evAN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwwp-0001Tc-Cs; Thu, 18 Jun 2020 15:59:27 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwu8-0007WD-9L
 for linux-arm-kernel@bombadil.infradead.org; Thu, 18 Jun 2020 15:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=K0sD9muywK0nbycZHdsqSBZ4T+dLVPNn3EX5mSicmkA=; b=aE81FxUouD2eKZh+lGWdVywcBy
 ERQFsxruTr2LNisxxQ05bPTBWLyRnA474r+QI47M9eVGfN+OepbK2IYf2t84vxGcmxhaMLp/vCTnd
 SwScqLhHyA2TOo/DHBWcM/k0FzOpzSAik+YtX76OQXN/UogcJ7TKfAgzF3IVIoF/RuAurynv3Kaw0
 GnZ7kVqtG0H9Oztte/ywPyNxN0CZ54VlLUAeHy5AhT7P6rt1ZWhCNf+QkpK4ymN0YNZ34erFQfbDE
 TnHVcehdPb8zGL/O3fM9sqTqDw6s9F2y0KzpcUCDmR5h2mkNsJBiqrwLWCi4yhM8YZ0T/gd1TX16O
 YttFhLGg==;
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqT-0008TH-Jz
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:54 +0000
Received: by mail-ej1-x641.google.com with SMTP id p20so6897443ejd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K0sD9muywK0nbycZHdsqSBZ4T+dLVPNn3EX5mSicmkA=;
 b=DYibauvJ2nimmPQCzKZsqFWxsw1cJOa83Q8lBOizOX8qC2sph7xBeWfJVDLqHcPsZT
 jUpy1d/5G5neFk7+aPYKN3NiWZz2OD8ek+65tg6OyKTdhesLhyiouRddaM9PTbG2zSM0
 vNbXEBv/Zfu7Xpa9afY1wlNWbf7NYURm9ezvJnPuhwmG6QXxlemJYFcE9cyW4NEcWZin
 j2SQ+U1tQkwf6J+OWfDQA3p4lIuVm/Opa2zG6+W+u6svNiCqSklKXaS1QWT1/RMzMNp0
 SPJ6ObCtmIf61+7zubUKVxAmdcChrBc908ruLceXol1cTPgQeBcB+yXy6tuW8+XaC7gk
 FL3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K0sD9muywK0nbycZHdsqSBZ4T+dLVPNn3EX5mSicmkA=;
 b=pu8HRqhNd5Q8ZqvuKO/ID/zs1dBGDeCIuHGyjN8PDJWPr0hZSSGZu2QEgMNznjIoYy
 tRz2J2/mVGZvOzgGpccg294j/69gyB9wV32dqPiWUaYaon43ptupNFXG7WIuxs20eXHA
 B8e/LzQgCg6y6T+W+n3EQVCxBxgocuseEyG7uof/TZh6I8vS4khejxoCa8ah0QG3MJRD
 cVKl5qY570nX/TT5Wb3QSjCaNvYputX2tOzgYqoodrFtKhjlRpqPxneArQx1N28Rh8Dp
 VI/N1WMANIIuHdn8twyiORzC96JesVgK3ZIOEcfaEAGcJ4m4DMixGumXw7il5QNMIFWP
 Kemw==
X-Gm-Message-State: AOAM530sy3BT5M/M8ROuM8kg+GVh5BkoqDB2ZyGJTJ0ey87LVTKmyEJn
 2DF56YLaA8k6D8eOSv29EqUYDg==
X-Google-Smtp-Source: ABdhPJyPJTA3MoAcCwZxTHDutpdNm45kp002C6I1TJUitRaZbiXuqClT8u8iuWaKBu95Oo1397Yh/g==
X-Received: by 2002:a17:906:ae85:: with SMTP id
 md5mr4476555ejb.213.1592495571768; 
 Thu, 18 Jun 2020 08:52:51 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:51 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 12/12] iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
Date: Thu, 18 Jun 2020 17:51:25 +0200
Message-Id: <20200618155125.1548969-13-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 joro@8bytes.org, robin.murphy@arm.com, hch@infradead.org,
 zhengxiang9@huawei.com, Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org,
 will@kernel.org, xuzaibo@huawei.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The invalidate_range() notifier is called for any change to the address
space. Perform the required ATC invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index af551f3c78a78..972c061399fc9 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2378,6 +2378,20 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	size_t inval_grain_shift = 12;
 	unsigned long page_start, page_end;
 
+	/*
+	 * ATS and PASID:
+	 *
+	 * If substream_valid is clear, the PCIe TLP is sent without a PASID
+	 * prefix. In that case all ATC entries within the address range are
+	 * invalidated, including those that were requested with a PASID! There
+	 * is no way to invalidate only entries without PASID.
+	 *
+	 * When using STRTAB_STE_1_S1DSS_SSID0 (reserving CD 0 for non-PASID
+	 * traffic), translation requests without PASID create ATC entries
+	 * without PASID, which must be invalidated with substream_valid clear.
+	 * This has the unpleasant side-effect of invalidating all PASID-tagged
+	 * ATC entries within the address range.
+	 */
 	*cmd = (struct arm_smmu_cmdq_ent) {
 		.opcode			= CMDQ_OP_ATC_INV,
 		.substream_valid	= !!ssid,
@@ -2421,12 +2435,12 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	cmd->atc.size	= log2_span;
 }
 
-static int arm_smmu_atc_inv_master(struct arm_smmu_master *master)
+static int arm_smmu_atc_inv_master(struct arm_smmu_master *master, int ssid)
 {
 	int i;
 	struct arm_smmu_cmdq_ent cmd;
 
-	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
+	arm_smmu_atc_inv_to_cmd(ssid, 0, 0, &cmd);
 
 	for (i = 0; i < master->num_sids; i++) {
 		cmd.atc.sid = master->sids[i];
@@ -2955,7 +2969,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_master(master);
+	arm_smmu_atc_inv_master(master, 0);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
@@ -3152,6 +3166,16 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
 	return ops->iova_to_phys(ops, iova);
 }
 
+static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
+					 struct mm_struct *mm,
+					 unsigned long start, unsigned long end)
+{
+	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
+
+	arm_smmu_atc_inv_domain(smmu_mn->domain, mm->pasid, start,
+				end - start + 1);
+}
+
 static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 {
 	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
@@ -3170,6 +3194,7 @@ static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, &invalid_cd);
 
 	arm_smmu_tlb_inv_asid(smmu_domain->smmu, smmu_mn->cd->asid);
+	arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, 0, 0);
 
 	smmu_mn->cleared = true;
 	mutex_unlock(&sva_lock);
@@ -3181,6 +3206,7 @@ static void arm_smmu_mmu_notifier_free(struct mmu_notifier *mn)
 }
 
 static struct mmu_notifier_ops arm_smmu_mmu_notifier_ops = {
+	.invalidate_range	= arm_smmu_mm_invalidate_range,
 	.release		= arm_smmu_mm_release,
 	.free_notifier		= arm_smmu_mmu_notifier_free,
 };
@@ -3257,8 +3283,10 @@ static void arm_smmu_mmu_notifier_put(struct arm_smmu_mmu_notifier *smmu_mn)
 	 * If we went through clear(), we've already invalidated, and no
 	 * new TLB entry can have been formed.
 	 */
-	if (!smmu_mn->cleared)
+	if (!smmu_mn->cleared) {
 		arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
+		arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, 0, 0);
+	}
 
 	/* Frees smmu_mn */
 	mmu_notifier_put(&smmu_mn->mn);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
