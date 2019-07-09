Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACAD631CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HqyQNI+As8+tTefGe2fUbMfx93/r5DFdKXi4mYBNpxo=; b=DIrRtbLprskiJxtrzIfn16Ird1
	b22ew0Uz3nBvO/BHy+RCpjZXfuw+/ZLz1R9YkX+9I4fQwCejIpSkIWhW+bKt99HSHq5Hpf8+idCho
	oOa/RPQjondN0fpzMdSGQd9K+ZtUwbND9WEx2MxSjzWKFqUHMOUzb2yoUQJ623NjPQulGo3IV0jma
	g7M45UrjR369zy/rxU88quyKg59m2rkwZadFbXW9EGd0XHxGGc04lVLg6kcM2TpTGxjS+LwmdGX+O
	MMZRV061VejLd8lpbvOL15yaHnzaOqjE5muQym28vKeEbra2Gy9I2Ftc9ElEbAr1t91yUjEiUi895
	hs/2hyJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkRM-0001WZ-AE; Tue, 09 Jul 2019 07:21:28 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPW-0007TH-Nk
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656768; x=1565248768;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s1zdktaUgi8FD5Dd3rpCZWrmcQvNrrlNSk3dVdiF9OQ=;
 b=D/24DhkEnr9C73VWm6s2YtHz16ECsSV4296exQp5BNqcqEn5bRRuOc0CMTzISToI
 H6/F7fSOqiCPxWmM+6CUjXKcz28cbnsjC3+g5syJHFKHdHFksv2ZiycU/XaLZcfL
 YITLqWo2+pisknbZHnRF9HCMeRWuluUKtezWE8Rpzmw=;
X-AuditID: c39127d2-193ff70000001aee-04-5d244000701c
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DA.B0.06894.000442D5;
 Tue,  9 Jul 2019 09:19:28 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192851-309708 ;
 Tue, 9 Jul 2019 09:19:28 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 05/10] ARM: dts: imx6ul: segin: Make FEC and ethphy
 configurable in dts
Date: Tue, 9 Jul 2019 09:19:22 +0200
Message-Id: <1562656767-273566-6-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:28,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:28, Serialize complete at 09.07.2019 09:19:28
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrALMWRmVeSWpSXmKPExsWyRoCBS5fBQSXWYOEyS4v5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8bCLU/Y
 CmaJVMyZ/5axgXGnQBcjJ4eEgInEibYJjF2MXBxCAjsYJea/2skE4VxglFj0r5MFpIpNwEhi
 wbRGJhBbRCBS4t323+wgRcwCexglpl2/zgiSEBYIl1j2YwVYA4uAisS5jZvYQGxeAQ+J1ZO3
 s0Gsk5O4ea6TGcTmFPCUOHrxF5gtBFRzecE0FpChEgKNTBKLH51mhGgQkji9+CzzBEa+BYwM
 qxiFcjOTs1OLMrP1CjIqS1KT9VJSNzECQ/XwRPVLOxj75ngcYmTiYDzEKMHBrCTCu89dOVaI
 NyWxsiq1KD++qDQntfgQozQHi5I47wbekjAhgfTEktTs1NSC1CKYLBMHp1QDo+ndVZ+vvC9f
 lnZrwvsdpYc/Mya0rwnVKwvepHylxqLl+w7GtbFSLovmPI/xmKzy4vrWw1qfKzIbjt09GpLS
 NLfinZuJTIeXKt/xosuXPT4fEV6iz+b/mydn+nvjNVOuLz3vcGbh96V7+D7nHOv+URd4z0Y8
 qP92I5N2ieHyiXEJxScvJs95t1CJpTgj0VCLuag4EQABBJ4NQwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001935_092231_0B5CD7B1 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To disable Ethernet interfaces in case they are not populated
make the FEC and Ethernet PHY status configurable in the dts files.

Also change the Ethernet PHYs labels to make them correspond to
the MDIO address.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi      |  7 ++++---
 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts | 12 ++++++++++++
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi            |  5 +++--
 3 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index 73266b4a889b..fee7a7e938ee 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -42,20 +42,21 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet1>;
 	phy-mode = "rmii";
-	phy-handle = <&ethphy0>;
-	status = "okay";
+	phy-handle = <&ethphy1>;
+	status = "disabled";
 
 	mdio: mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		ethphy0: ethernet-phy@1 {
+		ethphy1: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio1>;
 			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 			micrel,led-mode = <1>;
 			clocks = <&clks IMX6UL_CLK_ENET_REF>;
 			clock-names = "rmii-ref";
+			status = "disabled";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index dc06029c5701..81a82dd65019 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -34,6 +34,18 @@
 	status = "okay";
 };
 
+&ethphy1 {
+	status = "okay";
+};
+
+&ethphy2 {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
 &fec2 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
index 28ba3a4c4c74..7cd24ec40c36 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -107,7 +107,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rmii";
-	phy-handle = <&ethphy1>;
+	phy-handle = <&ethphy2>;
 	status = "disabled";
 };
 
@@ -160,11 +160,12 @@
 };
 
 &mdio {
-	ethphy1: ethernet-phy@2 {
+	ethphy2: ethernet-phy@2 {
 		reg = <2>;
 		micrel,led-mode = <1>;
 		clocks = <&clks IMX6UL_CLK_ENET2_REF>;
 		clock-names = "rmii-ref";
+		status = "disabled";
 	};
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
