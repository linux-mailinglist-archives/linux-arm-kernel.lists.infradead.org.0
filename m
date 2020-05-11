Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B411CD51F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVP3z79KXPrCwm1DUc+CEN/sMqY6Wrd3UHxwNOPPKZA=; b=AsQLdQDQy45rKC
	yiRhoEYySm9cSj+9hIVajJypiEHPoeszdZH9/zOET8+WzWi8zbgIbcaOxwLgnA8QoW0OY1TyxePXB
	3sr1OTr4+XeKTiKAxX0vmC8BS4egezSzjIvQP13eIGxFNbm7W1LHVDt/wfr5vqJR07wMsIDk1cONJ
	vUUHQ5A1eNAIF3Rk/BltGcFgs2fj0a4sO2APbLYBMx81gIgLUkkJMxqNGrph3owH0w0kRgOdvlZdB
	QD97o7KUk+Fmxv0BjHabFGH1PC/zSHqGlfpNKkCQqQLW1O2shMtKEbOeZginvsnRkb/j/oYqCGsme
	s1TznZARjhZCL84anIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4oI-0002xY-05; Mon, 11 May 2020 09:33:18 +0000
Received: from mail-eopbgr70059.outbound.protection.outlook.com ([40.107.7.59]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4nY-0002VD-Uf
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQFWFJQ+0Yl1WO86N0hOX7JUB1tTStbZgaBoXkUm4fuFIj2HV4tMfHrHl1qXJ9XawhXpOSvTv4/1k9u4uh/7qDe6r6s99I25BZmFWnFemry+DP75IS2TqS6CagYYKKFpxzjnolfu/vU7EpIUyc2r6XxGYTEeia4659LVe7rc9rphxWxmU/wgjf9vC636HTtCmsx+wQBcnThVVQJytY6Vi4Gd+85R3dSTKEX6KWzIYPW2oWyaebhTbmYJmkTWTAayRbLeFDT3j/NsxzSnq78u3o6spjli80dq2WdyvA0NKUMxIsGpNNfE9N9VrVRsV2L1QS1hvx7SkyeeiykP80mWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkWel5GTo4Ihj7UHKviP/TaeYL/ZKKWPea2xxel30eY=;
 b=IzpKUrvn0oXrUVGL9m1zY+sJgRdIPDL6a3E52K9HCYypfLZ0u7rDk1IC2z2PQ1t7BcEU+MNtn4eoZL8Pcy3YrKLU2Fpevvcqa3X+tpYSVfb71CMrArBVAeknPBQnXae39nl2OQhXgz1Ahko+UfoEDVuGb5mV4Jw6ZxQYkbmfUYR0v1tvKSVgBCa9lybT/hOACw1zymGI3IbWmRfyvjzW2rCR+ScXWl9JAVTkFG82U2TPypjYReHYWKtpgxdSEoQd55+rsMhtcI/FsEmP7M1jyYlIxRfRit69wjRWdlRSLvS89KlkMAiWlN2/p2wfcmwFEMoMZVFQ64Q1SsN6frOApA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkWel5GTo4Ihj7UHKviP/TaeYL/ZKKWPea2xxel30eY=;
 b=nMtT7NzKC9s8jjzyoT8wrOirCbJ+mzuyBHJG+UTpDtkRju+ieKDr//BGEhO6qMScWuI5twEufOmqNqAT1QTOCmS8ziY64DYp/NhgINCkofS2E4GqgKeAcHUCNdTsnF7kKc14jIKP2BCvH2tw8+dcq48/pTZsw1lpt443kN/6ZS4=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6448.eurprd04.prod.outlook.com (2603:10a6:803:11d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 09:32:29 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:29 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 02/13] Revert "ARM: dts: imx6: Use correct SDMA
 script for SPI cores"
Date: Tue, 12 May 2020 01:32:25 +0800
Message-Id: <1589218356-17475-3-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 91e532d8-f85e-442f-2a06-08d7f58e3980
X-MS-TrafficTypeDiagnostic: VE1PR04MB6448:|VE1PR04MB6448:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6448681E23A0190B7371649889A10@VE1PR04MB6448.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yD95ObaNgnt3ZZM8fMvu2jRyrslW1vSzDeE4+HPUCP4t+4IfSn99vfVTpemfVSBkvPPZCUXwdjVDufkRU82hVioSIyF1+i7ZZLDX0qXN+L/qyMNllj+aL9J/lfH0xAQ8bewRpI9w9MYQSES0EeKgoG3p3DeItaDhwWTnAAGgcUH7nHGJib+PlpLvJowDvSJEX4QWsY8F2DJlQ8lQlB+jm0QCC7PZshWjl1wH9ELTSbErpe12ZLnrzb/YaHCzirU7RI/gbzIKF+EKo3o/IL+Vaub0Gv9RePXVce8gKT+49IkwCwLh8Ij4IEAAOB2pQqi3iXyeEe8wNAOegzaJ1iMTHDRSO00TqoyRgTv3hKfBpB2PuHjoAcBEAhKu8c0E/e4PoY6s5MRVClod1K83n+4pX8JvZdeai2+xKES/SzyDnWdUScYuDv4/2lYRadKocEKn6PlwrmoWT/BbmlDRNcgeMxuGQoKsVgPFupQ2Tn4d+fZm+cINm6IZHL/LuWy2d7rMODblagKLwz1q+doGifzH4A7bXZlW9NMCma0IBgJFiINB/pw3LiAPo2KDF4j3sWHswBGs0Xx/hqtT72mTrl29nUVoMPuj603HxyZ5I/3zgRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(396003)(346002)(136003)(39860400002)(33430700001)(5660300002)(66476007)(7416002)(4326008)(66946007)(186003)(8936002)(66556008)(16526019)(478600001)(26005)(956004)(2616005)(52116002)(6506007)(36756003)(8676002)(6486002)(2906002)(6512007)(316002)(33440700001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 8ibW2itbyK7PTTj1oUMxL68Hlq8iR72uvojNZvAdHjONhChZooAYdycREtT5uESFw2k/Lf/aw99Nepat4Gqm3h3YcS0076/h97LM1IOlSieKutmNX3Rotqnsy3CDuDMgJnU1D2ILiIc8ZzlnJePaCL2Afjo6VZerFId3Q65i43p8IquVo5fd83lKNDyXHAZhiA8iNwwa/xOUc3c5PrDzkwHX0APZs2v5USlRXxLgv9rmYchokpIOKax171/u+94bGQuR12oA47SfPLHgX5pELILDlo085+Em+zankUFfbFXp4cQ5e6VGGP4SnTboJ006euoFudl8aIlYWb8Bg7eRpS7VydyfN/4BWjp5dCf3BwXm2hKSaV8maFDRWBHyd7ECt7Ft8nbIz/9OWCGIlc74d63egeIsJ61gCcJCj8Qx96DkL3Hx+6t1cuLLEGTMSGgMr/H1mcsHiEfaaGDyhPoLDfftaofua/f3ClJd8L4yUWw=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e532d8-f85e-442f-2a06-08d7f58e3980
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:29.7964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8NRG5es2sK+vko5yqQ3hPGcUA9uGua5oOBO8c3p4k4ksQInX6PveyYqKRmid8jQXrx0YfLTQYyj/6LBwZudhjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6448
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023233_009300_367CD87B 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.59 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
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
