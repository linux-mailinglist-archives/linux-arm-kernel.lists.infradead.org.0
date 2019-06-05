Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE7A3665F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8JfCrjJKNmFitS3otBoECYWJ5bDnnJoNtSIijUuCv2w=; b=tUD3Q9UmP4Pso6CTx8tnZv9kpE
	5p4+xhO7mgN3UTcK+0tgrFPnFO1MuWWEDDXNdXz1PdT+Shq6ldb89gom3d1DlKIoTyIQhMk2bxhqz
	G/kmMeKH3CHZchsFs8wCgtJlMX110nWcbbMb3/CAtKjZs2YsaXVM2HXXiwqqogd5Uc1bpKAgmY6LY
	w7CUbLouaUzgAnyoW8mfqBBL3oMh4SMJCLUWdkh6s0icW6aXVMOg7KGPD9KfLoDecNiMXc1FvB9oF
	+yxfRjq9BLYUB9eRZhg5OWSGksP/One0MzELyRvhlTbalAXktJGVLm4+vkQC1Wn3TqDQFtPB+N4j1
	0vJEIxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdA5-0002tm-FI; Wed, 05 Jun 2019 21:09:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYd9a-0002R1-IQ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:09:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so44522pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ry1vQBxsMbP00vdiIcPrZlm4iIMXw6h5SGLwwG/iVbM=;
 b=VxvqG2PW0+5pSp9t5XCA4qowHutScYDHRE+nsLAcjwkD761a4tLnjjrKTbCLu5r/P5
 A3y9IdCB35zNuT4KlIhFtfr2gqIzPm2q3CCscrHUC3ttodvJI6lc4/l75psvQbELxPZ9
 8lOrONhJe4mXYue0Zaz8Kg413VqyaC+RFEeOZlZGYLCoNaDjIsK0rZ0+crw5uSHC9hqD
 Y0AR7672VjKnZlm44qEvrfmPKN/h8zW9V/htrWXI1cYQq5fj3cKiM3pjv7BsD1YpDNSp
 Cz7mECl9WTz15xhD74clwsWi0Da3MuyOIETFx9YDnaBM07TcGGiaGunskRGqq5O0X7Mw
 8BZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ry1vQBxsMbP00vdiIcPrZlm4iIMXw6h5SGLwwG/iVbM=;
 b=L6dWHw9i6awtbDy35JB+OZM4giiJrSFKyVV+PDWXctBdV54S5Or1EDxaBmIL0b9pGp
 Sp/9aQqUnJp/ePg97TLbflNTkuxNKOA/0vn1jfsGueV0ehgR2c4UVsJlIvhvt15yDIhm
 n09SQ/J3wdBsaEiTvC45xzHlUxsGtuB/727188pnRzAb6U7F8EjSD3lcAATDV7FMOQhM
 SOlJlzrVnBhR6qrUJDc9b6Jah+qi7/G16Mc5epCdN2gdc99RAVnPasGeSj8sqcAltlyB
 t6AzYSGklO9JUeX037RjkBqQz7QnC0Dtt9DVIK+I/uJWI+1yygxqfhk/qJ/tmSu79vfM
 FKrg==
X-Gm-Message-State: APjAAAVcB1YvlgG9EN5ZZ0I3nskeArc7p+H9vpFryrAIjacxIFUXvXjT
 w1NG3RNscB7588ig/k8A1diOnw==
X-Google-Smtp-Source: APXvYqwLjPbJRcoaAugB6k9b8sqHmGnHrT4H05jhzViLueVW5rfhjOYyfkZm+C2OANbT62nCKvlMNA==
X-Received: by 2002:a17:90a:b30a:: with SMTP id
 d10mr22253135pjr.8.1559768941840; 
 Wed, 05 Jun 2019 14:09:01 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z68sm5093374pfb.37.2019.06.05.14.09.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:09:01 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [RFC 2/2] iommu: arm-smmu: Don't blindly use first SMR to calculate
 mask
Date: Wed,  5 Jun 2019 14:08:56 -0700
Message-Id: <20190605210856.20677-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190605210856.20677-1-bjorn.andersson@linaro.org>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_140902_604226_0F64F594 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

With the SMRs inherited from the bootloader the first SMR might actually
be valid and in use. As such probing the SMR mask using the first SMR
might break a stream in use. Search for an unused stream and use this to
probe the SMR mask.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/iommu/arm-smmu.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index c8629a656b42..0c6f5fe6f382 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1084,23 +1084,35 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 {
 	void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
 	u32 smr;
+	int idx;
 
 	if (!smmu->smrs)
 		return;
 
+	for (idx = 0; idx < smmu->num_mapping_groups; idx++) {
+		smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
+		if (!(smr & SMR_VALID))
+			break;
+	}
+
+	if (idx == smmu->num_mapping_groups) {
+		dev_err(smmu->dev, "Unable to compute streamid_mask\n");
+		return;
+	}
+
 	/*
 	 * SMR.ID bits may not be preserved if the corresponding MASK
 	 * bits are set, so check each one separately. We can reject
 	 * masters later if they try to claim IDs outside these masks.
 	 */
 	smr = smmu->streamid_mask << SMR_ID_SHIFT;
-	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
-	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
+	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
+	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
 	smmu->streamid_mask = smr >> SMR_ID_SHIFT;
 
 	smr = smmu->streamid_mask << SMR_MASK_SHIFT;
-	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
-	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
+	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(idx));
+	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(idx));
 	smmu->smr_mask_mask = smr >> SMR_MASK_SHIFT;
 }
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
