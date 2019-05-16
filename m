Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89B420429
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQ1jWvdPCMrvoSu2WU90ESsJS+9ZjysjRakQUsQHhnU=; b=nw9LkijM/ObADr
	uGuAJ2ay4S98fK5uRxSTZf3bIh69csmT5T85CJibhqvXnKgyR8m/6oG20jxS49gNxKmuRMVFbp1z3
	ewH6JAPrSG04htdASmZnIqp/mM2LdhNHVuXSQKlTsVQnwowG2pIK2p535IsiDY4B4kLvBZJ3xupO8
	Sh8nwTnxetW/RlYSZTd0Wfk3gDXu5xbQ0TVC1nBzW8Dpjbw299CWb71Bxgnnn/lb12EnhtMg9YLDy
	wvduKKCl2lzS6CXOXYujsLOu6uayiyMVdsY5boFaG1MlIaWKxF4cog56v+SnDEPLt/5fYeo3h0boi
	370xYrSTRO6IsQRT7VfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREJu-0006NS-JW; Thu, 16 May 2019 11:13:06 +0000
Received: from mail-eopbgr150043.outbound.protection.outlook.com
 ([40.107.15.43] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREJm-0006MP-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W3ID3lzOTglsQ6RPKDshAWcI1X94VHl+5Xfu51tG3TU=;
 b=eEie/PY1IGR5Rd0P1VxRPQj5vdzn458i45kJWwjlSqV16dHf7uZkK6K4B5PC+rGo8PbvIa01Th4k+io/B23vkDueOrFWyiga0myMxm2Fi8S/gFd66YUS7EOUc7jQU+CB2EfX+sB6zBPsNjw/AmzHcfrAY49ao/1Imq7WR6ztTlA=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4274.eurprd04.prod.outlook.com (52.134.124.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Thu, 16 May 2019 11:12:54 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:12:54 +0000
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
Thread-Index: AQHVC5bqk1P5MqRzRU2gqcSUyb18B6Ztk+ug
Date: Thu, 16 May 2019 11:12:54 +0000
Message-ID: <AM0PR04MB42112F268CC39A2829836532800A0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557976777-8304-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 005e116c-8d7a-471a-db8e-08d6d9ef717d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4274; 
x-ms-traffictypediagnostic: AM0PR04MB4274:
x-microsoft-antispam-prvs: <AM0PR04MB42743E388619DBBE4AD2CE26800A0@AM0PR04MB4274.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(39860400002)(346002)(136003)(189003)(199004)(54094003)(2501003)(8936002)(71200400001)(7416002)(52536014)(66066001)(6506007)(11346002)(6246003)(2201001)(476003)(102836004)(6436002)(110136005)(9686003)(81166006)(81156014)(4326008)(86362001)(74316002)(71190400001)(486006)(53936002)(2906002)(55016002)(68736007)(256004)(66946007)(64756008)(446003)(305945005)(14454004)(7696005)(99286004)(3846002)(25786009)(478600001)(76176011)(33656002)(66446008)(8676002)(66556008)(6116002)(7736002)(44832011)(26005)(5660300002)(316002)(73956011)(66476007)(76116006)(186003)(229853002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4274;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IpRwqpoGLtOOnQ0NyvcrqOD0xkztFs42BBZgp8XBBVmaofh8SZ8+gl1DHxmrjyyKMQ0b3avy5f4DSR2+MlElLgdzpKczQ/Ur45nUoxJ8hPL3xiXdmXGewT0Iw6ywpzlSpJ1XOYZNAja09JCgt4mKGYCQ1v3VACKe8sQmxGCpO8WY27jdftlm04e7NLAA+3sTeBJ2dno6StQAt/gJFlG65e7CIkWaVDUvEnckYs7ZOvc4Su4UFh+NCoyMV0diStbKZwtjalUmOgQqgHe2EnOSp6H5cX3wSJPqBB/2kkzX3o1q0VvnQxw9TVNs8r5UYtysKhBpy8XN3EYQqcL1+lsqZQ2GK5h/CKJ1ugzA6D6UQQV+ztaCgY1FXQCbqp/zt+DkXmz3PzNXuXTatyG0cu7zbuEO7CwGN4wx8+PLPrOqsyc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 005e116c-8d7a-471a-db8e-08d6d9ef717d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:12:54.2289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4274
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_041258_737140_AFF3CDA4 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.43 listed in list.dnswl.org]
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
> Sent: Thursday, May 16, 2019 11:25 AM
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
> i.mx8qxp-mek# cat /sys/devices/soc0/soc_id i.MX8QXP
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/machine Freescale i.MX8QXP MEK
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/revision
> 1.1
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- using device_initcall instead of module_init;
> 	- check of_match_node in init function and ONLY register platform driver
> when matched, this
> 	  is to avoid unnecessary probe for non SCU based i.MX8 SoCs.
> ---
>  drivers/soc/imx/Kconfig       |   9 +++
>  drivers/soc/imx/Makefile      |   1 +
>  drivers/soc/imx/soc-imx-scu.c | 173
> ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 183 insertions(+)
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
> file mode 100644 index 0000000..243c418
> --- /dev/null
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -0,0 +1,173 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/firmware/imx/rsrc.h> #include
> +<linux/firmware/imx/sci.h> #include <linux/module.h> #include
> +<linux/slab.h> #include <linux/sys_soc.h> #include
> +<linux/platform_device.h> #include <linux/of.h>
> +
> +#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
> +
> +static struct imx_sc_ipc *soc_ipc_handle; static struct platform_device
> +*imx_scu_soc_pdev;
> +
> +struct imx_sc_msg_misc_get_soc_id {
> +	struct imx_sc_rpc_msg hdr;
> +	union {
> +		struct {
> +			u32 control;
> +			u16 resource;
> +		} send;
> +		struct {
> +			u32 id;
> +			u16 reserved;
> +		} resp;
> +	} data;
> +} __packed;
> +
> +struct imx_scu_soc_data {
> +	char *name;
> +	u32 (*soc_revision)(void);
> +};
> +
> +static u32 imx8qxp_soc_revision(void)
> +{
> +	struct imx_sc_msg_misc_get_soc_id msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	u32 rev;
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
> +		dev_err(&imx_scu_soc_pdev->dev,
> +			"get soc info failed, ret %d\n", ret);
> +		/* return 0 means getting revision failed */
> +		return 0;
> +	}
> +
> +	/* format revision value passed from SCU firmware */
> +	rev = (msg.data.resp.id >> 5) & 0xf;
> +	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
> +
> +	return rev;
> +}
> +
> +static const struct imx_scu_soc_data imx8qxp_soc_data = {
> +	.name = "i.MX8QXP",
> +	.soc_revision = imx8qxp_soc_revision,

This is still follow a generic soc driver design.
I wonder if this is still needed after separate scu soc driver from imx8m.
If not needed, this driver probably could be simplied a lot.

> +};
> +
> +static const struct of_device_id imx_scu_soc_match[] = {
> +	{ .compatible = "fsl,imx8qxp", .data = &imx8qxp_soc_data, },
> +	{ }
> +};
> +
> +#define imx_scu_revision(soc_rev) \
> +	soc_rev ? \
> +	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev & 0xf) : \
> +	"unknown"
> +
> +static int imx_scu_soc_probe(struct platform_device *pdev) {
> +	struct soc_device_attribute *soc_dev_attr;
> +	const struct imx_scu_soc_data *data;
> +	const struct of_device_id *id;
> +	struct soc_device *soc_dev;
> +	u32 soc_rev = 0;
> +	int ret;
> +
> +	/* wait i.MX SCU driver ready */
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
> +	ret = of_property_read_string(pdev->dev.of_node,
> +				      "model",
> +				      &soc_dev_attr->machine);
> +	if (ret)
> +		return ret;
> +
> +	id = of_match_node(imx_scu_soc_match, pdev->dev.of_node);
> +	data = id->data;
> +	if (data) {
> +		soc_dev_attr->soc_id = data->name;
> +		if (data->soc_revision)
> +			soc_rev = data->soc_revision();
> +	}
> +
> +	soc_dev_attr->revision = imx_scu_revision(soc_rev);
> +	if (!soc_dev_attr->revision)
> +		return -ENODEV;
> +
> +	soc_dev = soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		kfree(soc_dev_attr->revision);
> +		return PTR_ERR(soc_dev);
> +	}
> +
> +	return 0;
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
> +	const struct of_device_id *id;
> +	struct device_node *root;
> +	int ret;
> +
> +	root = of_find_node_by_path("/");
> +	id = of_match_node(imx_scu_soc_match, root);

Use of_find_compatible_node instead.
Then you remove two unnecessary local variable.

BTW, probably a better way is to match "fsl,imx-scu"?

> +	if (!id) {
> +		of_node_put(root);
> +		return -ENODEV;
> +	}
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
> +	if (IS_ERR(imx_scu_soc_pdev)) {
> +		ret = PTR_ERR(imx_scu_soc_pdev);
> +		goto unreg_platform_driver;
> +	}
> +
> +	imx_scu_soc_pdev->dev.of_node = root;

Please double check if we really need a global imx_scu_soc_pdev.

Regards
Dong Aisheng

> +
> +	return 0;
> +
> +unreg_platform_driver:
> +	platform_driver_unregister(&imx_scu_soc_driver);
> +	return ret;
> +}
> +device_initcall(imx_scu_soc_init);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
