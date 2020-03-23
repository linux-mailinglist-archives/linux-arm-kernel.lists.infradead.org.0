Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486BB19016A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 23:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iW0uTLzi9MpEyQ4/PyHME5BIrX62gn4EJvTcfryQHas=; b=rDrhmPAX18mDHD
	AhyRpGByhx1IlTGuMn+t5ekOVi3h3m31kPOLf5SPlcJo97pp7+HLNBh0P624UoRUabgfxjUR44T6y
	xz9IBXyD9rNCLylc7TaqfqsZDvuwNc2yEY1aCcY+2XwimVHMS3ZvkZWWFCWyn6DKB6Hmk7UTzmpCR
	Na9viP+XtT7aFcgVFViGJ/zt8P2Aw6Zx9flj7rufUUb6irpJ/7mBLi1Kx1NgWbKwfP62nVmijUrK3
	uZIrDSqDhhkIXJLeu3XsPjVmJz0ZGwpuhDoj6mBQkV/K/SI2ydG27FEcduH3+uoAHzYzWtm/bzkK5
	4RVrYH5cnN9LFDxy6HBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVzG-00070L-VI; Mon, 23 Mar 2020 22:56:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVwd-0003NW-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 22:53:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02NMrGiC113155;
 Mon, 23 Mar 2020 17:53:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585003996;
 bh=FXGVfX426mT5zJ6zl1Gb2vod+Lgvz67F6EFAUQ14a2M=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ESRx5esejRyK2fSk9kaAgh+K8QCjlOjSjb7+BLeJGseon2qA+7zrtBXoohspQRHIA
 Q72vcoVRg5KhgscO8Z+qf8bJZ61KSCg9aMm2JxBA0x3P+JsRQaoqOPsBFM36DZb0Dk
 3rLk45hT0hC+g7GeRWP8OEi+hHAYV+wekFcOOrsk=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02NMrFIl102618
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Mar 2020 17:53:16 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Mar 2020 17:53:15 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Mar 2020 17:53:15 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02NMrEjd080460;
 Mon, 23 Mar 2020 17:53:15 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Rob Herring <robh@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>,
 netdev <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v6 10/11] arm64: dts: ti: k3-j721e-common-proc-board:
 add mcu cpsw nuss pinmux and phy defs
Date: Tue, 24 Mar 2020 00:52:53 +0200
Message-ID: <20200323225254.12759-11-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323225254.12759-1-grygorii.strashko@ti.com>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155319_449079_E192B8FC 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TI J721E EVM base board has TI DP83867 PHY connected to external CPSW
NUSS Port 1 in rgmii-rxid mode.

Hence, add pinmux and Ethernet PHY configuration for TI j721e SoC MCU
Gigabit Ethernet two ports Switch subsystem (CPSW NUSS).

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Tested-by: Murali Karicheri <m-karicheri2@ti.com>
Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 7a5c3d4adadd..98e5e17e3ff7 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -8,6 +8,7 @@
 #include "k3-j721e-som-p0.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/net/ti-dp83867.h>
 
 / {
 	chosen {
@@ -128,6 +129,30 @@
 			J721E_WKUP_IOPAD(0x38, PIN_INPUT, 0) /* (A23) MCU_OSPI1_LBCLKO */
 		>;
 	};
+
+	mcu_cpsw_pins_default: mcu_cpsw_pins_default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0x0058, PIN_OUTPUT, 0) /* MCU_RGMII1_TX_CTL */
+			J721E_WKUP_IOPAD(0x005c, PIN_INPUT, 0) /* MCU_RGMII1_RX_CTL */
+			J721E_WKUP_IOPAD(0x0060, PIN_OUTPUT, 0) /* MCU_RGMII1_TD3 */
+			J721E_WKUP_IOPAD(0x0064, PIN_OUTPUT, 0) /* MCU_RGMII1_TD2 */
+			J721E_WKUP_IOPAD(0x0068, PIN_OUTPUT, 0) /* MCU_RGMII1_TD1 */
+			J721E_WKUP_IOPAD(0x006c, PIN_OUTPUT, 0) /* MCU_RGMII1_TD0 */
+			J721E_WKUP_IOPAD(0x0078, PIN_INPUT, 0) /* MCU_RGMII1_RD3 */
+			J721E_WKUP_IOPAD(0x007c, PIN_INPUT, 0) /* MCU_RGMII1_RD2 */
+			J721E_WKUP_IOPAD(0x0080, PIN_INPUT, 0) /* MCU_RGMII1_RD1 */
+			J721E_WKUP_IOPAD(0x0084, PIN_INPUT, 0) /* MCU_RGMII1_RD0 */
+			J721E_WKUP_IOPAD(0x0070, PIN_INPUT, 0) /* MCU_RGMII1_TXC */
+			J721E_WKUP_IOPAD(0x0074, PIN_INPUT, 0) /* MCU_RGMII1_RXC */
+		>;
+	};
+
+	mcu_mdio_pins_default: mcu_mdio1_pins_default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0x008c, PIN_OUTPUT, 0) /* MCU_MDIO0_MDC */
+			J721E_WKUP_IOPAD(0x0088, PIN_INPUT, 0) /* MCU_MDIO0_MDIO */
+		>;
+	};
 };
 
 &wkup_uart0 {
@@ -429,3 +454,21 @@
 		#gpio-cells = <2>;
 	};
 };
+
+&mcu_cpsw {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_cpsw_pins_default &mcu_mdio_pins_default>;
+};
+
+&davinci_mdio {
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+	};
+};
+
+&cpsw_port1 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&phy0>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
