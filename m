Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2316184E39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+MNEgPOy3fp/FW3nH3wUaY/FvnPpfgXC9BEmDcb6Bo=; b=O4y704ujHrRP/0
	CyYcktjJXs4XokBuCFWY3WqaBq2LmRUE4OGcjbF08SbjWnrD7rUsFt2RfeO5LEkQJw7mMa8fN2R/M
	ehC8hq8Zlzz0cDkzJlfvxux/G4VTEihBJnkOc0Y+5ecUJ6/JaCjryCKS6jwbfX2nDDG0L9nPhSWuZ
	jC29yOpBAGvuqgC/AOlmhJlBPoOQrMlrow1lLJR5II5Dhk/pfU3rtYrag48Ov+AXPwBfA2Coj1GiV
	avIE+0jitpp4W/PGFoBl9vcphs/8uhkYALPKjkdML310yP95lmSj+AoMV88KrSH3tuwAsCYaIIi2U
	DH19GeiMl6N0R8xXlKzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCoZH-0001qu-DS; Fri, 13 Mar 2020 17:57:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCoXj-0000dl-53
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:56:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DHuFme093851;
 Fri, 13 Mar 2020 12:56:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584122175;
 bh=TlYK0/QnPc6+wYd+1RhUkQESkHbuAQhUymrxi4oE+N8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Y4bND4Pw+uxM7+vull0kXZXpUyJ9U7IEi41QHz7/xe/ry5G4f4k8mM0YXQYYpJNx5
 hDVR9K84yO55UGgIx6017ppLTX9GmPqAg5vy9E1ghQXX5n/XoaVVGr8UlWeoaQwvxZ
 md3nuS5HtPA89+opeHaBtGsrbotFQW4qTXu0XGA4=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DHuFFA104336
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 12:56:15 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 12:56:15 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 12:56:15 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DHuERq028071;
 Fri, 13 Mar 2020 12:56:14 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>, "David S
 . Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Roger
 Quadros <rogerq@ti.com>, <devicetree@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Subject: [PATCH net-next v3 07/10] arm64: dts: k3-am654-base-board: add mcu
 cpsw nuss pinmux and phy defs
Date: Fri, 13 Mar 2020 19:55:08 +0200
Message-ID: <20200313175511.2155-8-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313175511.2155-1-grygorii.strashko@ti.com>
References: <20200313175511.2155-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_105619_381614_A57C5A9A 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AM654 EVM base board has TI DP83867 PHY connected to external CPSW NUSS
Port 1 in rgmii-rxid mode.

Hence, add pinmux and Ethernet PHY configuration for TI am654 SoC Gigabit
Ethernet two ports Switch subsystem (CPSW NUSS).

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 1700996800eb..2f3d3316a1cf 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -7,6 +7,7 @@
 
 #include "k3-am654.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/net/ti-dp83867.h>
 
 / {
 	compatible =  "ti,am654-evm", "ti,am654";
@@ -95,7 +96,30 @@
 	wkup_pca554_default: wkup_pca554_default {
 		pinctrl-single,pins = <
 			AM65X_WKUP_IOPAD(0x0034, PIN_INPUT, 7) /* (T1) MCU_OSPI1_CLK.WKUP_GPIO0_25 */
+		>;
+	};
+
+	mcu_cpsw_pins_default: mcu_cpsw_pins_default {
+		pinctrl-single,pins = <
+			AM65X_WKUP_IOPAD(0x0058, PIN_OUTPUT, 0) /* (N4) MCU_RGMII1_TX_CTL */
+			AM65X_WKUP_IOPAD(0x005c, PIN_INPUT, 0) /* (N5) MCU_RGMII1_RX_CTL */
+			AM65X_WKUP_IOPAD(0x0060, PIN_OUTPUT, 0) /* (M2) MCU_RGMII1_TD3 */
+			AM65X_WKUP_IOPAD(0x0064, PIN_OUTPUT, 0) /* (M3) MCU_RGMII1_TD2 */
+			AM65X_WKUP_IOPAD(0x0068, PIN_OUTPUT, 0) /* (M4) MCU_RGMII1_TD1 */
+			AM65X_WKUP_IOPAD(0x006c, PIN_OUTPUT, 0) /* (M5) MCU_RGMII1_TD0 */
+			AM65X_WKUP_IOPAD(0x0078, PIN_INPUT, 0) /* (L2) MCU_RGMII1_RD3 */
+			AM65X_WKUP_IOPAD(0x007c, PIN_INPUT, 0) /* (L5) MCU_RGMII1_RD2 */
+			AM65X_WKUP_IOPAD(0x0080, PIN_INPUT, 0) /* (M6) MCU_RGMII1_RD1 */
+			AM65X_WKUP_IOPAD(0x0084, PIN_INPUT, 0) /* (L6) MCU_RGMII1_RD0 */
+			AM65X_WKUP_IOPAD(0x0070, PIN_INPUT, 0) /* (N1) MCU_RGMII1_TXC */
+			AM65X_WKUP_IOPAD(0x0074, PIN_INPUT, 0) /* (M1) MCU_RGMII1_RXC */
+		>;
+	};
 
+	mcu_mdio_pins_default: mcu_mdio1_pins_default {
+		pinctrl-single,pins = <
+			AM65X_WKUP_IOPAD(0x008c, PIN_OUTPUT, 0) /* (L1) MCU_MDIO0_MDC */
+			AM65X_WKUP_IOPAD(0x0088, PIN_INPUT, 0) /* (L4) MCU_MDIO0_MDIO */
 		>;
 	};
 };
@@ -419,3 +443,21 @@
 		data-lanes = <1 2>;
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
