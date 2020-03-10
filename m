Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C0217F4A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0fLnIoW5t+anxfz3kSqljrNcC3g0DMyO6N/c7GhapU=; b=FM6TPutgis9qCp
	dCPByDrnARN3TSpzOUU11TJSq/CO1p2Vy43Kuef6AyabN23zTfjvqqFDoIOZWQ9k44bkoDXsMNS/X
	08vcYHXHmaNdVbYoca4rZkaILMavCVJFRyL9IJoRJIvdFxZp0axKJZ856vCQ2Slvshgs34kD6ag7x
	3tOsOv8Ubnr66/TC84kjHs+FYc0FKGQZDzeeAdSm9PH4bUAa1mpYlI4k0+06uvUES7D28Byw9OXeN
	Vu7+pxRU7lXVeOS0ZxcyBaMiWduEqguxsrC0P1GNOZVOhPBtBeEBplTNngIeMKJ2bvqD2oIzwb867
	x3b27+l2W0BojyzpxZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbsR-0002FL-FR; Tue, 10 Mar 2020 10:12:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbqk-00018y-AZ; Tue, 10 Mar 2020 10:11:00 +0000
X-UUID: f8c8b168abd44afca11c944ee0b2cc9b-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bMAGFYIyebf4WTfeSqrPodJzjUX1SU+zN1FTUaXXPlA=; 
 b=FMRfHMwLTLELlAhsiT7xaK5UdncjIHyKji8FYLkfZyqcegn+rMbDB8ze5Y6hHPiAu9WadfCL7n2UiNmtepnjM3uKAcey3ZY83uUshDEdC2w1nBclIZ/UIo4z+TggCNJ00aZN6roNAz/7rMvX3R6UN7Nq4doI9v89o/C5cryxXnA=;
X-UUID: f8c8b168abd44afca11c944ee0b2cc9b-20200310
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1310610550; Tue, 10 Mar 2020 02:10:53 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 03:10:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 18:06:19 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Mar 2020 18:07:59 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v9 5/5] arm64: dts: mt6358: add PMIC MT6358 related nodes
Date: Tue, 10 Mar 2020 18:10:40 +0800
Message-ID: <1583835040-19157-6-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1583835040-19157-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1583835040-19157-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D523D2E0CC1E0FBDA5C60ADE27BC0F776544FA7F16E14F6FD80B782FBD412CAF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_031058_386029_8C719333 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add PMIC MT6358 related nodes which is for MT8183 platform

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt6358.dtsi    | 358 ++++++++++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |   1 +
 2 files changed, 359 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6358.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
new file mode 100644
index 0000000..2afebd7
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
@@ -0,0 +1,358 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+&pwrap {
+	pmic: mt6358 {
+		compatible = "mediatek,mt6358";
+		interrupt-controller;
+		interrupt-parent = <&pio>;
+		interrupts = <182 IRQ_TYPE_LEVEL_HIGH>;
+		#interrupt-cells = <2>;
+
+		mt6358codec: mt6358codec {
+			compatible = "mediatek,mt6358-sound";
+		};
+
+		mt6358regulator: mt6358regulator {
+			mt6358_vdram1_reg: buck_vdram1 {
+				regulator-name = "vdram1";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2087500>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vcore_reg: buck_vcore {
+				regulator-name = "vcore";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vpa_reg: buck_vpa {
+				regulator-name = "vpa";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3650000>;
+				regulator-ramp-delay = <50000>;
+				regulator-enable-ramp-delay = <250>;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vproc11_reg: buck_vproc11 {
+				regulator-name = "vproc11";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vproc12_reg: buck_vproc12 {
+				regulator-name = "vproc12";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vgpu_reg: buck_vgpu {
+				regulator-name = "vgpu";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <200>;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vs2_reg: buck_vs2 {
+				regulator-name = "vs2";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2087500>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+			};
+
+			mt6358_vmodem_reg: buck_vmodem {
+				regulator-name = "vmodem";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <900>;
+				regulator-always-on;
+				regulator-allowed-modes = <0 1>;
+			};
+
+			mt6358_vs1_reg: buck_vs1 {
+				regulator-name = "vs1";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <2587500>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <0>;
+				regulator-always-on;
+			};
+
+			mt6358_vdram2_reg: ldo_vdram2 {
+				regulator-name = "vdram2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <3300>;
+			};
+
+			mt6358_vsim1_reg: ldo_vsim1 {
+				regulator-name = "vsim1";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <540>;
+			};
+
+			mt6358_vibr_reg: ldo_vibr {
+				regulator-name = "vibr";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <60>;
+			};
+
+			mt6358_vrf12_reg: ldo_vrf12 {
+				compatible = "regulator-fixed";
+				regulator-name = "vrf12";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-enable-ramp-delay = <120>;
+			};
+
+			mt6358_vio18_reg: ldo_vio18 {
+				compatible = "regulator-fixed";
+				regulator-name = "vio18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <2700>;
+				regulator-always-on;
+			};
+
+			mt6358_vusb_reg: ldo_vusb {
+				regulator-name = "vusb";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <270>;
+				regulator-always-on;
+			};
+
+			mt6358_vcamio_reg: ldo_vcamio {
+				compatible = "regulator-fixed";
+				regulator-name = "vcamio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <325>;
+			};
+
+			mt6358_vcamd_reg: ldo_vcamd {
+				regulator-name = "vcamd";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <325>;
+			};
+
+			mt6358_vcn18_reg: ldo_vcn18 {
+				compatible = "regulator-fixed";
+				regulator-name = "vcn18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vfe28_reg: ldo_vfe28 {
+				compatible = "regulator-fixed";
+				regulator-name = "vfe28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vsram_proc11_reg: ldo_vsram_proc11 {
+				regulator-name = "vsram_proc11";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+
+			mt6358_vcn28_reg: ldo_vcn28 {
+				compatible = "regulator-fixed";
+				regulator-name = "vcn28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vsram_others_reg: ldo_vsram_others {
+				regulator-name = "vsram_others";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+
+			mt6358_vsram_gpu_reg: ldo_vsram_gpu {
+				regulator-name = "vsram_gpu";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <240>;
+			};
+
+			mt6358_vxo22_reg: ldo_vxo22 {
+				compatible = "regulator-fixed";
+				regulator-name = "vxo22";
+				regulator-min-microvolt = <2200000>;
+				regulator-max-microvolt = <2200000>;
+				regulator-enable-ramp-delay = <120>;
+				regulator-always-on;
+			};
+
+			mt6358_vefuse_reg: ldo_vefuse {
+				regulator-name = "vefuse";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vaux18_reg: ldo_vaux18 {
+				compatible = "regulator-fixed";
+				regulator-name = "vaux18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vmch_reg: ldo_vmch {
+				regulator-name = "vmch";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <60>;
+			};
+
+			mt6358_vbif28_reg: ldo_vbif28 {
+				compatible = "regulator-fixed";
+				regulator-name = "vbif28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vsram_proc12_reg: ldo_vsram_proc12 {
+				regulator-name = "vsram_proc12";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1293750>;
+				regulator-ramp-delay = <6250>;
+				regulator-enable-ramp-delay = <240>;
+				regulator-always-on;
+			};
+
+			mt6358_vcama1_reg: ldo_vcama1 {
+				regulator-name = "vcama1";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-enable-ramp-delay = <325>;
+			};
+
+			mt6358_vemc_reg: ldo_vemc {
+				regulator-name = "vemc";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <60>;
+			};
+
+			mt6358_vio28_reg: ldo_vio28 {
+				compatible = "regulator-fixed";
+				regulator-name = "vio28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_va12_reg: ldo_va12 {
+				compatible = "regulator-fixed";
+				regulator-name = "va12";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-enable-ramp-delay = <270>;
+				regulator-always-on;
+			};
+
+			mt6358_vrf18_reg: ldo_vrf18 {
+				compatible = "regulator-fixed";
+				regulator-name = "vrf18";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-enable-ramp-delay = <120>;
+			};
+
+			mt6358_vcn33_bt_reg: ldo_vcn33_bt {
+				regulator-name = "vcn33_bt";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vcn33_wifi_reg: ldo_vcn33_wifi {
+				regulator-name = "vcn33_wifi";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3500000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vcama2_reg: ldo_vcama2 {
+				regulator-name = "vcama2";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-enable-ramp-delay = <325>;
+			};
+
+			mt6358_vmc_reg: ldo_vmc {
+				regulator-name = "vmc";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-enable-ramp-delay = <60>;
+			};
+
+			mt6358_vldo28_reg: ldo_vldo28 {
+				regulator-name = "vldo28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vaud28_reg: ldo_vaud28 {
+				compatible = "regulator-fixed";
+				regulator-name = "vaud28";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-enable-ramp-delay = <270>;
+			};
+
+			mt6358_vsim2_reg: ldo_vsim2 {
+				regulator-name = "vsim2";
+				regulator-min-microvolt = <1700000>;
+				regulator-max-microvolt = <3100000>;
+				regulator-enable-ramp-delay = <540>;
+			};
+		};
+
+		mt6358rtc: mt6358rtc {
+			compatible = "mediatek,mt6358-rtc";
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c..9eb84d7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "mt8183.dtsi"
+#include "mt6358.dtsi"
 
 / {
 	model = "MediaTek MT8183 evaluation board";
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
