Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEF4DA58F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BVMit2jIjZ8CZJUo/cIafTn44bMr7OQdfvK4WxwvtI=; b=UAo+JISkUAcdoq
	JnUB8kyZVu0dUZ7AvahkyTj34yagYclPNWrSmRgppVJis+r+rdTQ47B729N1yUFbw/dKAk/EY2wxc
	Cb6PNSGE75GyrOA1BlGHQT+vgc3drNPKbBcBl2MYSG0mI9DBGvVSOfSLD3oSFLEqcUQnsaVEADD1K
	XAHY+cEXOfTNj4UEtn71x145wW1VBKkd/K+PTNmzvzq0aYlknetZIa8lYzpAgJw+ZTiP/KXLZ/dkr
	3IUAA+mKW1cjd3g9b/5HbbIIFB8pf1L6W1QHGQxRvVWEJR42IZfH/ds4syhWIgrOC2MEk+F/z6nSv
	rBEIGHFPufkEBYqrJzVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzCz-0005fH-Kw; Thu, 17 Oct 2019 06:24:25 +0000
Received: from mail-eopbgr820079.outbound.protection.outlook.com
 ([40.107.82.79] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzAy-0004Hi-4g
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:22:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WgeDJIzP5D+fqFojj7PKzdk+CJz6mR0DgxH17sm65EE/mUQKOWq5iNnj9iu8MNTqGnY+ciyaS/BC9yMAtbOzk5G1b+3R63KtLBe8d4JSBkaJlCLuk80x4v36FnGeIPzfYMAKUYcTehk5H5HZ2B91tJi+dYLUGo8Hvb2oKVt985slz2BBrhSYAv5ogOx2r/ZVMASIqV0mH2n6w9hUQPAw1+EbAj+aPBPfCkkkvUz3YCbPOoI6fRAd/7zK0il+6HhwQHqY9zqlBLW1D3E8dg0/mUQG8qpbykXvzRwJaa199Yl34xnkNF0BqV7P5JJWJciKCsIF2pXW21O9yM22cos0jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CQasHPXaJ2sCQPAjdsHoAZR98dlhjH7T48MmF7bglA=;
 b=bWqC1RNNTAAmhv2IzaqSk1/4Dt0I/5nSCQsIwWoQMm+IA3qz/nzFQxKlm0Am686bEnSuE8dw6IZbLd5jGvnC49MYbSpAKs9djjvY28Nlk73Phh9PYXKyJWdTK52tKNz6/MATlONDQ9YyyNRUobolRoxG2WumFvG1/QgbWBmsqUl2VhZci3PijdFPGia3x6xDzLHOXJSK0kCvYc9CdaiSg+TnhDaCUIiAgaRqdYerZaQdwa4JsFLa87TwlVzToPFuKLR8/6awIzKSVw9xPnuXX6zqUYCXKdOFFrN2/z6iZD/JhBxpAMDI87kRoS1bNqIPpW76NnAOl7nbPYQh8rUFXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7CQasHPXaJ2sCQPAjdsHoAZR98dlhjH7T48MmF7bglA=;
 b=jD8MDQx6sKpha2Iz/CGSp1hk5SDD1LvleSykdaysudFYOSE483ZGsVtxZaZYzCnHEE29+ZuqlrF8RLUR5f5lnUPfHEAK5shkhB+/wD91qMliTjpFxW8QnmPOZwIKsNjufyqOqZpsmVRKmiqgfFqTzCBeoYy1AhVOc1yIMoSTDu4=
Received: from BL0PR02CA0106.namprd02.prod.outlook.com (2603:10b6:208:51::47)
 by MWHPR02MB3151.namprd02.prod.outlook.com (2603:10b6:301:6a::38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Thu, 17 Oct
 2019 06:22:15 +0000
Received: from BL2NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BL0PR02CA0106.outlook.office365.com
 (2603:10b6:208:51::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 06:22:14 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT052.mail.protection.outlook.com (10.152.77.0) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 06:22:14 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAr-0004bQ-Ua; Wed, 16 Oct 2019 23:22:13 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iKzAm-0003mX-RS; Wed, 16 Oct 2019 23:22:08 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iKzAe-0003fI-Mv; Wed, 16 Oct 2019 23:22:00 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id 5B88143A9B; Thu, 17 Oct 2019 11:52:00 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, mdf@kernel.org,
 manish.narani@xilinx.com
Subject: [PATCH v3 7/8] dt-bindings: mmc: arasan: Document 'xlnx,
 zynqmp-8.9a' controller
Date: Thu, 17 Oct 2019 11:51:49 +0530
Message-Id: <1571293310-92563-8-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(396003)(199004)(189003)(336012)(426003)(26005)(305945005)(2906002)(36386004)(186003)(47776003)(103686004)(81156014)(81166006)(8676002)(16586007)(50226002)(316002)(106002)(8936002)(42186006)(486006)(44832011)(2616005)(476003)(11346002)(446003)(126002)(50466002)(478600001)(36756003)(70586007)(70206006)(51416003)(107886003)(356004)(6666004)(48376002)(6266002)(76176011)(5660300002)(4326008)(921003)(142933001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB3151; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c746296-2466-4db8-7745-08d752ca5a36
X-MS-TrafficTypeDiagnostic: MWHPR02MB3151:
X-Microsoft-Antispam-PRVS: <MWHPR02MB3151EC1C7502D1810E473202C16D0@MWHPR02MB3151.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95aKU+mcAcJ9zXh0GZOUlVPOdFF3H1QOdHBxTy+aSgqBlO23JAzz4oXVk2j92cT9C2jfOWJ1MU9Jo83I2Lc+NHfMmwxRHsRsmZY4WLaMcsige8lYpAy8gWUgSJeK2BdQQffim7ByX4/vNzEd6FyozWzdqGQyxYqhJVZDIQGjAqZwJILiG4EOwfoVrEI4Mc7Wtwx04HEFHpvzFp5Qrmp/sMKqCtUoJcTR3SwCFwnot493Q685SwicfMMF2cXvpA9iYwLash3sFhGgHvKYza6oVCnJv+yl6/UEHviVL/elUiy5M5V2054qVFv/5bDya/ENYQMyxIKNn6awlVQVL20QnCC1lv463Vq+Cu7FyJnckSyHtm5xR9S33jMPLv/7qD3yuLmpHeEiqUUy6mzbnBJnm/d9bK8HHWvIhKYvvxXoTfE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 06:22:14.4853 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c746296-2466-4db8-7745-08d752ca5a36
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_232220_245734_8FAD7106 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.79 listed in list.dnswl.org]
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
index e0369dd7fb18..c3ee86b819f3 100644
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
@@ -62,6 +65,10 @@ Optional Properties:
   controller while switching to particular speed mode. If not specified, driver
   will configure the default value defined for particular mode in it.
 
+  - xlnx,mio-bank: When specified, this will indicate the MIO bank number in
+    which the command and data lines are configured. If not specified, driver
+    will assume this as 0.
+
 Example:
 	sdhci@e0100000 {
 		compatible = "arasan,sdhci-8.9a";
@@ -98,6 +105,18 @@ Example:
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
+		clk-phase-sd-hs = <63>, <72>;
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
