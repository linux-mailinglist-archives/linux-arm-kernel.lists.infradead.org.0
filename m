Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CD2164441
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB9ZPqIR5g8WiIYN1mx2++1xqYWgz0IedLdSYR4Viu0=; b=Xw09lGEdRMKn/h
	rOBRRus/WYSUXKcdgCJrMydXlpHwDApoVjZkJGhSuvH5dHOS8AJkPXNponwD2x0AY1YFlBlalog5C
	BYQLxAw5kqLNbrEAI/68tnohu8ADog9B/6b6rySH+O1k4D//MHsuyvqvRFIwI4nuz/fs7kIDyh0Ls
	0YUsC5hh0QsUNHaa7pt/VA1dq7bxFWrU5x705He73f41Xt+scJ8f35cQb23VL6MvjWx4Jscet8NZ2
	LsiNKK45yf24oK6uZoeQboprdfmOwwUngg1AqVhpk0jIr0RKnrr3cD6JD6ZuBdXqQIOBFPoKbLcSj
	k7lW/i9ZqAfJnq7/RdVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OU0-0003A8-7J; Wed, 19 Feb 2020 12:29:40 +0000
Received: from mail-bn7nam10on2085.outbound.protection.outlook.com
 ([40.107.92.85] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OTf-00034O-LS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:29:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OAACbgnkJw7QxCWpc9hlq+t0rvEaeH5K1chPLMOljng9prD9WQgYlGnSG1/FT8lUB7UwZa9c447k+6NyYsZoOU0MBbUa5IdxGYm0mdJan2LrUE3y15ZRAAQB39hYjPOx+Jo0jfXFeCy+yQt9x5X6ALCpT5PTlA38tKt3YlBDGrTSOHbHBnhH3qM2v6FMJxdulkRAuxQZohRpAUCnbpznJsp7xrkUUKn4xxTCOtt5yxRA1GsTAV4q0lDNG1dccGYjGKJVMKmdzRlZL8eBc6gOPNKh1tv+T5KWoDI+UUcGCopuLXOE87YvUw0l7cC/xoMHvljZJHiYXEfte4DFgB310g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5iT5czNjmdxK/eOshTn6bH/JruqwN47BJdQ77kgMoM=;
 b=TU4XC9PveW2kyP2KgePLYsLat7BUQyo+eu2/8/YPW2OpJulQa8ZO8AdkmQ5EaGqBfjd/JyS4fJ8qNaEF//d7LUVChe5Vq232/0q6llDki4ziP5mWl83k5Z3oKo9gVl2NEWSgn4Y2NJMObWfDEHCqGXrpJWSx1IIp1NGQPAlw8A9lSc2v1eeZBrKymX4bdaQOwVV047AY7E+/kJ2iqFERMn++igBnIY8E+wNgrhkljPXvCFdhrAOTGF83bWytSpPndVUsWNrSp6i1LfEovr8HQYOKmRYB5V3s1/0jzIyP4yJXbL1BUcUo39Q/i431QYicFGihTL3/Hsh8DZz++hRLhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E5iT5czNjmdxK/eOshTn6bH/JruqwN47BJdQ77kgMoM=;
 b=Ca0p3Gmf+/tYy0vmRiEBBCKJtzGjDUgI7UpNXhTWNgARJ/ehpvzIJ/mbxEwhOWdKXFCeSzmy4hpB2BvzIEQIQq9dEEk9DbLIPaObcbUdSAw3IQR+kYTvL+f9KxDSUBYLiKGOvThJRuguQbwN2L59H0dBfD6kuBWK9bUsZc84afs=
Received: from SN4PR0201CA0055.namprd02.prod.outlook.com
 (2603:10b6:803:20::17) by DM6PR02MB6794.namprd02.prod.outlook.com
 (2603:10b6:5:214::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22; Wed, 19 Feb
 2020 12:29:17 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by SN4PR0201CA0055.outlook.office365.com
 (2603:10b6:803:20::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.31 via Frontend
 Transport; Wed, 19 Feb 2020 12:29:16 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Wed, 19 Feb 2020 12:29:16 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1j4OTc-0006cO-3X; Wed, 19 Feb 2020 04:29:16 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1j4OTX-0006DV-0D; Wed, 19 Feb 2020 04:29:11 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01JCT5rg016838; 
 Wed, 19 Feb 2020 04:29:05 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1j4OTR-0006Cc-Ev; Wed, 19 Feb 2020 04:29:05 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 496601211EB; Wed, 19 Feb 2020 17:58:38 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, adrian.hunter@intel.com
Subject: [PATCH 1/2] dt-bindings: mmc: arasan: Document 'xlnx,
 versal-8.9a' controller
Date: Wed, 19 Feb 2020 17:58:32 +0530
Message-Id: <1582115313-115667-2-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
References: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(6266002)(186003)(4326008)(44832011)(26005)(2616005)(70206006)(70586007)(107886003)(356004)(6666004)(36756003)(8936002)(336012)(478600001)(2906002)(81166006)(5660300002)(81156014)(8676002)(426003)(42186006)(316002)(142933001)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6794; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94a7dd8f-5662-47c3-204f-08d7b537561e
X-MS-TrafficTypeDiagnostic: DM6PR02MB6794:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6794DD77A82DF154B0EDCCA9C1100@DM6PR02MB6794.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0318501FAE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jjZ3V6hw248YPEja0/F7H+cNIQMeh+rZZK/ouXn82UvqNT7nO1zULEJJX565/nLB0fIhbklz2Z1dSJderb4i92HUXDXcUSUfHjAj5GU1tghICCjYkXwjPx0kqNwT7vF5yKDYLe8magJfVYRfaBxM88aJYm0LjpMHPx4h9HrPPnz9w//LwnaUsCZgO0bOQ81XY1LCAtoWOV+5CldTGZBKQkSsELi1ZRtRNZ4N2LPcCVO8Y2AFeEoySBJXYJcmC+vRa1bds+wzvxF009QRL/78BvArw15AMDhNj2HZ4ccVdpFmyNnNKVDrKYeqFhG6rowiZp9Ee6JPt4dJLQrj7J0h9cJ7rBbibCegiAYJDcnySuOZErlUtbVbA8USd7qWfax6/OvcseBMb/GxB6xCb4lNLuv7v3/O83jzDUgeKBv/8u656N/g9O7xSq8rqCAuZpCfzJ2BWep/HkCXJL4/z/tVU3GCq+GF/evVM3+/Lun4HkTAovE2SkpZAVzTWwIKyganx/AC68y7vMcjB+YKDt/opA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 12:29:16.7116 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94a7dd8f-5662-47c3-204f-08d7b537561e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_042919_735404_27AC862C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for 'xlnx,versal-8.9a' SDHCI controller followed by
example.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 428685eb2ded..630fe707f5c4 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -18,6 +18,9 @@ Required Properties:
     - "xlnx,zynqmp-8.9a": ZynqMP SDHCI 8.9a PHY
       For this device it is strongly suggested to include clock-output-names and
       #clock-cells.
+    - "xlnx,versal-8.9a": Versal SDHCI 8.9a PHY
+      For this device it is strongly suggested to include clock-output-names and
+      #clock-cells.
     - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
 	Note: This binding has been deprecated and moved to [5].
     - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
@@ -104,6 +107,18 @@ Example:
 		clk-phase-sd-hs = <63>, <72>;
 	};
 
+	sdhci: mmc@f1040000 {
+		compatible = "xlnx,versal-8.9a", "arasan,sdhci-8.9a";
+		interrupt-parent = <&gic>;
+		interrupts = <0 126 4>;
+		reg = <0x0 0xf1040000 0x0 0x10000>;
+		clocks = <&clk200>, <&clk200>;
+		clock-names = "clk_xin", "clk_ahb";
+		clock-output-names = "clk_out_sd0", "clk_in_sd0";
+		#clock-cells = <1>;
+		clk-phase-sd-hs = <132>, <60>;
+	};
+
 	emmc: sdhci@ec700000 {
 		compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
 		reg = <0xec700000 0x300>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
