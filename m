Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E3C3C813
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ldkshInfFwYw8ukUuNxORMb240Mv/S74nK5oaNcPcc=; b=W6EBHdAmjvIJSC
	KiKjMu+akwijRD0CK37gemNuN2PgSmsfs/gw6chBpzMQILMU05fFGr/s2hd5W5zuEiI5TL1wcIw0U
	CAJszxBUCvAE/0UG2hsN6E+QvQc3LDUHfZZ39YfSe1EUK1ge0ZTSQ8vs9iSncvUA5xM+rKa87Z6pe
	Io79/Qekv3vsp2vs3vell3IckBm2y0yPZctfV/tPISlq3YPE1v4bhkt+PW+/UDUDWqj7U43TVT0QB
	cRwK6oxt++a7CTq9CwawnFNVyJnCZC1pyhzRM2dTH6WjXpsb5nVJFVV8Nc9gnp6RPYSwSjJzHw/5y
	ET9nne6GcVCn0sFbp84A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadgx-00035s-IK; Tue, 11 Jun 2019 10:07:47 +0000
Received: from mail-eopbgr780077.outbound.protection.outlook.com
 ([40.107.78.77] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadgl-00035J-Gf
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZawdMzp8XdCQtc2qbhzmbLCvc/4EHpvHDS6IQHZqEVA=;
 b=sS3tX6tQyDlC9T751u9XXnlwO/t/77D/IMUTcPeYn50wmT/zpc83FCLx6PU58AIHqFM4LLDC+VB/5cNgckumRIznEH53EIUS2DK5WpeOmDX/XEFQXkpcewlQ/BzY9UletjWU4Feu5nLt/Ob7rcWaf/oYpQUJyjuLe8/d3qhV6lA=
Received: from MWHPR0201CA0018.namprd02.prod.outlook.com
 (2603:10b6:301:74::31) by BL0PR02MB4932.namprd02.prod.outlook.com
 (2603:10b6:208:53::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Tue, 11 Jun
 2019 10:07:32 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by MWHPR0201CA0018.outlook.office365.com
 (2603:10b6:301:74::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.14 via Frontend
 Transport; Tue, 11 Jun 2019 10:07:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1965.12
 via Frontend Transport; Tue, 11 Jun 2019 10:07:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadgg-0005Qf-Uc; Tue, 11 Jun 2019 03:07:30 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hadgb-0000TD-Qt; Tue, 11 Jun 2019 03:07:25 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hadgU-0000RI-2r; Tue, 11 Jun 2019 03:07:18 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 421C6121745; Tue, 11 Jun 2019 15:37:17 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 manish.narani@xilinx.com, chanho.min@lge.com, rrichter@cavium.com,
 leoyang.li@nxp.com, amit.kucheria@linaro.org
Subject: [PATCH] arm64: zynqmp: Add ZynqMP SDHCI compatible string
Date: Tue, 11 Jun 2019 15:37:15 +0530
Message-Id: <1560247635-29281-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(346002)(396003)(2980300002)(189003)(199004)(26005)(36386004)(51416003)(50466002)(47776003)(186003)(2906002)(72206003)(48376002)(478600001)(4326008)(966005)(14444005)(5660300002)(356004)(103686004)(336012)(8676002)(2616005)(50226002)(6306002)(44832011)(8936002)(63266004)(70206006)(70586007)(426003)(486006)(476003)(81156014)(126002)(81166006)(305945005)(6266002)(52956003)(36756003)(106002)(42186006)(16586007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4932; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95326752-72f8-442d-f54c-08d6ee549e1d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4932; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4932:
X-MS-Exchange-PUrlCount: 1
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BL0PR02MB4932F9B04CC4457FC53CD5C9C1ED0@BL0PR02MB4932.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 006546F32A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: i2NGJO1/uEDDchyyoqO8/trSl4RtuZ8ikQ0V3PxG3liqRG6EG/WKnHLM5nEqeNM2ihoYogPI+BiWnMrtjvPzG0QlwXTBct7hEeXPPBh/Vr3+CGrvyH7hWFmAtPrWXg1D+8yLU5sFomnaR9P2QiFCVBps8kTycl0U2W0sR83YDNZLxtVSn+/7OAlQyncVPZltg/SVbPpv7CSqp2cwf1vTK1vi4rgBfD9guXlOBMH9jf5EFhnSbQZ65mW3Q4Nxu/ohZw2RuIBGJfPpdIxrZBpTHNyPKVYW8Mkb0DpJpD1j0hqEMVmGdQcJJ5sfR3sDtxVcx1Jy7ssQ8oroqtlQkLsm27y8cC4Zt/NzLAMtxGLk5tLHuF8TtaxAioE47anlHyKAFNV+ex0VgQIyfKvnrU1wYuy3ofett5/qoXCcp93oJY8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2019 10:07:31.5229 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95326752-72f8-442d-f54c-08d6ee549e1d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030735_558628_3150B8F3 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.77 listed in list.dnswl.org]
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
https://lkml.org/lkml/2019/6/11/286
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa6734..6da5b82 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -493,21 +493,25 @@
 		};
 
 		sdhci0: mmc@ff160000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 48 4>;
 			reg = <0x0 0xff160000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			clock-output-names = "clk_sd0";
+			#clock-cells = <0>;
 		};
 
 		sdhci1: mmc@ff170000 {
-			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 49 4>;
 			reg = <0x0 0xff170000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			clock-output-names = "clk_sd1";
+			#clock-cells = <0>;
 		};
 
 		smmu: smmu@fd800000 {
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
