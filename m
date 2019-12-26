Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8059912AF1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 23:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3dDlKtifMdKmwAHtkqBjLYWePtxrg4d3RBHPzJytmE=; b=NZjDD/vE1o8oN6
	8QCKe73k8e1oaxDZXCEkEvbY5cdgFV20ucVMFa/NpdmZs/epouk3n00scDSkxmFtlgMaAuWUssXzh
	ueSOg9rO4woQIjcGxaMn1KjVHoUkftgE15O9HT5f5XscgibeP/TKRsDAtRreZS1zzJizrE4Ae6G3B
	TuVgvpNOfeVAf13U/p/7Z3LerW+g2hbvw5l7vGMysl8SyIlRunPS45ERO9Y5a5vpbq5slW1FbhukF
	y1VgMmRtDkaqR2OJAk1RP17tLvLFzvs4c4dvVUl6aTQMOGWlWGjEIL6UG3kHd7OP2+m/kkf9/nruG
	IrXL8XerKnhs8vu6+uZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikbSC-0003Lv-V0; Thu, 26 Dec 2019 22:18:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikbRz-0003Kq-4T
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 22:17:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id x17so10961594pln.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 14:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tubUT90M6ZUsQq/NCNWX8+4auD3W82M3BMPow6ghbj8=;
 b=UQmFVNA7UILTF3d5FkPUjDuMXwndbRHZm1U93zjabv/K6dGhtSfmt4s9JIg+xMq75d
 Y23XDZw4It10l4QHXqaDJ2gjQ7UgsgsYKUABY6o6xlTM6PcI9JGpvxzOiNBkPbauQJQX
 rOb03V74Q2iuvkeRbjoJ25qWSvTN+tewTjT3wPd/ueVoyCzibclmSE33cOkd0g/LLhFE
 PwN21iKGHN6E0QaX+a9jOmpxp/0FWhAO0E6515STbaiPfJvHp37nOVMDlntvCQ+pVwZD
 /Ct2qloyyzoXbev8IsVQDmVybAPP5fOQHljHSIHCexni+dNs47E8KE1BxAOlCHWLI6ls
 AFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tubUT90M6ZUsQq/NCNWX8+4auD3W82M3BMPow6ghbj8=;
 b=ZJSWZjHKMtsEnFdKRkDtQ38euAZ7qeIxQupz9xW1+yg+yyeGU0qR6xXBxSXxxCKbXh
 UwENm/JdpZjw2D6SLT2Pv4iceHImI7pzC1pydK2Lh+juZpcJ/13VEoLvu8yQfAlvIhP+
 uF2Of6BF0/ZEOeb20tP2BFzedhAGGmvQi6ZQ69dgTX0MC3gOamsr1azUFugQmgZPyV0B
 jQZR6McuXmOB8d5ChtBpXoLj9ctwUFi4NsQLAbugOOaOgEEateduFUj5bb1OBdWYcy55
 46r2mqakEp+wvQrV58RkGFD/puecUANZvdbS2XK+3jnjB7qdwIRFIMGln2HwOPFTP0WO
 +unQ==
X-Gm-Message-State: APjAAAVKyR+V+nXp/eLGROwymB56LMchgl8r4jXU24YY19DAcytzxSnY
 w0VGqjrq60d/qCo2ILj5KaofZeDOrUc=
X-Google-Smtp-Source: APXvYqzsnGwMryOZ8OSkxJxnL0bgVLu9XUOFhXRRLNcQ4apGus/dVePA/bPEIWlQsBQNQtZUk1Rydw==
X-Received: by 2002:a17:90a:9f04:: with SMTP id
 n4mr22039896pjp.76.1577398665952; 
 Thu, 26 Dec 2019 14:17:45 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 2sm11779409pjh.19.2019.12.26.14.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 14:17:45 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 1/3] iommu/arm-smmu: Don't blindly use first SMR to calculate
 mask
Date: Thu, 26 Dec 2019 14:17:07 -0800
Message-Id: <20191226221709.3844244-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
References: <20191226221709.3844244-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_141747_170365_FFFCD8C7 
X-CRM114-Status: GOOD (  12.59  )
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

With the SMRs inherited from the bootloader the first SMR might actually
be valid and in use. As such probing the SMR mask using the first SMR
might break a stream in use. Search for an unused stream and use this to
probe the SMR mask.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since RFC:
- Deal with EXIDS
- Use arm_smmu_gr0_read/write()

 drivers/iommu/arm-smmu.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 4f1a350d9529..6ca6a4e072c8 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -945,24 +945,43 @@ static void arm_smmu_write_sme(struct arm_smmu_device *smmu, int idx)
  */
 static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 {
+	u32 s2cr;
 	u32 smr;
+	int idx;
 
 	if (!smmu->smrs)
 		return;
 
+	for (idx = 0; idx < smmu->num_mapping_groups; idx++) {
+		if (smmu->features & ARM_SMMU_FEAT_EXIDS) {
+			s2cr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_S2CR(idx));
+			if (!FIELD_GET(S2CR_EXIDVALID, s2cr))
+				break;
+		} else {
+			smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(idx));
+			if (!FIELD_GET(SMR_VALID, smr))
+				break;
+		}
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
 	smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
-	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
-	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(idx), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(idx));
 	smmu->streamid_mask = FIELD_GET(SMR_ID, smr);
 
 	smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
-	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
-	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(idx), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(idx));
 	smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
