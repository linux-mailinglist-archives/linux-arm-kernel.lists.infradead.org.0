Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E5119B1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=psxS+6SdNn6bdYv5hDCHEad/cHurO7D3ba7woDfGwog=; b=WL1sjokqnPnr7A
	+y446A40uqWCnrwmAihtrODmN1wd8/V/nGhl+ITQ1sFD9AiUd1zTcXWiTwqHWdKeFLC08sRe+j5Iy
	av/mYwLDjYetwX3+jq0Ln/fmaga7RPnlLyTUqFpcZ3zBn5jL4ymLoovmz60A5LMv3/kxvCMgxH7S0
	U23nYwNOK6Q5nCP6+0LpfXzAW5OFyXVzuFPdqihTSBuGKAlW9RJR60N/K1fEjnr1fXvx/TYSBVVAO
	J7Rtfhn3jBAOZiKTWwi7CMTyLNgfQNg3wzYeZObVj8aXl7e3F3IjxlCnyrK/l5BcbKnd8UfNsPhMo
	O5aUsZe9W7xlkY46RIlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Xg-0003mh-OM; Fri, 10 May 2019 10:14:16 +0000
Received: from mail-ve1eur02on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::609]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2XZ-0003lL-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXZZvRgob1QWlWConVzgUn9IBqkwBT2in/JqBYa13OY=;
 b=FwHzAIWbhfR2aYeKMQ6pb28/WLiHfTTP4+VINOpUHhbpdxFK0nVMs1tk08MlmVlRkml+5SDxq9VAb+q8oNxMGL/deKnHRhjPI3jvkPGve7/YY+mqdlWxgDkDZ1FcMCWKqcDDp+WAHF0lkgIFRPm73+XZ/MV2UmDYBVm1kRwJok0=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB3007.eurprd04.prod.outlook.com (10.170.228.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 10 May 2019 10:14:03 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::d85b:d2:194c:2b94%4]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 10:14:03 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>
Subject: [PATCH v1 0/6] add edma2 for i.mx7ulp
Thread-Topic: [PATCH v1 0/6] add edma2 for i.mx7ulp
Thread-Index: AQHVBxkYfOJpUoG7C02l/BlvpbIORA==
Date: Fri, 10 May 2019 10:14:03 +0000
Message-ID: <1557512248-8440-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0062.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::26) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 234a5fff-bd76-4f8c-a171-08d6d5303a62
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3007; 
x-ms-traffictypediagnostic: VI1PR04MB3007:
x-microsoft-antispam-prvs: <VI1PR04MB30079A5982BFFAF38D2EE789890C0@VI1PR04MB3007.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(396003)(346002)(366004)(199004)(189003)(14454004)(2201001)(110136005)(54906003)(478600001)(2501003)(8936002)(8676002)(81166006)(81156014)(50226002)(316002)(86362001)(66066001)(25786009)(7416002)(53936002)(4326008)(36756003)(7736002)(71200400001)(2616005)(71190400001)(66946007)(14444005)(256004)(486006)(2906002)(186003)(26005)(102836004)(476003)(5660300002)(3846002)(6486002)(6116002)(52116002)(6506007)(386003)(68736007)(305945005)(66476007)(66556008)(64756008)(66446008)(73956011)(99286004)(6436002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3007;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M/X5Jioj0FC7wVI2mWILq7BOkgG3LrH5xXZibV/IoWZ+BJrrru0KAI8kU42dofn3D8POs1ow6j3z5MgFnuGsX7hZbkmXKn+T5pm38cSHAQVxTZwV6DaX4CzRrBC2FZUGpabT410eodHfqQY/pxVuGknyLu7Rg7t+mXCvZvbm/hg+V5yOeVptNp3I4V58DtWBCRHm7Hx7Bacb08dRr8rmzfu1xyQKr/LmEm40FWuEzN2qpDoVi62xFOjb+EAaGA9XVeTo8kfavKOa0amlYNrSR115V20QnDDTM5/pO/B4BR+all8Our+j3zUlSSFjO5I7C0sHxVviG0kjUE6pmwA386WBfqgG6E12l2K5adpsV1um4sqSdpnE3eSK0HFHmWYx+Az3WES7+oeSXvlPKjE5PaJS5kg2oWISLYHwX75y8a8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 234a5fff-bd76-4f8c-a171-08d6d5303a62
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 10:14:03.9186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031409_258660_F77702EC 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:609 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  This patch set add new version of edma for i.mx7ulp, the main changes
are as belows:
  1. only one dmamux.
  2. another clock dma_clk except dmamux clk.
  3. 16 independent interrupts instead of only one interrupt for
all channels.
  For the first change, need modify fsl-edma-common.c and mcf-edma,
so create the first two patches to prepare without any function
impact.
  For the third change, need request single irq for every channel with
the legacy handler. But actually 2 dma channels share one interrupt(16
channel interrupts, but 32 channels.),ch0/ch16,ch1/ch17... For now, just
simply request irq without IRQF_SHARED flag, since 16 channels are enough
on i.mx7ulp whose M4 domain own some peripherals.

Robin Gong (6):
  dmaengine: fsl-edma: add dmamux_nr for next version
  dmaengine: mcf-edma: update to 'dmamux_nr'
  dmaengine: fsl-edma-common: move dmamux register to another single
    function
  dmaengine: fsl-edma: add i.mx7ulp edma2 version support
  dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
  ARM: dts: imx7ulp: add edma device node

 Documentation/devicetree/bindings/dma/fsl-edma.txt | 44 ++++++++++--
 arch/arm/boot/dts/imx7ulp.dtsi                     | 28 ++++++++
 drivers/dma/fsl-edma-common.c                      | 34 +++++++--
 drivers/dma/fsl-edma-common.h                      |  4 ++
 drivers/dma/fsl-edma.c                             | 80 ++++++++++++++++++++--
 drivers/dma/mcf-edma.c                             |  1 +
 6 files changed, 176 insertions(+), 15 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
