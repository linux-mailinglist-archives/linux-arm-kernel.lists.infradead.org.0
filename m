Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB11E1EA019
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXCacfpbaNr/kB5SoBCeNDD8Gbmh/QFHQntdlGFPZ5E=; b=tJwKA4cZ5/1w72
	2N1uhQz6/2ryyhC6T2gFVUhKuhUcrCIL4EDhe4NSdROBQSCPIGiN4QV2AYfwwarY3mjQlJadLYJKN
	VNFMGjh00szpyJgWGcyfsd5rZ3l9Zkxa5KK6qglVu2I0T0rBhCGJADDDGLjY0N64gq923Xx19T+SJ
	pp6U/IoFnRS5xmNmEPvdfKHbpdSfPHheZJ93JMUOiCPRL+q1lgxdy3iiWS2aEF+kP01imWhWeIucG
	A20iZyWAoq1xiQIt/Mg9S6x3x+nLBbUQSmelGA5KSHixLMIDSRxLPUV8P2q3krDhhSU4mfZRN4b2H
	rY0g9YeQIlJVN4gYhCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffqt-0002qS-MU; Mon, 01 Jun 2020 08:31:23 +0000
Received: from mail-am6eur05on2063.outbound.protection.outlook.com
 ([40.107.22.63] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffqD-0002LJ-Ig
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:30:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FK+P12Pe8Y3HnRfHDg9lxnICp9CbTi0x8DJ3uBXNUvjKUGD0VeyHK7a7qEuTNqwd1UrZCGc6snOIrI3gCF08G2sVOBddwSzCAMpKnNQmVCAx7v8TW32y18WD3ERtKaHO3wGztzHscFKsvuKmlBX2o2Cbs+xViN1FZZu4D7Qx+aRf8dkjxe5i21SxQs0cbzfHSwe2eL2sx9ExEnI+ECRIrdYe4lXMJKqYJgANLoe25OUMMiiBxj0HiKmDfBGCkEraEyT5ORmyQmu23fVemZdUm+TGnf807YwGC71RAKZBeKdi+WvLU1d9m2yLhzffIckd//oEQ9MOpAG/PWGAFFnNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GcVbTkrgwBMHcfnOEgsExtCGBZN/oosDiy5lfofdAs=;
 b=DjAy0p84MWG844iBM6TTpdTBi6hKZZ14XNjiWefJph44yqfRt73wxvI++Pk4XdwmbLDow0AzadT98bLWZQDPlCqw+x7diJuraFrxZXOzUwPcfMjPGnXkI+0O4JGamvw0E2nIk/tKpTsoSDqWGWuxZzxpztrI71rzeqv+gT8CG/6LW+2DGXIC/ucFKSc09CJG2sq5+6OuKeV37tk9R7DiTE+Te8jtcvMHb45HHGehZJuJ7mQo/BLT+Ph4HCLJECDB1IR0g67C1ugyokruTZIsU0JcIJlFMeA2EBMvT4z0zCY62gY6hbDaNpUp6tzEZRnOe61Jk0iqifaN1HkC2uPFBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GcVbTkrgwBMHcfnOEgsExtCGBZN/oosDiy5lfofdAs=;
 b=HKpNHMTphjPeS9Q8F8Kkuh4eDLO7fOOHc6Phre+Llcc7MuPBynrnfrBeWRK9VGIJmd9rv/oxX14INP7BIzwPBgOBijCypZgNgCZZdMc/DaoFR8Q1SQfaYqTTAcavlJgwqUaR2nIYkvW5uGthMs6WX+gLjQtC8b4DghEpgYR4PoA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2728.eurprd04.prod.outlook.com (2603:10a6:4:97::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Mon, 1 Jun
 2020 08:30:39 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 08:30:39 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V3 2/3] arm64: dts: imx8m: add mu node
Date: Mon,  1 Jun 2020 16:20:01 +0800
Message-Id: <1590999602-29482-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:3:18::32) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0044.apcprd02.prod.outlook.com (2603:1096:3:18::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.27 via Frontend Transport; Mon, 1 Jun 2020 08:30:34 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: efc5d84b-27f0-4b54-2400-08d806061094
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2728:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2728AF8D3174117DEC4EA708888A0@DB6PR0402MB2728.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4yvLIhji4pCn8R3wlK+XyzX9a1vXJvbJMF43k7VrcwqYGX28fsJpVfHk41XFsJp87U15vrVG1hbpnEDRYFAyqmmqRsKSKCwgR3vR0uerDSUUDiV3ZG3bANGVWfJisOvAMCvioduv9KRqeIk4IbYbWeTAzzSBp3jTFBTdhVXkTgzpySpi9XESJ9v/RbO+4hEKBc1w/JNoyrOBTrevWtkAJRTcC+7CAUT8o8xRH/T6TgbGcZKK9/YH/SMHs17DrvNEczHV7bJsZzkw19b05ZuvhQCVgprOITWS0R0dv9oX+Borjk7n4MNqm9U2JJWlsalVli+mymr2T/KsTIyfUXnDWGxSbplcxh1fNQ2995/985rZao5CkhyX09AwXVfCTtSRhLieYcz5L+SLVLUKESelUuRQgO8fxFC/1AYhDjj0hag=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(316002)(36756003)(6486002)(6666004)(478600001)(86362001)(8676002)(4326008)(2906002)(83380400001)(69590400007)(66556008)(26005)(2616005)(6512007)(66476007)(8936002)(956004)(16526019)(5660300002)(66946007)(52116002)(9686003)(7416002)(6506007)(186003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: XFfSHmkiIXeqcFdAttrY5+fyLPO2O2/yVipgYaNWeRhg3QJe3FVTZQeLHyV7ZfJTiO6J6h5qTOW2/2sawRevG0dZSKvO2faPpGnPR7ufJ/2H64rMd0hTpbh7TLX7VT6RTk3o1RWrcyJoLkLlNXY+zSAGbjlZzS1q9hhjdClA66dPCXF72pmTg8RrJaN8O1E2cnR821kQteVtwCoRRb5mqCqKHOeFvQ5Ja2HY7CzhmzNPtkmp0ni5NT47/rxyTPvVT+Q8uHD1zmJ9Fwub8qcDib28k4Y7aEroSHe12utqeI9ofQhFCkb9g/N4oECGN5RQk8gdpga/EpbBgEz5Kr9lYXP4SkO8/qEAAxfnTC2U06ia7SYkjPmL7exK44/72CucYvPiTJiXX1xZBGkRpsWIhGCR2+pfM9V1dxsh5A60JMKDw1MRBvYWt0w5qWQMIjidahploqMSIzIqUQBq2iMYQRNXqYrK3BnRU8tszJd6rLg+TMGHvP9HDXibFIYUGYX9
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efc5d84b-27f0-4b54-2400-08d806061094
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 08:30:39.2678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kuwbp9ZDzT3yto5YS5zkoBqypxCViKOf7VGKJqmFXC+Jj/2mZHEzWpiv0h2YrZzwyL3KIjNg2NVg6WP3Ni53bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_013041_627917_D31306B7 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.63 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.63 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add mu node to let A53 could communicate with M Core.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 4 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index aaf6e71101a1..d9e787ea246f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -775,6 +775,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9a4b65a267d4..3dca1fb34ea3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -675,6 +675,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mn-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 45e2c0a4e889..1bc14bb44d90 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -621,6 +621,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			i2c5: i2c@30ad0000 {
 				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 978f8122c0d2..3e762919d61f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -959,6 +959,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mq-usdhc",
 				             "fsl,imx7d-usdhc";
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
