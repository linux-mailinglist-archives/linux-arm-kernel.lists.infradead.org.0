Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC4819C46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIRmmT5C+jIeR0n2XK9MO/tKdXv/3eY2YqQDpjdGzeY=; b=T7JX4suM2Lxd6o
	/GkO2LuDbqWxey0tkBf8tRj1pV8dXiW/LsNg5omXLRr8qVb5wNjk2S4SlvCoM+pU0DEGw0qYmhbXV
	3JIyQ2tLvM7a/iYXVQRKtOwosRglshlbGEqPQjlBiDo2Bb3eGIuPghowororug6FmMhVcBRgPzEau
	JdGQlDvQVE1FVoFYJ0KNmIfeAn6TBOdpAX3yOqVVZtMkJS/1I5g+wmbuEw8rNzOHIJyh69vePC3vk
	vABd9QQ45b71bUxTPNyrnJ4x+vSInZ0P8wQfGSqMQMH0r8fMl+lfXQC20aiZ4/BKr915Ia/uAcB5E
	S58OhbJU0Mh1d/OM0mlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3Uj-0005JB-1g; Fri, 10 May 2019 11:15:17 +0000
Received: from mail-ve1eur01on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::62a]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3Ua-0004hj-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxPSGkbkZd4G0DdCxb5KpHcxO6Wlz+q4vPKzmGTukR8=;
 b=lY9vn8aW+KS7/3BFwad4vBDt5VvOFw+jMAdLvB2hYTg2/yD4EqWeRmzezTLN4G1BGhJ8mxhmqirMQ55T/RADMMlxBLee/SYefd16lLHkmr8VvxBs8YvcpIdtWUSpkGFh26vuxdKYUC9xU1P9vRdYn2o5aRPdKGP7brvPioK41rM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3817.eurprd04.prod.outlook.com (52.134.73.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 11:15:01 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 11:15:01 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "catalin.marinas@arm.com"
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
Thread-Index: AQHU8DKsAg9Kriz6B0mooDc33xId46ZkPYEggAAkKLA=
Date: Fri, 10 May 2019 11:15:01 +0000
Message-ID: <DB3PR0402MB3916EAB4C1195F84BEA1CA80F50C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1554965048-19450-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB42117C4AB89EA69E48F95D39800C0@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42117C4AB89EA69E48F95D39800C0@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44db5af1-a416-4116-5efc-08d6d538bea1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3817; 
x-ms-traffictypediagnostic: DB3PR0402MB3817:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <DB3PR0402MB381734567E3F0FA4FF914F85F50C0@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(346002)(39860400002)(366004)(136003)(396003)(199004)(189003)(13464003)(229853002)(316002)(6436002)(4326008)(110136005)(52536014)(53936002)(9686003)(55016002)(99286004)(68736007)(7696005)(76176011)(2501003)(73956011)(478600001)(76116006)(66946007)(66066001)(6116002)(3846002)(74316002)(64756008)(14454004)(66556008)(66476007)(66446008)(7416002)(102836004)(26005)(33656002)(186003)(5660300002)(6506007)(53546011)(256004)(6246003)(305945005)(7736002)(25786009)(81166006)(8936002)(81156014)(8676002)(2201001)(86362001)(446003)(11346002)(476003)(2906002)(486006)(44832011)(71200400001)(71190400001)(921003)(15866825006)(1121003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3817;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WEJZP3Nzltjy2yK8BT1f+ZVrsEgz23vnyb9TdW0JbSr7GgZeygBErArOtYWlMcHEsMOFVipm1wnO3vNu+uOU4lQplHWp2ak/CGEGWW3n0u6mUCHEMZGvGPYkXv0CpHsEll849iHUT/epBVd5ST5kEEQOSSDo2fzDr5VgFOmRA4wXRTrnab5bir/miz6v32BpmlbkBBFar6ATpoNsPvN/Y6CG6MhTE8fCl1hPWpYhvP8RUH4mkybq+N1KMq660uRP8dLaNWj+s+PjvFXvGakbWg5LEH0SVn2uElIvIYTmuxF+pKuCWf8ryeQjFYg649iPTzm5vAX5JDipeBh6qiBxDGoGjAGuSGtAfXoquWTc2KUwp9qBroEo9v4RfPrBnfPgL4+m4j7OobBm6r0mqhsxIVVCw3HDHLe78UM2rKCtFAA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44db5af1-a416-4116-5efc-08d6d538bea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 11:15:01.1284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_041508_645526_AF395296 
X-CRM114-Status: GOOD (  31.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:62a listed in]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Aisheng
	Thanks for comments, I plan to resend this patch to make it align with current drivers/soc/imx/soc-imx8.c implementation about the soc id/revision generation, the ONLY difference would be the system controller SoC driver needs to use platform driver model as it needs to use defer probe to make sure SCU driver is ready, and need to use SCU API for getting soc id, will resend a patch soon, sorry for wasting your time on this patch.

Anson.

> -----Original Message-----
> From: Aisheng Dong
> Sent: Friday, May 10, 2019 5:17 PM
> To: Anson Huang <anson.huang@nxp.com>; catalin.marinas@arm.com;
> will.deacon@arm.com; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; heiko@sntech.de;
> horms+renesas@verge.net.au; olof@lixom.net; Andy Gross
> <andy.gross@linaro.org>; bjorn.andersson@linaro.org;
> jagan@amarulasolutions.com; enric.balletbo@collabora.com;
> stefan.wahren@i2se.com; ezequiel@collabora.com;
> marc.w.gonzalez@free.fr; robh@kernel.org; l.stach@pengutronix.de; Abel
> Vesa <abel.vesa@nxp.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: RE: [PATCH 1/2] soc: imx-sc: add i.MX system controller soc driver
> support
> 
> > From: Anson Huang
> > Sent: Thursday, April 11, 2019 2:49 PM
> >
> > i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> > inside, the system controller is in charge of controlling power, clock and
> fuse etc..
> >
> > This patch adds i.MX system controller soc driver support, Linux
> > kernel has to communicate with system controller via MU (message unit)
> > IPC to get soc revision, uid etc..
> >
> > With this patch, soc info can be read from sysfs:
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
> > i.mx8qxp-mek# cat /sys/devices/soc0/soc_uid
> > 7B64280B57AC1898
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/soc/imx/Kconfig      |   7 ++
> >  drivers/soc/imx/Makefile     |   1 +
> >  drivers/soc/imx/soc-imx-sc.c | 220
> > +++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 228 insertions(+)
> >  create mode 100644 drivers/soc/imx/soc-imx-sc.c
> >
> > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > d80f899..c902b89 100644
> > --- a/drivers/soc/imx/Kconfig
> > +++ b/drivers/soc/imx/Kconfig
> > @@ -7,4 +7,11 @@ config IMX_GPCV2_PM_DOMAINS
> >  	select PM_GENERIC_DOMAINS
> >  	default y if SOC_IMX7D
> >
> > +config IMX_SC_SOC
> > +	depends on IMX_SCU || COMPILE_TEST
> 
> COMPILE_TEST may not work due to dependency
> 
> > +	tristate "i.MX System Controller SoC support"
> 
> Can it build as module?
> I did not see soc_device_register() is exported.
> 
> > +	help
> > +	   If you say yes here you get support for the i.MX System
> > +	   Controller SoC module.
> > +
> >  endmenu
> > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> > 506a6f3..d00606d 100644
> > --- a/drivers/soc/imx/Makefile
> > +++ b/drivers/soc/imx/Makefile
> > @@ -1,2 +1,3 @@
> >  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
> >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> > +obj-$(CONFIG_IMX_SC_SOC) += soc-imx-sc.o
> > diff --git a/drivers/soc/imx/soc-imx-sc.c
> > b/drivers/soc/imx/soc-imx-sc.c new file mode 100644 index
> > 0000000..029d754
> > --- /dev/null
> > +++ b/drivers/soc/imx/soc-imx-sc.c
> > @@ -0,0 +1,220 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <dt-bindings/firmware/imx/rsrc.h> #include
> > +<linux/firmware/imx/sci.h> #include <linux/module.h> #include
> > +<linux/slab.h> #include <linux/sys_soc.h> #include
> > +<linux/platform_device.h> #include <linux/of.h>
> > +
> > +#include <soc/imx/revision.h>
> > +
> > +#define IMX_SC_SOC_DRIVER_NAME	"imx-sc-soc"
> > +
> > +#define SOC_REV_MAJOR_OFFSET	0x4
> > +#define SOC_REV_MAJOR_MASK	0xf
> > +#define SOC_REV_MINOR_OFFSET	0x4
> > +#define SOC_REV_MINOR_MASK	0xf
> > +
> > +#define get_soc_rev_major(rev) ((rev >> SOC_REV_MAJOR_OFFSET) &
> > +SOC_REV_MAJOR_MASK) #define get_soc_rev_minor(rev) ((rev >>
> > +SOC_REV_MINOR_OFFSET) & SOC_REV_MINOR_MASK)
> > +
> > +static u32 imx_sc_soc_rev = IMX_CHIP_REVISION_UNKNOWN; static u64
> > +imx_sc_soc_uid;
> > +
> > +static struct imx_sc_ipc *soc_ipc_handle; static struct
> > +platform_device *imx_sc_soc_pdev;
> > +
> > +struct imx_sc_msg_misc_get_soc_id {
> > +	struct imx_sc_rpc_msg hdr;
> > +	union {
> > +		struct {
> > +			u32 control;
> > +			u16 resource;
> > +		} __packed send;
> > +		struct {
> > +			u32 id;
> > +			u16 reserved;
> > +		} __packed resp;
> > +	} data;
> > +};
> 
> By learned more, I think probably a more safe reference is to have one more
> __packed outside. Then we can unified in this way.
> 
> > +
> > +struct imx_sc_msg_misc_get_soc_uid {
> > +	struct imx_sc_rpc_msg hdr;
> > +	u32 id_l;
> > +	u32 id_h;
> > +};
> > +
> > +static inline void imx_sc_set_soc_revision(u32 rev) {
> > +	imx_sc_soc_rev = rev;
> > +}
> > +
> > +unsigned int imx_get_soc_revision(void) {
> > +	return imx_sc_soc_rev;
> > +}
> > +EXPORT_SYMBOL(imx_get_soc_revision);
> > +
> > +static u32 imx_init_revision_from_scu(void) {
> > +	struct imx_sc_msg_misc_get_soc_id msg;
> > +	struct imx_sc_msg_misc_get_soc_uid msg1;
> > +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> > +	struct imx_sc_rpc_msg *hdr1 = &msg1.hdr;
> > +	u32 id, rev;
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
> > +		pr_err("misc get control failed, ret %d\n", ret);
> 
> Pls improve the message
> 
> > +		return ret;
> > +	}
> > +
> > +	id = msg.data.resp.id;
> > +
> > +	rev = (id >> 5) & 0xf;
> > +	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
> > +
> > +	imx_sc_set_soc_revision(rev);
> > +
> > +	hdr1->ver = IMX_SC_RPC_VERSION;
> > +	hdr1->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr1->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > +	hdr1->size = 1;
> 
> Can't we reuse the first one?
> 
> > +
> > +	/* the return value of SCU FW is in correct, can NOT check the ret */
> > +	ret = imx_scu_call_rpc(soc_ipc_handle, &msg1, true);
> 
> If can't check ret, then do not assign?
> 
> But how do we make sure the function call is successfully?
> How about check other returns? E.g. -ETIMEOUT?
> 
> > +
> > +	imx_sc_soc_uid = msg1.id_h;
> > +	imx_sc_soc_uid <<= 32;
> > +	imx_sc_soc_uid |= msg1.id_l;
> > +
> > +	return rev;
> > +}
> > +
> > +static ssize_t imx_sc_get_soc_uid(struct device *dev,
> > +				  struct device_attribute *attr,
> > +				  char *buf)
> > +{
> > +	return sprintf(buf, "%016llX\n", imx_sc_soc_uid); }
> > +
> > +static struct device_attribute imx_sc_uid =
> > +	__ATTR(soc_uid, 0444, imx_sc_get_soc_uid, NULL);
> > +
> > +static int imx_sc_soc_probe(struct platform_device *pdev) {
> > +	struct soc_device_attribute *soc_dev_attr;
> > +	u32 rev = IMX_CHIP_REVISION_UNKNOWN;
> > +	struct soc_device *soc_dev;
> > +	u32 soc_rev;
> > +	int ret;
> > +
> > +	ret = imx_scu_get_handle(&soc_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	soc_dev_attr->family = "Freescale i.MX";
> > +
> > +	if (of_machine_is_compatible("fsl,imx8qxp"))
> > +		soc_dev_attr->soc_id = "i.MX8QXP";
> > +	else
> > +		soc_dev_attr->soc_id = "unknown";
> 
> Why not just return directly? Then we can remove the unknow chip support.
> Or we must have to support an unkown chip?
> 
> > +
> > +	rev = imx_init_revision_from_scu();
> > +	if (rev == IMX_CHIP_REVISION_UNKNOWN)
> > +		dev_info(&pdev->dev, "CPU identified as %s, unknown
> revision\n",
> > +			 soc_dev_attr->soc_id);
> > +	else
> > +		dev_info(&pdev->dev, "CPU identified as %s, silicon
> rev %d.%d\n",
> > +			 soc_dev_attr->soc_id,
> > +			 get_soc_rev_major(rev),
> > +			 get_soc_rev_minor(rev));
> > +
> > +	soc_rev = imx_get_soc_revision();
> > +	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
> > +					   get_soc_rev_major(rev),
> > +					   get_soc_rev_minor(rev));
> > +	if (!soc_dev_attr->revision) {
> > +		ret = -ENOMEM;
> > +		goto free_soc;
> > +	}
> > +
> > +	of_property_read_string(of_root, "model", &soc_dev_attr-
> >machine);
> > +
> > +	soc_dev = soc_device_register(soc_dev_attr);
> > +	if (IS_ERR(soc_dev)) {
> > +		ret = PTR_ERR(soc_dev);
> > +		goto free_rev;
> > +	}
> > +
> > +	ret = device_create_file(soc_device_to_device(soc_dev),
> &imx_sc_uid);
> > +	if (ret)
> > +		dev_err(&pdev->dev, "could not register sysfs entry\n");
> 
> Improve the message
> 
> > +
> > +	return ret;
> > +
> > +free_rev:
> > +	kfree(soc_dev_attr->revision);
> > +free_soc:
> > +	kfree(soc_dev_attr);
> 
> If using platform device model, we may use devm_x API as well.
> 
> However, I'm a bit wondering whether it's really necessary to model It as
> platform device?
> 
> > +	return ret;
> > +}
> > +
> > +static struct platform_driver imx_sc_soc_driver = {
> > +	.driver = {
> > +		.name = IMX_SC_SOC_DRIVER_NAME,
> > +	},
> > +	.probe = imx_sc_soc_probe,
> > +};
> > +
> > +static int __init imx_sc_soc_init(void) {
> > +	int ret;
> > +
> > +	ret = platform_driver_register(&imx_sc_soc_driver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	imx_sc_soc_pdev =
> > +
> 	platform_device_register_simple(IMX_SC_SOC_DRIVER_NAME,
> > +						-1,
> > +						NULL,
> > +						0);
> 
> Is it really necessary?
> 
> Regards
> Dong Aisheng
> 
> > +	if (IS_ERR(imx_sc_soc_pdev)) {
> > +		ret = PTR_ERR(imx_sc_soc_pdev);
> > +		goto unreg_platform_driver;
> > +	}
> > +
> > +	return 0;
> > +
> > +unreg_platform_driver:
> > +	platform_driver_unregister(&imx_sc_soc_driver);
> > +	return ret;
> > +}
> > +
> > +static void __exit imx_sc_soc_exit(void) {
> > +	platform_device_unregister(imx_sc_soc_pdev);
> > +	platform_driver_unregister(&imx_sc_soc_driver);
> > +}
> > +
> > +module_init(imx_sc_soc_init);
> > +module_exit(imx_sc_soc_exit);
> > --
> > 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
