Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1859FF2B1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BX6AIEXblhkQ3P5D/qZ81XSo6JL+E5kqeILpzBBSIXo=; b=SRQd6Much2/4tj
	B1y1aXHcapLYC1FSlmpFHEpHLpVbWurmDounVn9BZjxlk902CZMD+Jnwt+1I1mRC7WorZerQHRYi1
	MPLo1/b3xLD4EvwmybKkaPFFysJzSNQx5P53OlHPPegvQ7Iv6iFASw8fptd7aERk/Pt6KhGkWGnHX
	8aZ9Ur+6+xKXPe8tasEYW7aSS3IGVENOJAXgYUABZbxWZr1Nfb35eVf9oDLRjTV+fr2bO/WFZviQA
	Eu/c3yBNroJ283+UsiyQHQPAbpmSXdoOQzuCG5Pluwo8y23LEAgFjx40u+ENtNimCtVlXT3u70CDu
	f8y78TfGOXdxExZebfsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeMg-000817-0P; Thu, 07 Nov 2019 09:46:06 +0000
Received: from mail-eopbgr770051.outbound.protection.outlook.com
 ([40.107.77.51] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeLq-0007Cg-H5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:45:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UF5MenfyCZSV3syG2q1eK0UDxhc/86DUHUiQubCjma0E0BlZ5BQQ4DpE/Cqde4Tsu5e9ZJypMggk7AlPvkDtjmc20iYnQYjOW6Yg1IQY/c6TdoRbyXU0x6ZCEJGW+/I7qcacxQlfOEr3lh5Yn28Cm8DCLxvo8j/PhXyA7fUMf+xWQlWGnMRlDpZtRMshypQ+BKjZqDeioWVmN6Lwdt+90BZHjeg8xvB8s0PA2BE+ItuAtBike2pJUnplz1fKCPyHrKz8fEqxFfE07+xGytNu3vo9gnRfZVDu4yAOJl/jyg5zqFfTKs2vOx8eZ/0YWhXrSt5Xkb+H6FYUjWNePsF7xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FrW6+kZvavq3eVbI8WZSxNk+FgL1Iwor1jxPEyg67UM=;
 b=K+qYYunR/EwI/828+4/0l7sw0ifxcrqH1wO9omqtkwWSkvENGBwJGC3wIR9+NJ1qxsPJTwyuwB2L4JHCUlU3QtMd2BJtKDPbVz3QrfxQ+B3hgS2hpCsRs9l1s+K0u+MKDN0punjk8pQfRIHEnQE3YmMKWOa3B8LZk638NEfg6qN6PcnD3Z8DHtqQS4I0zAXtc3ACFDpqmhEadLAC8PD7UJxzNsJC91cTVWJ0rEocCXsmgKiJjbz7tCvQ8YX63qfEMv5sJm5KZZHOU7hqC7UDJ7swk/U5QGjlx+XV80eagrr+M7124o2UjRtzgNTcyqbUbe1wt4i9etaAcjZ6QLtfew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FrW6+kZvavq3eVbI8WZSxNk+FgL1Iwor1jxPEyg67UM=;
 b=IV1lNICAaF+AY2/l7LkrodanOx+3PflzO6MWBJ8HkMxFcr5JqQGxI3/rwYYVM386vJxH1Daqk2TpNsAFnGtMFd+JRn3QfOeUS0mP3qqxHUMa5eersFboUYaNpWyfWoqaHPlLz/p6pGF+QBiMhNUyqFlWz2YOSdlvOu/a2xS/i4Y=
Received: from CH2PR02CA0020.namprd02.prod.outlook.com (2603:10b6:610:4e::30)
 by BN6PR02MB2563.namprd02.prod.outlook.com (2603:10b6:404:55::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24; Thu, 7 Nov
 2019 09:45:10 +0000
Received: from CY1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by CH2PR02CA0020.outlook.office365.com
 (2603:10b6:610:4e::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.24 via Frontend
 Transport; Thu, 7 Nov 2019 09:45:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT006.mail.protection.outlook.com (10.152.74.104) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:45:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLl-0002ki-Ks; Thu, 07 Nov 2019 01:45:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLg-0000KC-HD; Thu, 07 Nov 2019 01:45:04 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA79ishZ012815; 
 Thu, 7 Nov 2019 01:44:54 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLV-00005Y-Rz; Thu, 07 Nov 2019 01:44:54 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 harini.katakam@xilinx.com, jan.kiszka@siemens.com,
 ulf.hansson@linaro.org, xuwei5@hisilicon.com, mripard@kernel.org,
 heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: xilinx: Add the power nodes for zynqmp
Date: Thu,  7 Nov 2019 01:44:16 -0800
Message-Id: <1573119856-13548-4-git-send-email-rajan.vaja@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(6666004)(70586007)(106002)(426003)(107886003)(446003)(14444005)(11346002)(7416002)(36386004)(478600001)(26005)(4326008)(36756003)(2616005)(486006)(44832011)(316002)(476003)(186003)(7696005)(51416003)(16586007)(76176011)(336012)(126002)(48376002)(356004)(70206006)(50466002)(5660300002)(47776003)(8936002)(2906002)(50226002)(305945005)(81166006)(9786002)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2563; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 182bed89-a5af-46f2-ce1b-08d763672e2c
X-MS-TrafficTypeDiagnostic: BN6PR02MB2563:
X-Microsoft-Antispam-PRVS: <BN6PR02MB25636B85ED53558681D4A633B7780@BN6PR02MB2563.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w9lO6e88TLXxji/4NPoP27LtZI/vOqX/zZkmrohbw+paqRx4GF7jjV4r27/67lnh9ThDiDdsa//vTQnO9kwQ3klWwUfmATF8qjm0On7T7OxtGbCT1/2aa/ySsZ+0QaRVGH4wkzUtsqMR3lguiS0LM8k5++QUqFUxHUclrv//Nqtjj2L4c0AXR2xMqyBdF68CjvF9vvCfTztzjkRkGMlo3u0CqS5BZbfZtNn0sUNjqCbHoYj4bcGUfa0Z7+katqUlTa/uELWfMxI/WjW1nsdAnAgMJzhdiTKgEXCKic6YcIgx2hz/T6NNFPUntO4jFLJpZ2bIXQPbe8pkJVg6TzcjN87Y/cPqF3xG03mvtczKgn7/UM5/MeSd2dbmaE5DChg9/PYF00rVKhWu8ggg5yTn6DzQsYAij4IS4jcy5uMVzRy7JCMa1JShWe5XHAcSRNz4
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:45:10.1372 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 182bed89-a5af-46f2-ce1b-08d763672e2c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014514_635786_B3700123 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.51 listed in list.dnswl.org]
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

Add power domain nodes for zynqmp.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 48 ++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 59a547b..f915bc0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -12,6 +12,8 @@
  * the License, or (at your option) any later version.
  */
 
+#include <dt-bindings/power/xlnx-zynqmp-power.h>
+
 / {
 	compatible = "xlnx,zynqmp";
 	#address-cells = <2>;
@@ -127,7 +129,14 @@
 	firmware {
 		zynqmp_firmware: zynqmp-firmware {
 			compatible = "xlnx,zynqmp-firmware";
+			#power-domain-cells = <0x1>;
 			method = "smc";
+			zynqmp_power: zynqmp-power {
+				compatible = "xlnx,zynqmp-power";
+				interrupt-parent = <&gic>;
+				interrupts = <0 35 4>;
+			};
+
 			zynqmp_clk: clock-controller {
 				u-boot,dm-pre-reloc;
 				#clock-cells = <1>;
@@ -180,6 +189,7 @@
 			interrupt-parent = <&gic>;
 			tx-fifo-depth = <0x40>;
 			rx-fifo-depth = <0x40>;
+			power-domains = <&zynqmp_firmware PD_CAN_0>;
 		};
 
 		can1: can@ff070000 {
@@ -191,6 +201,7 @@
 			interrupt-parent = <&gic>;
 			tx-fifo-depth = <0x40>;
 			rx-fifo-depth = <0x40>;
+			power-domains = <&zynqmp_firmware PD_CAN_1>;
 		};
 
 		cci: cci@fd6e0000 {
@@ -221,6 +232,7 @@
 			interrupts = <0 124 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan2: dma@fd510000 {
@@ -231,6 +243,7 @@
 			interrupts = <0 125 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan3: dma@fd520000 {
@@ -241,6 +254,7 @@
 			interrupts = <0 126 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan4: dma@fd530000 {
@@ -251,6 +265,7 @@
 			interrupts = <0 127 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan5: dma@fd540000 {
@@ -261,6 +276,7 @@
 			interrupts = <0 128 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan6: dma@fd550000 {
@@ -271,6 +287,7 @@
 			interrupts = <0 129 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan7: dma@fd560000 {
@@ -281,6 +298,7 @@
 			interrupts = <0 130 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		fpd_dma_chan8: dma@fd570000 {
@@ -291,6 +309,7 @@
 			interrupts = <0 131 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <128>;
+			power-domains = <&zynqmp_firmware PD_GDMA>;
 		};
 
 		/* LPDDMA default allows only secured access. inorder to enable
@@ -305,6 +324,7 @@
 			interrupts = <0 77 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan2: dma@ffa90000 {
@@ -315,6 +335,7 @@
 			interrupts = <0 78 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan3: dma@ffaa0000 {
@@ -325,6 +346,7 @@
 			interrupts = <0 79 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan4: dma@ffab0000 {
@@ -335,6 +357,7 @@
 			interrupts = <0 80 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan5: dma@ffac0000 {
@@ -345,6 +368,7 @@
 			interrupts = <0 81 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan6: dma@ffad0000 {
@@ -355,6 +379,7 @@
 			interrupts = <0 82 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan7: dma@ffae0000 {
@@ -365,6 +390,7 @@
 			interrupts = <0 83 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		lpd_dma_chan8: dma@ffaf0000 {
@@ -375,6 +401,7 @@
 			interrupts = <0 84 4>;
 			clock-names = "clk_main", "clk_apb";
 			xlnx,bus-width = <64>;
+			power-domains = <&zynqmp_firmware PD_ADMA>;
 		};
 
 		mc: memory-controller@fd070000 {
@@ -393,6 +420,7 @@
 			clock-names = "pclk", "hclk", "tx_clk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_ETH_0>;
 		};
 
 		gem1: ethernet@ff0c0000 {
@@ -404,6 +432,7 @@
 			clock-names = "pclk", "hclk", "tx_clk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_ETH_1>;
 		};
 
 		gem2: ethernet@ff0d0000 {
@@ -415,6 +444,7 @@
 			clock-names = "pclk", "hclk", "tx_clk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_ETH_2>;
 		};
 
 		gem3: ethernet@ff0e0000 {
@@ -426,6 +456,7 @@
 			clock-names = "pclk", "hclk", "tx_clk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_ETH_3>;
 		};
 
 		gpio: gpio@ff0a0000 {
@@ -438,6 +469,7 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;
 			reg = <0x0 0xff0a0000 0x0 0x1000>;
+			power-domains = <&zynqmp_firmware PD_GPIO>;
 		};
 
 		i2c0: i2c@ff020000 {
@@ -448,6 +480,7 @@
 			reg = <0x0 0xff020000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_I2C_0>;
 		};
 
 		i2c1: i2c@ff030000 {
@@ -458,6 +491,7 @@
 			reg = <0x0 0xff030000 0x0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_I2C_1>;
 		};
 
 		pcie: pcie@fd0e0000 {
@@ -489,6 +523,7 @@
 					<0x0 0x0 0x0 0x2 &pcie_intc 0x2>,
 					<0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
 					<0x0 0x0 0x0 0x4 &pcie_intc 0x4>;
+			power-domains = <&zynqmp_firmware PD_PCIE>;
 			pcie_intc: legacy-interrupt-controller {
 				interrupt-controller;
 				#address-cells = <0>;
@@ -512,6 +547,7 @@
 			reg = <0x0 0xfd0c0000 0x0 0x2000>;
 			interrupt-parent = <&gic>;
 			interrupts = <0 133 4>;
+			power-domains = <&zynqmp_firmware PD_SATA>;
 		};
 
 		sdhci0: mmc@ff160000 {
@@ -521,6 +557,7 @@
 			interrupts = <0 48 4>;
 			reg = <0x0 0xff160000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			power-domains = <&zynqmp_firmware PD_SD_0>;
 		};
 
 		sdhci1: mmc@ff170000 {
@@ -530,6 +567,7 @@
 			interrupts = <0 49 4>;
 			reg = <0x0 0xff170000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			power-domains = <&zynqmp_firmware PD_SD_1>;
 		};
 
 		smmu: smmu@fd800000 {
@@ -554,6 +592,7 @@
 			clock-names = "ref_clk", "pclk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_SPI_0>;
 		};
 
 		spi1: spi@ff050000 {
@@ -565,6 +604,7 @@
 			clock-names = "ref_clk", "pclk";
 			#address-cells = <1>;
 			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_SPI_1>;
 		};
 
 		ttc0: timer@ff110000 {
@@ -574,6 +614,7 @@
 			interrupts = <0 36 4>, <0 37 4>, <0 38 4>;
 			reg = <0x0 0xff110000 0x0 0x1000>;
 			timer-width = <32>;
+			power-domains = <&zynqmp_firmware PD_TTC_0>;
 		};
 
 		ttc1: timer@ff120000 {
@@ -583,6 +624,7 @@
 			interrupts = <0 39 4>, <0 40 4>, <0 41 4>;
 			reg = <0x0 0xff120000 0x0 0x1000>;
 			timer-width = <32>;
+			power-domains = <&zynqmp_firmware PD_TTC_1>;
 		};
 
 		ttc2: timer@ff130000 {
@@ -592,6 +634,7 @@
 			interrupts = <0 42 4>, <0 43 4>, <0 44 4>;
 			reg = <0x0 0xff130000 0x0 0x1000>;
 			timer-width = <32>;
+			power-domains = <&zynqmp_firmware PD_TTC_2>;
 		};
 
 		ttc3: timer@ff140000 {
@@ -601,6 +644,7 @@
 			interrupts = <0 45 4>, <0 46 4>, <0 47 4>;
 			reg = <0x0 0xff140000 0x0 0x1000>;
 			timer-width = <32>;
+			power-domains = <&zynqmp_firmware PD_TTC_3>;
 		};
 
 		uart0: serial@ff000000 {
@@ -610,6 +654,7 @@
 			interrupts = <0 21 4>;
 			reg = <0x0 0xff000000 0x0 0x1000>;
 			clock-names = "uart_clk", "pclk";
+			power-domains = <&zynqmp_firmware PD_UART_0>;
 		};
 
 		uart1: serial@ff010000 {
@@ -619,6 +664,7 @@
 			interrupts = <0 22 4>;
 			reg = <0x0 0xff010000 0x0 0x1000>;
 			clock-names = "uart_clk", "pclk";
+			power-domains = <&zynqmp_firmware PD_UART_1>;
 		};
 
 		usb0: usb@fe200000 {
@@ -628,6 +674,7 @@
 			interrupts = <0 65 4>;
 			reg = <0x0 0xfe200000 0x0 0x40000>;
 			clock-names = "clk_xin", "clk_ahb";
+			power-domains = <&zynqmp_firmware PD_USB_0>;
 		};
 
 		usb1: usb@fe300000 {
@@ -637,6 +684,7 @@
 			interrupts = <0 70 4>;
 			reg = <0x0 0xfe300000 0x0 0x40000>;
 			clock-names = "clk_xin", "clk_ahb";
+			power-domains = <&zynqmp_firmware PD_USB_1>;
 		};
 
 		watchdog0: watchdog@fd4d0000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
