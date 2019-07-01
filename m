Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AA15B449
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MQuJ9lsKcEo80Q/3kg2W88qFr2+yTvZvV6zvOVFvb50=; b=bTLRxJL2Ufzuwf
	U7rD1+Pj3hOrrVk4AUJR6+PdhhwOsWR8x+JkTVgXqogPZXu37vLKaFIkAcBIpRFz34ORULQj0qMkO
	pnyz/cXPTVlpPsgtLux/U4GmRsdGr4YPoWAk8+nGqjBusvYsbmN+4T6HVmmRwMCNlp6wPOFNppk2c
	QuwYTt8+JkuxSYX+IBLXvfz6WHuxdFq6hkgU3xPaZffLn9mUe3ahlW5bNgGz8yJPBM/y4Oemtq6+f
	ATVa85XpBIp6DMV8uUx3iHM+l2R51r3/pTa+SueaopbEudrnb6EdQwIT3yDpeVJ1R8uFmVPYXcmmA
	kxrgVNae3NDbK3hP95Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhp1r-0004kk-Dy; Mon, 01 Jul 2019 05:39:03 +0000
Received: from mail-eopbgr780073.outbound.protection.outlook.com
 ([40.107.78.73] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhp0l-0004Tq-8k
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 05:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F8KIoRpl+4FW2unzwthd45gQGD7fobv7LrzhR+W+2mY=;
 b=xGSJD16Tvmts+TdHal0SgIU8D9+iuOgeBi6V6+v08P6bA+oDfWSjKUzBjTbgpecpon9ITfeBwP8EUwjOVjPBSWxLdr3UAyRGGm2QJ7kD/ZET1UGVZVMFZMIdFjKe5wL/g2AdQ+8ID3keXJcEphTvggKoFLz+8nKtir81GBT7kz0=
Received: from SN4PR0201CA0032.namprd02.prod.outlook.com
 (2603:10b6:803:2e::18) by BY5PR02MB6324.namprd02.prod.outlook.com
 (2603:10b6:a03:1f6::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Mon, 1 Jul
 2019 05:37:53 +0000
Received: from BL2NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by SN4PR0201CA0032.outlook.office365.com
 (2603:10b6:803:2e::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.18 via Frontend
 Transport; Mon, 1 Jul 2019 05:37:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT029.mail.protection.outlook.com (10.152.77.100) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:37:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:53301
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhp0h-0006Z9-KF; Sun, 30 Jun 2019 22:37:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhp0c-0006Vc-Gw; Sun, 30 Jun 2019 22:37:46 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615bZW5024757; 
 Sun, 30 Jun 2019 22:37:35 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhp0R-0006UM-47; Sun, 30 Jun 2019 22:37:35 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 4CAFA121726; Mon,  1 Jul 2019 11:07:34 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: robh+dt@kernel.org, michal.simek@xilinx.com, mark.rutland@arm.com,
 manish.narani@xilinx.com, sudeep.holla@arm.com, rrichter@cavium.com,
 gregory.clement@bootlin.com, amit.kucheria@linaro.org
Subject: [PATCH v2] arm64: zynqmp: Add ZynqMP SDHCI compatible string
Date: Mon,  1 Jul 2019 11:07:32 +0530
Message-Id: <1561959452-22915-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(2980300002)(199004)(189003)(16586007)(42186006)(106002)(966005)(478600001)(316002)(44832011)(126002)(476003)(4326008)(486006)(70586007)(70206006)(36386004)(63266004)(50466002)(50226002)(72206003)(5660300002)(47776003)(103686004)(36756003)(305945005)(51416003)(81156014)(81166006)(14444005)(8676002)(6266002)(336012)(426003)(356004)(2616005)(186003)(26005)(6306002)(8936002)(2906002)(52956003)(48376002)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6324; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ae3bc95-876f-43af-cec3-08d6fde642c3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BY5PR02MB6324; 
X-MS-TrafficTypeDiagnostic: BY5PR02MB6324:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <BY5PR02MB63247EB84535C3B55C75E9D6C1F90@BY5PR02MB6324.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ScAECnxM3Ok2YwLv5rr4uodfUPwLQdw5yT177HRRrmQqmmziArSwp8M1512Mpmy7cLTCYYxStyta8SGCjfYAEK4gxcRoNoDkoxOtmn6PQ/3fMA8ZpdhGRE1IXZU/QZ9NQByA1/bD9HhbC4Y6L6OhmKTWOjnl2aNVngjyCz6G5vj+3Y6v72hESXWTBP2BRHqZjZfavQUrKRGOX2hjgi/+lRvqf1lBOrhdHAgQBbvchfqTDAVges9h3CqcfhUi9joD6YIsog/zSPO5ZtZNOR2cGASJzEKFceAr2K8LFddohg5IKvTVYrVGD/PObI2Srth0S/8Rzgw2ruxagMW6ICzYYw4b1TRz1AJ/ZDjS7PDsQKJwPbpj1aM8Gn1uUnOHBa/2xQKzDxJGSQoIappLMmmz8rki2sJ5HtuoKYrbFDlXuvQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:37:52.2216 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ae3bc95-876f-43af-cec3-08d6fde642c3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6324
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223755_339506_36E38554 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.73 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new compatible string for ZynqMP SD Host Controller for its use
in the Arasan SDHCI driver for some of the ZynqMP specific operations.
Add required properties for the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
This patch depends on the below series of patches:
https://lkml.org/lkml/2019/7/1/25

Changes in v2:
	- Added clock-names for SD card clocks for getting clocks in the driver
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi |  4 ++--
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi     | 14 ++++++++++----
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
index 306ad21..24c04a1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
@@ -177,11 +177,11 @@
 };
 
 &sdhci0 {
-	clocks = <&clk200 &clk200>;
+	clocks = <&clk200>, <&clk200>, <&sdhci0 0>, <&sdhci0 1>;
 };
 
 &sdhci1 {
-	clocks = <&clk200 &clk200>;
+	clocks = <&clk200>, <&clk200>, <&sdhci1 0>, <&sdhci1 1>;
 };
 
 &spi0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa6734..4c21346 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -493,21 +493,27 @@
 		};
 
 		sdhci0: mmc@ff160000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 48 4>;
 			reg = <0x0 0xff160000 0x0 0x1000>;
-			clock-names = "clk_xin", "clk_ahb";
+			clock-names = "clk_xin", "clk_ahb",
+				      "clk_sdcard", "clk_sample";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd0", "clk_in_sd0";
 		};
 
 		sdhci1: mmc@ff170000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 49 4>;
 			reg = <0x0 0xff170000 0x0 0x1000>;
-			clock-names = "clk_xin", "clk_ahb";
+			clock-names = "clk_xin", "clk_ahb",
+				      "clk_sdcard", "clk_sample";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd1", "clk_in_sd1";
 		};
 
 		smmu: smmu@fd800000 {
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
