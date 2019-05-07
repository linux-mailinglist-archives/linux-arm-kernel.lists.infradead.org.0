Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0459D160A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMmFa8Y2NvxayteaEentVQt0RQPh6OSlYoxzOJe1tCQ=; b=eWAyJQM3ddvP/l
	Dgqf4R9nGnEv94hWbRqV+gW07msmXshWOufwzvRZtGfQmLgeTBe7ShMUAX1DOZdYgwh5cQ4gKNY3j
	pfRtZhZQGj0meEi5m85UMNNaDnKOVnMmfTi9iqmR+vurvAl4MVk14Cs8CiFVbjZeIJDf/IzgA/bb3
	bqhXffomvEKItAAK1mqijNgeSzmWW4uxQjpaVTvwH5OYuOly0zw454waqYuSe+3/nuyqmGZjx/cuw
	gHdgqy0xxKHRXEeeVlg4B9/JxfLVQhBqoPI3rTQOF9BNqO/Z0Zqo9wU5Y5xshEYXGIOpOWG+YkPYN
	0b+eix19cwHqqi6+RyLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwFe-0004N4-SQ; Tue, 07 May 2019 09:19:06 +0000
Received: from mail-eopbgr40067.outbound.protection.outlook.com ([40.107.4.67]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwE5-0000n1-0i
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n6sqrqxqwTiZ4tbyJIcnvRvAcZq7pQfaNREQf2oUNJU=;
 b=eyqNA4XX2nL0Jazcg8dm5nHU3TBxAmtyhwyRADC3l/SMjK9jpVgKPstRIWZjJJVztXmRz9pfGpmT8xpZjb5XUYFpAVw0MhN9AGQLfId63K/zvTYWI11QkoTTKNr+PbpW+uVq0zGHiC+TqHYrB4y1Ns4HpaqP38TKTYxZJg1wNgE=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5005.eurprd04.prod.outlook.com (20.177.49.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 09:16:50 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:16:50 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: [PATCH v3 12/14] ARM: dts: imx6ul: add dma support on ecspi
Thread-Topic: [PATCH v3 12/14] ARM: dts: imx6ul: add dma support on ecspi
Thread-Index: AQHVBLWaB0GttY0kNkmwqcwEn85IqQ==
Date: Tue, 7 May 2019 09:16:50 +0000
Message-ID: <1557249513-4903-13-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 632e6275-59c9-44d8-5709-08d6d2ccbcdc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5005; 
x-ms-traffictypediagnostic: VI1PR04MB5005:
x-microsoft-antispam-prvs: <VI1PR04MB5005FC23BA179C49D4B39E4689310@VI1PR04MB5005.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(39860400002)(396003)(199004)(189003)(386003)(6506007)(2501003)(36756003)(102836004)(6486002)(26005)(8676002)(4326008)(5660300002)(25786009)(68736007)(52116002)(76176011)(186003)(2201001)(6512007)(53936002)(3846002)(71200400001)(14444005)(66556008)(86362001)(66446008)(64756008)(476003)(66476007)(7416002)(305945005)(2906002)(11346002)(7736002)(66066001)(6116002)(99286004)(54906003)(256004)(14454004)(2616005)(73956011)(110136005)(6436002)(50226002)(8936002)(81156014)(81166006)(66946007)(316002)(71190400001)(486006)(478600001)(446003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5005;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 87vuaMkH4nnMeWbxtiefOoCgbLQLIZDDPNZFdFTgI/U2wWs4XGEm35bucZvgua/H34/97PRJfn8CGtwzYedN1W8qYtOnD39OaZnrsO9XbHuFpjJvtrtNFxJV0ecCGAGKzkm7D8xL+F7wn9tGLwyuGs4TaX1PIKB9ieJ1tTUrZdhqTV9axYXMoY0fvjea3YLCJX5FuFX3QbLh8EI76cZnllc7xxvZFJSk+vulTKH2wTD/XLVwzLziYvp2947KEs9hKIa/0FYQJehduCaeCc30WELtTiYsch0NTwelQMNsP+Vf5uGPLWPdo3J9WHpK4UE6uDSTJX9KgO+gxYXfP6f61MZZzmPfsn4POUDMMhKsoYNbIHjzy1f6SIBh0iDDedirnfEKRIiZl25v/E3yNhQJcm2Mc9BYD+bDOM9XDy106N8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 632e6275-59c9-44d8-5709-08d6d2ccbcdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:16:50.7655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021729_782223_4B16714F 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add dma support on ecspi.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index bbf010c..880b9ee 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -226,6 +226,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI1>,
 						 <&clks IMX6UL_CLK_ECSPI1>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -238,6 +240,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI2>,
 						 <&clks IMX6UL_CLK_ECSPI2>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 5 7 1>, <&sdma 6 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -250,6 +254,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI3>,
 						 <&clks IMX6UL_CLK_ECSPI3>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 7 7 1>, <&sdma 8 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
@@ -262,6 +268,8 @@
 					clocks = <&clks IMX6UL_CLK_ECSPI4>,
 						 <&clks IMX6UL_CLK_ECSPI4>;
 					clock-names = "ipg", "per";
+					dmas = <&sdma 9 7 1>, <&sdma 10 7 2>;
+					dma-names = "rx", "tx";
 					status = "disabled";
 				};
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
