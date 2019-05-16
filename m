Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A652092F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYEwgg5VPv/HB6lT2oOqKLm0B6K+Aug3gUzCKqm5AwA=; b=CHYfBhnUbjBZCO
	xoabGjOujTm17zgeEqEnOJzezoK27VCv2FUDpPab4NhbOv8Nnx6FZnNPC23AtcOGh416WbiVaEIje
	wVNTnpJ4VlP1KHbL9PRaeGM8kSrxk/HJy5RBMXV62Uys4j+t5tUkQBzTERRFGkjusWN4EqnQck8Ya
	Ad4X5D6ix/5sKERQri0K4xpzyB3+wSOn8XTRbJ0qBR4rm4eINDsKEmgtJ5/cuK9ZMqnTc/7PXmCnZ
	koX+VX7RdeUXfzhAm2EoTl7GEz288cYZyz4nduyfDyA8b07MfMz+CAkIJrVRRQdUjmPLS7pLy4D+R
	ieabPu0H9lAKsrRDuisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRH53-0001af-I1; Thu, 16 May 2019 14:09:57 +0000
Received: from mail-eopbgr130088.outbound.protection.outlook.com
 ([40.107.13.88] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRH4o-0001Qm-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DgmtSz15BdrN864+ySfKrVOrIcKY6X33CqBjdBSUPV8=;
 b=R6q8HfJ7aNfa+gqeoJKJ5XB4g8g4+ko5w/BTUwON1/mfLYxF2RgEZbGowLefW4TRmbIlVgdnh3hh9oRFNOPn2u7tzfi9XzY3niwFrVwIsgrxGcNOiidFgMVk2WcL1pvHlC70gnl5+e9LWjcuY9XvydEAY09G91Xi6055C6wcQlc=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6210.eurprd04.prod.outlook.com (20.179.33.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 14:09:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 14:09:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agross@kernel.org"
 <agross@kernel.org>, "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, 
 "olof@lixom.net" <olof@lixom.net>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org"
 <dinguyen@kernel.org>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>, "robh@kernel.org"
 <robh@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVC5bqk1P5MqRzRU2gqcSUyb18B6Ztk+uggAAPlSCAACR5gA==
Date: Thu, 16 May 2019 14:09:38 +0000
Message-ID: <AM0PR04MB4211A9BAD4094499C0BB2B40800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB42112F268CC39A2829836532800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <DB3PR0402MB391665F27EC3726BCCED5E03F50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391665F27EC3726BCCED5E03F50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [101.93.238.110]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44582b15-47ab-4253-9ee5-08d6da082214
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6210; 
x-ms-traffictypediagnostic: AM0PR04MB6210:
x-microsoft-antispam-prvs: <AM0PR04MB6210E0E4C03076F6BBC52454800A0@AM0PR04MB6210.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(346002)(396003)(366004)(54094003)(199004)(189003)(6246003)(71190400001)(71200400001)(53936002)(3846002)(316002)(6116002)(52536014)(99286004)(229853002)(5660300002)(55016002)(9686003)(4326008)(256004)(25786009)(6436002)(33656002)(486006)(102836004)(66066001)(66446008)(305945005)(66556008)(64756008)(476003)(73956011)(76116006)(14454004)(44832011)(2501003)(7696005)(11346002)(446003)(2906002)(6506007)(478600001)(7736002)(86362001)(186003)(81166006)(81156014)(110136005)(8676002)(7416002)(74316002)(76176011)(2201001)(66946007)(68736007)(8936002)(66476007)(26005)(21314003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6210;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FuAbtmHehbLoJ6Spwz1aCVC0P2sg7n3gjO1Yd7nMGVfZheE9tmz/pSjCQ/e2UD5qqhqHGkVHLsk93vBwaefYmZcqCBZf9mfJla2QfxJERLiPXrM5jVJ0zuUSI8vuvDTjmpUX62HKeJ203cd082nNLO1oUKjW3xBqbPllJjCYCd5mIRnBNK0Xg3zQnEYslvrOf91EBGcFgt19+eUuRdu5WFmNmcRx7PGATqbfF8jNs9oUWyLEaert94rgm2uJ09YcE0KfxqhP5cn7Zfj8Lk0tShFwBuJECqDqfAPDVKo+V2QaVjSBP7viLiyXEYwxB6wuZF+4W5NJlMalKUqtZUQ3ItomlVP8Xwwi/g/hOrEGUuDwa8cpaPLxhguAg2eiSaY2H63Lnt9KbJPOxHf4BG8ZtZKDm8v5wJiehLLQDekBh5g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44582b15-47ab-4253-9ee5-08d6da082214
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 14:09:38.4574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_070943_053190_0715D6CA 
X-CRM114-Status: GOOD (  28.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Thursday, May 16, 2019 8:01 PM
> > >
> > > Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
> > > driver dependency into Kconfig as CONFIG_IMX_SCU must be selected to
> > > support i.MX SCU SoC driver, also need to use platform driver model
> > > to make sure IMX_SCU driver is probed before i.MX SCU SoC driver.
> > >
> > > With this patch, SoC info can be read from sysfs:
> > >
> > > i.mx8qxp-mek# cat /sys/devices/soc0/family Freescale i.MX
> > >
> > > i.mx8qxp-mek# cat /sys/devices/soc0/soc_id i.MX8QXP
> > >
> > > i.mx8qxp-mek# cat /sys/devices/soc0/machine Freescale i.MX8QXP MEK
> > >
> > > i.mx8qxp-mek# cat /sys/devices/soc0/revision
> > > 1.1
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V2:
> > > 	- using device_initcall instead of module_init;
> > > 	- check of_match_node in init function and ONLY register platform
> > > driver when matched, this
> > > 	  is to avoid unnecessary probe for non SCU based i.MX8 SoCs.
> > > ---
> > >  drivers/soc/imx/Kconfig       |   9 +++
> > >  drivers/soc/imx/Makefile      |   1 +
> > >  drivers/soc/imx/soc-imx-scu.c | 173
> > > ++++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 183 insertions(+)
> > >  create mode 100644 drivers/soc/imx/soc-imx-scu.c
> > >
> > > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > > d80f899..cbc1a41 100644
> > > --- a/drivers/soc/imx/Kconfig
> > > +++ b/drivers/soc/imx/Kconfig
> > > @@ -7,4 +7,13 @@ config IMX_GPCV2_PM_DOMAINS
> > >  	select PM_GENERIC_DOMAINS
> > >  	default y if SOC_IMX7D
> > >
> > > +config IMX_SCU_SOC
> > > +	bool "i.MX System Controller Unit SoC info support"
> > > +	depends on IMX_SCU
> > > +	select SOC_BUS
> > > +	help
> > > +	  If you say yes here you get support for the NXP i.MX System
> > > +	  Controller Unit SoC info module, it will provide the SoC info
> > > +	  like SoC family, ID and revision etc.
> > > +
> > >  endmenu
> > > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> > > index d6b529e0..ddf343d 100644
> > > --- a/drivers/soc/imx/Makefile
> > > +++ b/drivers/soc/imx/Makefile
> > > @@ -1,3 +1,4 @@
> > >  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
> > >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> > >  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> > > +obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > b/drivers/soc/imx/soc-imx-scu.c new file mode 100644 index
> > > 0000000..243c418
> > > --- /dev/null
> > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > @@ -0,0 +1,173 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright 2019 NXP.
> > > + */
> > > +
> > > +#include <dt-bindings/firmware/imx/rsrc.h> #include
> > > +<linux/firmware/imx/sci.h> #include <linux/module.h> #include
> > > +<linux/slab.h> #include <linux/sys_soc.h> #include
> > > +<linux/platform_device.h> #include <linux/of.h>
> > > +
> > > +#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
> > > +
> > > +static struct imx_sc_ipc *soc_ipc_handle; static struct
> > > +platform_device *imx_scu_soc_pdev;
> > > +
> > > +struct imx_sc_msg_misc_get_soc_id {
> > > +	struct imx_sc_rpc_msg hdr;
> > > +	union {
> > > +		struct {
> > > +			u32 control;
> > > +			u16 resource;
> > > +		} send;
> > > +		struct {
> > > +			u32 id;
> > > +			u16 reserved;
> > > +		} resp;
> > > +	} data;
> > > +} __packed;
> > > +
> > > +struct imx_scu_soc_data {
> > > +	char *name;
> > > +	u32 (*soc_revision)(void);
> > > +};
> > > +
> > > +static u32 imx8qxp_soc_revision(void) {
> > > +	struct imx_sc_msg_misc_get_soc_id msg;
> > > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > > +	u32 rev;
> > > +	int ret;
> > > +
> > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > +	hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > > +	hdr->size = 3;
> > > +
> > > +	msg.data.send.control = IMX_SC_C_ID;
> > > +	msg.data.send.resource = IMX_SC_R_SYSTEM;
> > > +
> > > +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > > +	if (ret) {
> > > +		dev_err(&imx_scu_soc_pdev->dev,
> > > +			"get soc info failed, ret %d\n", ret);
> > > +		/* return 0 means getting revision failed */
> > > +		return 0;
> > > +	}
> > > +
> > > +	/* format revision value passed from SCU firmware */
> > > +	rev = (msg.data.resp.id >> 5) & 0xf;
> > > +	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
> > > +
> > > +	return rev;
> > > +}
> > > +
> > > +static const struct imx_scu_soc_data imx8qxp_soc_data = {
> > > +	.name = "i.MX8QXP",
> > > +	.soc_revision = imx8qxp_soc_revision,
> >
> > This is still follow a generic soc driver design.
> > I wonder if this is still needed after separate scu soc driver from imx8m.
> > If not needed, this driver probably could be simplied a lot.
> 
> Using generic soc driver is just to provide different soc data for different SoCs,
> NOT sure if we can cover all SCU SoCs using same settings. Different SoCs may
> need some different operations or workarounds, like i.MX8QM needs some
> special workaround settings....
> 

Mx8qm seems can fully re-use imx8qxp_soc_revision().
And the workaround in local tree seems not need to be put there.
Then the left one is only soc name?

> >
> > > +};
> > > +
> > > +static const struct of_device_id imx_scu_soc_match[] = {
> > > +	{ .compatible = "fsl,imx8qxp", .data = &imx8qxp_soc_data, },
> > > +	{ }
> > > +};
> > > +
> > > +#define imx_scu_revision(soc_rev) \
> > > +	soc_rev ? \
> > > +	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev &
> > 0xf) : \
> > > +	"unknown"
> > > +
> > > +static int imx_scu_soc_probe(struct platform_device *pdev) {
> > > +	struct soc_device_attribute *soc_dev_attr;
> > > +	const struct imx_scu_soc_data *data;
> > > +	const struct of_device_id *id;
> > > +	struct soc_device *soc_dev;
> > > +	u32 soc_rev = 0;
> > > +	int ret;
> > > +
> > > +	/* wait i.MX SCU driver ready */
> > > +	ret = imx_scu_get_handle(&soc_ipc_handle);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
> > > +				    GFP_KERNEL);
> > > +	if (!soc_dev_attr)
> > > +		return -ENOMEM;
> > > +
> > > +	soc_dev_attr->family = "Freescale i.MX";
> > > +
> > > +	ret = of_property_read_string(pdev->dev.of_node,
> > > +				      "model",
> > > +				      &soc_dev_attr->machine);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	id = of_match_node(imx_scu_soc_match, pdev->dev.of_node);
> > > +	data = id->data;
> > > +	if (data) {
> > > +		soc_dev_attr->soc_id = data->name;
> > > +		if (data->soc_revision)
> > > +			soc_rev = data->soc_revision();
> > > +	}
> > > +
> > > +	soc_dev_attr->revision = imx_scu_revision(soc_rev);
> > > +	if (!soc_dev_attr->revision)
> > > +		return -ENODEV;
> > > +
> > > +	soc_dev = soc_device_register(soc_dev_attr);
> > > +	if (IS_ERR(soc_dev)) {
> > > +		kfree(soc_dev_attr->revision);
> > > +		return PTR_ERR(soc_dev);
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static struct platform_driver imx_scu_soc_driver = {
> > > +	.driver = {
> > > +		.name = IMX_SCU_SOC_DRIVER_NAME,
> > > +	},
> > > +	.probe = imx_scu_soc_probe,
> > > +};
> > > +
> > > +static int __init imx_scu_soc_init(void) {
> > > +	const struct of_device_id *id;
> > > +	struct device_node *root;
> > > +	int ret;
> > > +
> > > +	root = of_find_node_by_path("/");
> > > +	id = of_match_node(imx_scu_soc_match, root);
> >
> > Use of_find_compatible_node instead.
> > Then you remove two unnecessary local variable.
> 
> OK.
> 
> >
> > BTW, probably a better way is to match "fsl,imx-scu"?
> 
> "fsl,imx-scu" already used by scu firmware driver, that will cause confusion I
> think, just using soc's compatible should be easier to understand.
> 

It does not matter because we only use it to check whether we need register
this soc driver. And what I suggest is because this drive actually depends on
"fsl,imx-scu", not soc compatible string.
Another benefit is you do not need another compatible string when you
Add imx8qm support.

> >
> > > +	if (!id) {
> > > +		of_node_put(root);
> > > +		return -ENODEV;
> > > +	}
> > > +
> > > +	ret = platform_driver_register(&imx_scu_soc_driver);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	imx_scu_soc_pdev =
> > > +
> > 	platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
> > > +						-1,
> > > +						NULL,
> > > +						0);
> > > +	if (IS_ERR(imx_scu_soc_pdev)) {
> > > +		ret = PTR_ERR(imx_scu_soc_pdev);
> > > +		goto unreg_platform_driver;
> > > +	}
> > > +
> > > +	imx_scu_soc_pdev->dev.of_node = root;
> >
> > Please double check if we really need a global imx_scu_soc_pdev.
> 
> Global platform_device pointer can be used in other function's message output
> using dev_xxx instead of pr_xxx, and it could be needed later for some other
> functions, if no big concern of keeping one global variable, I prefer to keep it.
> 

I mean If we remove soc_revision() callback, we may not need it.
And imx_scu_soc_match array could also be removed. Then the driver could
Be simplified a lot.

You can check if we can do that.

Regards
Dong Aisheng

> Thanks,
> Anson
> 
> >
> > Regards
> > Dong Aisheng
> >
> > > +
> > > +	return 0;
> > > +
> > > +unreg_platform_driver:
> > > +	platform_driver_unregister(&imx_scu_soc_driver);
> > > +	return ret;
> > > +}
> > > +device_initcall(imx_scu_soc_init);
> > > --
> > > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
