Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DC516F4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0tMdPrghLi+ev86BHqwS1gr+fFiZoHsNrLZgylNu+U=; b=uVn8cjHcSBowDH
	WtaoeCybUjefZ3r+3GsQNXly7X4QPp8OPrxDpu/bcPw/h4mML5MgDY++QwSXrOR7wg6nwXbuwk0X/
	7YHF2Qant0hDXZZ+YDRx+Jou877vVLYHOTJHOLFoPw6nNtHHUI3zvXolpTArYMOmsqQbX9kg6xBSl
	mNbux0hxoQxAeqxU3a5/zGdqWwYurJ+zQuJkVtvAcSxWvTExE1+BnKQ2hSzLLmhIaGaDEtSpRUiSG
	ezAmwlfdtYWj7h4RXBk1pUrQGR5nf1srzf2gHn6l73Cktqws26y5PY+mEMK7XpxYt2x0WGArmV9Dl
	kXbFnVmDStCDrgJsof9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCl4-0002CZ-94; Wed, 08 May 2019 02:56:38 +0000
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCkj-0001qg-W6
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b9gvqt0XJdPSzj9E3jFStJCOm6RS90M2eRVKkjipMqw=;
 b=iqLNf58TBz/OE4diaLkd/IQ842minFhcOyX7NkCTEip4+dUS/wSvA1Qi0T0tG1BCloYZADB9pXbGFWdwanc2wWdxPvuQAsNLvAyRgjkiGcBQPGYe30ZQmX0jJlYKlySQO/G4usCU5i4PW0VIQ3AE83EZm1uGLCpwJHcQEheWXnQ=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5153.eurprd04.prod.outlook.com (20.177.40.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Wed, 8 May 2019 02:56:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 02:56:13 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V2 3/4] defconfig: arm64: enable i.MX8 SCU octop driver
Thread-Topic: [PATCH V2 3/4] defconfig: arm64: enable i.MX8 SCU octop driver
Thread-Index: AQHVBUmYMzQ7RIdxX0y7f2q2q1an2Q==
Date: Wed, 8 May 2019 02:56:12 +0000
Message-ID: <20190508030927.16668-3-peng.fan@nxp.com>
References: <20190508030927.16668-1-peng.fan@nxp.com>
In-Reply-To: <20190508030927.16668-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0028.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1121948-363f-4ca1-9717-08d6d360bae1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5153; 
x-ms-traffictypediagnostic: AM0PR04MB5153:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB5153EA00CA8CE43950E399D288320@AM0PR04MB5153.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(26005)(1076003)(68736007)(66446008)(4744005)(14454004)(2501003)(66946007)(186003)(52116002)(305945005)(102836004)(7736002)(316002)(66556008)(64756008)(66476007)(53936002)(73956011)(25786009)(7416002)(50226002)(8936002)(5660300002)(4326008)(71190400001)(71200400001)(6512007)(478600001)(54906003)(110136005)(6116002)(76176011)(3846002)(2906002)(36756003)(81156014)(81166006)(8676002)(86362001)(2201001)(66066001)(6436002)(6486002)(446003)(11346002)(2616005)(256004)(6506007)(486006)(44832011)(386003)(99286004)(476003)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5153;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9waepFXsJHw5ZdqDNy2P/wlUr/ry4thFKBHc+fhoGi8HZo3b6LUxj/1TwRJAbAvK+9b1N6URCI7sLLPmdVvAhLhCeFNmanfgK4CSxYMTwBMPT1oHZDWIdcZ01BxN36Y1OkhfD6tCYG4xeo2ZG7+nMwHkU7QJJMwWQw/6WqNK1/VOqtRMjwWDgQt7ywtaJ14eX0j1gCF5v6cIchTQcRPIovgbIzsjzOv7HabFjx40npDMGkD434pFdvW9Nfgq1rIejta/W8wSshJIOnFPSVSHqbqYgSkM7C/9F3VyV5BM9wZOJDw/RGl80Y2yaCXMy+Mt1txlZZl5lCMKwcjX3I4cJ1AR9wxnG0Va1J6eZc36E69IcIbOWAdG/iJ5bvvm78aV3w0gvMPQLn4OGzfF3JuOKtug0Ji4Ng8rCRsMcZrVGsg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1121948-363f-4ca1-9717-08d6d360bae1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 02:56:13.0258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_195618_464368_40517207 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.51 listed in list.dnswl.org]
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
 Peng Fan <peng.fan@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawn.guo@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Build in CONFIG_NVMEM_IMX_OCOTP_SCU.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Shawn Guo <shawn.guo@linaro.org>
Cc: Andy Gross <andy.gross@linaro.org>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Olof Johansson <olof@lixom.net>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Leonard Crestez <leonard.crestez@nxp.com>
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 rename patch title, add review tag

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index eb31c20e9914..9d8a512fc3d5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -748,6 +748,7 @@ CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
 CONFIG_QCOM_L3_PMU=y
 CONFIG_NVMEM_IMX_OCOTP=y
+CONFIG_NVMEM_IMX_OCOTP_SCU=y
 CONFIG_QCOM_QFPROM=y
 CONFIG_ROCKCHIP_EFUSE=y
 CONFIG_UNIPHIER_EFUSE=y
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
