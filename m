Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB19260E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UdpfYqrvhmV/DF7PJcAXYJhMwuzAOH8yDzzaVE0ZSME=; b=GLVRTPklNnmxhE
	Mp9jo33C+mLjUo6hdoTcNa8QjPbDxDK9As1MWMhbeg/SlAxLUUJTb6GVCOuURlGJ2/nGwa4A9nFEk
	Bw0qWXqbX1ttAMi3U8PgqqWmqPJNDJwWsJ/NsiVneVL9AgaEnlKQ+u8B5NXrNu+5XywbdSmOwZfKI
	pvRCRFHs/ybSWaDFz/kvENzexSGUD6T5BQ9Y0JMXCK6Rx+RxqT1w3aVCSw4OqG5W+jndJiId08fjd
	sFAmYrcloVfjwpnohznyqF2DzTJUK9yNnWc1PhfDuLCQFQOva5/sk9jawD1zCzlKrBYX1DWULinfD
	HGT0jvCsRSe1GWGGHEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTO2L-000378-7X; Wed, 22 May 2019 09:59:53 +0000
Received: from mail-ve1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::626]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTO2C-00035d-M6
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDyskuE1hfrVjxPzPDO3h59MjCYr/+DW7fNrhovBzYY=;
 b=r8VzIPYmATUNiTqGa7xA1UawM3hW9IKBgg3nOQJ0F5BFxBYlfDFZfhh1nOdaUh2uRqxW1Zhjx0yR6vwGw3YTKDaLaSFnwGrOIQqiIqIOYwSCa4UGDPIfE+jZ3/ZfgHHs4vmTDnAz5kqofqqdg7JkmP3xnfWYeveKF63dUtN4aZo=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3103.eurprd04.prod.outlook.com (10.170.229.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 09:59:39 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5062:df97:a70b:93f8%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 09:59:39 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "dan.j.williams@intel.com"
 <dan.j.williams@intel.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "plyatov@gmail.com" <plyatov@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>
Subject: [PATCH v4 00/14] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Topic: [PATCH v4 00/14] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Index: AQHVEIUR54BxkzTNOk2fBr52LKhyNQ==
Date: Wed, 22 May 2019 09:59:39 +0000
Message-ID: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0045.apcprd04.prod.outlook.com
 (2603:1096:202:14::13) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87ebcce8-5d67-4a02-6927-08d6de9c33f8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3103; 
x-ms-traffictypediagnostic: VI1PR04MB3103:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR04MB3103F029DE5EAE4CC102C56A89000@VI1PR04MB3103.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(68736007)(81166006)(2201001)(2501003)(52116002)(71200400001)(14454004)(186003)(256004)(14444005)(26005)(53936002)(7736002)(25786009)(81156014)(305945005)(966005)(8936002)(4326008)(86362001)(8676002)(50226002)(71190400001)(486006)(6512007)(6306002)(5660300002)(6436002)(66946007)(73956011)(498600001)(66446008)(66066001)(66476007)(64756008)(66556008)(3846002)(6116002)(99286004)(386003)(6506007)(2906002)(54906003)(36756003)(110136005)(7416002)(2616005)(6486002)(102836004)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3103;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jnsnaHzcad38YiP83FfDlBCYBJ0GMZPivmHg4wOR57yoTdXl2R3JmK81S9ktZE1NnM9yFYXqoEpB82tanGIzEfsFKclYNaRXVyUIUWbhFMB3dM0tfk7yhiLgLudUiR0PT1Orxj+0cMk3hg/Fbfjxz8QuW6zGySAl7/KWjYyIofhToKtL3evJCZgVlfiQto1o/P/Fm5lgoazQZCOC9J4CMuSK9iZ3MRAHcPfiMHx5GOC3YXEatdntT4n44m/c2su7YiZG3e3qlyun+VQllxPcNi+O4gxayDkZAapD587786dMJFRbuckFQVlfLrZV5HiG17H13drTfkF4teCkqfqnDQwcjCTzwqjzPqx9w5lS83XK+PPlpKdYoucN8lxWhw8PHhGIM7W4ctr02WiAEdnL1PZeiw/lSkfn2qif1wiunoQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ebcce8-5d67-4a02-6927-08d6de9c33f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:59:39.2933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025944_725775_558C63C8 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:626 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

  There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
transfer to be send twice in DMA mode. Please get more information from:
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf. The workaround is adding
new sdma ram script which works in XCH  mode as PIO inside sdma instead
of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue should be
exist on all legacy i.mx6/7 soc family before i.mx6ul.
NXP fix this design issue from i.mx6ul, so newer chips including i.mx6ul/
6ull/6sll do not need this workaroud anymore. All other i.mx6/7/8 chips
still need this workaroud. This patch set add new 'fsl,imx6ul-ecspi'
for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need errata
or not.
  The first two reverted patches should be the same issue, though, it
seems 'fixed' by changing to other shp script. Hope Sean or Sascha could
have the chance to test this patch set if could fix their issues.
  Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
on i.mx8mm because the event id is zero.

PS:
  Please get sdma firmware from below linux-firmware and copy it to your
local rootfs /lib/firmware/imx/sdma.
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/imx/sdma

v2:
  1. add commit log for reverted patches.
  2. add comment for 'ecspi_fixed' in sdma driver.
  3. add 'fsl,imx6sll-ecspi' compatible instead of 'fsl,imx6ul-ecspi'
     rather than remove.
v3:
  1. confirm with design team make sure ERR009165 fixed on i.mx6ul/i.mx6ull
  /i.mx6sll, not fixed on i.mx8m/8mm and other i.mx6/7 legacy chips.
  Correct dts related dts patch in v2.
  2. clean eratta information in binding doc and new 'tx_glitch_fixed' flag
  in spi-imx driver to state ERR009165 fixed or not.
  3. Enlarge burst size to fifo size for tx since tx_wml set to 0 in the
  errata workaroud, thus improve performance as possible.
v4:
  1. add Ack tag from Mark and Vinod
  2. remove checking 'event_id1' zero as 'event_id0'.

Robin Gong (14):
  Revert "ARM: dts: imx6q: Use correct SDMA script for SPI5 core"
  Revert "ARM: dts: imx6: Use correct SDMA script for SPI cores"
  Revert "dmaengine: imx-sdma: refine to load context only once"
  dmaengine: imx-sdma: remove dupilicated sdma_load_context
  dmaengine: imx-sdma: add mcu_2_ecspi script
  spi: imx: fix ERR009165
  spi: imx: remove ERR009165 workaround on i.mx6ul
  dt-bindings: spi: imx: add new i.mx6ul compatible name
  dmaengine: imx-sdma: remove ERR009165 on i.mx6ul
  dt-bindings: dma: imx-sdma: add i.mx6ul/6sx compatible name
  dmaengine: imx-sdma: fix ecspi1 rx dma not work on i.mx8mm
  ARM: dts: imx6ul: add dma support on ecspi
  ARM: dts: imx6sll: correct sdma compatible
  arm64: defconfig: Enable SDMA on i.mx8mq/8mm

 .../devicetree/bindings/dma/fsl-imx-sdma.txt       |  2 +
 .../devicetree/bindings/spi/fsl-imx-cspi.txt       |  1 +
 arch/arm/boot/dts/imx6q.dtsi                       |  2 +-
 arch/arm/boot/dts/imx6qdl.dtsi                     |  8 +--
 arch/arm/boot/dts/imx6sll.dtsi                     |  2 +-
 arch/arm/boot/dts/imx6ul.dtsi                      |  8 +++
 arch/arm64/configs/defconfig                       |  3 +
 drivers/dma/imx-sdma.c                             | 78 ++++++++++++++++------
 drivers/spi/spi-imx.c                              | 61 ++++++++++++++---
 include/linux/platform_data/dma-imx-sdma.h         |  1 +
 10 files changed, 132 insertions(+), 34 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
