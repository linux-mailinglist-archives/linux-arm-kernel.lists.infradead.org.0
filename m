Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFCC10491E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 04:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WzmP+LhPaiSuIBFG9bokJ94OhJlx2agicIWsxGBJyZI=; b=Tfg
	BEpa7jgUFmclDGngQixrO9oRJd3AwOtnKDiylwcmYXKey/jvHyREpRd8R3aLKEAm+IcIMbmmWxGkN
	kI5mFa0lOuMkx8Xhrd3KI6Mf/8e8yZPxbLNxwD89P54VWliVnTy1XwpOs6TIkWFbDrPf0Uk6ppJzI
	5AVbqEmVNl5d+P+MvAE+InhswjjBydi0Bv1Sq5i4WhPY3LU7rZNu+M0DpbYcyaZJt8HD8EQAN1slb
	iDOrGgWL4rCATyTH3o1l7hKL8LH7awabvdt2EmeFnxMSwFoeLkKcKchZX2aoPhn0bK8e+NaPZUx1m
	cvMnIm9igimGPB6/+FAPJNR55MPpPBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXd1H-0004WL-Nr; Thu, 21 Nov 2019 03:20:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXd0c-0002xd-UN
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 03:19:56 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5609F20721;
 Thu, 21 Nov 2019 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306394;
 bh=wzYCZfJ/OBs2FZPR/b3ZOr0+bvljs7kYVUGM40zxFhw=;
 h=From:To:Cc:Subject:Date:From;
 b=J++5Z/ze24PaSYJhFXl6Z1QBcxgHpn5Tre8hvHLNjLzw/gz8mVvzqmWeSoHeh10ru
 qOaSuGioG+qx3WB0V4WuLuupT/sbZZs8VOsJpt23etiDsvc0GZjHjzWcEB65Yjsb9q
 ZammvUN4aG7DWmL3LyQ1pNykZ/0M1/cW5+8S1I8w=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] perf: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:19:51 +0100
Message-Id: <1574306391-10337-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_191955_052508_DEC643DD 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Fix also 7-space and tab+1 space indentation issues.
---
 drivers/perf/Kconfig | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 09ae8a970880..b35314bec985 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -54,13 +54,13 @@ config ARM_PMU_ACPI
 	def_bool y
 
 config ARM_SMMU_V3_PMU
-	 tristate "ARM SMMUv3 Performance Monitors Extension"
-	 depends on ARM64 && ACPI && ARM_SMMU_V3
-	   help
-	   Provides support for the ARM SMMUv3 Performance Monitor Counter
-	   Groups (PMCG), which provide monitoring of transactions passing
-	   through the SMMU and allow the resulting information to be filtered
-	   based on the Stream ID of the corresponding master.
+	tristate "ARM SMMUv3 Performance Monitors Extension"
+	depends on ARM64 && ACPI && ARM_SMMU_V3
+	  help
+	  Provides support for the ARM SMMUv3 Performance Monitor Counter
+	  Groups (PMCG), which provide monitoring of transactions passing
+	  through the SMMU and allow the resulting information to be filtered
+	  based on the Stream ID of the corresponding master.
 
 config ARM_DSU_PMU
 	tristate "ARM DynamIQ Shared Unit (DSU) PMU"
@@ -80,11 +80,11 @@ config FSL_IMX8_DDR_PMU
 	  events.
 
 config HISI_PMU
-       bool "HiSilicon SoC PMU"
-       depends on ARM64 && ACPI
-       help
-         Support for HiSilicon SoC uncore performance monitoring
-         unit (PMU), such as: L3C, HHA and DDRC.
+	bool "HiSilicon SoC PMU"
+	depends on ARM64 && ACPI
+	help
+	  Support for HiSilicon SoC uncore performance monitoring
+	  unit (PMU), such as: L3C, HHA and DDRC.
 
 config QCOM_L2_PMU
 	bool "Qualcomm Technologies L2-cache PMU"
@@ -115,11 +115,11 @@ config THUNDERX2_PMU
 	   in the DDR4 Memory Controller (DMC).
 
 config XGENE_PMU
-        depends on ARCH_XGENE
-        bool "APM X-Gene SoC PMU"
-        default n
-        help
-          Say y if you want to use APM X-Gene SoC performance monitors.
+	depends on ARCH_XGENE
+	bool "APM X-Gene SoC PMU"
+	default n
+	help
+	  Say y if you want to use APM X-Gene SoC performance monitors.
 
 config ARM_SPE_PMU
 	tristate "Enable support for the ARMv8.2 Statistical Profiling Extension"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
