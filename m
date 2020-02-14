Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C912015D4A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 10:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InS8GYBOu2/8qTSg2nxOncNtl2T5AvB47o8KQoAmvLM=; b=T1jWqENNUiJA5u
	gG6eoN2yZos3DTKpJqdV0yLsqr30i+DM2ts8Gqsf14wz94fM7egddn26Pe+Pz8JXb0h9XIet1O69s
	mnfm7irTGWoMtCCNDN947F3INOHJ5NG9m2Y7ztJqQP5+/u4slCfoHZTM7FiAtI3CGPX/7zfgHudRB
	8NB/T6agFECoPTgnismi7CcfvK2rV8wdBuQ56EtHCtvuCYDf7ID5dnMzNYS1rcyHvgejEnC8KyUMo
	wTGpfUsUq5WXXdbj3c1sQpg4DUKBW0GmIFqea0/peHnwvfOqCQp/4VClU0brOoU7qDV6nb3OtXohz
	8OCybwifOVrGKhgGKpqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XBv-0005VK-AR; Fri, 14 Feb 2020 09:23:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XBR-00052h-U2
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 09:22:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01E9Mg3w113503;
 Fri, 14 Feb 2020 03:22:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581672162;
 bh=pIyaS5ys8ohp+Z+ExkY5QFJRkuhfYRBSJTMw3mE1fgs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=IrSmm8TVtrW84YYCRBXCTPEbgbQOSYNyE3oZNGJ2WfIvu4VgAZiobdbCoXXJlSyIN
 ExB3loQb5rDxuSLHdEgWMMHw3xVZr4Fi0liwlEJeLPTb9pLwT85lnX2cqKXl4uHa41
 pucLrFhGSTBG3DPwpUByzUcQeRbi0tyvBCclv4oc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01E9MgcK026731
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Feb 2020 03:22:42 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 14
 Feb 2020 03:22:41 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 14 Feb 2020 03:22:41 -0600
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01E9MJj8086345;
 Fri, 14 Feb 2020 03:22:30 -0600
From: Jyri Sarha <jsarha@ti.com>
To: <dri-devel@lists.freedesktop.org>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH resend 2/2] ARM: dts: keystone-k2g-evm: add HDMI video support
Date: Fri, 14 Feb 2020 11:22:15 +0200
Message-ID: <f6f51177e44a36db2ba9f3411ee26db387c38e2f.1581671951.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1581671951.git.jsarha@ti.com>
References: <cover.1581671951.git.jsarha@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_012250_094082_C95C0663 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, bparrot@ti.com, praneeth@ti.com, robh+dt@kernel.org,
 peter.ujfalusi@ti.com, tomi.valkeinen@ti.com,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT nodes for HDMI video support for K2G EVM. The HDMI uses SiI9022
DPI as HDMI encoder. The DSS DPI is connected to SiI9022 HDMI
encoder's video input and encoder's output goes to HDMI connector.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
---
 arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm/boot/dts/keystone-k2g-evm.dts b/arch/arm/boot/dts/keystone-k2g-evm.dts
index b7f10bf94576..db640bab8c1d 100644
--- a/arch/arm/boot/dts/keystone-k2g-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2g-evm.dts
@@ -45,6 +45,19 @@
 		regulator-max-microvolt = <1800000>;
 		regulator-always-on;
 	};
+
+	hdmi: connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&sii9022_out>;
+			};
+		};
+	};
 };
 
 &k2g_pinctrl {
@@ -89,6 +102,13 @@
 		>;
 	};
 
+	i2c1_pins: pinmux_i2c1_pins {
+		pinctrl-single,pins = <
+			K2G_CORE_IOPAD(0x1384) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_scl.i2c1_scl */
+			K2G_CORE_IOPAD(0x1388) (BUFFER_CLASS_B | PIN_PULLUP | MUX_MODE0)	/* i2c1_sda.i2c1_sda */
+		>;
+	};
+
 	ecap0_pins: ecap0_pins {
 		pinctrl-single,pins = <
 			K2G_CORE_IOPAD(0x1374) (BUFFER_CLASS_B | MUX_MODE4)	/* pr1_mdio_data.ecap0_in_apwm0_out */
@@ -160,6 +180,40 @@
 			K2G_CORE_IOPAD(0x1188) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0)	/* MDIO_DATA.MDIO_DATA */
 		>;
 	};
+
+	vout_pins: pinmux_vout_pins {
+		pinctrl-single,pins = <
+			K2G_CORE_IOPAD(0x1078) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata23.dssdata23 */
+			K2G_CORE_IOPAD(0x107c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata22.dssdata22 */
+			K2G_CORE_IOPAD(0x1080) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata21.dssdata21 */
+			K2G_CORE_IOPAD(0x1084) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata20.dssdata20 */
+			K2G_CORE_IOPAD(0x1088) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata19.dssdata19 */
+			K2G_CORE_IOPAD(0x108c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata18.dssdata18 */
+			K2G_CORE_IOPAD(0x1090) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata17.dssdata17 */
+			K2G_CORE_IOPAD(0x1094) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata16.dssdata16 */
+			K2G_CORE_IOPAD(0x1098) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata15.dssdata15 */
+			K2G_CORE_IOPAD(0x109c) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata14.dssdata14 */
+			K2G_CORE_IOPAD(0x10a0) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata13.dssdata13 */
+			K2G_CORE_IOPAD(0x10a4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata12.dssdata12 */
+			K2G_CORE_IOPAD(0x10a8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata11.dssdata11 */
+			K2G_CORE_IOPAD(0x10ac) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata10.dssdata10 */
+			K2G_CORE_IOPAD(0x10b0) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata9.dssdata9 */
+			K2G_CORE_IOPAD(0x10b4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata8.dssdata8 */
+			K2G_CORE_IOPAD(0x10b8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata7.dssdata7 */
+			K2G_CORE_IOPAD(0x10bc) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata6.dssdata6 */
+			K2G_CORE_IOPAD(0x10c0) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata5.dssdata5 */
+			K2G_CORE_IOPAD(0x10c4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata4.dssdata4 */
+			K2G_CORE_IOPAD(0x10c8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata3.dssdata3 */
+			K2G_CORE_IOPAD(0x10cc) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata2.dssdata2 */
+			K2G_CORE_IOPAD(0x10d0) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata1.dssdata1 */
+			K2G_CORE_IOPAD(0x10d4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssdata0.dssdata0 */
+			K2G_CORE_IOPAD(0x10d8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssvsync.dssvsync */
+			K2G_CORE_IOPAD(0x10dc) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dsshsync.dsshsync */
+			K2G_CORE_IOPAD(0x10e0) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dsspclk.dsspclk */
+			K2G_CORE_IOPAD(0x10e4) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssde.dssde */
+			K2G_CORE_IOPAD(0x10e8) (BUFFER_CLASS_B | PULL_DISABLE | MUX_MODE0) /* dssfid.dssfid */
+		>;
+	};
 };
 
 &uart0 {
@@ -357,3 +411,50 @@
 	pinctrl-0 = <&emac_pins>;
 	status = "okay";
 };
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins>;
+	status = "okay";
+	clock-frequency = <400000>;
+
+	sii9022: sii9022@3b {
+		#sound-dai-cells = <0>;
+		compatible = "sil,sii9022";
+		reg = <0x3b>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				sii9022_in: endpoint {
+					remote-endpoint = <&dpi_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				sii9022_out: endpoint {
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
+};
+
+&dss {
+	pinctrl-names = "default";
+	pinctrl-0 = <&vout_pins>;
+	status = "ok";
+
+	port {
+		dpi_out: endpoint {
+			remote-endpoint = <&sii9022_in>;
+			data-lines = <24>;
+		};
+	};
+};
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
