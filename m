Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3711604A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74Jb1BkmYU0f+N9ryzWHJPj0l/TEYfS1Pe3sNOocUrM=; b=IUsVw9DOj0zT0f
	NcAOwv+ZEEEw9Y072BNWaehbudkC+MNy8d5ZQKWoFBRSpn4ZEru9Fp69uLHyb47IS4Hy1xUnhf9T6
	6+GlBqjeie3AgrUr3vv/zPhCxblpcf3S+MkEt3l4l5kDOXXfwdMls00p1sqVn/xPndg6g5C0ICmpx
	WeM+N63xrqTKiGFI1rxk+s41j6mAPcthcEQTZcQDGxzaYkIHJxy17mHwi/Rw0L+PMPKPEA+JO3QQp
	cBTTXu3Gjiynbh5fsZUez4uH6luYeoItA7i6nQLLgjwszAQFLs6aTHdmbViBXtq3jl9nI/g9ObEiP
	McQF5ktbCTh+lFjune/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwCU-0000CL-Be; Tue, 07 May 2019 09:15:50 +0000
Received: from mail-he1eur04on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::617]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwCL-00009y-Oo
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQai884lROnk2NZALqfyIkBTXCTaxANisRKzYvdUB6c=;
 b=FUzO3CLmQ6CEcDB3TgGdKlo47vjcqJ23hSBlJh6gA3jn3/yURyU1IcvEULUWTDsLx3N0QMyvgvEYvoPyGaIkKZc17ZBGXW+ZGPA3YLPZ30vTvquXVpNFBqDEF/IZ4/DcTUCmek3fA9rP+U7n207xy4+k9QFssZw6Yiklpga+syg=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3184.eurprd04.prod.outlook.com (10.170.229.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Tue, 7 May 2019 09:15:35 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:15:35 +0000
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
Subject: [PATCH v3 00/14] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Topic: [PATCH v3 00/14] add ecspi ERR009165 for i.mx6/7 soc family
Thread-Index: AQHVBLVtTlA9AoCGPEiNrQoWVi6lDw==
Date: Tue, 7 May 2019 09:15:35 +0000
Message-ID: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
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
x-ms-office365-filtering-correlation-id: 729d98a2-eaa1-44ee-0a14-08d6d2cc8fd5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3184; 
x-ms-traffictypediagnostic: VI1PR04MB3184:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR04MB31840FE945AFF8D3D5C7A7A289310@VI1PR04MB3184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(396003)(136003)(376002)(366004)(189003)(199004)(478600001)(2906002)(7416002)(68736007)(966005)(81156014)(8676002)(4326008)(6116002)(81166006)(86362001)(2201001)(2501003)(476003)(256004)(14444005)(2616005)(6512007)(6306002)(486006)(8936002)(3846002)(110136005)(6436002)(36756003)(5660300002)(66066001)(99286004)(54906003)(7736002)(66446008)(64756008)(66556008)(102836004)(66476007)(14454004)(25786009)(73956011)(71190400001)(71200400001)(66946007)(305945005)(386003)(6486002)(53936002)(50226002)(6506007)(186003)(52116002)(26005)(316002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3184;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oV+uDeEfV9XC5xOlactlipOsIwx1KuTNM31hdMh05QabQOnw8zUBKGtetR1FJpvAuWPATpXvcQcWjf4DpalyegDs4kCSEuwRp32Cv4k3OGEvl7R32lkPOENTO2F8qVguA8ggzeaVDUdzCex5L6Nv/G9Gc22HfgnPVr05+0YTnWE+IXLPVOI3vyX201UkiY8rlOL4obD62/cXCEthXGKQmenKXmgIweWSTm59caRF+iXy+HAnBj67ruHSeFMX/8ghy3KFy5EZBrToGwofHaE77EJrPrNf+z6armsgTRwosAwOQM+G+8+Ky8mIDOPrs12byAlhdXl5HjI0up/V2dU5sPymHNgVLiPql0R7ANeakwS3mi/r67tDYV0A7vxS35ydLDg5isPP9C62u/YQT/YxPkjO3wIV7Gf51s8gCNPhCnc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 729d98a2-eaa1-44ee-0a14-08d6d2cc8fd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:15:35.1041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021541_812978_555F6059 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:617 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
