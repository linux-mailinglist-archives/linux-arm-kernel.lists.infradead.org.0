Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731FE3665C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yCmazEGs3tUJwA/InC/SSgXLhFwz7+bvWN+HG404RBI=; b=Vpqc3K/xSaIWGV4sVVajXv7RO3
	bwWkXAE0GE/UyoVGrNw3ctbZmmHCaYHXncLyE231vwmYDSt2bxjdDHMmCsLU8EV9HUvo8VPZimTA8
	WGShgjNSuLmfSiUOMRVFnh/7JQinMF7+zePUfHPwMzi66KrHXmPlinII8vtolKbgqJCmz8VMeB9Et
	CaV5vkgKV51c765xs0FZngU0/Yav0xYo7BbqwZIcAqijWjZ7RX4YVTIM5D7tvuXGvZrXJWJc+Q4Ep
	8RP4rsNVxM826bYW7sGSPQKWwjE9p/o+jmHtNX5nXPuhiS0Hj87WR/07URnHs3NfkxFCvRfzW4O4D
	m3Uh22aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYd9q-0002Yx-TT; Wed, 05 Jun 2019 21:09:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYd9Z-0002QZ-8W
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:09:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id f97so5869plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=doGqQfOnbpbz6KWyxr0y6OarZe4NFnZU43MXukaW24s=;
 b=zsLf+GJaoDAXKa5EdGWe2FOH0F+xp5lNHW7YtXxQp3F6tZIgoxWTg4ICtQmSyMUzFS
 b0EGjQtzqHXwjdTw3FRh9z+9C6OYT11qsbfHgjRZPZakvHnZPBN05Qfz7+TfLQvcmfZy
 k8JA698NZ2o0hx24JO+WjKTiegX0rZpAXCRvblhsB/qkNq0Pyo3Fld98laxJ++tnYiDP
 l5VuN6NUy0XCB/5KqMOTCc9277V09UY4OBy3OnP1pl5FX2/+XCRwYGMCFJZjI4mweOty
 1iAo0dUwojRJmbTkcnex3nPunwVVOrWhwSE9evn6ehy9bWiqnakAnymht15U2Vk1qBfJ
 tx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=doGqQfOnbpbz6KWyxr0y6OarZe4NFnZU43MXukaW24s=;
 b=IkJy8HXS0yqqMX1MBAarZKcvehm4ujWbWlGj/rJ5QpmWMp4evqIiyFaLhKjF12I7PB
 0Dnk2A3XrRBl4oxQSCrjMDLqH0n5/9mZDbpNst4uGg12Alq9YD7uPSOdGit8KcWDFcoN
 aoBpTqB72vUrxzyFXIDq9MJLQJw6jc9TIycYrX+UcCG1bTffkZHCrCU5H07Z+r+DkQ1L
 XXBrVsD4Qns5rGIKocVC05RvrEQ8huth1K2CHiJ9R9gRDQkAEaI2rIfqfWYku8aVcksl
 ildbRiDDPP9p+aDWHEQL/i2Pvlc23ylSeNffNqTbD6EAmfJsjNpiGwZ68Uqkly9P29QF
 W7DA==
X-Gm-Message-State: APjAAAV3u5NjTxTsay5x172uEQL9a1DEReXLBQZN31CieEbQyaN3PExe
 byGgY493MMWDT6+IrKIyGDCJvQ==
X-Google-Smtp-Source: APXvYqwoS4/fIM8nKfSXqVALkUrziDsBx5YwkF6lBl7eSp+Ql0R6Eq9xI2taS6Dvk0vFthsrEHo8CA==
X-Received: by 2002:a17:902:2aab:: with SMTP id
 j40mr7623927plb.76.1559768940538; 
 Wed, 05 Jun 2019 14:09:00 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z68sm5093374pfb.37.2019.06.05.14.08.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:09:00 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [RFC 1/2] iommu: arm-smmu: Handoff SMR registers and context banks
Date: Wed,  5 Jun 2019 14:08:55 -0700
Message-Id: <20190605210856.20677-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190605210856.20677-1-bjorn.andersson@linaro.org>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_140901_304251_2CF02F03 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Boot splash screen or EFI framebuffer requires the display hardware to
operate while the Linux iommu driver probes. Therefore, we cannot simply
wipe out the SMR register settings programmed by the bootloader.

Detect which SMR registers are in use during probe, and which context
banks they are associated with. Reserve these context banks for the
first Linux device whose stream-id matches the SMR register.

Any existing page-tables will be discarded.

Heavily based on downstream implementation by Patrick Daly
<pdaly@codeaurora.org>.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/iommu/arm-smmu-regs.h |  2 +
 drivers/iommu/arm-smmu.c      | 80 ++++++++++++++++++++++++++++++++---
 2 files changed, 77 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
index e9132a926761..8c1fd84032a2 100644
--- a/drivers/iommu/arm-smmu-regs.h
+++ b/drivers/iommu/arm-smmu-regs.h
@@ -105,7 +105,9 @@
 #define ARM_SMMU_GR0_SMR(n)		(0x800 + ((n) << 2))
 #define SMR_VALID			(1 << 31)
 #define SMR_MASK_SHIFT			16
+#define SMR_MASK_MASK			0x7fff
 #define SMR_ID_SHIFT			0
+#define SMR_ID_MASK			0xffff
 
 #define ARM_SMMU_GR0_S2CR(n)		(0xc00 + ((n) << 2))
 #define S2CR_CBNDX_SHIFT		0
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 5e54cc0a28b3..c8629a656b42 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -135,6 +135,7 @@ struct arm_smmu_s2cr {
 	enum arm_smmu_s2cr_type		type;
 	enum arm_smmu_s2cr_privcfg	privcfg;
 	u8				cbndx;
+	bool				handoff;
 };
 
 #define s2cr_init_val (struct arm_smmu_s2cr){				\
@@ -399,9 +400,22 @@ static int arm_smmu_register_legacy_master(struct device *dev,
 	return err;
 }
 
-static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
+static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
+			       struct device *dev)
 {
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	unsigned long *map = smmu->context_map;
+	int end = smmu->num_context_banks;
+	int cbndx;
 	int idx;
+	int i;
+
+	for_each_cfg_sme(fwspec, i, idx) {
+		if (smmu->s2crs[idx].handoff) {
+			cbndx = smmu->s2crs[idx].cbndx;
+			goto found_handoff;
+		}
+	}
 
 	do {
 		idx = find_next_zero_bit(map, end, start);
@@ -410,6 +424,17 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
 	} while (test_and_set_bit(idx, map));
 
 	return idx;
+
+found_handoff:
+	for (i = 0; i < smmu->num_mapping_groups; i++) {
+		if (smmu->s2crs[i].cbndx == cbndx) {
+			smmu->s2crs[i].cbndx = 0;
+			smmu->s2crs[i].handoff = false;
+			smmu->s2crs[i].count--;
+		}
+	}
+
+	return cbndx;
 }
 
 static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
@@ -759,7 +784,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 }
 
 static int arm_smmu_init_domain_context(struct iommu_domain *domain,
-					struct arm_smmu_device *smmu)
+					struct arm_smmu_device *smmu,
+					struct device *dev)
 {
 	int irq, start, ret = 0;
 	unsigned long ias, oas;
@@ -873,8 +899,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		ret = -EINVAL;
 		goto out_unlock;
 	}
-	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
-				      smmu->num_context_banks);
+	ret = __arm_smmu_alloc_cb(smmu, start, dev);
 	if (ret < 0)
 		goto out_unlock;
 
@@ -1264,7 +1289,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		return ret;
 
 	/* Ensure that the domain is finalised */
-	ret = arm_smmu_init_domain_context(domain, smmu);
+	ret = arm_smmu_init_domain_context(domain, smmu, dev);
 	if (ret < 0)
 		goto rpm_put;
 
@@ -1798,6 +1823,49 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
 }
 
+static void arm_smmu_read_smr_state(struct arm_smmu_device *smmu)
+{
+	u32 privcfg;
+	u32 cbndx;
+	u32 mask;
+	u32 type;
+	u32 s2cr;
+	u32 smr;
+	u32 id;
+	int i;
+
+	for (i = 0; i < smmu->num_mapping_groups; i++) {
+		smr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(i));
+		mask = (smr >> SMR_MASK_SHIFT) & SMR_MASK_MASK;
+		id = smr & SMR_ID_MASK;
+		if (!(smr & SMR_VALID))
+			continue;
+
+		s2cr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(i));
+		type = (s2cr >> S2CR_TYPE_SHIFT) & S2CR_TYPE_MASK;
+		cbndx = (s2cr >> S2CR_CBNDX_SHIFT) & S2CR_CBNDX_MASK;
+		privcfg = (s2cr >> S2CR_PRIVCFG_SHIFT) & S2CR_PRIVCFG_MASK;
+		if (type != S2CR_TYPE_TRANS)
+			continue;
+
+		/* Populate the SMR */
+		smmu->smrs[i].mask = mask;
+		smmu->smrs[i].id = id;
+		smmu->smrs[i].valid = true;
+
+		/* Populate the S2CR */
+		smmu->s2crs[i].group = NULL;
+		smmu->s2crs[i].count = 1;
+		smmu->s2crs[i].type = type;
+		smmu->s2crs[i].privcfg = privcfg;
+		smmu->s2crs[i].cbndx = cbndx;
+		smmu->s2crs[i].handoff = true;
+
+		/* Mark the context bank as busy */
+		bitmap_set(smmu->context_map, cbndx, 1);
+	}
+}
+
 static int arm_smmu_id_size_to_bits(int size)
 {
 	switch (size) {
@@ -2023,6 +2091,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
 			   smmu->ipa_size, smmu->pa_size);
 
+	arm_smmu_read_smr_state(smmu);
+
 	return 0;
 }
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
