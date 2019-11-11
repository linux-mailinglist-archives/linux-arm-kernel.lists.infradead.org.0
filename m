Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2725AF6C4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 02:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yuZKHeykZgZKd4OWK1EyJrCh49yk5NmgNwfvNzbJnZI=; b=sI9xTqjJ+pq0z/cE/SD4fuVbD+
	7GDmpvC2/JvfSIGUUPegtw6lLjSDiJorw/PgI/Gp2n0lYlaZSewBnLVC+EjBd13V4rgV4KgcB2aHa
	M4uUSlVNrXRy17a7HH/thBELEmjHt8SN9V1UopOgIuwkZj94sGDExPiHgA51ugqxOqFpas0afIG12
	9hozI9ycCwMnOYWsDoy/p9IE7Wj40aWZXw3L3rjYqz7uz2zHavcoFv3HjQsFLa0mMx3zn9sFvi527
	nTwcb9CGekvxOt82lFpB544roYfnQqXATYyM2U0eiUZyiySrmd3/U17mjZGQEI/vMN2RoQUqbfqVb
	qJZkvgJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTyXx-0003F4-07; Mon, 11 Nov 2019 01:31:13 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTyXV-00031M-D1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 01:30:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 746482008FB;
 Mon, 11 Nov 2019 02:30:42 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 33A242008F1;
 Mon, 11 Nov 2019 02:30:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D6A79402C7;
 Mon, 11 Nov 2019 09:30:28 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andrew.smirnov@gmail.com, manivannan.sadhasivam@linaro.org,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/4] ARM: dts: imx6sll-evk: Add eMMC support
Date: Mon, 11 Nov 2019 09:28:50 +0800
Message-Id: <1573435732-30361-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
References: <1573435732-30361-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_173045_716327_A0E9AAC4 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6SLL EVK board has eMMC connected on uSDHC2, add support
for it.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 arch/arm/boot/dts/imx6sll-evk.dts | 67 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index 3e1d32f..29b284c 100644
--- a/arch/arm/boot/dts/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/imx6sll-evk.dts
@@ -109,6 +109,14 @@
 		enable-active-high;
 	};
 
+	reg_sd2_vmmc: regulator-sd2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "eMMC-VCCQ";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+	};
+
 	reg_sd3_vmmc: regulator-sd3-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -314,6 +322,17 @@
 	status = "okay";
 };
 
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	vqmmc-supply = <&reg_sd2_vmmc>;
+	bus-width = <8>;
+	no-removable;
+	status = "okay";
+};
+
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc3>;
@@ -403,6 +422,54 @@
 		>;
 	};
 
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x17059
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x17059
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x17059
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x17059
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x413059
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp_100mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130b9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170b9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170b9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170b9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170b9
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x170b9
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x170b9
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x170b9
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x170b9
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x4130b9
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp_200mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170f9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130f9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170f9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170f9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170f9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170f9
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x170f9
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x170f9
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x170f9
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x170f9
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x4130f9
+		>;
+	};
+
 	pinctrl_usbotg1: usbotg1grp {
 		fsl,pins = <
 			MX6SLL_PAD_EPDC_PWR_COM__USB_OTG1_ID 0x17059
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
