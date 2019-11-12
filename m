Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A6F9063
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=711eQzdHOuobXq+GBLtjdwwKb1nK7rGWhWtuvZzqNh0=; b=Z7/8/P7GyaH5EN
	AMOZ6e4ptWKKsY482oDJ2zJZcJ9PRlQzcmZKT2LzH2QO6JhP55LcYkcfEER9YBFlgU95QncUwXO08
	VDaoqmOMaNYlD3i9YBzxL0Wd5IE6xyDjgnUXp/6u7KJxRp9CfUOJKei6012vJzjktTY4SRvRVUf+p
	Weq38yeQJmobdm1Cnhj34yikTSx/A1wgZlPNYhrTXlUJk6E5tNmZwqCA4CCheQl5WAr8pK7ujwGrQ
	vcbBKPlLwmmqviBx8HdyNA3VFqssMhSjbfR1cCiJJfZM4w9dktC7fmR6fRpz8AgDLuI1rTeKdw6//
	pyKLBTBvIgdd7QD5ZdYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW33-0006hs-8A; Tue, 12 Nov 2019 13:17:33 +0000
Received: from mail-eopbgr770040.outbound.protection.outlook.com
 ([40.107.77.40] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW2k-0006gJ-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:17:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6Rz6lfQgYL60jy21SJMgfZx9jkO9kBk0fHQF4JWYkcSBKHvAPJFJOWqP1IlWDg6iPg1+FqFpwvPzLHkQSedllGSPGnQbQFVKQ+OYNfHtknJIkhkqNHZm3I/THZunGs+FlUqgOWMivlNHuVZIOCdvXZYxtQCSuYPAz4YygVDbW+L9vhyVgGNdt6Y/wr4oHVDhonu2vpBumSq1YWSLY0HF6kTzmgJWOzDtk/O5OS+pCgsi44xRMQ3v4wzYMFUCnwviRZx05pKUGsq7T/edCKeXKX/wK8cYljlxdgV6icbxatrGahOIdOH3ucN1oBcdCn5awPR24waOiAmssM84wzijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dl+KELpfYNZv9NmQyswn9xfjIyTI1Q2mFynohk2xHB4=;
 b=QQZmeImkoIzEKrZPtaibDdklJejBNBiNzkHDSuJa4m/Cj6LQd73MPDeFhfOOJUOTlmoGFlozdKycBK+gv7owMITTfxxqWqKaqsNPzE0e2X7BVLd12kfP8/Rfo4nS1XTOG6AOOTIjkBkP5qTpdCUA6qGpipZlaVk1RykpT/m40geW5iEeauQcE6LouNfh6w/qkSHsyypfzdMIeYPcOKU1hwx2k/77UJt+0m+loUen5QVbjLdVJd4dQXOFPCvbM02rDnpba77nwlNqQzvPkCdphs4P2C9FwOq2gvhy266ODpPUlyiu4glYVoPGTsB97uDV7bso/YFjVwl59b9PILLpmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dl+KELpfYNZv9NmQyswn9xfjIyTI1Q2mFynohk2xHB4=;
 b=S24p5YD+q49Zfq+c6hXXPnQU60TVD3UFAFMkNbtSpkR0uApCdM+6qkKMmJNjxz/ZalDfBMw3J5kCvSQwI51VmzaX3SZtw50MImWmCnuOnGBImuZ9ArLVkBYJ5WXGKcZ8GenNoV764kCZlv8Bot1HaeAK7C0qGjgFL4yxMPgjqhE=
Received: from BN6PR02CA0025.namprd02.prod.outlook.com (2603:10b6:404:5f::11)
 by CY4PR02MB2727.namprd02.prod.outlook.com (2603:10b6:903:11b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.24; Tue, 12 Nov
 2019 13:17:10 +0000
Received: from SN1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by BN6PR02CA0025.outlook.office365.com
 (2603:10b6:404:5f::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.22 via Frontend
 Transport; Tue, 12 Nov 2019 13:17:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT059.mail.protection.outlook.com (10.152.72.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Tue, 12 Nov 2019 13:17:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2f-0003si-A6; Tue, 12 Nov 2019 05:17:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2a-0004GJ-6Y; Tue, 12 Nov 2019 05:17:04 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDH089011276; 
 Tue, 12 Nov 2019 05:17:00 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW2V-0004Ds-VB; Tue, 12 Nov 2019 05:17:00 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com,
 m.tretter@pengutronix.de, jolly.shah@xilinx.com,
 dan.carpenter@oracle.com, gustavo@embeddedor.com,
 tejas.patel@xilinx.com, nava.manne@xilinx.com, ravi.patel@xilinx.com
Subject: [PATCH 1/7] dt-bindings: clock: Add bindings for versal clock driver
Date: Tue, 12 Nov 2019 05:16:14 -0800
Message-Id: <1573564580-9006-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(189003)(199004)(14444005)(51416003)(48376002)(76176011)(7696005)(478600001)(36756003)(356004)(6666004)(966005)(5660300002)(47776003)(50226002)(2906002)(8676002)(81166006)(8936002)(81156014)(107886003)(4326008)(50466002)(36386004)(316002)(11346002)(7416002)(106002)(186003)(426003)(6306002)(16586007)(336012)(26005)(9786002)(6636002)(486006)(70206006)(70586007)(305945005)(2616005)(476003)(126002)(44832011)(446003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2727; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 253c8779-78f3-4de5-290e-08d767729fad
X-MS-TrafficTypeDiagnostic: CY4PR02MB2727:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <CY4PR02MB272750C8F066B8715D5C45C3B7770@CY4PR02MB2727.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8g0H98zg6HVsgIvxBVFdaHBxJjI4Dd+Cz4kqCZW1lXCiD0/Klc5c4gW4m2lx+xKHaKcIFNp74IvMyILm9Os/dpXhLcIqjycLUYjPeRmP4CrnKAeWtnlJkrMnDDULEfg67y+1X9KC9oB/xebqiZ3ltOsZELj05iH/xC/C5KSaD9pvgXNQVqN5cB2VrXhh8O2hmUYWR/KPbqSb2vUXER8GnSlZlXESMzQ/rXXggMEMoEnBUKK0SeYB2h+79i23thAVi5zun6/EP1T9wY4/gCitlUxsHUAHuhIex361J1IEhjOJ8JYYNuADeIyGHq6HNai5ZESVZaQJZNtq/3KmabsSAKSrwG30bIBoEIkYRJh9dywz5GVBkS7tJqE8Rit1Ow/fgQazLnS89LZQdigDxJa3q+APKXKMIT1JR/pWN4L+E3QBeoY0nIHaxNqUsEB/qhpa2rV8oXAKAUSF2roWeGy5r6zgy8epH1d6F5omPVRPYx0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:17:09.7571 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 253c8779-78f3-4de5-290e-08d767729fad
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051714_481982_86F4907B 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  67 +++++++++++
 include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
 2 files changed, 190 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
 create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h

diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
new file mode 100644
index 0000000..da82f6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
@@ -0,0 +1,67 @@
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
+  The clock controller is a h/w block of Xilinx versal clock tree. It reads
+  required input clock frequencies from the devicetree and acts as clock
+  provider for all clock consumers of PS clocks. See clock_bindings.txt
+  for more information on the generic clock bindings.
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
+    minItems: 3
+    maxItems: 3
+    items:
+      - description: ref clk
+      - description: alternate ref clk
+      - description: pl alternate ref clk
+
+  clock-names:
+    minItems: 3
+    maxItems: 3
+    items:
+      - const: ref_clk
+      - const: alt_ref_clk
+      - const: pl_alt_ref_clk
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
+          clocks = <&ref_clk>, <&alt_ref_clk>, <&pl_alt_ref_clk>;
+          clock-names = "ref_clk", "alt_ref_clk", "pl_alt_ref_clk";
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
