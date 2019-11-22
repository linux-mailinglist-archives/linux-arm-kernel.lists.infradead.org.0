Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47F10691A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoRHd3qLQS7BVy2W/NTL/fc5gm+evNViB82TV5B4Pf0=; b=OV+qpYixaBf8Dk
	OifMT1g1h2G/akZYuAiZfcJ+raxxUSkmJAIP3BQb6+x+jNtlITFrKRqUcRe+YqDZzohDuncnX4oW5
	gGARzoIGk+peRZ0z+y12GitAG0g3MCFVFI00crVG99QNGTEetz/Vf4UGF4pPAlPxXLDgA2IO587Ms
	0jjBPN1cTVqM+J9LjfC5EhhdCWZIBxMV+mphQj+rvNHnXkP2LmFVejyK5pyh39Dj+/OQKZfi3rVF7
	1OU6zkG98h7rV4HT/wnZA+TbXEbWf4p4c2tZquqhNN8lneHh0kCm2n583935cQLWPnzBB4pXS/V3B
	osy+wo/2Ng0MVYrNAaiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5W6-0001CG-Si; Fri, 22 Nov 2019 09:46:18 +0000
Received: from mail-eopbgr790085.outbound.protection.outlook.com
 ([40.107.79.85] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5VR-0000sd-VC
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:45:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWdIbid2Qu3Stz1yHP1UTgbTV+DPtIExuSFg3pt8iQmAxdEqDdiNIbXaOzod5enW8G/onPzvbTdI8Ry3N1kaX0v1iBDZAeNiiiNSmPHsFEudwMrE0K1IlgmotXgvmKmLZ5nRjDq13IsnBqBcyASWmfHcTruEQL6XxJwFOaHUFdaYf1y0scHK966VLdmwSHIGoCzc0TAxMUL8WGkIuq4ikVpZ/y+ZejR54ea/fa5roytjtckow+XQZiVpt6hsu+rfo4WyUZ9LpXnrLOq42joSy4MjtijRAv318r/QpHjHHku0zh8lD/owlsNir6pn08KBfR9soIX0gYcU0XFZZZwNdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=do+vRNjbH9DYqXF3QpYHCBsQWieyW9/cRT+wU/UiZe0=;
 b=eOv6NksFdUzh3ZhorVX26d0It7feBRMu9479wMP21aBOpn8wN0klt0ypcFfGxSYggHuMRqD36f66PqVq9CJ4RUvU98dfH80kBQkaOHEkB9IARZYoUp6JaFCP2KsWWDye8CJqIv0QBiuvS5fB0aR85auEAbshE5+tK98/PrXJgSFzhvF2QZHupW+cP2HfiVFUhwaUGcuybWLBbEsHjih0cmUYCMBAchOZPw0CA6XOhu5ZQZzvAHvRyM2PS1u8XN9s8V7CV+nH7Fg0HseZgH8S9UNuS35bHebgB4qACaWqwUdgVgZsTsmGrwVp9RErIlaK0LfOfGvdP+39+jDdwiixxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=do+vRNjbH9DYqXF3QpYHCBsQWieyW9/cRT+wU/UiZe0=;
 b=e+WGnNZheJ6scPV/+a5p53NJVNBxzqZxLgGaz3WZK25DV11X6v1+WHJAGjSo0qA7YYe2KhSxyaLEAtlndAK9PMuXePBcZISX6Mn5B/bDlIt7xNM+QIOL6iAEJ5Z0YriJk5D1bn04OYIvC6JYJGxcvZo4cwSRqsjoG2/RNXPV+yM=
Received: from DM6PR02CA0124.namprd02.prod.outlook.com (2603:10b6:5:1b4::26)
 by SN6PR02MB4831.namprd02.prod.outlook.com (2603:10b6:805:98::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Fri, 22 Nov
 2019 09:45:35 +0000
Received: from SN1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by DM6PR02CA0124.outlook.office365.com
 (2603:10b6:5:1b4::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.29 via Frontend
 Transport; Fri, 22 Nov 2019 09:45:34 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT053.mail.protection.outlook.com (10.152.72.102) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 09:45:34 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VO-0008SH-4U; Fri, 22 Nov 2019 01:45:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VJ-0002pC-2T; Fri, 22 Nov 2019 01:45:29 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM9jLQb003467; 
 Fri, 22 Nov 2019 01:45:21 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VB-0002ob-Fb; Fri, 22 Nov 2019 01:45:21 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com, tejas.patel@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v2 1/6] dt-bindings: clock: Add bindings for versal clock
 driver
Date: Fri, 22 Nov 2019 01:43:29 -0800
Message-Id: <1574415814-19797-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(199004)(189003)(47776003)(36756003)(106002)(4326008)(50466002)(478600001)(6306002)(107886003)(966005)(316002)(16586007)(48376002)(426003)(14444005)(2616005)(11346002)(8676002)(446003)(81156014)(81166006)(5660300002)(44832011)(2906002)(50226002)(70206006)(70586007)(26005)(7696005)(51416003)(76176011)(36386004)(186003)(336012)(8936002)(356004)(305945005)(9786002)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4831; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 801b9d3c-ad50-4e18-f4ef-08d76f30b8e8
X-MS-TrafficTypeDiagnostic: SN6PR02MB4831:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <SN6PR02MB4831CFEF7986003F10B4113DB7490@SN6PR02MB4831.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m6ww4Vim1GUJIYaK+SyjUATcx4tV35crWyeQOphzfZ+7/6H74Hnl7cN5CLdfUmYRR7m/XizcEQCrkjntanwZJO7oBnI9U4CIY96ZyqyC8Le03hH4XXWlu439LqKKFmgBwNc+ncn4LvpQd3wvA7/vH3FuhlhoOUW87n3OUPomFI/13siuLyJCaKZmoCtcCL3LCZ8i86/HFk9CqEL6vtQXmlo8rXK2uobYPLASBMkbNoTIfxTXh+DbgmAFgMXQfDoCqhNiy/Iz7YOokDiXLEd+3ye8AsTym9FgGgmSqPqgjivV6peUSjcWSYg6TuwuHkHjDZju9EZbzk+HBPigLLAkd+6lrzmQ0j0GMvaZ0Z4l08s4fD+Csu0v5IqMJazODP7RYq8zNGc0fJ2CrHXK6GaDEQHx2rqYP3lCwcg+yXu+oRYyu+xv7+3AdP4Y+B2wqYFRfwdPfQOZ1vgEP+fKYTJw5chd7yDj7/jkw47Dt5gR6r0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 09:45:34.6121 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 801b9d3c-ad50-4e18-f4ef-08d76f30b8e8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4831
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014538_048086_9F9BE6B7 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.85 listed in list.dnswl.org]
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
---
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
index 0000000..a1f47cf
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0
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
