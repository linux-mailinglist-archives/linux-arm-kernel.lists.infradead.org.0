Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A05113BD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Bw+M3mclytIt2QM1jTiNjhJ0b/PWn3hCjyCIb8joQQ=; b=hsosHWVOcmWBfx
	WNfPTUDWdgGz7pSaXUHWnn1vBrnIToXbgZ+xvhznZsvbiQv0ZVsogsFqsKEL4kBoTwpLKKdN89I5+
	bOUxaN2pxhxzMqsTxakXCH1FxIMuzCPgjfzhoOJjEpJz5e/y/kD3F5rjZvcxWDWgyHJxOjW+N0kL2
	AEydhN1/KUar8ibWxK7ZFhDDCIA2CgCGMn/Y4/aBmY0l1XFxeDtWobeUbXVoMs67zhns4/dUKCZ9H
	q+Mm4xGyjP9UlBMdzHcN3I4TQTcaXDSYJ78m2mO12EQY82wWisa6Xmp6Isr6YtNNuhj1ORyVQEzC9
	QYqRKd5OfzOg+JYbwjOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickn9-0005j5-OE; Thu, 05 Dec 2019 06:39:11 +0000
Received: from mail-bn3nam04on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::620]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickle-0004D9-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:37:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hb51dMaV0k6bGrW6oIJ8+WzzXRlrkuzWRpuxzC/chobkJ4xgmn6+i62txzQpy36cWLRdUDqTYKwKAvgbk/c42+ypz4aQWOhaq4vicUnX+SDMIndXIvZOPoFcecXTPKbWHybHaynyh/m+XFXaJzkBAxKkpb8h1Ctyf1yeSvxt1jqAZ+urAKB79hMriGaAPLhHPlz6jcN8TFQDG0kGLrcyvEyirCnRR+LYI3W/S07Sj8gOvIu+dMEgkzpjlr+axsJrLIgOrboqltr+ROJG04235atf93C6C3oilvrAg03KWws/RjCUnoBpgN2XEngp+jKwodaLghlmHyBEXn0O92GP8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dR6wQU33M3UN4w3m+4SyVhcnGxaxC++sn5renW2Kpg=;
 b=Dwcln5Uv3neNsT+GqpYLR4LVP0qLcFZKeH5zPPI0V/dcfDODSMP0aKXti1V9LDqLXl9WvtlKXqjkgeoOb0mH6nugjfYbylDZ+8vJqKcTv+0heNtRmVBs9bN8MTsBH6P4qkDUvk/FXVxONhxYiL+S3YpaPC363qcLQ0PGpHXD7b7tMy+sBc488fm/1tyIyGY9ONcYJ7oJH5sCaS7BlyhY/HwL4nhwIhacg664e1C8QyJEE0yCqBICefawupLc8u9Du1DTuF+88EM2S31rmaalc6YDeQWciu2H5crNUCdqjp0QSE9HMV5iJ1raFKy/G/tn74H9q0s68d4v+PitPeVNqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dR6wQU33M3UN4w3m+4SyVhcnGxaxC++sn5renW2Kpg=;
 b=eZlig54EW0aN4Nc14hv5PgoFOCq4ph0GOy3aiq6Aer5ZS6aUopYOkummcJMpW82JDOxTt/TVgHSKRew+UBSwGOXvMzp0PEObjLXMbSbG0fg55Mg4NdLlDbhaxkae0pQp80hg6J3RzjfomzoUB2hPU+hXulxbJ/ndzK8gnOWh0kc=
Received: from CY4PR02CA0001.namprd02.prod.outlook.com (2603:10b6:903:18::11)
 by SN4PR0201MB3486.namprd02.prod.outlook.com (2603:10b6:803:51::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Thu, 5 Dec
 2019 06:37:35 +0000
Received: from CY1NAM02FT049.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by CY4PR02CA0001.outlook.office365.com
 (2603:10b6:903:18::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Thu, 5 Dec 2019 06:37:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT049.mail.protection.outlook.com (10.152.75.83) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 5 Dec 2019 06:37:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1ickla-0000xL-QY; Wed, 04 Dec 2019 22:37:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklV-0000XV-NB; Wed, 04 Dec 2019 22:37:29 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB56bJ9Q010327; 
 Wed, 4 Dec 2019 22:37:20 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1icklL-0000WL-Ok; Wed, 04 Dec 2019 22:37:19 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v3 1/6] dt-bindings: clock: Add bindings for versal clock
 driver
Date: Wed,  4 Dec 2019 22:35:54 -0800
Message-Id: <1575527759-26452-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(2616005)(6666004)(107886003)(70586007)(426003)(478600001)(11346002)(5660300002)(36756003)(966005)(336012)(4326008)(356004)(305945005)(316002)(76176011)(7416002)(7696005)(50226002)(6306002)(16586007)(14444005)(2906002)(186003)(9786002)(81156014)(51416003)(48376002)(8936002)(81166006)(70206006)(44832011)(8676002)(36386004)(26005)(50466002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3486; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea3d4a13-e2ee-42f2-f1f6-08d7794d9d4f
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3486:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB3486ACA15F3726CED33A0F7AB75C0@SN4PR0201MB3486.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 02426D11FE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ja40FRGjix7VUXJUESx/OJCmLuzJwOFc++QcMVcLqdAZPBxWjB40EphE0gtcdor2jOkqjXrv8bz4uJEvz0HEB6uQC3s445GGHmjvOtnrg25e7MRguTP24AfmZoTj7exTlxWnEIjbrtp+PbDijdWU4Xf9eTrcqb/+LJpJxrP3rbzObK76sERYJJoNLPaeESINN3CRA00txK4UiD2DRV3JHWUJT1SziltBg1Rgt+2/LBMvisZnbUX+4xoGfWeduHBaNzsnqXkuHzjbLuaPKcL6xy+Y3hzEK3fmVPaUK/ygGoqnQIwD2crnMmEgVo7yA9gvGqs8B5tr3nKrazbLu0/3Ut/mYnJwSqEnUsOXhdIUtJADIkScWpnEvwnERrHScEdKi9UFCHKaAg2jfjorVUr0R3c3x0LguAZydOKAw4XBFa/qBrD6ePmRsNkQwddwMthZ8c80LLAimVNnInkeqJbs3wm5vfaUGxTNZzQai2l8J6J2YzgkyjMgVQn+GJRgQuNCTbRdk1tYQMfXUpzIBXX3Fvdesnfu4Qhct2Lz7oaB8Q0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2019 06:37:35.3198 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3d4a13-e2ee-42f2-f1f6-08d7794d9d4f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223738_744503_26A2877E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation to describe Xilinx Versal clock driver
bindings.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v3:
 - Update SPDX-License-Identifier.
Changes in v2:
 - Correct description.
 - Add "select: false" field to avoid failing when firmware schema is
   available.
 - Remove "_clk" from clock names.
 - Remove minItems and maxItems fields.

NOTE: firmware dt-bindings in yaml format will be added in a separate
      change and $ref of this yaml to firmware will be added.
---
 .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
 2 files changed, 187 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h

diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
new file mode 100644
index 0000000..f1150ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/xlnx,versal-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx Versal clock controller
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+  - Jolly Shah <jolly.shah@xilinx.com>
+  - Rajan Vaja <rajan.vaja@xilinx.com>
+
+description: |
+  The clock controller is a hardware block of Xilinx versal clock tree. It
+  reads required input clock frequencies from the devicetree and acts as clock
+  provider for all clock consumers of PS clocks.
+
+select: false
+
+properties:
+  compatible:
+    const: xlnx,versal-clk
+
+  "#clock-cells":
+    const: 1
+
+  clocks:
+    description: List of clock specifiers which are external input
+      clocks to the given clock controller.
+    items:
+      - description: reference clock
+      - description: alternate reference clock
+      - description: alternate reference clock for programmable logic
+
+  clock-names:
+    items:
+      - const: ref
+      - const: alt_ref
+      - const: pl_alt_ref
+
+required:
+  - compatible
+  - "#clock-cells"
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware {
+      zynqmp_firmware: zynqmp-firmware {
+        compatible = "xlnx,zynqmp-firmware";
+        method = "smc";
+        versal_clk: clock-controller {
+          #clock-cells = <1>;
+          compatible = "xlnx,versal-clk";
+          clocks = <&ref>, <&alt_ref>, <&pl_alt_ref>;
+          clock-names = "ref", "alt_ref", "pl_alt_ref";
+        };
+      };
+    };
+...
diff --git a/include/dt-bindings/clock/xlnx-versal-clk.h b/include/dt-bindings/clock/xlnx-versal-clk.h
new file mode 100644
index 0000000..264d634
--- /dev/null
+++ b/include/dt-bindings/clock/xlnx-versal-clk.h
@@ -0,0 +1,123 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2019 Xilinx Inc.
+ *
+ */
+
+#ifndef _DT_BINDINGS_CLK_VERSAL_H
+#define _DT_BINDINGS_CLK_VERSAL_H
+
+#define PMC_PLL					1
+#define APU_PLL					2
+#define RPU_PLL					3
+#define CPM_PLL					4
+#define NOC_PLL					5
+#define PLL_MAX					6
+#define PMC_PRESRC				7
+#define PMC_POSTCLK				8
+#define PMC_PLL_OUT				9
+#define PPLL					10
+#define NOC_PRESRC				11
+#define NOC_POSTCLK				12
+#define NOC_PLL_OUT				13
+#define NPLL					14
+#define APU_PRESRC				15
+#define APU_POSTCLK				16
+#define APU_PLL_OUT				17
+#define APLL					18
+#define RPU_PRESRC				19
+#define RPU_POSTCLK				20
+#define RPU_PLL_OUT				21
+#define RPLL					22
+#define CPM_PRESRC				23
+#define CPM_POSTCLK				24
+#define CPM_PLL_OUT				25
+#define CPLL					26
+#define PPLL_TO_XPD				27
+#define NPLL_TO_XPD				28
+#define APLL_TO_XPD				29
+#define RPLL_TO_XPD				30
+#define EFUSE_REF				31
+#define SYSMON_REF				32
+#define IRO_SUSPEND_REF				33
+#define USB_SUSPEND				34
+#define SWITCH_TIMEOUT				35
+#define RCLK_PMC				36
+#define RCLK_LPD				37
+#define WDT					38
+#define TTC0					39
+#define TTC1					40
+#define TTC2					41
+#define TTC3					42
+#define GEM_TSU					43
+#define GEM_TSU_LB				44
+#define MUXED_IRO_DIV2				45
+#define MUXED_IRO_DIV4				46
+#define PSM_REF					47
+#define GEM0_RX					48
+#define GEM0_TX					49
+#define GEM1_RX					50
+#define GEM1_TX					51
+#define CPM_CORE_REF				52
+#define CPM_LSBUS_REF				53
+#define CPM_DBG_REF				54
+#define CPM_AUX0_REF				55
+#define CPM_AUX1_REF				56
+#define QSPI_REF				57
+#define OSPI_REF				58
+#define SDIO0_REF				59
+#define SDIO1_REF				60
+#define PMC_LSBUS_REF				61
+#define I2C_REF					62
+#define TEST_PATTERN_REF			63
+#define DFT_OSC_REF				64
+#define PMC_PL0_REF				65
+#define PMC_PL1_REF				66
+#define PMC_PL2_REF				67
+#define PMC_PL3_REF				68
+#define CFU_REF					69
+#define SPARE_REF				70
+#define NPI_REF					71
+#define HSM0_REF				72
+#define HSM1_REF				73
+#define SD_DLL_REF				74
+#define FPD_TOP_SWITCH				75
+#define FPD_LSBUS				76
+#define ACPU					77
+#define DBG_TRACE				78
+#define DBG_FPD					79
+#define LPD_TOP_SWITCH				80
+#define ADMA					81
+#define LPD_LSBUS				82
+#define CPU_R5					83
+#define CPU_R5_CORE				84
+#define CPU_R5_OCM				85
+#define CPU_R5_OCM2				86
+#define IOU_SWITCH				87
+#define GEM0_REF				88
+#define GEM1_REF				89
+#define GEM_TSU_REF				90
+#define USB0_BUS_REF				91
+#define UART0_REF				92
+#define UART1_REF				93
+#define SPI0_REF				94
+#define SPI1_REF				95
+#define CAN0_REF				96
+#define CAN1_REF				97
+#define I2C0_REF				98
+#define I2C1_REF				99
+#define DBG_LPD					100
+#define TIMESTAMP_REF				101
+#define DBG_TSTMP				102
+#define CPM_TOPSW_REF				103
+#define USB3_DUAL_REF				104
+#define OUTCLK_MAX				105
+#define REF_CLK					106
+#define PL_ALT_REF_CLK				107
+#define MUXED_IRO				108
+#define PL_EXT					109
+#define PL_LB					110
+#define MIO_50_OR_51				111
+#define MIO_24_OR_25				112
+
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
