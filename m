Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24211EBD90
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:07:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWWD1Qj6gsepmQpNw1ogLtcCoq6zpko2y1P59LsJWUo=; b=lQmonOXcXo8+jj
	gKn6OWxx4ZVTOwZx9R5BMJe+AKU/wZ3hj6vm2U02vwRliTm2/tRG+gfpXnSTHBaBxxBRZdFsOz3IC
	SICcitF8JmiMrDfe9qQvc6t47Vdq0WIg+WBowrFYKObODnwbY1hMV1xu5EQQrVTbmEDAUQUx+Wc4C
	PeeZOHdhzho0CbtuUv8NGm1Uzc4Ob4oz2JnAJ+M0tqJ9kZMQu9YeYe48XD72S9HSoWXd/i7HDjzUI
	kfD+qFHpkhJeaqHhOBPuU4qX6GA6vt1MVB60Nv/OtQtW57UkZ0UcA05iPlTSntrZDCleAQmyuCs3S
	fGpb/nOwtLLlnKTciytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ5p-0002hE-6z; Fri, 01 Nov 2019 06:07:29 +0000
Received: from mail-eopbgr720066.outbound.protection.outlook.com
 ([40.107.72.66] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4c-0001wQ-SW
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PuIm2PJ5eOBtK/48pzdxu+IkETmQ2VVd9NJbkJJ+VNzZoHsp2ZYd3Kz0GjPbGTtRnDeOMZ2PMIG0GhHYdASnOqtsuZrevxYQ8KLYDatyLFamVJDVNlXZBzejmBeRxiVz3gHzHepF8A0wDfTDOJX5+LQk2rHxg/CkusszOhz5jubKzakSCiHEBhOo4s5YTTnfrXZ8HRVTTJvuOK2J4g06ySkDqHM/k2sJR21cR1rckCAhrwzPPg/A+uG7Z0tkmp8ewndwYpEdLuIDilJmmgSxPcts7fF7QD6eOotYX3Wj7BD/iiYcQui4Swt9MaMWc3kuoHh/+eZRzfHN0zQ7SjkSJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxkGV6M9kRxWtnGv4KOURERUHVjiwzQj1EsmmBg3bRk=;
 b=dThYEN5uWfZrP7YuXl/0G37iCo85ypKoM4aPj36dRqnGsrL6hmUjpVTnTvBGMQZWm7f9rRZU7+DJw1app/8Xb7crjclK+d+02/dUWnZz5WqIIfpNz0v58VCEqVTlnZzJCGHN3FR1vvAO7Mlp7GDucZfU089/CJJCkhH6Hrb2fENi8IKzRLZH9tt+h8k0+D95QeypUboT7QVLVNUG2uTVKench90++oABlN8uC9OsZ2RdcKyYVg+HZWkchc/CXX36HQ/KDTYIrDLOaIQDgCDyTzKq2vUoiONjypZc0kp7mqbyrRmxj0HPDNq995HLXEFTccCTW6HOTH1SLIZQ/0L2uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxkGV6M9kRxWtnGv4KOURERUHVjiwzQj1EsmmBg3bRk=;
 b=dBs3EBH+BSCuejz8SJWsWvBQ/VSFsWRI1Zv/91fT2t7gZijzKidXg7qrANyc1Gpbie5Cxrmwyfy/k1FAyK7KE3nmF0kgJXwSP3rvfj/onkL2Yx7jvOpDmT48Ib1ikBz56lv2/VaxrvA5n0+MT7x+f72md9sFBAfax14JvNZZqA8=
Received: from BN7PR02CA0001.namprd02.prod.outlook.com (2603:10b6:408:20::14)
 by BY5PR02MB6019.namprd02.prod.outlook.com (2603:10b6:a03:1b0::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.18; Fri, 1 Nov
 2019 06:06:11 +0000
Received: from SN1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by BN7PR02CA0001.outlook.office365.com
 (2603:10b6:408:20::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.20 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT063.mail.protection.outlook.com (10.152.72.213) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Fri, 1 Nov 2019 06:06:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mN-2C; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4R-0007dN-UR; Thu, 31 Oct 2019 23:06:03 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165xts010455; 
 Thu, 31 Oct 2019 23:05:59 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4M-0007aN-Pn; Thu, 31 Oct 2019 23:05:59 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 0DC00121388; Fri,  1 Nov 2019 11:35:57 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 7/8] dt-bindings: mmc: arasan: Document 'xlnx,
 zynqmp-8.9a' controller
Date: Fri,  1 Nov 2019 11:35:52 +0530
Message-Id: <1572588353-110682-8-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(189003)(199004)(2906002)(51416003)(70586007)(36756003)(36386004)(70206006)(76176011)(26005)(186003)(356004)(44832011)(2616005)(106002)(305945005)(336012)(426003)(50226002)(8936002)(446003)(11346002)(5660300002)(6666004)(47776003)(478600001)(6266002)(103686004)(486006)(81166006)(4326008)(16586007)(476003)(48376002)(81156014)(107886003)(126002)(8676002)(42186006)(50466002)(316002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6019; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd5df4d9-2901-44bc-ddcb-08d75e91974c
X-MS-TrafficTypeDiagnostic: BY5PR02MB6019:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6019B4095451A781E86767BCC1620@BY5PR02MB6019.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xn+9IiKDvliIxDF/t7s/fO2AhvCnePY3nEmitoN1IGxF5WrWjgDC2McIbzq/es5MWVgyCYum1BQS5u6LtTCyLhFRPRay9tm/WzBLrrHyTHQJIRRmXo2KQtwqANC+8BEXGTqggCcYVFBTQqXG2jUlm/5ebrtHOMfGo+A09HGuNpCdiwlD6Wt8PdKppc5xH7bNIOEK999qvyfGnw1FKl070wkbsnXM486J2ng/n8789KmrBBsnEwCHCQIjzMnJWC1cnScZYGAdDYQxHug5f/1SNLSWtTwe6XLPBJYatYZUim30iLmnSgviCN2+7BIAhEoaW5ITrjS1Qz37p644nJgZeoZBxjE2BJVGlHDZHo34IMx7xF4BvtNQdODYFNNkMIFIxRjI46PCbUm94GwlclEnK4H3UbCkyr4muR/ncUW340Vrtce+vYaWRZklEySqG5/+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:09.6489 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bd5df4d9-2901-44bc-ddcb-08d75e91974c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230614_952666_74FBD743 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.66 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dd documentation for 'xlnx,zynqmp-8.9a' SDHCI controller and optional
properties followed by example.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index b51e40b2e0c5..6f28e9d612d9 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -15,6 +15,9 @@ Required Properties:
     - "arasan,sdhci-5.1": generic Arasan SDHCI 5.1 PHY
     - "rockchip,rk3399-sdhci-5.1", "arasan,sdhci-5.1": rk3399 eMMC PHY
       For this device it is strongly suggested to include arasan,soc-ctl-syscon.
+    - "xlnx,zynqmp-8.9a": ZynqMP SDHCI 8.9a PHY
+      For this device it is strongly suggested to include clock-output-names and
+      #clock-cells.
     - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
 	Note: This binding has been deprecated and moved to [5].
     - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
@@ -47,6 +50,10 @@ Optional Properties:
   - xlnx,int-clock-stable-broken: when present, the controller always reports
     that the internal clock is stable even when it is not.
 
+  - xlnx,mio-bank: When specified, this will indicate the MIO bank number in
+    which the command and data lines are configured. If not specified, driver
+    will assume this as 0.
+
 Example:
 	sdhci@e0100000 {
 		compatible = "arasan,sdhci-8.9a";
@@ -83,6 +90,18 @@ Example:
 		#clock-cells = <0>;
 	};
 
+	sdhci: mmc@ff160000 {
+		compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
+		interrupt-parent = <&gic>;
+		interrupts = <0 48 4>;
+		reg = <0x0 0xff160000 0x0 0x1000>;
+		clocks = <&clk200>, <&clk200>;
+		clock-names = "clk_xin", "clk_ahb";
+		clock-output-names = "clk_out_sd0", "clk_in_sd0";
+		#clock-cells = <1>;
+		arasan-clk-phase-sd-hs = <63>, <72>;
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
