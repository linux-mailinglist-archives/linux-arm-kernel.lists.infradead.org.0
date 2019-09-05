Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E62AA054
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SS4NIg/+6OdfabOtIbwV+viCR/OGdFdxl9tTlaDGSr4=; b=WA6fk6LP8V5Z8A
	HT+YRiZSUZqViNiYs46Ow4Nd7LOFQ15t+cJ1v20jN1k8TCURsYCE8vwMf/EfIIRdCRJyqf3ZLWLEN
	zh1aDx8djPmo0VbDXUljpgP3W9ax/jzwFBT3/YAGCSYBNYEsIC/Jnt7iTYCdcSOiua3t/AgqVcWAe
	QTs8Te2BZfp5HJ1CJMcOP+C0skOldACwH2BTuBSXzPV4J+o3Vfm3Y2GkGHm6zTmgHKwg5Zhk344JD
	9VOB8apXGyOsFm62/MJtXq7eODDzbIv5s3eyYkaq0aZ2rwqOBGkjh76X1RvId1AMO06B+CAenV1a+
	YVMojU546HER3d22OW9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pIK-0003R1-JS; Thu, 05 Sep 2019 10:47:16 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pHd-0002ax-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:46:35 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70e78c0000>; Thu, 05 Sep 2019 03:46:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 03:46:33 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 05 Sep 2019 03:46:33 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:46:32 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 5 Sep 2019 10:46:32 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d70e7830000>; Thu, 05 Sep 2019 03:46:32 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V4 5/6] arm64: tegra: Add configuration for PCIe C5 sideband
 signals
Date: Thu, 5 Sep 2019 16:15:52 +0530
Message-ID: <20190905104553.2884-6-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905104553.2884-1-vidyas@nvidia.com>
References: <20190905104553.2884-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567680396; bh=DAtKaIQsQsPA5EiUN0jYyuLZMRcf1ZUk/rDuDsND/+4=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=P6Blh38UUgfUFC+hIME1XcvB0wlcRrDbPP0rkDF91LM6sJb3fE26PF2sscpZ/mbqX
 DllNDRgkCSn8XygobD3ledvbg5bkTVlo8V81aHzIaaTPpA1rgYNMg7CtFpopQjMlFw
 G1sPcq6EJpjqvQQyPi6DK5nTFCK5LRFHR5O2CTkVCNAdiktzNuSo3/p5sS5CH8Ugb2
 WoK+nEMyGN9u4tAQzMJM6VaSaVvP1mnxjcx5Dk1xL79KaCYr/5Fy0zhmENtHwsgqQm
 6uKojMYAc8JCGdLcopjAbHh8SBTsB0dhKQxwGZL1fZNblnXvO1dwzWGb4G03K5U5DE
 8L3xdZh+3bzkA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034633_778928_6067B8E0 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to configure PCIe C5's sideband signals PERST# and CLKREQ#
as output and bi-directional signals respectively which unlike other
PCIe controllers sideband signals are not configured by default.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
---
V4:
* None

V3:
* None

V2:
* None

 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 38 +++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index adebbbf36bd0..3c0cf54f0aab 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -3,8 +3,9 @@
 #include <dt-bindings/gpio/tegra194-gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/tegra186-hsp.h>
-#include <dt-bindings/reset/tegra194-reset.h>
+#include <dt-bindings/pinctrl/pinctrl-tegra.h>
 #include <dt-bindings/power/tegra194-powergate.h>
+#include <dt-bindings/reset/tegra194-reset.h>
 #include <dt-bindings/thermal/tegra194-bpmp-thermal.h>
 
 / {
@@ -130,6 +131,38 @@
 			};
 		};
 
+		pinmux: pinmux@2430000 {
+			compatible = "nvidia,tegra194-pinmux";
+			reg = <0x2430000 0x17000
+			       0xc300000 0x4000>;
+
+			status = "okay";
+
+			pex_rst_c5_out_state: pex_rst_c5_out {
+				pex_rst {
+					nvidia,pins = "pex_l5_rst_n_pgg1";
+					nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+					nvidia,lpdr = <TEGRA_PIN_ENABLE>;
+					nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+					nvidia,io-high-voltage = <TEGRA_PIN_ENABLE>;
+					nvidia,tristate = <TEGRA_PIN_DISABLE>;
+					nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				};
+			};
+
+			clkreq_c5_bi_dir_state: clkreq_c5_bi_dir {
+				clkreq {
+					nvidia,pins = "pex_l5_clkreq_n_pgg0";
+					nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+					nvidia,lpdr = <TEGRA_PIN_ENABLE>;
+					nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+					nvidia,io-high-voltage = <TEGRA_PIN_ENABLE>;
+					nvidia,tristate = <TEGRA_PIN_DISABLE>;
+					nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				};
+			};
+		};
+
 		uarta: serial@3100000 {
 			compatible = "nvidia,tegra194-uart", "nvidia,tegra20-uart";
 			reg = <0x03100000 0x40>;
@@ -1365,6 +1398,9 @@
 		num-viewport = <8>;
 		linux,pci-domain = <5>;
 
+		pinctrl-names = "default";
+		pinctrl-0 = <&pex_rst_c5_out_state>, <&clkreq_c5_bi_dir_state>;
+
 		clocks = <&bpmp TEGRA194_CLK_PEX1_CORE_5>,
 			<&bpmp TEGRA194_CLK_PEX1_CORE_5M>;
 		clock-names = "core", "core_m";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
