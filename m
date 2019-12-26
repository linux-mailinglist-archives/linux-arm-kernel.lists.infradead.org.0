Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C0312AF21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArhhB0v+9OPo3FJa7MzqF9pieVtaAuZYJeZtJ7WMfgs=; b=ViYky2bj7QSKer
	RQrl2S8JXg4zFMc2IyiQlFh4qtyri904hkrCqXLM93EYAkQaBL0Q3D2pKGgOO4E7cTZPz44y58qGh
	GG3vYr/9BUHophLHzRsJQYsqW4o8Vgc/NjHjGVuTBPHejoa9tnMma2dBanqK7Ax63S2T6SVvdslg0
	h+kPhJJQ+g+Sah274UeCwMV8da21qCvYbVxJb4AuSAkH3A9+KmM+zPOvMmOJku5gmc4+z/ETICAVS
	lWnD3S+gooVPCpXc48WAD23W462W+uTyYqNezwcLT4dmicdnBUJ5fvbK/SjwrbG9GLot5FGKCUSS3
	yYi7WWoHbiA/2OkefjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbT4-00049K-E2; Thu, 26 Dec 2019 22:18:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbS1-0003LU-27
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:17:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id i23so8393170pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 14:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b4nCH35NcICW88DtPeVc2y4BpH7bKLWG0sdpxkzMId4=;
 b=XnlEYoHlvYt0xMVeZaPgTijBnaigSekfgfAtnotdTaCRtunM8H527mMoDyXDncl0lu
 gkuFXFWXl7eyAnf8Ym1yn1X8FdyyMFL+tY3KDfIi97Uu1CcIAtqpv62y5tu0yzLalJ0K
 UdHO/TijyKoBv4xUdzHk4cs+WfuHWyCTn12HRRyIrJDI+nkf+bGC3xM7sr0qPHG1fu8m
 BWlFoReSGRlBNVUkcqihItsU4JfIUm2coCMm29FuMy5SVNftATpxaIFWK2YViJfiXGBC
 +rOPVo4CRiOPXUZ/g3dXpJhT+DiH6kvV2ywDCiYSld3ixyUnMMN2015Dw9S3zOGZjenO
 sifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b4nCH35NcICW88DtPeVc2y4BpH7bKLWG0sdpxkzMId4=;
 b=CctdMA/iPixtwhibuVZXdfMWbwIoJ5qbXhXumN8enGo7M9HrMgeO8fNe5EBV1c1aov
 byphfkjR26Dn/j1+FshE+x0TeiyrMs+3n54juxfMoYhDPZ2qhRuYjFgjxKFfkBVoL25J
 xMF9xh5h0PWWeeyvKDbXtr5B0FS7wFjXKVYnMuAJ4OjCv6UPjL7mh4HVuY+Fg49V6PD9
 vXQfPzonjXWkCKHbRy1PIfWO9jmeOwoluSl1WE4g64jqgriuI3Iz+m1G38gdWGHjMFzJ
 M/3/Ii+76IYm3Lb4698vLbnI1/dGd7qo2sj+Cxf58shgxcRFiK2aNRgr43eiXKQXgTM0
 DLAA==
X-Gm-Message-State: APjAAAWci1/kG2P/F4bIbS/e/Fi2nFhvfQc/Y5F5KfDJcJQYZ6Z2S4Mj
 sg2z1LEM/hQDZJVOBeBRPo2eOg==
X-Google-Smtp-Source: APXvYqxgh62ruEOoozlZUPF1Csw6qAEXjVj+daPfQwQTGicHoC82SAgmdsiuM8ZADcIT05YrxH/PMg==
X-Received: by 2002:a62:8247:: with SMTP id w68mr42721610pfd.2.1577398668422; 
 Thu, 26 Dec 2019 14:17:48 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 2sm11779409pjh.19.2019.12.26.14.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 14:17:47 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 3/3] iommu/arm-smmu: Allow inherting stream mapping from
 bootloader
Date: Thu, 26 Dec 2019 14:17:09 -0800
Message-Id: <20191226221709.3844244-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
References: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_141749_131603_85EF8AC7 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@gmail.com>, Patrick Daly <pdaly@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Pratik Patel <pratikp@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Qualcomm bootloaders leaves the IOMMU with stream mapping for
the display hardware to be able to read the framebuffer memory in DDR,
to continuously display a boot splash or to implement EFI framebuffer.

This patch implements support for implementations to pin stream mappings
and adds the code to the Qualcomm implementation for reading out the
stream mapping from the bootloader, with the result of maintaining the
display hardware's access to DDR until the context bank is enabled.

Heavily based on downstream implementation by Patrick Daly
<pdaly@codeaurora.org>.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since RFC:
- Deal with EXIDS
- The onetime handoff has been replaced with a "pinned" state, to deal with
  probe deferring in the display driver
- Reads back s2cr for all groups, not only the "valid" ones

 drivers/iommu/arm-smmu-qcom.c | 35 +++++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 29 +++++++++++++++++++++++------
 drivers/iommu/arm-smmu.h      |  1 +
 3 files changed, 59 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 24c071c1d8b0..06e5799dcb87 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2019, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/qcom_scm.h>
 
 #include "arm-smmu.h"
@@ -11,6 +12,39 @@ struct qcom_smmu {
 	struct arm_smmu_device smmu;
 };
 
+static int qcom_sdm845_smmu500_cfg_probe(struct arm_smmu_device *smmu)
+{
+	u32 s2cr;
+	u32 smr;
+	int i;
+
+	for (i = 0; i < smmu->num_mapping_groups; i++) {
+		smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(i));
+		s2cr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_S2CR(i));
+
+		smmu->smrs[i].mask = FIELD_GET(SMR_MASK, smr);
+		smmu->smrs[i].id = FIELD_GET(SMR_ID, smr);
+		if (smmu->features & ARM_SMMU_FEAT_EXIDS)
+			smmu->smrs[i].valid = FIELD_GET(S2CR_EXIDVALID, s2cr);
+		else
+			smmu->smrs[i].valid = FIELD_GET(SMR_VALID, smr);
+
+		smmu->s2crs[i].group = NULL;
+		smmu->s2crs[i].count = 0;
+		smmu->s2crs[i].type = FIELD_GET(S2CR_TYPE, s2cr);
+		smmu->s2crs[i].privcfg = FIELD_GET(S2CR_PRIVCFG, s2cr);
+		smmu->s2crs[i].cbndx = FIELD_GET(S2CR_CBNDX, s2cr);
+
+		if (!smmu->smrs[i].valid)
+			continue;
+
+		smmu->s2crs[i].pinned = true;
+		bitmap_set(smmu->context_map, smmu->s2crs[i].cbndx, 1);
+	}
+
+	return 0;
+}
+
 static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 {
 	int ret;
@@ -31,6 +65,7 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 }
 
 static const struct arm_smmu_impl qcom_smmu_impl = {
+	.cfg_probe = qcom_sdm845_smmu500_cfg_probe,
 	.reset = qcom_sdm845_smmu500_reset,
 };
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 9a9091b9dcc7..01f22eff2ec5 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -206,9 +206,19 @@ static int arm_smmu_register_legacy_master(struct device *dev,
 	return err;
 }
 
-static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
+static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
+			       struct device *dev)
 {
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	unsigned long *map = smmu->context_map;
+	int end = smmu->num_context_banks;
 	int idx;
+	int i;
+
+	for_each_cfg_sme(fwspec, i, idx) {
+		if (smmu->s2crs[idx].pinned)
+			return smmu->s2crs[idx].cbndx;
+	}
 
 	do {
 		idx = find_next_zero_bit(map, end, start);
@@ -628,7 +638,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 }
 
 static int arm_smmu_init_domain_context(struct iommu_domain *domain,
-					struct arm_smmu_device *smmu)
+					struct arm_smmu_device *smmu,
+					struct device *dev)
 {
 	int irq, start, ret = 0;
 	unsigned long ias, oas;
@@ -742,8 +753,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		ret = -EINVAL;
 		goto out_unlock;
 	}
-	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
-				      smmu->num_context_banks);
+	ret = __arm_smmu_alloc_cb(smmu, start, dev);
 	if (ret < 0)
 		goto out_unlock;
 
@@ -1015,12 +1025,19 @@ static int arm_smmu_find_sme(struct arm_smmu_device *smmu, u16 id, u16 mask)
 
 static bool arm_smmu_free_sme(struct arm_smmu_device *smmu, int idx)
 {
+	bool pinned = smmu->s2crs[idx].pinned;
+	u8 cbndx = smmu->s2crs[idx].cbndx;;
+
 	if (--smmu->s2crs[idx].count)
 		return false;
 
 	smmu->s2crs[idx] = s2cr_init_val;
-	if (smmu->smrs)
+	if (pinned) {
+		smmu->s2crs[idx].pinned = true;
+		smmu->s2crs[idx].cbndx = cbndx;
+	} else if (smmu->smrs) {
 		smmu->smrs[idx].valid = false;
+	}
 
 	return true;
 }
@@ -1154,7 +1171,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		return ret;
 
 	/* Ensure that the domain is finalised */
-	ret = arm_smmu_init_domain_context(domain, smmu);
+	ret = arm_smmu_init_domain_context(domain, smmu, dev);
 	if (ret < 0)
 		goto rpm_put;
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 73f94579b926..0701e6875964 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -230,6 +230,7 @@ struct arm_smmu_s2cr {
 	enum arm_smmu_s2cr_type		type;
 	enum arm_smmu_s2cr_privcfg	privcfg;
 	u8				cbndx;
+	bool				pinned;
 };
 
 struct arm_smmu_smr {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
