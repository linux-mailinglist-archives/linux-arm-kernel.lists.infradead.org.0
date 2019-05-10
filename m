Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BA819A7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCearXFBnnuLDqmO0P2JRm8kb0pSuQFXFfIzw30pp0E=; b=EMTLWihEc0dE0X
	GsU06CMVxmabR3EsEgkFsSAgyE3DBMyVhJYG8TQFwsij5t7wPvUYjRj2KMwlUAQ/CRwNlG9K3NNjD
	3rfEOE5ZSbL17M6SmITvilgYPLqjE20C0JDlZDcYgqAVDC0v8jDLFWGLLM2x2kBAG5PbxBlekud4A
	FG76xJjrjYxXWASaq8lpzmsKxl0LI3/WvuL/eg+RTWett1+2GfuB4FleHcBVH4VXL/ZTykPjPfrVN
	K2WC+B124e22nm5/r5ljnZK+eAQ6y44msONpsokEMgmcMh2tWG4svb4WWxmqFACBB2L+Q2p2OVfif
	oBGeIqvytS9BFSyO5iGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1ej-0007y1-P0; Fri, 10 May 2019 09:17:29 +0000
Received: from mail-eopbgr80044.outbound.protection.outlook.com ([40.107.8.44]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1ea-0007x7-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 09:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/hCFATjPX/2x9Add1ZWMfcOIu8FCWPMNjPUYos9vsw=;
 b=Ugo00JU4Fzqx7ZRFxqNUUNCRDfvRPkE/knGPWcXuXc55P0piol8vhDMnbc0ChJJVKBvLRkE941DT9HlV7+0JT64Uvz45xON3hiRpPke7WYZz3pzSXrxJdeQg8w9DE71QvIh3icEe8QRvI3gB6WQ3cscVCAqqnMM9kGup04plxEY=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4419.eurprd04.prod.outlook.com (52.135.152.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 10 May 2019 09:17:16 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 09:17:15 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "heiko@sntech.de"
 <heiko@sntech.de>, "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>, 
 "olof@lixom.net" <olof@lixom.net>, Andy Gross <andy.gross@linaro.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "stefan.wahren@i2se.com" <stefan.wahren@i2se.com>, "ezequiel@collabora.com"
 <ezequiel@collabora.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "robh@kernel.org" <robh@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] soc: imx-sc: add i.MX system controller soc driver
 support
Thread-Topic: [PATCH 1/2] soc: imx-sc: add i.MX system controller soc driver
 support
Thread-Index: AQHU8DKsAg9Kriz6B0mooDc33xId46ZkPYEg
Date: Fri, 10 May 2019 09:17:15 +0000
Message-ID: <AM0PR04MB42117C4AB89EA69E48F95D39800C0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1554965048-19450-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1554965048-19450-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc666aeb-d82d-40fd-c1e4-08d6d5284b60
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4419; 
x-ms-traffictypediagnostic: AM0PR04MB4419:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB4419D529A2FC1A8A8FADF857800C0@AM0PR04MB4419.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(346002)(396003)(136003)(189003)(199004)(53936002)(14454004)(11346002)(7736002)(66066001)(66946007)(2906002)(478600001)(71200400001)(73956011)(71190400001)(64756008)(66476007)(66556008)(66446008)(4326008)(55016002)(2501003)(9686003)(76116006)(3846002)(6116002)(256004)(6246003)(6436002)(52536014)(316002)(102836004)(33656002)(81156014)(476003)(25786009)(68736007)(86362001)(229853002)(99286004)(7416002)(7696005)(305945005)(5660300002)(76176011)(6506007)(81166006)(8676002)(44832011)(486006)(2201001)(110136005)(74316002)(446003)(186003)(8936002)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4419;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f1SB3ileTjyH2/cZGKoSl2q15zmvEtmhOW+QxlLAH4Xx7QFkIKatoI85pp4oMVzn93Z+8AF2MVCubLM0yRicoDXHxhOufxjpwAK2OkfmylM7nvH1xgPBBOEt9aAqx8v0cPwQLYQaSyvhHzZ05wGKT6XJIbgVU2tE/vlSHr8oDhKrqhP8sL9LlDmHV1gublpTTDlqcgg1Yv1nQrueGf2+5uFYb+U/Z1TV0Y0goJH8V4dilhDm8IEe6eN8jlydqN6zjKGp65G40GIwH8oG5A8Vi4lQM7gsVrILIa0eHIEutsQxPc0+eikPW8UyfWbfcbOeaURRtMxc80HpZyHyo4HpTvZDWk/uEr7O6lAuaNIVqiAG7l+gSFOrtPdzezdiMgi+2EZJ59soQ0bguI2nf7CF6b/weldRI3vl/oqRboEFuyk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc666aeb-d82d-40fd-c1e4-08d6d5284b60
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 09:17:15.8494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_021721_147573_A5A13A5F 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Thursday, April 11, 2019 2:49 PM
> 
> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller inside,
> the system controller is in charge of controlling power, clock and fuse etc..
> 
> This patch adds i.MX system controller soc driver support, Linux kernel has to
> communicate with system controller via MU (message unit) IPC to get soc
> revision, uid etc..
> 
> With this patch, soc info can be read from sysfs:
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
> i.mx8qxp-mek# cat /sys/devices/soc0/soc_uid
> 7B64280B57AC1898
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/Kconfig      |   7 ++
>  drivers/soc/imx/Makefile     |   1 +
>  drivers/soc/imx/soc-imx-sc.c | 220
> +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 228 insertions(+)
>  create mode 100644 drivers/soc/imx/soc-imx-sc.c
> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> d80f899..c902b89 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -7,4 +7,11 @@ config IMX_GPCV2_PM_DOMAINS
>  	select PM_GENERIC_DOMAINS
>  	default y if SOC_IMX7D
> 
> +config IMX_SC_SOC
> +	depends on IMX_SCU || COMPILE_TEST

COMPILE_TEST may not work due to dependency

> +	tristate "i.MX System Controller SoC support"

Can it build as module?
I did not see soc_device_register() is exported.

> +	help
> +	   If you say yes here you get support for the i.MX System
> +	   Controller SoC module.
> +
>  endmenu
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> 506a6f3..d00606d 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,2 +1,3 @@
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> +obj-$(CONFIG_IMX_SC_SOC) += soc-imx-sc.o
> diff --git a/drivers/soc/imx/soc-imx-sc.c b/drivers/soc/imx/soc-imx-sc.c new file
> mode 100644 index 0000000..029d754
> --- /dev/null
> +++ b/drivers/soc/imx/soc-imx-sc.c
> @@ -0,0 +1,220 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/firmware/imx/rsrc.h> #include
> +<linux/firmware/imx/sci.h> #include <linux/module.h> #include
> +<linux/slab.h> #include <linux/sys_soc.h> #include
> +<linux/platform_device.h> #include <linux/of.h>
> +
> +#include <soc/imx/revision.h>
> +
> +#define IMX_SC_SOC_DRIVER_NAME	"imx-sc-soc"
> +
> +#define SOC_REV_MAJOR_OFFSET	0x4
> +#define SOC_REV_MAJOR_MASK	0xf
> +#define SOC_REV_MINOR_OFFSET	0x4
> +#define SOC_REV_MINOR_MASK	0xf
> +
> +#define get_soc_rev_major(rev) ((rev >> SOC_REV_MAJOR_OFFSET) &
> +SOC_REV_MAJOR_MASK) #define get_soc_rev_minor(rev) ((rev >>
> +SOC_REV_MINOR_OFFSET) & SOC_REV_MINOR_MASK)
> +
> +static u32 imx_sc_soc_rev = IMX_CHIP_REVISION_UNKNOWN; static u64
> +imx_sc_soc_uid;
> +
> +static struct imx_sc_ipc *soc_ipc_handle; static struct platform_device
> +*imx_sc_soc_pdev;
> +
> +struct imx_sc_msg_misc_get_soc_id {
> +	struct imx_sc_rpc_msg hdr;
> +	union {
> +		struct {
> +			u32 control;
> +			u16 resource;
> +		} __packed send;
> +		struct {
> +			u32 id;
> +			u16 reserved;
> +		} __packed resp;
> +	} data;
> +};

By learned more, I think probably a more safe reference is to
have one more __packed outside. Then we can unified in this way.

> +
> +struct imx_sc_msg_misc_get_soc_uid {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 id_l;
> +	u32 id_h;
> +};
> +
> +static inline void imx_sc_set_soc_revision(u32 rev) {
> +	imx_sc_soc_rev = rev;
> +}
> +
> +unsigned int imx_get_soc_revision(void) {
> +	return imx_sc_soc_rev;
> +}
> +EXPORT_SYMBOL(imx_get_soc_revision);
> +
> +static u32 imx_init_revision_from_scu(void) {
> +	struct imx_sc_msg_misc_get_soc_id msg;
> +	struct imx_sc_msg_misc_get_soc_uid msg1;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	struct imx_sc_rpc_msg *hdr1 = &msg1.hdr;
> +	u32 id, rev;
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
> +		pr_err("misc get control failed, ret %d\n", ret);

Pls improve the message

> +		return ret;
> +	}
> +
> +	id = msg.data.resp.id;
> +
> +	rev = (id >> 5) & 0xf;
> +	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
> +
> +	imx_sc_set_soc_revision(rev);
> +
> +	hdr1->ver = IMX_SC_RPC_VERSION;
> +	hdr1->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr1->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> +	hdr1->size = 1;

Can't we reuse the first one?

> +
> +	/* the return value of SCU FW is in correct, can NOT check the ret */
> +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg1, true);

If can't check ret, then do not assign?

But how do we make sure the function call is successfully?
How about check other returns? E.g. -ETIMEOUT?

> +
> +	imx_sc_soc_uid = msg1.id_h;
> +	imx_sc_soc_uid <<= 32;
> +	imx_sc_soc_uid |= msg1.id_l;
> +
> +	return rev;
> +}
> +
> +static ssize_t imx_sc_get_soc_uid(struct device *dev,
> +				  struct device_attribute *attr,
> +				  char *buf)
> +{
> +	return sprintf(buf, "%016llX\n", imx_sc_soc_uid); }
> +
> +static struct device_attribute imx_sc_uid =
> +	__ATTR(soc_uid, 0444, imx_sc_get_soc_uid, NULL);
> +
> +static int imx_sc_soc_probe(struct platform_device *pdev) {
> +	struct soc_device_attribute *soc_dev_attr;
> +	u32 rev = IMX_CHIP_REVISION_UNKNOWN;
> +	struct soc_device *soc_dev;
> +	u32 soc_rev;
> +	int ret;
> +
> +	ret = imx_scu_get_handle(&soc_ipc_handle);
> +	if (ret)
> +		return ret;
> +
> +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	soc_dev_attr->family = "Freescale i.MX";
> +
> +	if (of_machine_is_compatible("fsl,imx8qxp"))
> +		soc_dev_attr->soc_id = "i.MX8QXP";
> +	else
> +		soc_dev_attr->soc_id = "unknown";

Why not just return directly? Then we can remove the unknow chip support.
Or we must have to support an unkown chip?

> +
> +	rev = imx_init_revision_from_scu();
> +	if (rev == IMX_CHIP_REVISION_UNKNOWN)
> +		dev_info(&pdev->dev, "CPU identified as %s, unknown revision\n",
> +			 soc_dev_attr->soc_id);
> +	else
> +		dev_info(&pdev->dev, "CPU identified as %s, silicon rev %d.%d\n",
> +			 soc_dev_attr->soc_id,
> +			 get_soc_rev_major(rev),
> +			 get_soc_rev_minor(rev));
> +
> +	soc_rev = imx_get_soc_revision();
> +	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
> +					   get_soc_rev_major(rev),
> +					   get_soc_rev_minor(rev));
> +	if (!soc_dev_attr->revision) {
> +		ret = -ENOMEM;
> +		goto free_soc;
> +	}
> +
> +	of_property_read_string(of_root, "model", &soc_dev_attr->machine);
> +
> +	soc_dev = soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		ret = PTR_ERR(soc_dev);
> +		goto free_rev;
> +	}
> +
> +	ret = device_create_file(soc_device_to_device(soc_dev), &imx_sc_uid);
> +	if (ret)
> +		dev_err(&pdev->dev, "could not register sysfs entry\n");

Improve the message

> +
> +	return ret;
> +
> +free_rev:
> +	kfree(soc_dev_attr->revision);
> +free_soc:
> +	kfree(soc_dev_attr);

If using platform device model, we may use devm_x API as well.

However, I'm a bit wondering whether it's really necessary to model
It as platform device?
 
> +	return ret;
> +}
> +
> +static struct platform_driver imx_sc_soc_driver = {
> +	.driver = {
> +		.name = IMX_SC_SOC_DRIVER_NAME,
> +	},
> +	.probe = imx_sc_soc_probe,
> +};
> +
> +static int __init imx_sc_soc_init(void) {
> +	int ret;
> +
> +	ret = platform_driver_register(&imx_sc_soc_driver);
> +	if (ret)
> +		return ret;
> +
> +	imx_sc_soc_pdev =
> +		platform_device_register_simple(IMX_SC_SOC_DRIVER_NAME,
> +						-1,
> +						NULL,
> +						0);

Is it really necessary?

Regards
Dong Aisheng

> +	if (IS_ERR(imx_sc_soc_pdev)) {
> +		ret = PTR_ERR(imx_sc_soc_pdev);
> +		goto unreg_platform_driver;
> +	}
> +
> +	return 0;
> +
> +unreg_platform_driver:
> +	platform_driver_unregister(&imx_sc_soc_driver);
> +	return ret;
> +}
> +
> +static void __exit imx_sc_soc_exit(void) {
> +	platform_device_unregister(imx_sc_soc_pdev);
> +	platform_driver_unregister(&imx_sc_soc_driver);
> +}
> +
> +module_init(imx_sc_soc_init);
> +module_exit(imx_sc_soc_exit);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
