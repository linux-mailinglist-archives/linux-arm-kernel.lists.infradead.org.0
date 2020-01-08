Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDB7134037
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:20:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiF90vZSjLMKDPpg7FF8jN8eP9wzqP4bpB4WU241dLQ=; b=B9NrijQIzpPv7k
	KNNcEeAWzNPWinUAxG/CqloAckm0hGHwzpC31vXEQRraNlN5pEY28jR5W7F7v4QM6iTmByNfjgci0
	48MuGBe8kbpvQ/sW3Hi/QBxPOnY8awfPCfrex2XnyUKFnAb3mI7cKlW3/6IqgY9SxUAyIyuxr2HdZ
	xFnRfSC2I7G8fLd+nsFT43KWuDNCoj3QFp5/RzSzBpuAssllTwWWunBe1pEMpOBOr6RLfzOSLCIsm
	2JSIUa2HQyTebZIzhyHGQkhei9RELVJN2oo6+i2W3tlRlBVRC3nsnwCinrnyBeIBzYN2foMgxoz47
	hlTcYxX1148MfFXCtWsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9NV-00022S-9z; Wed, 08 Jan 2020 11:19:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9ML-00019G-7m
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:18:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 008BIi2i061036;
 Wed, 8 Jan 2020 05:18:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578482324;
 bh=W4JG4sA/Y1DkOn0HVLkeLXp6qAHQTr0CTDZr1pi4or8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rEVF1yttnU/bzaHeJBXrohE4IODn4EEYHirmyjfs+aqcVKSUp1Irm8gzEJ2jmNO56
 lGptao1ZgBtrdTSakuVF4EItYgAlpgLYtUmZ/dXVOu3MmTGVDYidORx50VMEJqPDVu
 9dNLi4EZG5DaqyuzbyfX4BfjoIPmk+1PccksZRsw=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 008BIioe114599
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Jan 2020 05:18:44 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Jan
 2020 05:18:39 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Jan 2020 05:18:39 -0600
Received: from lta0400828a.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 008BIWBr087830;
 Wed, 8 Jan 2020 05:18:37 -0600
From: Roger Quadros <rogerq@ti.com>
To: <t-kristo@ti.com>
Subject: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl node to
 select SERDES lane mux
Date: Wed, 8 Jan 2020 13:18:27 +0200
Message-ID: <20200108111830.8482-3-rogerq@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108111830.8482-1-rogerq@ti.com>
References: <20200108111830.8482-1-rogerq@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_031845_431011_D20BE238 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, vigneshr@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kishon Vijay Abraham I <kishon@ti.com>

Add serdes_ln_ctrl node used for selecting SERDES lane mux.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
 include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
 2 files changed, 79 insertions(+)
 create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 24cb78db28e4..6741c1e67f50 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -5,6 +5,8 @@
  * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/mux/mux.h>
+#include <dt-bindings/mux/mux-j721e-wiz.h>
 
 &cbass_main {
 	msmc_ram: sram@70000000 {
@@ -19,6 +21,30 @@
 		};
 	};
 
+	scm_conf: scm_conf@100000 {
+		compatible = "syscon", "simple-mfd";
+		reg = <0 0x00100000 0 0x1c000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x00100000 0x1c000>;
+
+		serdes_ln_ctrl: serdes_ln_ctrl@4080 {
+			compatible = "mmio-mux";
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
+					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
+					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
+					<0x40b0 0x3>, <0x40b4 0x3>, /* SERDES3 lane0/1 select */
+					<0x40c0 0x3>, <0x40c4 0x3>, <0x40c8 0x3>, <0x40cc 0x3>;
+					/* SERDES4 lane0/1/2/3 select */
+			idle-states = <SERDES0_LANE0_PCIE0_LANE0>, <SERDES0_LANE1_PCIE0_LANE1>,
+				      <SERDES1_LANE0_PCIE1_LANE0>, <SERDES1_LANE1_PCIE1_LANE1>,
+				      <SERDES2_LANE0_PCIE2_LANE0>, <SERDES2_LANE1_PCIE2_LANE1>,
+				      <MUX_IDLE_AS_IS>, <SERDES3_LANE1_USB3_0>,
+				      <SERDES4_LANE0_EDP_LANE0>, <SERDES4_LANE1_EDP_LANE1>, <SERDES4_LANE2_EDP_LANE2>, <SERDES4_LANE3_EDP_LANE3>;
+		};
+	};
+
 	gic500: interrupt-controller@1800000 {
 		compatible = "arm,gic-v3";
 		#address-cells = <2>;
diff --git a/include/dt-bindings/mux/mux-j721e-wiz.h b/include/dt-bindings/mux/mux-j721e-wiz.h
new file mode 100644
index 000000000000..fd1c4ea9fc7f
--- /dev/null
+++ b/include/dt-bindings/mux/mux-j721e-wiz.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides constants for J721E WIZ.
+ */
+
+#ifndef _DT_BINDINGS_J721E_WIZ
+#define _DT_BINDINGS_J721E_WIZ
+
+#define SERDES0_LANE0_QSGMII_LANE1	0x0
+#define SERDES0_LANE0_PCIE0_LANE0	0x1
+#define SERDES0_LANE0_USB3_0_SWAP	0x2
+
+#define SERDES0_LANE1_QSGMII_LANE2	0x0
+#define SERDES0_LANE1_PCIE0_LANE1	0x1
+#define SERDES0_LANE1_USB3_0		0x2
+
+#define SERDES1_LANE0_QSGMII_LANE3	0x0
+#define SERDES1_LANE0_PCIE1_LANE0	0x1
+#define SERDES1_LANE0_USB3_1_SWAP	0x2
+#define SERDES1_LANE0_SGMII_LANE0	0x3
+
+#define SERDES1_LANE1_QSGMII_LANE4	0x0
+#define SERDES1_LANE1_PCIE1_LANE1	0x1
+#define SERDES1_LANE1_USB3_1		0x2
+#define SERDES1_LANE1_SGMII_LANE1	0x3
+
+#define SERDES2_LANE0_PCIE2_LANE0	0x1
+#define SERDES2_LANE0_SGMII_LANE0	0x3
+#define SERDES2_LANE0_USB3_1_SWAP	0x2
+
+#define SERDES2_LANE1_PCIE2_LANE1	0x1
+#define SERDES2_LANE1_USB3_1		0x2
+#define SERDES2_LANE1_SGMII_LANE1	0x3
+
+#define SERDES3_LANE0_PCIE3_LANE0	0x1
+#define SERDES3_LANE0_USB3_0_SWAP	0x2
+
+#define SERDES3_LANE1_PCIE3_LANE1	0x1
+#define SERDES3_LANE1_USB3_0		0x2
+
+#define SERDES4_LANE0_EDP_LANE0		0x0
+#define SERDES4_LANE0_QSGMII_LANE5	0x2
+
+#define SERDES4_LANE1_EDP_LANE1		0x0
+#define SERDES4_LANE1_QSGMII_LANE6	0x2
+
+#define SERDES4_LANE2_EDP_LANE2		0x0
+#define SERDES4_LANE2_QSGMII_LANE7	0x2
+
+#define SERDES4_LANE3_EDP_LANE3		0x0
+#define SERDES4_LANE3_QSGMII_LANE8	0x2
+
+#endif /* _DT_BINDINGS_J721E_WIZ */
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
