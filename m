Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119C274BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 05:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJfCZVSM6/LBuipjHiQB8lHuPmlpVBfSqMGcuYXxCtc=; b=oCGSzzxJcHpn6H
	QdGw0YP8mqid1bjLBuy0FWcCU48eWvfjagtN/6SFb8PrG/BR/JLlGc461nwTf+JBP5i6kQzA+vfX+
	UU5cAMq7D+bfo6JDxXrGZNd6DBmkcCC8QkE9hCXa+SrmXWyYjSHThmPwHHCtIZEm4F0EWgABzcWEW
	1PlxW14LI1m542W0iClaayMCcEKU60y+r4x8LK1evqcezmEzEWAp8ztG7xAU43o8dBuueu14r7YqE
	o4qV51e/FlDWetPq1+yOEnrjeikqjFw8TRbBRonrieafS2xUcIeKLzVozGIVNRxEsTFQ5TGsJduD5
	agUp0VW09YiQ3Ec7spvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeJA-0002s6-8W; Thu, 23 May 2019 03:22:20 +0000
Received: from mail-eopbgr140072.outbound.protection.outlook.com
 ([40.107.14.72] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeJ2-0002rc-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 03:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jc8QAdLka3+vwh4GMWsw6caF7o2j9HwB0Tql23UazI=;
 b=r4HhedmdiXk2KMCl+PfQNhoLKmRchKdOo2vMXKnyaGLrdURNLXCl+zEgs/AGIijU3jbaxOg69frhqLicZfA6GHk5Dp0sA+8cB8ZW1N2ucofm91BApScVz3RwYJ813WA7YZSzjgbaLIA0h1RRFh9OuRg7hIc1YsyC89PYmY5j++Y=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 03:22:05 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 03:22:05 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "maxime.ripard@bootlin.com"
 <maxime.ripard@bootlin.com>, "agross@kernel.org" <agross@kernel.org>,
 "olof@lixom.net" <olof@lixom.net>, "horms+renesas@verge.net.au"
 <horms+renesas@verge.net.au>, "jagan@amarulasolutions.com"
 <jagan@amarulasolutions.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "enric.balletbo@collabora.com"
 <enric.balletbo@collabora.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "robh@kernel.org"
 <robh@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V5 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V5 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVEGbg2QLbsVO1oE+jxvonbRb8fqZ4AO3w
Date: Thu, 23 May 2019 03:22:05 +0000
Message-ID: <AM0PR04MB42116AFDCE2229C24E9D57D780010@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1558505898-722-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558505898-722-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5995e7a-242e-43b1-b7a1-08d6df2dd49e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6676; 
x-ms-traffictypediagnostic: AM0PR04MB6676:
x-microsoft-antispam-prvs: <AM0PR04MB6676DDA904233993A1ACDDBC80010@AM0PR04MB6676.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:318;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(136003)(396003)(39860400002)(189003)(199004)(186003)(44832011)(305945005)(8936002)(5660300002)(81156014)(7736002)(8676002)(25786009)(71200400001)(2201001)(71190400001)(74316002)(55016002)(81166006)(229853002)(316002)(26005)(11346002)(33656002)(446003)(256004)(66946007)(73956011)(4326008)(3846002)(76116006)(6116002)(52536014)(2501003)(476003)(66066001)(2906002)(486006)(66556008)(64756008)(66446008)(66476007)(14454004)(6246003)(9686003)(110136005)(6506007)(99286004)(478600001)(6436002)(68736007)(7696005)(53936002)(102836004)(86362001)(76176011)(7416002)(921003)(21314003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6676;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a78pPlRjg+iT5TzN3qaf3zFnUlE5G8VDiRrSUWug3jP7r1q8IKpXbTuLWcXIcz/2LdULmPqZBAeOGT9yWWCBRToh/W+qPotXPM1NuIY6SFnZuZNaomYAlN1RGBYAXK6lVFSARgFp4qk8uzFtp0xKlBOlnKrNlBs1S0LCfjBAdbNgJWrtQXT13Aq832cP/y++HwZC66d6JW8DpmnySuLJJ+WyH+v36iv6w/F0wH9tff00s8kD6lp2d1CvUnGQjmnlk9/sJYKwvmVnE543b/ShuxxLtZ05IMHdLEbr401hxKFFSxA+w3QTFhC4VSfc1W2kO9CVv71ztCHI6+t082n+Dp2EcdODCvaSmyvzsym8B6YWUlBgu0VV+Wg1o+KDTXHrGQxkVfzire1jqjUUq/DjD1QfceaE+e1BAw/skeMpVKc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5995e7a-242e-43b1-b7a1-08d6df2dd49e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 03:22:05.1658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_202212_721113_88791C3E 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Wednesday, May 22, 2019 2:24 PM
> 
> Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce driver
> dependency into Kconfig as CONFIG_IMX_SCU must be selected to support
> i.MX SCU SoC driver, also need to use platform driver model to make sure
> IMX_SCU driver is probed before i.MX SCU SoC driver.
> 
> With this patch, SoC info can be read from sysfs:
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/family Freescale i.MX
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/soc_id
> 0x2
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/machine Freescale i.MX8QXP MEK
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/revision
> 1.1
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

A few minor comments below,
Otherwise:
Dong Aisheng <aisheng.dong@nxp.com>

> ---
> Changes since V4:
> 	- using extern struct of_root instead of searching it again from DT;
> 	- add of_node_put() after "fsl,imx-scu" is found.
> ---
>  drivers/soc/imx/Kconfig       |   9 +++
>  drivers/soc/imx/Makefile      |   1 +
>  drivers/soc/imx/soc-imx-scu.c | 155
> ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 165 insertions(+)
>  create mode 100644 drivers/soc/imx/soc-imx-scu.c
> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> d80f899..cbc1a41 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -7,4 +7,13 @@ config IMX_GPCV2_PM_DOMAINS
>  	select PM_GENERIC_DOMAINS
>  	default y if SOC_IMX7D
> 
> +config IMX_SCU_SOC
> +	bool "i.MX System Controller Unit SoC info support"
> +	depends on IMX_SCU
> +	select SOC_BUS
> +	help
> +	  If you say yes here you get support for the NXP i.MX System
> +	  Controller Unit SoC info module, it will provide the SoC info
> +	  like SoC family, ID and revision etc.
> +
>  endmenu
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> d6b529e0..ddf343d 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> +obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c new
> file mode 100644 index 0000000..17deb4e
> --- /dev/null
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/firmware/imx/rsrc.h> #include
> +<linux/firmware/imx/sci.h> #include <linux/slab.h> #include
> +<linux/sys_soc.h> #include <linux/platform_device.h> #include
> +<linux/of.h>
> +
> +#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
> +
> +static struct imx_sc_ipc *soc_ipc_handle;
> +
> +struct imx_sc_msg_misc_get_soc_id {
> +	struct imx_sc_rpc_msg hdr;
> +	union {
> +		struct {
> +			u32 control;
> +			u16 resource;
> +		} send;

Please follow the exist naming conversion to avoid a diverge if no specific reasons.
s/send/req

BTW, sub structures also needs packed and better add an explicit __packed
As I'm not sure whether GCC will always generate no padding for ARM64 platforms
For above structures.

> +		struct {
> +			u32 id;
> +			u16 reserved;

What's reserved member for?

> +		} resp;
> +	} data;
> +} __packed;
> +
> +static u32 imx_scu_soc_id(void)
> +{
> +	struct imx_sc_msg_misc_get_soc_id msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	int ret;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
> +	hdr->size = 3;
> +
> +	msg.data.send.control = IMX_SC_C_ID;
> +	msg.data.send.resource = IMX_SC_R_SYSTEM;
> +
> +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> +	if (ret) {
> +		pr_err("%s: get soc info failed, ret %d\n", __func__, ret);
> +		/* return 0 means getting revision failed */
> +		return 0;
> +	}
> +
> +	return msg.data.resp.id;
> +}
> +
> +static int imx_scu_soc_probe(struct platform_device *pdev) {
> +	struct soc_device_attribute *soc_dev_attr;
> +	struct soc_device *soc_dev;
> +	u32 id, val;
> +	int ret;
> +
> +	/* wait i.MX SCU driver ready */

Nitpick: remove this unnecessary line

> +	ret = imx_scu_get_handle(&soc_ipc_handle);
> +	if (ret)
> +		return ret;
> +
> +	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
> +				    GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	soc_dev_attr->family = "Freescale i.MX";
> +
> +	ret = of_property_read_string(of_root,
> +				      "model",
> +				      &soc_dev_attr->machine);
> +	if (ret)
> +		return ret;
> +
> +	id = imx_scu_soc_id();
> +
> +	/* format soc_id value passed from SCU firmware */
> +	val = id & 0x1f;
> +	soc_dev_attr->soc_id = val ? kasprintf(GFP_KERNEL, "0x%x", val)
> +			       : "unknown";
> +	if (!soc_dev_attr->soc_id)
> +		return -ENOMEM;
> +
> +	/* format revision value passed from SCU firmware */
> +	val = (id >> 5) & 0xf;
> +	val = (((val >> 2) + 1) << 4) | (val & 0x3);
> +	soc_dev_attr->revision = val ? kasprintf(GFP_KERNEL,
> +						 "%d.%d",
> +						 (val >> 4) & 0xf,
> +						 val & 0xf) : "unknown";
> +	if (!soc_dev_attr->revision) {
> +		ret = -ENOMEM;
> +		goto free_soc_id;
> +	}
> +
> +	soc_dev = soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		ret = PTR_ERR(soc_dev);
> +		goto free_revision;
> +	}
> +
> +	return 0;
> +
> +free_revision:
> +	kfree(soc_dev_attr->revision);
> +free_soc_id:
> +	kfree(soc_dev_attr->soc_id);
> +	return ret;
> +}
> +
> +static struct platform_driver imx_scu_soc_driver = {
> +	.driver = {
> +		.name = IMX_SCU_SOC_DRIVER_NAME,
> +	},
> +	.probe = imx_scu_soc_probe,
> +};
> +
> +static int __init imx_scu_soc_init(void) {
> +	struct platform_device *imx_scu_soc_pdev;
> +	struct device_node *np;
> +	int ret;
> +
> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> +	if (!np)
> +		return -ENODEV;
> +
> +	of_node_put(np);
> +
> +	ret = platform_driver_register(&imx_scu_soc_driver);
> +	if (ret)
> +		return ret;
> +
> +	imx_scu_soc_pdev =
> +		platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
> +						-1,
> +						NULL,
> +						0);

[...]

> +	if (IS_ERR(imx_scu_soc_pdev)) {
> +		ret = PTR_ERR(imx_scu_soc_pdev);
> +		goto unreg_platform_driver;
> +	}
> +
> +	return 0;
> +
> +unreg_platform_driver:
> +	platform_driver_unregister(&imx_scu_soc_driver);
> +	return ret;
> +}

This could be simplied with 3 lines:
If (IS_ERR(pdev))
	Platform_driver_unregsiter(xxx)

Return PTR_ERR_OR_ZERO(pdev)

Regards
Dong Aisheng

> +device_initcall(imx_scu_soc_init);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
