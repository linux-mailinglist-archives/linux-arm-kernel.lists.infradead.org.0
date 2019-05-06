Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7761466B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eI7xtxg54VCBzjUlgcoD2/n7gU3gKgxDbMRtM+dOW4=; b=nClz6zJ3lcv5tA
	MGr9iQV1v4yAm1T4P/NfHRNyQbCEp7lCGUtjrNrr21076xlFFh/A84jFRG5HvWyi7ivtKUWo6D6UV
	DB7cVCq2/850wN6YC8HmCBQONBlfj3mk3po/6ga5Xj7ipWqrNGW44PMTn/1Ck0aQpcD0T58NwaDHX
	pMr4IhVgvLV/gsoT9eqC6fYftxGqh/rvLVWyCeuFQs/U9smCjP4tkLQShagX4Ae0HolgF5hTNzjYG
	uYFQRIueyH+8tzQg8UwQXQYbRo++ZV4QpcehdcMU4vnbq8LoBueQa6zCT4qn6Pii5HAXcsnITV9YM
	/Q7JjWSzQtfSNrICFGHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZ4k-0000vM-3U; Mon, 06 May 2019 08:34:18 +0000
Received: from mail-eopbgr140082.outbound.protection.outlook.com
 ([40.107.14.82] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZ4b-0000uY-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxHFfh3TZj1ishIC8frkyo4bCVDtUzddCv+dJsLqByk=;
 b=j2F9rWEuMVh0ooDL0mBxy43aWYwTGDiaoO3yEfajiiqqyGafa/PxGxglHdJ4N3RXfPYO6DN9jHaN0E+WDzop1BfghFxF7VAcwdSqiz6C6KBJag8vXu3JsU3l9ZMNmi/WnilTe7Q5HvuIGYfEIVB4cfzoXuYL1k6BBVnxPUy5eKw=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5698.eurprd04.prod.outlook.com (20.178.118.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 08:34:03 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:34:03 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVA0ZmVVXDFSu4o0ao64I3BapSSaZdvqcg
Date: Mon, 6 May 2019 08:34:03 +0000
Message-ID: <AM0PR04MB421139D3806F75ED9426C8DB80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
 <20190505134130.28071-2-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-2-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 260696be-0e18-4916-2e39-08d6d1fd98ad
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5698; 
x-ms-traffictypediagnostic: AM0PR04MB5698:
x-microsoft-antispam-prvs: <AM0PR04MB56981C40740D4249808A760B80300@AM0PR04MB5698.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(376002)(136003)(366004)(199004)(189003)(53936002)(6246003)(86362001)(256004)(14444005)(66066001)(2201001)(110136005)(5660300002)(8936002)(186003)(25786009)(54906003)(4326008)(26005)(2501003)(7736002)(486006)(8676002)(11346002)(81166006)(316002)(44832011)(81156014)(446003)(71190400001)(476003)(305945005)(229853002)(71200400001)(76116006)(73956011)(66946007)(66476007)(55016002)(6116002)(3846002)(2906002)(14454004)(9686003)(66556008)(64756008)(66446008)(6436002)(33656002)(68736007)(99286004)(76176011)(7696005)(102836004)(6506007)(53546011)(52536014)(74316002)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5698;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7Z3l4QwumDYeOMMYVVxR6rr45xUlFjC0SG5CnMb2meCq1Q6XorapF6cZwH4wAqXDPE+nI4oBik1YRE6k9AiEO3wu6gZajYFgE8Y4Yc6nuyInqSRaYArNFextijlKxPKhYgLgxRQcYi81QWCzoIAHD/2nP679t9tMwGQSWxXVR8vkXKWXXGLqrbr/ashTVYkf2o2U3HGM+aTYswOMZTc5/tz3vsxYgisgqa9N6HAXnCBoxVk5SgwPcoRMS+MHSXMawbt11cG3fRP727lCCB/vilQDcTRzhoBLEU++9cN+HqZZYVBl5IE1fdPZWHNWSL7IwSCm4aCWk0mBKaXxMMePmFJ60raXK2m+PDVcvYE0qrE9h6O3WPnsRmQRQpDdOhBjj9SSZ2lJUbHJjGZUiUsNWOIbKdFaA6uKg51tswfR+JI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 260696be-0e18-4916-2e39-08d6d1fd98ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:34:03.6582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5698
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_013409_142382_E9C4DA58 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Sunday, May 5, 2019 9:28 PM
> Subject: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
> 
> This patch adds i.MX8 nvmem ocotp driver to access fuse via RPC to i.MX8
> system controller.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Only a few minor comments.
Otherwise, this patch looks good to me.

First, the patch title probably better to be:
nvmem: imx: add i.MX8 SCU based ocotp driver support

> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/nvmem/Kconfig         |   7 +++
>  drivers/nvmem/Makefile        |   2 +
>  drivers/nvmem/imx-ocotp-scu.c | 135
> ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 144 insertions(+)
>  create mode 100644 drivers/nvmem/imx-ocotp-scu.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig index
> 530d570724c9..0e705c04bd8c 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -36,6 +36,13 @@ config NVMEM_IMX_OCOTP
>  	  This driver can also be built as a module. If so, the module
>  	  will be called nvmem-imx-ocotp.
> 
> +config NVMEM_IMX_OCOTP_SCU
> +	tristate "i.MX8 On-Chip OTP Controller support"

i.MX8 SCU On-Chip OTP Controller support

> +	depends on IMX_SCU
> +	help
> +	  This is a driver for the On-Chip OTP Controller (OCOTP)

SCU On-Chip OTP

> +	  available on i.MX8 SoCs.
> +
>  config NVMEM_LPC18XX_EEPROM
>  	tristate "NXP LPC18XX EEPROM Memory Support"
>  	depends on ARCH_LPC18XX || COMPILE_TEST diff --git
> a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile index
> 2ece8ffffdda..30d653d34e57 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -13,6 +13,8 @@ obj-$(CONFIG_NVMEM_IMX_IIM)	+=
> nvmem-imx-iim.o
>  nvmem-imx-iim-y			:= imx-iim.o
>  obj-$(CONFIG_NVMEM_IMX_OCOTP)	+= nvmem-imx-ocotp.o
>  nvmem-imx-ocotp-y		:= imx-ocotp.o
> +obj-$(CONFIG_NVMEM_IMX_OCOTP_SCU)	+= nvmem-imx-ocotp-scu.o
> +nvmem-imx-ocotp-scu-y		:= imx-ocotp-scu.o
>  obj-$(CONFIG_NVMEM_LPC18XX_EEPROM)	+=
> nvmem_lpc18xx_eeprom.o
>  nvmem_lpc18xx_eeprom-y	:= lpc18xx_eeprom.o
>  obj-$(CONFIG_NVMEM_LPC18XX_OTP)	+= nvmem_lpc18xx_otp.o
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> new file mode 100644 index 000000000000..07e1eba385ac
> --- /dev/null
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * i.MX8 OCOTP fusebox driver
> + *
> + * Copyright 2019 NXP
> + *
> + * Peng Fan <peng.fan@nxp.com>
> + */
> +
> +#include <linux/firmware/imx/sci.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +enum ocotp_devtype {
> +	IMX8QXP,
> +};
> +
> +struct ocotp_devtype_data {
> +	int devtype;
> +	int nregs;
> +};
> +
> +struct ocotp_priv {
> +	struct device *dev;
> +	const struct ocotp_devtype_data *data;
> +	struct imx_sc_ipc *nvmem_ipc;
> +};
> +
> +static struct ocotp_devtype_data imx8qxp_data = {
> +	.devtype = IMX8QXP,
> +	.nregs = 800,
> +};
> +
> +static int imx_scu_ocotp_read(void *context, unsigned int offset,
> +			      void *val, size_t bytes)
> +{
> +	struct ocotp_priv *priv = context;
> +	u32 count, index, num_bytes;
> +	u8 *buf, *p;

It seems buf has never been used as u8.
So probably a better way is:
U32 *buf;
Void *p.
Then we can save all the explicit conversion of u32.

> +	int i, ret;
> +
> +	index = offset >> 2;
> +	num_bytes = round_up((offset % 4) + bytes, 4);
> +	count = num_bytes >> 2;
> +
> +	if (count > (priv->data->nregs - index))
> +		count = priv->data->nregs - index;
> +
> +	p = kzalloc(num_bytes, GFP_KERNEL);
> +	if (!p)
> +		return -ENOMEM;
> +
> +	buf = p;
> +
> +	for (i = index; i < (index + count); i++) {
> +		if (priv->data->devtype == IMX8QXP) {
> +			if ((i > 271) && (i < 544)) {
> +				*(u32 *)buf = 0;
> +				buf += 4;
> +				continue;
> +			}
> +		}
> +
> +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i,
> +						(u32 *)buf);

Is this API already in kernel?

> +		if (ret) {
> +			kfree(p);
> +			return ret;
> +		}
> +		buf += 4;
> +	}
> +
> +	index = offset % 4;
> +	memcpy(val, &p[index], bytes);
> +
> +	kfree(p);
> +
> +	return 0;
> +}
> +
> +static struct nvmem_config imx_scu_ocotp_nvmem_config = {
> +	.name = "imx-ocotp",

imx-scu-octop

> +	.read_only = true,
> +	.word_size = 4,
> +	.stride = 1,
> +	.owner = THIS_MODULE,
> +	.reg_read = imx_scu_ocotp_read,
> +};
> +
> +static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> +	{ .compatible = "fsl,imx8qxp-ocotp", (void *)&imx8qxp_data },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
> +
> +static int imx_scu_ocotp_probe(struct platform_device *pdev) {
> +	struct device *dev = &pdev->dev;
> +	struct ocotp_priv *priv;
> +	struct nvmem_device *nvmem;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	ret = imx_scu_get_handle(&priv->nvmem_ipc);
> +	if (ret)
> +		return ret;
> +
> +	priv->data = of_device_get_match_data(dev);
> +	priv->dev = dev;
> +	imx_scu_ocotp_nvmem_config.size = 4 * priv->data->nregs;
> +	imx_scu_ocotp_nvmem_config.dev = dev;
> +	imx_scu_ocotp_nvmem_config.priv = priv;
> +	nvmem = devm_nvmem_register(dev, &imx_scu_ocotp_nvmem_config);
> +
> +	return PTR_ERR_OR_ZERO(nvmem);
> +}
> +
> +static struct platform_driver imx_scu_ocotp_driver = {
> +	.probe	= imx_scu_ocotp_probe,
> +	.driver = {
> +		.name	= "imx_scu_ocotp",
> +		.of_match_table = imx_scu_ocotp_dt_ids,
> +	},
> +};
> +module_platform_driver(imx_scu_ocotp_driver);
> +
> +MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
> +MODULE_DESCRIPTION("i.MX8QM OCOTP fuse box driver");

i.MX8 SCU OCOTP fuse box driver

Regards
Dong Aisheng

> +MODULE_LICENSE("GPL v2");
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
