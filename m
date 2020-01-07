Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993DB132040
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWXDI2MAUiOUNs45DrIHakTBlTc98jZDMLNosBTCAMo=; b=mrAuQRk8tGpPzX
	dWgD1MuSLJ80tz0FSYwMBjK9YoZiNbx95AThPVCDT7k/G4wdFaUFDq75Nju3UEjNcHDRMtRlEQHLY
	Im9WvqTHYhTIWnfGnD3+PaI37o3syIl/Iyl7vb5WBOyXAujagaMAjD1GVo0prKCVd+2NqwFsGU/ez
	oo8zNbPCgI6X+l2vR2CvZR7rMurzLiSn0ihuVf8qYFbx6ZofpqeJQwfKcMXXXlnJN2ab5ZqFtF3Qb
	FuBl/s1WAfUTH+pB67iWElVhnm6ai2N6hEeN6Edh/5KomHr0UGz9wXxiXK05CMtESs/+p0yh3amvL
	l38N4mCzuitVMToKvxrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioj2b-0006Jq-Ij; Tue, 07 Jan 2020 07:12:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioj2L-0006H6-P3; Tue, 07 Jan 2020 07:12:23 +0000
X-UUID: 4312526d566841fe8ee8ed6f606a056f-20200106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZgMcfgUXfofl7ppb6JVcLQnubeAeOacfSQLzxh6HvtY=; 
 b=JBD/Sw1OQwB+URKu9J5VtmkUtT2fsZhQ3tBCVX2rBhmqQr0m8YSohLbog2XFA6Z3zDsrA7EbVlo9lRbZb3X2Z6N4OxXJcWir8dMe9lo4iPyY2ni4shyrJfjngKuczTLCZIxXOQKsN2KcmplemkjUk1QralsATxVZ0FlNLGMtXEg=;
X-UUID: 4312526d566841fe8ee8ed6f606a056f-20200106
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 995651616; Mon, 06 Jan 2020 23:12:17 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 23:02:54 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 15:00:14 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 7 Jan 2020 15:01:09 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v6 2/3] arm64: dts: mt8183: add svs device information
Date: Tue, 7 Jan 2020 15:01:53 +0800
Message-ID: <20200107070154.1574-3-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200107070154.1574-1-roger.lu@mediatek.com>
References: <20200107070154.1574-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6574980AB277B55A1F7FCE341005B6D070A31BFA25A81AF81F3A0AF40AA10C602000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_231221_826477_4F12F613 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add pmic/clock/irq/efuse setting in svs node

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 16 ++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 41 +++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 1fb195c683c3..6ae1d9a1bcbf 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -231,6 +231,22 @@
 
 };
 
+&svs_cpu_little {
+	vcpu-little-supply = <&mt6358_vproc12_reg>;
+};
+
+&svs_cpu_big {
+	vcpu-big-supply = <&mt6358_vproc11_reg>;
+};
+
+&svs_cci {
+	vcci-supply = <&mt6358_vproc12_reg>;
+};
+
+&svs_gpu {
+	vgpu-spply = <&mt6358_vgpu_reg>;
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 10b32471bc7b..996e65942f48 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -389,6 +389,39 @@
 			status = "disabled";
 		};
 
+		svs: svs@1100b000 {
+			compatible = "mediatek,mt8183-svs";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg CLK_INFRA_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calibration>,
+				      <&thermal_calibration>;
+			nvmem-cell-names = "svs-calibration-data",
+					   "calibration-data";
+
+			svs_cpu_little: svs-cpu-little {
+				compatible = "mediatek,mt8183-svs-cpu-little";
+				operating-points-v2 = <&cluster0_opp>;
+			};
+
+			svs_cpu_big: svs-cpu-big {
+				compatible = "mediatek,mt8183-svs-cpu-big";
+				operating-points-v2 = <&cluster1_opp>;
+			};
+
+			svs_cci: svs-cci {
+				compatible = "mediatek,mt8183-svs-cci";
+				operating-points-v2 = <&cci_opp>;
+			};
+
+			svs_gpu: svs-gpu {
+				compatible = "mediatek,mt8183-svs-gpu";
+				power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+				operating-points-v2 = <&gpu_opp_table>;
+			};
+		};
+
 		i2c3: i2c@1100f000 {
 			compatible = "mediatek,mt8183-i2c";
 			reg = <0 0x1100f000 0 0x1000>,
@@ -580,6 +613,14 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			thermal_calibration: calib@180 {
+				reg = <0x180 0xc>;
+			};
+			svs_calibration: calib@580 {
+				reg = <0x580 0x64>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
