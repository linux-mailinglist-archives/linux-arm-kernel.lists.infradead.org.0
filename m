Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691B5855BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 00:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UrbO2rUrNvKTq1GmCbOgQr6hLDJbNrjbv7wZfp2Yg9g=; b=MNJBb9wHShbrZYv+JIfg+twwVb
	ipCZD8StdA1flnb+0CPd9XydpfDFT42v6u5uQmmL3v2VZhAw1MerT6W6PnR68HHuujGRLS4w0Dqb0
	sBDW3hdJoQqr2Pf6bHManvJ1PeV3mQS3U0u5b1n4ccdephOKHAp4PySRMgX6967VWWzBxJXgeTOTh
	A5nTzSr6wdMcaGnJyW8lHV02ioVkBaED49DZsQqMZkq3JfwAAhl6DGnS8z9+SaEH5BF16pJyFR9V5
	VqZevskZS5YOMSbI6wWyXe1PTXOh3CnpDptyEBk+lxCXFP+GtrE2J1ejTsYym8pjbUMIfp7Mlbmd1
	zzqYvG/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUKG-0004DS-4C; Wed, 07 Aug 2019 22:22:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUJf-0003ng-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 22:21:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7D52060FEE; Wed,  7 Aug 2019 22:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216513;
 bh=V2MOW7b4CUVhygGGVaa1wzt2YduOq9ESSFH7yL59gh0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Vr7JSyXovGTDBn5aSuvW1rZ2afhEXrNkcC5ESsFowKlusYbjljFKrtfOKVgrL8M33
 ujuiuio2dYlLQ1PYOXjbYD4pHCRx2ECQAxyHoXONBjmUbunDbyE3qy+VnW5bRDmOnL
 lMGVi3nT+teGKbKB6XI4vD4D0Od92RnPSHbDOzco=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D67C46090F;
 Wed,  7 Aug 2019 22:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216508;
 bh=V2MOW7b4CUVhygGGVaa1wzt2YduOq9ESSFH7yL59gh0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YCBPHDtUPurdyKZZfpBRRfq/JJw9kwWNNS2y/AGWUNciNkNOSznkrzR2oOGovZ5N0
 ReynarRaHNZmERQJcmNSSypbBOAIv5Gt3CjPg1cjyNkCP2f1goXjghA4j+VyOHrCdX
 djOwH/NDrReRX7RKsXlGL58MJyDoTAApdxp57ado=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D67C46090F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 2/2] iommu/arm-smmu: Add support for Adreno GPU pagetable
 formats
Date: Wed,  7 Aug 2019 16:21:40 -0600
Message-Id: <1565216500-28506-3-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_152155_436026_F310E662 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, jean-philippe.brucker@arm.com,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for an Adreno GPU variant of the arm-smmu device to enable
a special pagetable format that enables TTBR1 and leaves TTBR0 free
to be switched by the GPU hardware.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index aa06498..129ac83 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -124,6 +124,7 @@ enum arm_smmu_implementation {
 	ARM_MMU500,
 	CAVIUM_SMMUV2,
 	QCOM_SMMUV2,
+	ADRENO_SMMUV2,
 };
 
 struct arm_smmu_s2cr {
@@ -832,7 +833,10 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		ias = smmu->va_size;
 		oas = smmu->ipa_size;
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
-			fmt = ARM_64_LPAE_S1;
+			if (smmu->model == ADRENO_SMMUV2)
+				fmt = ARM_ADRENO_GPU_LPAE;
+			else
+				fmt = ARM_64_LPAE_S1;
 		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
 			fmt = ARM_32_LPAE_S1;
 			ias = min(ias, 32UL);
@@ -2030,6 +2034,7 @@ ARM_SMMU_MATCH_DATA(arm_mmu401, ARM_SMMU_V1_64K, GENERIC_SMMU);
 ARM_SMMU_MATCH_DATA(arm_mmu500, ARM_SMMU_V2, ARM_MMU500);
 ARM_SMMU_MATCH_DATA(cavium_smmuv2, ARM_SMMU_V2, CAVIUM_SMMUV2);
 ARM_SMMU_MATCH_DATA(qcom_smmuv2, ARM_SMMU_V2, QCOM_SMMUV2);
+ARM_SMMU_MATCH_DATA(adreno_smmuv2, ARM_SMMU_V2, ADRENO_SMMUV2);
 
 static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,smmu-v1", .data = &smmu_generic_v1 },
@@ -2039,6 +2044,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,mmu-500", .data = &arm_mmu500 },
 	{ .compatible = "cavium,smmu-v2", .data = &cavium_smmuv2 },
 	{ .compatible = "qcom,smmu-v2", .data = &qcom_smmuv2 },
+	{ .compatible = "qcom,adreno-smmu-v2", .data = &adreno_smmuv2 },
 	{ },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
