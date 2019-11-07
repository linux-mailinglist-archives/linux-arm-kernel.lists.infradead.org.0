Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F9DF2B19
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug+OJbrihjC+1BsGQ38STx5DLjYJiaFbl0nJfqagrUo=; b=ibdyk539wqvz10
	lOnYLgz0QCAZ8Ll4fA3kwjmJr5OB7h/5NSoTlVRBDx8Nkr1y3iNF/ZHj1jhqsL65VrsYH8fi71zdd
	6K6s9Z1Phad2jh8KhFOQLjDgTA7BPgkJW5XHhDiManWCy8ERsoCqYHnc8/2JEU5kgDX+altTWr0Kt
	be5Xs0tHFfFobtGc6El2BDvJn5GlZEIBiB5waia1Njx27GmNokwuWY4ovGEB0puRAHhcH332gN2ld
	UzzzvjGcmT663Bak7Imf1m6yoPr/Ig3IqOpKetw7Kr5vo+9C3e+xPQACPSmlBBKPp/IHtG9+XBtnC
	weHGzMakPteWgY9H641Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeM6-0007S9-Cj; Thu, 07 Nov 2019 09:45:30 +0000
Received: from mail-eopbgr820074.outbound.protection.outlook.com
 ([40.107.82.74] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeLf-00064t-Fu
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:45:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRXytpFAlNQ7Lawp+nELHVFZlibBNo1PGrlQyPbBcLqJDct/DB2aEnviKffWZPHdcBRzclxQM2+CwGj8tLsiukcW5iHyGnvE61+BmnrkOSGrF7KuUiPtzH2Mu5teFN02mhl2hIpatUhyg+DIV+vtEa7hDn1C3pWA24kXxN1kr3eRHbGR+TFhg06ErRdmeNPvwQ3eT3bWwSzehfz6Qaptd+GgfSLBIluRUvEQgZNqj5hAGL0wv0exRQL3onvM/ZKgCrnGr3Qj69Umxy6pSq1V/4gpXB6zfOr6lqguXuc3/cx1EbPFyE9WkO7bCsTDFBz2O7+n2xL2f8g6uS96M6hmZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuWNH++x6KHTQ+Jw2oRYE1TAazVj4BfIYk0U30DDI+s=;
 b=R4yy/HncKkmZ2AB0gI8CPIWh/2Nxm77y3bJmbyh+un/FUZ096QAR6lO0zyghHJJqa6e03Zs/Bep6WYfjGpS14qLcNFzeIgbTyOlJBoIQwewyVKSaV9LzzlkhJ7FOuAenkAKZ8bEAv4s6kjiRnkfT8rmYdd3q5jV7Bh27Ffs0U6tbXVKddWO+ELt30ZbdhQhcjXHMZW5DBut53s8BBzh8KO3axf4ysh2ysEe7q47RKC64F1tXv9ncs10WMRdAaoZxz03XY66931daMklGGRkvfPluw+/PCx88xjyugCsIQKhz4XaTFUIyk7X9Vzs4Ieuv3wA6IB0Y5lnLhBPbPgHfvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuWNH++x6KHTQ+Jw2oRYE1TAazVj4BfIYk0U30DDI+s=;
 b=fNa8NWTa/vg4gsa9dXCeS7do+wU/ZQuAtN3VPFz5qznv/7ZqzNr3hip8ggufFFKhQn92KZ45WCSZ/wINmBDcDYRMXVy0AGqr20HNfycIT0ymNBTQCqn3GRJzvt2lWPZLfeZsXBO4smKjxw1mxiU4zZ4gn8yq4iOHa3XmxfCvjts=
Received: from BL0PR02CA0139.namprd02.prod.outlook.com (2603:10b6:208:35::44)
 by SN6PR02MB4814.namprd02.prod.outlook.com (2603:10b6:805:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Thu, 7 Nov
 2019 09:45:00 +0000
Received: from CY1NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::205) by BL0PR02CA0139.outlook.office365.com
 (2603:10b6:208:35::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 09:45:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT055.mail.protection.outlook.com (10.152.74.80) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:44:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLb-0002kH-F5; Thu, 07 Nov 2019 01:44:59 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLW-00006a-C0; Thu, 07 Nov 2019 01:44:54 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA79im1V012807; 
 Thu, 7 Nov 2019 01:44:48 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLQ-00005Y-4S; Thu, 07 Nov 2019 01:44:48 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 harini.katakam@xilinx.com, jan.kiszka@siemens.com,
 ulf.hansson@linaro.org, xuwei5@hisilicon.com, mripard@kernel.org,
 heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: xilinx: Add the clock nodes for zynqmp
Date: Thu,  7 Nov 2019 01:44:14 -0800
Message-Id: <1573119856-13548-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(136003)(346002)(199004)(189003)(356004)(6666004)(107886003)(50466002)(106002)(36386004)(446003)(186003)(48376002)(7416002)(81156014)(2906002)(305945005)(81166006)(336012)(478600001)(426003)(5660300002)(486006)(70586007)(70206006)(76176011)(4326008)(126002)(7696005)(51416003)(476003)(26005)(50226002)(316002)(11346002)(47776003)(44832011)(30864003)(9786002)(8676002)(16586007)(8936002)(36756003)(2616005)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4814; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa6b4718-cb40-482b-adae-08d763672824
X-MS-TrafficTypeDiagnostic: SN6PR02MB4814:
X-Microsoft-Antispam-PRVS: <SN6PR02MB481414CBEBED11974326EAFCB7780@SN6PR02MB4814.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:42;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OazOZoQedCmOkLiAi+HeafZZCnFWwUR3A052eupXlqxPIr/IezVbwe3b8kxGMIexztw0MLrXXCRWryunKuWttXPrCt99CAm/wYsGM0w6yaoOtNR3IZTkRZ1G1daGB6nOl+tZN5sTH2px8qxY4FcTreUc4DcYTs6xblh5jJet4OGM36YUxYnBx7yIKKc56Btqlg3fEfD7OEOymq06rTLLSAwxEaBCl8OjX+8ZcmOJbLoC4WIM1fO8KwLfEZ9ofs1GCjz5wr0pTOSgqBiQuDn3VKySzItAmfvaSiyfC7Q/NUbozMnpmPFwM8t69xQyWHxO+MagPsG1f2kgX3+HvpADEu6VgfGdoa9QYDVwdOBqAP4emH1ETjBfcOBvfisVw6KSb2yuOhTgXgmLf7de/zktwylORnoysqKC/du4yy8VGoUbAj7EBc5aQwNne7u/C9wp
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:44:59.9695 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aa6b4718-cb40-482b-adae-08d763672824
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014503_581486_638F837E 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock nodes for zynqmp based on CCF.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi     | 222 +++++++++++++++++++++
 arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts  |   2 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts    |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi             |  24 ++-
 15 files changed, 270 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
new file mode 100644
index 0000000..9868ca1
--- /dev/null
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -0,0 +1,222 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Clock specification for Xilinx ZynqMP
+ *
+ * (C) Copyright 2017 - 2019, Xilinx, Inc.
+ *
+ * Michal Simek <michal.simek@xilinx.com>
+ */
+
+#include <dt-bindings/clock/xlnx-zynqmp-clk.h>
+/ {
+	pss_ref_clk: pss_ref_clk {
+		u-boot,dm-pre-reloc;
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <33333333>;
+	};
+
+	video_clk: video_clk {
+		u-boot,dm-pre-reloc;
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+
+	pss_alt_ref_clk: pss_alt_ref_clk {
+		u-boot,dm-pre-reloc;
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	gt_crx_ref_clk: gt_crx_ref_clk {
+		u-boot,dm-pre-reloc;
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <108000000>;
+	};
+
+	aux_ref_clk: aux_ref_clk {
+		u-boot,dm-pre-reloc;
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+};
+
+&can0 {
+	clocks = <&zynqmp_clk CAN0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&can1 {
+	clocks = <&zynqmp_clk CAN1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&cpu0 {
+	clocks = <&zynqmp_clk ACPU>;
+};
+
+&fpd_dma_chan1 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan2 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan3 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan4 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan5 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan6 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan7 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&fpd_dma_chan8 {
+	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan1 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan2 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan3 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan4 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan5 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan6 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan7 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&lpd_dma_chan8 {
+	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&gem0 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM0_REF>,
+		 <&zynqmp_clk GEM0_TX>, <&zynqmp_clk GEM0_RX>,
+		 <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem1 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM1_REF>,
+		 <&zynqmp_clk GEM1_TX>, <&zynqmp_clk GEM1_RX>,
+		 <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem2 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM2_REF>,
+		 <&zynqmp_clk GEM2_TX>, <&zynqmp_clk GEM2_RX>,
+		 <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gem3 {
+	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM3_REF>,
+		 <&zynqmp_clk GEM3_TX>, <&zynqmp_clk GEM3_RX>,
+		 <&zynqmp_clk GEM_TSU>;
+	clock-names = "pclk", "hclk", "tx_clk", "rx_clk", "tsu_clk";
+};
+
+&gpio {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&i2c0 {
+	clocks = <&zynqmp_clk I2C0_REF>;
+};
+
+&i2c1 {
+	clocks = <&zynqmp_clk I2C1_REF>;
+};
+
+&pcie {
+	clocks = <&zynqmp_clk PCIE_REF>;
+};
+
+&sata {
+	clocks = <&zynqmp_clk SATA_REF>;
+};
+
+&sdhci0 {
+	clocks = <&zynqmp_clk SDIO0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&sdhci1 {
+	clocks = <&zynqmp_clk SDIO1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&spi0 {
+	clocks = <&zynqmp_clk SPI0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&spi1 {
+	clocks = <&zynqmp_clk SPI1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc0 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc1 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc2 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&ttc3 {
+	clocks = <&zynqmp_clk LPD_LSBUS>;
+};
+
+&uart0 {
+	clocks = <&zynqmp_clk UART0_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&uart1 {
+	clocks = <&zynqmp_clk UART1_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
+&usb0 {
+	clocks = <&zynqmp_clk USB0_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
+};
+
+&usb1 {
+	clocks = <&zynqmp_clk USB1_BUS_REF>, <&zynqmp_clk USB3_DUAL_REF>;
+};
+
+&watchdog0 {
+	clocks = <&zynqmp_clk WDT>;
+};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts
index 0f7b4cf..2e05fa4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZC1232
  *
- * (C) Copyright 2017 - 2018, Xilinx, Inc.
+ * (C) Copyright 2017 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 
 / {
 	model = "ZynqMP ZC1232 RevA";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts
index 9092828..3d0aaa0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZC1254
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  * Siva Durga Prasad Paladugu <sivadur@xilinx.com>
@@ -11,7 +11,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 
 / {
 	model = "ZynqMP ZC1254 RevA";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
index 4f404c5..1a8127d4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
@@ -11,7 +11,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 
 / {
 	model = "ZynqMP ZC1275 RevA";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 9a3e39d..fa7eb1b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm015-dc1
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index 2421ec7..4191dfa 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm016-dc2
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
index 7a49dee..3750690 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm017-dc3
  *
- * (C) Copyright 2016 - 2018, Xilinx, Inc.
+ * (C) Copyright 2016 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 
 / {
 	model = "ZynqMP zc1751-xm017-dc3 RevA";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
index 54c7b4f..2366cd9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm018-dc4
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 
 / {
 	model = "ZynqMP zc1751-xm018-dc4";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
index b8b5ff1..9a894e6 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm019-dc5
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Siva Durga Prasad <siva.durga.paladugu@xilinx.com>
  * Michal Simek <michal.simek@xilinx.com>
@@ -11,7 +11,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index e5699d0..3e39454 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU100 revC
  *
- * (C) Copyright 2016 - 2018, Xilinx, Inc.
+ * (C) Copyright 2016 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  * Nathalie Chan King Choy
@@ -11,7 +11,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/gpio/gpio.h>
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 2a3b665..f6e9558 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU102 RevA
  *
- * (C) Copyright 2015 - 2018, Xilinx, Inc.
+ * (C) Copyright 2015 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 8f45614..f457f8a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU104
  *
- * (C) Copyright 2017 - 2018, Xilinx, Inc.
+ * (C) Copyright 2017 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 
 / {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 93ce7eb..f15b99a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU106
  *
- * (C) Copyright 2016, Xilinx, Inc.
+ * (C) Copyright 2016 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 8bb0001..e27cd60 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU111
  *
- * (C) Copyright 2017 - 2018, Xilinx, Inc.
+ * (C) Copyright 2017 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -10,7 +10,7 @@
 /dts-v1/;
 
 #include "zynqmp.dtsi"
-#include "zynqmp-clk.dtsi"
+#include "zynqmp-clk-ccf.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa6734..59a547b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP
  *
- * (C) Copyright 2014 - 2015, Xilinx, Inc.
+ * (C) Copyright 2014 - 2019, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  *
@@ -124,6 +124,28 @@
 			     <1 10 0xf08>;
 	};
 
+	firmware {
+		zynqmp_firmware: zynqmp-firmware {
+			compatible = "xlnx,zynqmp-firmware";
+			method = "smc";
+			zynqmp_clk: clock-controller {
+				u-boot,dm-pre-reloc;
+				#clock-cells = <1>;
+				compatible = "xlnx,zynqmp-clk";
+				clocks = <&pss_ref_clk>,
+					 <&video_clk>,
+					 <&pss_alt_ref_clk>,
+					 <&aux_ref_clk>,
+					 <&gt_crx_ref_clk>;
+				clock-names = "pss_ref_clk",
+					      "video_clk",
+					      "pss_alt_ref_clk",
+					      "aux_ref_clk",
+					      "gt_crx_ref_clk";
+			};
+		};
+	};
+
 	amba_apu: amba-apu@0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
