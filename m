Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162DED5542
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 10:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMOgY/4BCIfrtRKLruE+BR+/LoXRknddRWRQ/ClnXTI=; b=qSi5tYIFDWgXUF
	UcZIS1NtgapOPY5ApgmNvQ9ghSpHI+pJQrLqigAy1+TSAo3vDIIk2qK0XgnWS//sHySXl2yAdBSpL
	ZrmSPCwvZzV/LhqzSntGtic+gIRN+7YZ11EvytuIlAzWpRkhMMysNZeR4SM5gzXaTg3wRVPXFOxE4
	X75R0DCmCeI4XlfPvWQaFQJ+hFy6v+Ap2qA9QgPUIdxAsWyjE246th42ODT5XEa2WMpFcIsDRD3LR
	RWTy8N+B7P3UHTPSuRK3hwuMUEfpd4nUv2Lym+ExyzC1TY/74/o4bYEz1DvU0zqk+Z9O1qVURBEGR
	KKfatG7OhV2Cb2gVg0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJYwb-00011G-NF; Sun, 13 Oct 2019 08:09:37 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJYvL-0008Jy-SE
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 08:08:22 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id BF71D3F241;
 Sun, 13 Oct 2019 08:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1570954092;
 bh=5y4IgV+p/C+kqf40RD9SQErSESliuqnpoFGETQZjbPs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B0trZvIEXnlAXm+xpHVxxAiwZcdKsVUmlp1Dx99gc1PKQB+BAjimEmqI4imLbJGOu
 gXeGLMrKN3yR1NTqhUhLOso0l9AIggYaT1pWadVQUIDWlpIaRGF2XmDMUlXdnw2ZnV
 6QPX64xaRK8pmNd7Y5VEM3kQSM953LODfquqY9E8=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
Date: Sun, 13 Oct 2019 04:08:04 -0400
Message-Id: <20191013080804.10231-6-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191013080804.10231-1-masneyb@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_010820_039186_8ADAE17E 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add interconnect nodes that's needed to support bus scaling.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index bdbde5125a56..ed98d14a88b1 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
+#include <dt-bindings/interconnect/qcom,msm8974.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-msm8974.h>
 #include <dt-bindings/clock/qcom,mmcc-msm8974.h>
@@ -1106,6 +1107,60 @@
 			};
 		};
 
+		bimc: interconnect@fc380000 {
+			reg = <0xfc380000 0x6a000>;
+			compatible = "qcom,msm8974-bimc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
+			         <&rpmcc RPM_SMD_BIMC_A_CLK>;
+		};
+
+		cnoc: interconnect@fc480000 {
+			reg = <0xfc480000 0x4000>;
+			compatible = "qcom,msm8974-cnoc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_CNOC_CLK>,
+			         <&rpmcc RPM_SMD_CNOC_A_CLK>;
+		};
+
+		mmssnoc: interconnect@fc478000 {
+			reg = <0xfc478000 0x4000>;
+			compatible = "qcom,msm8974-mmssnoc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&mmcc MMSS_S0_AXI_CLK>,
+			         <&mmcc MMSS_S0_AXI_CLK>;
+		};
+
+		ocmemnoc: interconnect@fc470000 {
+			reg = <0xfc470000 0x4000>;
+			compatible = "qcom,msm8974-ocmemnoc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_OCMEMGX_CLK>,
+			         <&rpmcc RPM_SMD_OCMEMGX_A_CLK>;
+		};
+
+		pnoc: interconnect@fc468000 {
+			reg = <0xfc468000 0x4000>;
+			compatible = "qcom,msm8974-pnoc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_PNOC_CLK>,
+			         <&rpmcc RPM_SMD_PNOC_A_CLK>;
+		};
+
+		snoc: interconnect@fc460000 {
+			reg = <0xfc460000 0x4000>;
+			compatible = "qcom,msm8974-snoc";
+			#interconnect-cells = <1>;
+			clock-names = "bus", "bus_a";
+			clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
+			         <&rpmcc RPM_SMD_SNOC_A_CLK>;
+		};
+
 		mdss: mdss@fd900000 {
 			status = "disabled";
 
@@ -1152,6 +1207,11 @@
 				              "core",
 				              "vsync";
 
+				interconnects = <&mmssnoc MNOC_MAS_GRAPHICS_3D &bimc BIMC_SLV_EBI_CH0>,
+				                <&ocmemnoc OCMEM_VNOC_MAS_GFX3D &ocmemnoc OCMEM_SLV_OCMEM>;
+				interconnect-names = "mdp0-mem",
+				                     "mdp1-mem";
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
