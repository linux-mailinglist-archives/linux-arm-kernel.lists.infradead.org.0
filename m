Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089191EF93C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49V3LNTOtvDoolBGbaQ+OQaJk/2AwduJS+Ktdt6fflY=; b=jgxAc9pdSQf2m2
	LtJGhYASSvCUcn3m4RS9lYmE4W8fsJc9BRlTFgxohJOtZ8Xo/DQt/xWULNiIDD5XAm4Hh7RAHqWGi
	ozyKyUMv3IQBXOQ5Da+3okTL2mAxHJUOZn/vndPNuNVP+r3xhyvfq8Jb+c1dNnLNjKXEtyKivQpN7
	TUo3OOG72fA+skOLyKPakRxj9QarUjU0nPX2XPdEAs+z7HUCltRD7gWpvcTyNSxzHriHIjkAyv43Y
	rzdrK6Uyl9+4MkZ8geZX1RaSY75lXKdZx5iY1Za8sw/qtfyS0edcCiL7TUmwR0RAYT6Aw7vDHf7RW
	nwNbaV5VZdZ/PHsVwEkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCTN-000491-FG; Fri, 05 Jun 2020 13:33:25 +0000
Received: from mail-eopbgr60052.outbound.protection.outlook.com ([40.107.6.52]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCSg-0003kF-O3
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:32:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMoyVfzSm2dLa2U53647FdmuyxZTrNsDuOqWksmY2bxqzcJNTM7y05eQlidbPR/15YP/cDrTSXG8RtdNyVfLRBAA2ggBiDX2EjKtEle+tAXMIg9Gv7+wj6dbpR48O974/iRP9sAVAGqUEo/p+KyG02Z888wIiKECVRfac8+C+ui2muhANVOuGk5TY2c+qSEROEbiBJz5DRybk5DopdkjsgLSLZyfS9mBZsr13TDZOfdRKv8pX8HXkB8N+tFbDGfQ1ANa8OEQuhiPEZJaAmAme2cGx7OOeEfHjjQ3EABON3vHgZtOJjZ1fYLB+Ptw/A8tqa0h5D9dAdN3pwcWnmINRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOqWqtZM2zX9NPZMSuFVaeNGC+excVGWbrK6F9TZvMo=;
 b=ZPoNF7ZTbmLs1hxyhTs4VpsBQSkb7BNTl8xuFtG0XUMJc7r4olTwlqqWJLBK/AJTEF4rit/ndVI/dDQJErlNK72/1v14+JIu9baqwYy1TGN4lk7iOp74XPmI1Rb9sSiV9edIfRfT/HPnSEIhKhTKM0/gXtj0ddIG+93rCcCJE6sjC8P5GKAbM7t/m71KAFu8Gc53M1l/KBMpidiOkchdis8Qu4Ry2jW7cR473UAb/MtyTRQ7Ow12LJs6l4Oh9Ta4ofkLuMD09cMV2v9QSRh7v6ufMKkSmkWpDcrTNbApy6EPPv0Cm40HfkdcGF4TtmFFeQuREjTackNRUVrERsjkmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOqWqtZM2zX9NPZMSuFVaeNGC+excVGWbrK6F9TZvMo=;
 b=rwjH3nJBLfFExZ/uIsZaiuZm+GvWPRcJv6D/NxZ7Y89f6gWpwyTnmjTdOj2YLzJ3wLoeJIs8Z2rjRWAShLshDbYt6+97YWD6L9B/Yl/1CEx0boO+Lp5NzhVpvifL217gXlriuugpeLjE3MvuO0bTMuSSIMRguKA5TJnCImGhCH4=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:32:36 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:32:36 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 02/14] Revert "ARM: dts: imx6: Use correct SDMA script for
 SPI cores"
Date: Sat,  6 Jun 2020 05:32:23 +0800
Message-Id: <1591392755-19136-3-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:32:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 62510a4b-bf0a-47d4-4e72-08d80954e8f0
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702DE8AE296CE277CFB1C0289860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t/gs0PuGa+++WrSjHgWSLqyXuq9OIVLZ2m5ztDMCAGsEUkCa0QUDXOr37adIUdIoU2WUHoaBUNylf1IJVm3OtZk45Bq3rBjzEAvvqBCVXl/KZJQ1y2VgDSHrYpakJezBm7mPtSgThpm2KlI/smYNF/Ub/U10hXLK8rxq7gAtSTZSwnQmj+pqT2I9r6XY4flQNuf6pLi3np5cjz5woWAjxRICsnf8M11VxHhJO4Mxsn06I+MIs3CmY3Bey5po6O9JygyMGpPrWIs+CJMdHfvmoKfVSKBjGdWr/obRVCowAKn7kd3yqBJk4bNv8/f5XN/SjgYNEaBHbgqYaJrWYW9Tetk82E5b8vGQMV4pQ/6FoKMx/fAsd3WZdLxbJJvoghYEhkXJbz8yfXHK6q7hEU0oBIeMkSdC6B26TqEFypOxIQR0xAg8GQXEtkLUVgwVdMEx34/KEu0TpefnVwosTlhXWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: qNE/12cVUWNVAJbKnPwaTDSPKsq629ik/R6ipjrVfkaJVTcJnx6I+8CV7h4xYyxQSIuXxCQteYcozIvbZsL+RJDnagoqbAb9H3hnpJkBwQJkoE9BEkNIs2z356PaibezfdcQoLQEmZqEIGvj6qZrh805Xlt+6QARrTgRnQhe41lNj3lJQF6OWMrNXLZ31KB7Rx48WXRGi+Pe4u5wq5NhAUquaujfaPXg8wyen9ldwNZ5qz23MGSHOtY5xBON+R6sxKtUq/68Afaj4ZWBikpK7bqEMDuezWgynqrr3WtAd8T84xQzMSRdNiuDxMIfPxkpGwWgOsAa2ysivKduKa1B4UDBkif8IuY3dRE0RW9wvdwewhOTyKEIMrFDP17v8whwVgEQIodFq3uZEH+Uekamd2rw4Knx1OMWmbg/TpB+WyoFaoUbhAnyibN8FHirSNUPIRDYyMOviQ2KHtC/4CsAuJkCo5JpQXgsBHL2uxADzMI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62510a4b-bf0a-47d4-4e72-08d80954e8f0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:32:36.5489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x82i9E6v03Z2zUYhJkft6wqOpyTveMVpC43rxMAt5BGUtrMWdUATNNcR3uJHhlbWOEGz6b0eioEK0Nkaduhy0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063242_823084_F0A59EDD 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.52 listed in wl.mailspike.net]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two ways for SDMA accessing SPBA devices: one is SDMA->AIPS
->SPBA(masterA port), another is SDMA->SPBA(masterC port). Please refer
to the 'Figure 58-1. i.MX 6Dual/6Quad SPBA connectivity' of i.mx6DQ
Reference Manual. SDMA provide the corresponding app_2_mcu/mcu_2_app and
shp_2_mcu/mcu_2_shp script for such two options. So both AIPS and SPBA
scripts should keep the same behaviour, the issue only caught in AIPS
script sounds not solide.
The issue is more likely as the ecspi errata
ERR009165(http://www.nxp.com/docs/en/errata/IMX6DQCE.pdf):
eCSPI: TXFIFO empty flag glitch can cause the current FIFO transfer to
           be sent twice
So revert commit 'dd4b487b32a3' firstly.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 98da446..4a50331 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -337,7 +337,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI1>,
 						 <&clks IMX6QDL_CLK_ECSPI1>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 3 8 1>, <&sdma 4 8 2>;
+					dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -351,7 +351,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI2>,
 						 <&clks IMX6QDL_CLK_ECSPI2>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 5 8 1>, <&sdma 6 8 2>;
+					dmas = <&sdma 5 7 1>, <&sdma 6 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -365,7 +365,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI3>,
 						 <&clks IMX6QDL_CLK_ECSPI3>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 7 8 1>, <&sdma 8 8 2>;
+					dmas = <&sdma 7 7 1>, <&sdma 8 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -379,7 +379,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI4>,
 						 <&clks IMX6QDL_CLK_ECSPI4>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 9 8 1>, <&sdma 10 8 2>;
+					dmas = <&sdma 9 7 1>, <&sdma 10 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
