Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C4C9CA96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfr7EXFOp86R/EYMT8xP0V3vahkQzNHf/O4TKptAAy0=; b=PO8RFlHDcJ1a0l
	inCMPbXSXte5ur6+Sed61A70tUHALe5eI3IvrVAX36Ua2CCpaJfZ8SYGZ4LGHUP0vGjmy8Z4BGDVL
	HIGGlCqYOmfWBDAZPANyP3+XcttyvjYvis5X2G7qmP3vE2oi92+7nvm3PYFnFB4EyhLA2o09/O8HG
	zvPtsa8JljRJdUUH5kHlTbpryyd1Kx5Imx8uhr++RRFuE92hoPAH8xihhzVkWHWz4fDbD5Xwvpq6n
	4ztcQ8hF1OiKcr+EIh6TCVUDb01b+2B50ifMcKYn1Yc4uoRZ8l1FR6Dcvauu3JuMbxuSHUcjmTnH4
	YXuzouy2X1MwswLwCIcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29UW-0005mZ-N6; Mon, 26 Aug 2019 07:32:40 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29Tv-0005Sz-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:32:05 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d638af30001>; Mon, 26 Aug 2019 00:32:03 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 26 Aug 2019 00:32:02 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 26 Aug 2019 00:32:02 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 07:32:02 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 07:32:02 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 26 Aug 2019 07:32:02 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d638aed0000>; Mon, 26 Aug 2019 00:32:01 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 2/6] arm64: tegra: Add configuration for PCIe C5 sideband
 signals
Date: Mon, 26 Aug 2019 13:01:39 +0530
Message-ID: <20190826073143.4582-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826073143.4582-1-vidyas@nvidia.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566804723; bh=haHXWsGgD8MESPMvbZs2yQ/SLeRmS1gQyc9LUmqIL08=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=enioegNBwGCOT2yISiZYdP1kIxO403F96JdyOLm+PfeeD3pmboxHreNCa+wwGs0B7
 YDD44xpHZapFBDlc+d6XPMfhP0HHtGmhSQ2npgdVa68WHSkm3MyyqZTizkBM5+RiXk
 f3vN2TtLI19NHMR0KyWX2FKvgINcR96LeMJxjrrpqmsWwCDkbtJ+J30kK9jyROEKAL
 fFqPyH+3L9RpcA82qr/8FBEV0OVvV/rYizx3q4PW++BtSVylBp0ZcJ7PMLxiM6vkk2
 7BXBz0Zf0xlCgaznTMpWDzZiWxgBEH+fug4pZxwc3Up7ROGxGVHFreUavdFf8fNrG3
 33dUVIDvUQFjQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003203_793932_86B06B0E 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
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
