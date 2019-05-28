Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD902BE69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 06:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I4M2urhJZkvyZ8LwoAkVrntMcIQGRtqEY3no6DiHjFw=; b=U0R
	dtJC/Hn/EHnp/VRh7ZgL/PCRtSvDAdYlgJTEHoH9SdBJB+bH1IWZWC7rO00c+zNrHK1ee8en/tEGg
	C4Px2s5L/wAdxjEvnyLrHw7d5KJqrHp8iFhDiSbIJsaVJrlB5LCg4gufmFd/23CNVXEE2CmmZqp5Z
	QDJdHsBW0Oyou1CXExOn6pnXn3lt7uzPLHKvRADTsuYClxDXIwnUaE8ZS3Gw2PI/9kMTCHkxiQc3I
	cuz/VprAfxTd74paPVSaH6B7eraF0lZCFmHWLQZ60tf8fYh8W5u3TSFrFzEf8AXVuSQeyyVig5434
	ddO4dRSutLwlPJ6XumfcQFPixiDJt1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVU2z-0002dz-9W; Tue, 28 May 2019 04:49:13 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVU2s-0002d8-Ng; Tue, 28 May 2019 04:49:08 +0000
Received: from jay.xu?rock-chips.com (unknown [192.168.167.229])
 by regular1.263xmail.com (Postfix) with ESMTP id 09B0F907;
 Tue, 28 May 2019 12:48:57 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6627T140475876996864S1559018932287865_; 
 Tue, 28 May 2019 12:48:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dc6bc3b2d626c351f61daca14b30d2eb>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: xjq@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jay.xu@rock-chips.com, heiko@sntech.de, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: add core dtsi file for RK3399Pro
 SoCs
Date: Tue, 28 May 2019 12:48:50 +0800
Message-Id: <20190528044850.23703-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_214907_142045_98A1023B 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 zhangzj@rock-chips.com, linux-rockchip@lists.infradead.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds core dtsi file for Rockchip RK3399Pro SoCs,
include rk3399.dtsi. Also enable these nodes:
- dfi/dmc for ddr devfreq
- pcie/pcie_phy
- sdhci/sdio/emmc/sdmmc

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi | 111 ++++++++++++++++++++
 1 file changed, 111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
new file mode 100644
index 000000000000..62f67f857c45
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro.dtsi
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+
+#include "rk3399.dtsi"
+
+/ {
+	compatible = "rockchip,rk3399pro";
+
+	xin32k: xin32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
+	};
+};
+
+&dfi {
+	status = "okay";
+};
+
+&dmc {
+	status = "okay";
+	center-supply = <&vdd_log>;
+	upthreshold = <40>;
+	downdifferential = <20>;
+	system-status-freq = <
+		/*system status         freq(KHz)*/
+		SYS_STATUS_NORMAL       800000
+		SYS_STATUS_REBOOT       528000
+		SYS_STATUS_SUSPEND      200000
+		SYS_STATUS_VIDEO_1080P  200000
+		SYS_STATUS_VIDEO_4K     600000
+		SYS_STATUS_VIDEO_4K_10B 800000
+		SYS_STATUS_PERFORMANCE  800000
+		SYS_STATUS_BOOST        400000
+		SYS_STATUS_DUALVIEW     600000
+		SYS_STATUS_ISP          600000
+	>;
+	vop-pn-msch-readlatency = <
+	/* plane_number  readlatency */
+		0	0
+		4	0x20
+	>;
+	vop-bw-dmc-freq = <
+	/* min_bw(MB/s) max_bw(MB/s) freq(KHz) */
+		0       762      200000
+		763     1893     400000
+		1894    3012     528000
+		3013    99999    800000
+	>;
+	auto-min-freq = <200000>;
+};
+
+&emmc_phy {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	num-lanes = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	supports-emmc;
+	non-removable;
+	keep-power-in-suspend;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&sdio0 {
+	clock-frequency = <150000000>;
+	clock-freq-min-max = <200000 150000000>;
+	supports-sdio;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	clock-frequency = <150000000>;
+	clock-freq-min-max = <400000 150000000>;
+	supports-sd;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	num-slots = <1>;
+	vqmmc-supply = <&vccio_sd>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
