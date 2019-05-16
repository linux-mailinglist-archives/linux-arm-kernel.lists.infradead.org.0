Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9312068A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMT/H6Stji966sp9RS+w75WlZVSByEFmVlxENYAFHnw=; b=sLE+b/9lGE2o5b
	V71uHS7nQnvgNFHTICOCi2Mi+N42Zqm9+wpqfIROm5heac+QbwAzm87LSox0vP3/uVnYc/TvFEDuQ
	m2FRmwlZkRJIiw+Yrgax1PvhF8FGD+RnfbOpnU/S+TfObGsGSX4qSJa5zaOjrzelZAf/K38S3sWSV
	gBInPefX+N1Z51xKEiHYUUqGubc2F7DF7exPsc+c2+77xLpdWJrqdcdxaI+PBfziqp8DwIK81hQSL
	y+CdpIh6yiuons2FjEK0JS4IBDW3yALKq6qj4U0ZrA5oqgE4Uw1fepOhFpspwcOec39Qsf4NfOKod
	D0axij/QNRh9NCGm1NgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRF4n-00030T-RN; Thu, 16 May 2019 12:01:33 +0000
Received: from mail-vi1eur04on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::610]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRF4e-0002zq-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 12:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iIS0uw46G0KGoBgccgChHou+gUxr9v8eYHqUs5RXNX4=;
 b=ASqFidm5SR/KV5T16NABNPbNbDCKAA/kYUdYzmS9kDOaKWzPws4OzqdADHerz32zMt/TJA+QWyIr2PKp8xa953ciGjFE/LO6Es0ltzAwiD6A5F4Anvs9knrEnwres/YR8z1N77N9nl2Z56rqx3m6unvUFkgZq3JWVcV/5EPbJas=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3900.eurprd04.prod.outlook.com (52.134.71.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 12:01:11 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 12:01:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "catalin.marinas@arm.com"
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
Thread-Index: AQHVC5bqk1P5MqRzRU2gqcSUyb18B6Ztk+uggAAPlSA=
Date: Thu, 16 May 2019 12:01:11 +0000
Message-ID: <DB3PR0402MB391665F27EC3726BCCED5E03F50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB42112F268CC39A2829836532800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42112F268CC39A2829836532800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d893be9-f427-4d41-3cd1-08d6d9f6303f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3900; 
x-ms-traffictypediagnostic: DB3PR0402MB3900:
x-microsoft-antispam-prvs: <DB3PR0402MB3900FDD2ECBC257ACA2468B6F50A0@DB3PR0402MB3900.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(346002)(376002)(39860400002)(199004)(189003)(13464003)(54094003)(71190400001)(71200400001)(3846002)(6116002)(9686003)(25786009)(486006)(55016002)(44832011)(6436002)(5660300002)(76176011)(66066001)(2201001)(446003)(256004)(86362001)(476003)(229853002)(52536014)(26005)(4326008)(186003)(66556008)(11346002)(66476007)(66446008)(64756008)(68736007)(66946007)(73956011)(76116006)(6246003)(305945005)(74316002)(316002)(14454004)(2906002)(7736002)(8936002)(53936002)(81156014)(8676002)(33656002)(7416002)(110136005)(478600001)(53546011)(6506007)(2501003)(102836004)(7696005)(81166006)(99286004)(921003)(21314003)(1121003)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3900;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: InpcAXKElHKAOt3n1851W6sxYV9DL9HTj4wAUPiDGyfN3m6zKVWbp0NKgcVYcU6B3+TWMMpvwo+IjoQQN+8Nuit0Y+WQ6TljFCUkUylVhGly62HnRFC2HUG911S3PlSulwYeQNL28G+cDBmSlQPJ9AoMapIT28FFVKVpB2PfMsBEHrTkzxnbHH4V755W6UUgcWwRjD3b62VH5aX6JH0lBsPlQBHVUsvXLksfa7alkNNwwxqePHyZeFQggnOgT9fCgZIqfw/GqJfIlOY0LThOAj02o9fKgI4TTcXVXmlctJ1nkv0ZqwEJ4+ZoQfX1gyLHAbezUy9MbH7WHQfceHfF4kuxt3FiyjsqCzRYsvSYIJi1i+mxzVwyuOOs4JHCXroax4RLwEtK5lWoJaqEOru1KNPCvgF/HS6QQxff65FoNsQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d893be9-f427-4d41-3cd1-08d6d9f6303f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 12:01:11.2135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_050124_643157_C6631D06 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:610 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



> -----Original Message-----
> From: Aisheng Dong
> Sent: Thursday, May 16, 2019 7:13 PM
> To: Anson Huang <anson.huang@nxp.com>; catalin.marinas@arm.com;
> will.deacon@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; agross@kernel.org;
> maxime.ripard@bootlin.com; olof@lixom.net; horms+renesas@verge.net.au;
> jagan@amarulasolutions.com; bjorn.andersson@linaro.org; Leonard Crestez
> <leonard.crestez@nxp.com>; marc.w.gonzalez@free.fr;
> dinguyen@kernel.org; enric.balletbo@collabora.com;
> l.stach@pengutronix.de; Abel Vesa <abel.vesa@nxp.com>; robh@kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH V3 1/2] soc: imx: Add SCU SoC info driver support
> 
> > From: Anson Huang
> > Sent: Thursday, May 16, 2019 11:25 AM
> >
> > Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce driver
> > dependency into Kconfig as CONFIG_IMX_SCU must be selected to support
> > i.MX SCU SoC driver, also need to use platform driver model to make
> > sure IMX_SCU driver is probed before i.MX SCU SoC driver.
> >
> > With this patch, SoC info can be read from sysfs:
> >
> > i.mx8qxp-mek# cat /sys/devices/soc0/family Freescale i.MX
> >
> > i.mx8qxp-mek# cat /sys/devices/soc0/soc_id i.MX8QXP
> >
> > i.mx8qxp-mek# cat /sys/devices/soc0/machine Freescale i.MX8QXP MEK
> >
> > i.mx8qxp-mek# cat /sys/devices/soc0/revision
> > 1.1
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- using device_initcall instead of module_init;
> > 	- check of_match_node in init function and ONLY register platform
> > driver when matched, this
> > 	  is to avoid unnecessary probe for non SCU based i.MX8 SoCs.
> > ---
> >  drivers/soc/imx/Kconfig       |   9 +++
> >  drivers/soc/imx/Makefile      |   1 +
> >  drivers/soc/imx/soc-imx-scu.c | 173
> > ++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 183 insertions(+)
> >  create mode 100644 drivers/soc/imx/soc-imx-scu.c
> >
> > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > d80f899..cbc1a41 100644
> > --- a/drivers/soc/imx/Kconfig
> > +++ b/drivers/soc/imx/Kconfig
> > @@ -7,4 +7,13 @@ config IMX_GPCV2_PM_DOMAINS
> >  	select PM_GENERIC_DOMAINS
> >  	default y if SOC_IMX7D
> >
> > +config IMX_SCU_SOC
> > +	bool "i.MX System Controller Unit SoC info support"
> > +	depends on IMX_SCU
> > +	select SOC_BUS
> > +	help
> > +	  If you say yes here you get support for the NXP i.MX System
> > +	  Controller Unit SoC info module, it will provide the SoC info
> > +	  like SoC family, ID and revision etc.
> > +
> >  endmenu
> > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> > d6b529e0..ddf343d 100644
> > --- a/drivers/soc/imx/Makefile
> > +++ b/drivers/soc/imx/Makefile
> > @@ -1,3 +1,4 @@
> >  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
> >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> >  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> > +obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > b/drivers/soc/imx/soc-imx-scu.c new file mode 100644 index
> > 0000000..243c418
> > --- /dev/null
> > +++ b/drivers/soc/imx/soc-imx-scu.c
> > @@ -0,0 +1,173 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <dt-bindings/firmware/imx/rsrc.h> #include
> > +<linux/firmware/imx/sci.h> #include <linux/module.h> #include
> > +<linux/slab.h> #include <linux/sys_soc.h> #include
> > +<linux/platform_device.h> #include <linux/of.h>
> > +
> > +#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
> > +
> > +static struct imx_sc_ipc *soc_ipc_handle; static struct
> > +platform_device *imx_scu_soc_pdev;
> > +
> > +struct imx_sc_msg_misc_get_soc_id {
> > +	struct imx_sc_rpc_msg hdr;
> > +	union {
> > +		struct {
> > +			u32 control;
> > +			u16 resource;
> > +		} send;
> > +		struct {
> > +			u32 id;
> > +			u16 reserved;
> > +		} resp;
> > +	} data;
> > +} __packed;
> > +
> > +struct imx_scu_soc_data {
> > +	char *name;
> > +	u32 (*soc_revision)(void);
> > +};
> > +
> > +static u32 imx8qxp_soc_revision(void) {
> > +	struct imx_sc_msg_misc_get_soc_id msg;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	u32 rev;
> > +	int ret;
> > +
> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> > +	hdr->size = 3;
> > +
> > +	msg.data.send.control = IMX_SC_C_ID;
> > +	msg.data.send.resource = IMX_SC_R_SYSTEM;
> > +
> > +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> > +	if (ret) {
> > +		dev_err(&imx_scu_soc_pdev->dev,
> > +			"get soc info failed, ret %d\n", ret);
> > +		/* return 0 means getting revision failed */
> > +		return 0;
> > +	}
> > +
> > +	/* format revision value passed from SCU firmware */
> > +	rev = (msg.data.resp.id >> 5) & 0xf;
> > +	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
> > +
> > +	return rev;
> > +}
> > +
> > +static const struct imx_scu_soc_data imx8qxp_soc_data = {
> > +	.name = "i.MX8QXP",
> > +	.soc_revision = imx8qxp_soc_revision,
> 
> This is still follow a generic soc driver design.
> I wonder if this is still needed after separate scu soc driver from imx8m.
> If not needed, this driver probably could be simplied a lot.

Using generic soc driver is just to provide different soc data for different SoCs,
NOT sure if we can cover all SCU SoCs using same settings. Different SoCs may
need some different operations or workarounds, like i.MX8QM needs some special
workaround settings....

> 
> > +};
> > +
> > +static const struct of_device_id imx_scu_soc_match[] = {
> > +	{ .compatible = "fsl,imx8qxp", .data = &imx8qxp_soc_data, },
> > +	{ }
> > +};
> > +
> > +#define imx_scu_revision(soc_rev) \
> > +	soc_rev ? \
> > +	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev &
> 0xf) : \
> > +	"unknown"
> > +
> > +static int imx_scu_soc_probe(struct platform_device *pdev) {
> > +	struct soc_device_attribute *soc_dev_attr;
> > +	const struct imx_scu_soc_data *data;
> > +	const struct of_device_id *id;
> > +	struct soc_device *soc_dev;
> > +	u32 soc_rev = 0;
> > +	int ret;
> > +
> > +	/* wait i.MX SCU driver ready */
> > +	ret = imx_scu_get_handle(&soc_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
> > +				    GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	soc_dev_attr->family = "Freescale i.MX";
> > +
> > +	ret = of_property_read_string(pdev->dev.of_node,
> > +				      "model",
> > +				      &soc_dev_attr->machine);
> > +	if (ret)
> > +		return ret;
> > +
> > +	id = of_match_node(imx_scu_soc_match, pdev->dev.of_node);
> > +	data = id->data;
> > +	if (data) {
> > +		soc_dev_attr->soc_id = data->name;
> > +		if (data->soc_revision)
> > +			soc_rev = data->soc_revision();
> > +	}
> > +
> > +	soc_dev_attr->revision = imx_scu_revision(soc_rev);
> > +	if (!soc_dev_attr->revision)
> > +		return -ENODEV;
> > +
> > +	soc_dev = soc_device_register(soc_dev_attr);
> > +	if (IS_ERR(soc_dev)) {
> > +		kfree(soc_dev_attr->revision);
> > +		return PTR_ERR(soc_dev);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static struct platform_driver imx_scu_soc_driver = {
> > +	.driver = {
> > +		.name = IMX_SCU_SOC_DRIVER_NAME,
> > +	},
> > +	.probe = imx_scu_soc_probe,
> > +};
> > +
> > +static int __init imx_scu_soc_init(void) {
> > +	const struct of_device_id *id;
> > +	struct device_node *root;
> > +	int ret;
> > +
> > +	root = of_find_node_by_path("/");
> > +	id = of_match_node(imx_scu_soc_match, root);
> 
> Use of_find_compatible_node instead.
> Then you remove two unnecessary local variable.

OK.

> 
> BTW, probably a better way is to match "fsl,imx-scu"?

"fsl,imx-scu" already used by scu firmware driver, that will cause confusion
I think, just using soc's compatible should be easier to understand.

> 
> > +	if (!id) {
> > +		of_node_put(root);
> > +		return -ENODEV;
> > +	}
> > +
> > +	ret = platform_driver_register(&imx_scu_soc_driver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	imx_scu_soc_pdev =
> > +
> 	platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
> > +						-1,
> > +						NULL,
> > +						0);
> > +	if (IS_ERR(imx_scu_soc_pdev)) {
> > +		ret = PTR_ERR(imx_scu_soc_pdev);
> > +		goto unreg_platform_driver;
> > +	}
> > +
> > +	imx_scu_soc_pdev->dev.of_node = root;
> 
> Please double check if we really need a global imx_scu_soc_pdev.

Global platform_device pointer can be used in other function's message
output using dev_xxx instead of pr_xxx, and it could be needed later for some
other functions, if no big concern of keeping one global variable, I prefer to keep it.

Thanks,
Anson 

> 
> Regards
> Dong Aisheng
> 
> > +
> > +	return 0;
> > +
> > +unreg_platform_driver:
> > +	platform_driver_unregister(&imx_scu_soc_driver);
> > +	return ret;
> > +}
> > +device_initcall(imx_scu_soc_init);
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
