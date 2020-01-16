Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F94813D2FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BNGV6wGsd1yxTj6bhWvhOZRJ/wzkfv3ulua6HSJPFps=; b=FNAiTgRC5nFiDm
	MSqmzCXHo/q2h+ruUTjAXhig6o98yYV2D8Gg+rN5WK7wSL+BH0ngVaY2CXRyfKY0TO9gDMHiivdNH
	5YkuGwjy064QZDqhferlei/j6HsgosL9B74FM4YuTdFYzYQDSfVYK5gDUFj3obTJuQtDBZrpKla69
	K+UH00ZSIeJLvbwyRckEhUHtrlxBNu/f3MRUVDPh2tyFT1fkQyVFi62NpSpzQqK0cb9C1iI/eQief
	g1Xg5/DWXR4LERH6beobgBmmRXI1YxXNe4br0GLRtNvl6b12F6Mm9KQV07S4/5NDOHKU3KqNo4wJP
	Lz29G3Eu5p/qArb+aLXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwNY-0005YZ-4f; Thu, 16 Jan 2020 04:03:32 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwNQ-0005XB-1V
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:03:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWpBpv193S2NU5pQd33UuAfFRNRk2H+vNxXZyqifErQfjGzLtL1uDe0U68/cyONs7J8aAkmNMc+3yNvagoLBAmFJAdVQnrb6SabffV16xMSELw2tUzyjrirf4IcwvqOtUNBK0nyur192/0Elax+gnlbQ8M7iXSngJhv3RNjgac0u+/XZ3T0uCFc7mOZ1qyZw7VeNhGf+ifPFuR3qC3GyJF0CzM2O500/to1JdPzsIty6SSpiHkEscI+eip7zRbP1IcjFtLOj+KJm6957bCA8pD8p3V6zFFB3Yn92YZLr5fc/WbfwEk7fGii2GqTr+I6Zl+XHSa6lKQWgdSVt0f/IPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGZY0qzSjuctB8Z4j5H+7G/QHq1ladc1W8PMWWathM0=;
 b=E5hiPGHbtxV4+20zCegPePoFP4GK6RhtXZr4okt/4jejOIgYKFdmUyQnnRRCo3SBngoD2lGQlhdE7YAYVB+jmNpeQ7nWioXZjDUgOPpSvT1xkiy/m/QHzgv2CBchAxoWFupWlofumLdGQWAAqaQE9JgMUmEx5Ma2adwVEFAmtDItvDedlpHCCp0RRqftX3JmcBa8WMtuE5x6tQdf4zAxFv+z9L+4A0K+ZugYEX1HLlOKMkqhasPS8EPjIfWnR33bxYI2XthM6OgLSfY/MPnFl0KZF6i/bmj3N35lCuSsiankpYw7qlTh1NdbXRsYOkHQ9qB4sj34PkEpElD2IS8pRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGZY0qzSjuctB8Z4j5H+7G/QHq1ladc1W8PMWWathM0=;
 b=oYNbl/pJu/FrJp7gGWp2zvoxx9zJabdzPY24VAcuhs0G2rl51ZA7pNljsK4Dd/NRyeL7o8zaOZQCQ4fF0dlaV4O+diuaJ89KchgZ0ZNzBruTXDted63KFxF1PwxBAmeDYDMTRyGkNjHcB7CpoePYOqtFD3Q43OBLg8Nv6d7ZElE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 03:48:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 03:48:57 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0002.apcprd06.prod.outlook.com (2603:1096:202:2e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 03:48:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH 0/4] soc: imx: increase build coverage for imx8 soc driver
Thread-Topic: [PATCH 0/4] soc: imx: increase build coverage for imx8 soc driver
Thread-Index: AQHVzB/hVXSait8oKkG3c6qn/lfwPw==
Date: Thu, 16 Jan 2020 03:48:56 +0000
Message-ID: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:202:2e::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 92422ba1-da1f-49d9-4aef-08d79a37034c
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB461294B6AC7A944F067F698288360@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(2616005)(66946007)(2906002)(956004)(110136005)(8676002)(81156014)(81166006)(8936002)(44832011)(4326008)(66556008)(7416002)(66446008)(64756008)(66476007)(54906003)(5660300002)(86362001)(71200400001)(69590400006)(6506007)(316002)(36756003)(26005)(186003)(16526019)(52116002)(6486002)(6512007)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X5+Cn2P1jqna5u9UJUWrubediJZFjswd97PpEjS8sVFQqV0gvCVB1RKHWISRC3hIy9e1ncsa0fbg99+8+g0ndjHG8h2oHehPxCfcMsvlX2irxJp8w7Upbb6Tok8o8BeiDw1/nhQ5u0FNrXJb5KOw2NZWQBe/QAXx9+OE1L6qyYgtRKEj6tkGC4bp1O/QS1C4CYbI9yXqR3q1nKm0Y7cpDAHhsT/E9vYqaeYAboKnAmuhmOEUyQToNgT04WNjrCa0EXY+VhBQOXw0P6SLrSopxXu9PUzY4Hnx82dKOuYNHHlkNI9r7glLXsK/bsEfYb0N4UBd7E+a2eX5BHLN50b3EhkJIPTw5sJsjc8tGtXjmkAOMXYSFEA/4ihPE3LuvrGkz02YBeEmywI+jeZ1ME5Rc0Eml1HC+gBU0FljHALTcsOTvdaRt3GzkNjRPx7mCHVjpZKxvI4sz7/KaSGVM6z9OuU15lWjlXWLl6tSAxTKz2L3A8K+1N8ORE1gQSg6uHg/
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92422ba1-da1f-49d9-4aef-08d79a37034c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 03:48:56.9532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rpu0KSe4Sgy83ks1pGlkftg21MvFaVWaQty5Vafgks1Z2xhhoijVCTTZ85PBLmHtIaKjqsTK+qR/pBqx5anemw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_200324_084601_7C718660 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
Add SOC_IMX8M for build gate soc-imx8m.c
Increase build coverage for i.MX SoC driver

Peng Fan (4):
  soc: imx: Kconfig: add SOC_IMX8M entry
  arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
  soc: Makefile: increase build coverage for i.MX
  soc: imx: Use CONFIG_SOC_IMX8M as build gate

 arch/arm64/configs/defconfig                | 1 +
 drivers/soc/Makefile                        | 2 +-
 drivers/soc/imx/Kconfig                     | 8 ++++++++
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 5 files changed, 11 insertions(+), 2 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
