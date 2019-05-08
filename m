Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208A2178B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRdujNNmTmx4JDOy7TV/ViuEClEMpCkbaEgDb8BRSFY=; b=SUxeUJGtAeiOuW
	ltILZaiMqY7Qt+aqvo3hda4q1yrif/TLeXAqHZAEEnXEYY9t9Gnaa2IZeFMfcPbx2FmQZ5J9S7boJ
	9REmF4sjdYSGgAW8AcLXfF6mW0/kqiTBQLfw94K0EhWcrvpNpEuqbUA5Ms8ksyh/Lao73gTrF2s+A
	rjtciot+Oux5tLPsN2zHzbNrMHI3mEON6NfLUBpj6bYdfo/WbKDV0XHd2DsmeklhdLlKWP+kbZzkC
	tjGZfvi+Lo7GBKGTYThfhmKqWnVr8u1bB0W4OwlnQk8s3IY36KPGkaRSYWaYve6Uya4St/otKB/ux
	ek1fKgBCP7lSWfoeGW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOL2H-0005fL-Qm; Wed, 08 May 2019 11:46:57 +0000
Received: from mail-eopbgr60055.outbound.protection.outlook.com ([40.107.6.55]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOL28-0005er-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+aYzL8R9Ti1Otp9XhkSYfswvWsS3AIMU4dzrM5TW2Y=;
 b=DPlDJ7l/vOcYe2XEqI+jfwdPY8+iWN4AEb5Dtsz3JqpsM9dc1h/wvhxLptGqpmmy3Jf5Brz+ARxs2vSfEmYclE/5hdIoOIaKPjT6Rp7pWqxXRBO1cmFD74iAHnkTOXognBx/pJF5xPHM/blHiZ4ub3KLbyP2pMI2qVpCD4guw/o=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4868.eurprd04.prod.outlook.com (20.177.40.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 11:46:45 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 11:46:45 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: RE: [PATCH V2 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH V2 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVBUmVDC6itOTi5ECUsPpT5wBgxaZhFqGw
Date: Wed, 8 May 2019 11:46:45 +0000
Message-ID: <AM0PR04MB4211796D47D5AB4A2F98102F80320@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190508030927.16668-1-peng.fan@nxp.com>
 <20190508030927.16668-2-peng.fan@nxp.com>
In-Reply-To: <20190508030927.16668-2-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c4b134f-3056-4dd7-39ce-08d6d3aad8da
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4868; 
x-ms-traffictypediagnostic: AM0PR04MB4868:
x-microsoft-antispam-prvs: <AM0PR04MB486818776EE29B5633B71B6C80320@AM0PR04MB4868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(136003)(39860400002)(346002)(366004)(189003)(199004)(53936002)(7736002)(8676002)(33656002)(99286004)(81166006)(305945005)(110136005)(54906003)(6506007)(6116002)(3846002)(6246003)(74316002)(6436002)(229853002)(2201001)(2501003)(76116006)(66476007)(2906002)(64756008)(66556008)(186003)(86362001)(66946007)(102836004)(73956011)(44832011)(71190400001)(71200400001)(66066001)(9686003)(316002)(478600001)(52536014)(66446008)(76176011)(55016002)(25786009)(68736007)(5660300002)(81156014)(14454004)(14444005)(26005)(256004)(486006)(8936002)(7416002)(11346002)(476003)(7696005)(446003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4868;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P/YLP/TZs9zsmLQsdeQCIIEi2CupNM/xxfx1xfsV8P1pwae8jr3CVsMA28cAqSeIaW3svVUpn0b+rzYdNLrVN6IExs0KhE9/khve6kgTDAeOziBMhLjSDiEcogkWnGT9cT9/oqZW8MLLqKYzqSPef3f7fPtSGc+znhkaKIzeSD9VrNtLUPWiunVUrAH5OnscF3ueWlnI6ICp6vNLDn4waZQZkxX5LchnWSwaC9WfVKyi96dMrI763MWacTxIaR3AQYMb87sO9hoe+LlvTvbZp8nwiZ8PVp87AsNFHQk0arY4LGr19nY6mR9acFosvRfBYzvwJM171/ThG8OZORvDfxzm4lJCBZpe9xNOR8pUCpiAdMDt5sik5UyI6LgjdjRa6vE6FEN7n4W96v2RL4GwmIp819FeifJMA5ilsp6VSaA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4b134f-3056-4dd7-39ce-08d6d3aad8da
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 11:46:45.4955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_044648_758500_86D166BB 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan
> Sent: Wednesday, May 8, 2019 10:56 AM
> 
> This patch adds i.MX8 nvmem ocotp driver to access fuse via RPC to i.MX8
> system controller.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  Add "scu" or "SCU", Add imx_sc_misc_otp_fuse_read, minor fixes
> 
>  drivers/nvmem/Kconfig         |   7 ++
>  drivers/nvmem/Makefile        |   2 +
>  drivers/nvmem/imx-ocotp-scu.c | 170
> ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 179 insertions(+)
>  create mode 100644 drivers/nvmem/imx-ocotp-scu.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig index
> 530d570724c9..79afe44195a1 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -36,6 +36,13 @@ config NVMEM_IMX_OCOTP
>  	  This driver can also be built as a module. If so, the module
>  	  will be called nvmem-imx-ocotp.
> 
> +config NVMEM_IMX_OCOTP_SCU
> +	tristate "i.MX8 SCU On-Chip OTP Controller support"
> +	depends on IMX_SCU
> +	help
> +	  This is a driver for the SCU On-Chip OTP Controller (OCOTP)
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
> new file mode 100644 index 000000000000..038e744c8588
> --- /dev/null
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -0,0 +1,170 @@
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
> +struct imx_sc_msg_req_misc_fuse_read {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 word;
> +} __packed;
> +
> +struct imx_sc_msg_resp_misc_fuse_read {
> +	struct imx_sc_rpc_msg hdr;
> +	u32 val;
> +} __packed;
> +

How about
struct imx_sc_msg_misc_fuse_read {
	struct imx_sc_rpc_msg hdr;
	union {
		u32 word;
		u32 val;
	} data;
} __packed;

Then we can save one struct and convert.

> +static struct ocotp_devtype_data imx8qxp_data = {
> +	.devtype = IMX8QXP,
> +	.nregs = 800,
> +};
> +
> +static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
> +				     u32 *val)
> +{
> +	struct imx_sc_msg_req_misc_fuse_read msg;
> +	struct imx_sc_msg_resp_misc_fuse_read *resp;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	int ret;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = (uint8_t)IMX_SC_RPC_SVC_MISC;
> +	hdr->func = (uint8_t)IMX_SC_MISC_FUNC_OTP_FUSE_READ;

Pls drop the unnecessary type conversion.

> +	hdr->size = 2;
> +
> +	msg.word = word;
> +
> +	ret = imx_scu_call_rpc(ipc, &msg, true);
> +	if (ret)
> +		return ret;
> +
> +	resp = (struct imx_sc_msg_resp_misc_fuse_read *)&msg;
> +	if (val != NULL)

Drop this unnecessary check

> +		*val = resp->val;
> +
> +	return 0;
> +}
> +
> +static int imx_scu_ocotp_read(void *context, unsigned int offset,
> +			      void *val, size_t bytes)
> +{
> +	struct ocotp_priv *priv = context;
> +	u32 count, index, num_bytes;
> +	u32 *buf;
> +	void *p;
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

Still need convert?

> +				buf += 4;

I'm not sure this is right
Shouldn't it be buf++ ?

> +				continue;
> +			}
> +		}
> +
> +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
> +		if (ret) {
> +			kfree(p);
> +			return ret;
> +		}
> +		buf++;
> +	}
> +
> +	memcpy(val, p + offset % 4, bytes);

Is there a build warning?
I wonder a more safe way maybe:
memcpy(val, (u8 *)p + offset % 4, byptes);

Regards
Dong Aisheng

> +
> +	kfree(p);
> +
> +	return 0;
> +}
> +
> +static struct nvmem_config imx_scu_ocotp_nvmem_config = {
> +	.name = "imx-scu-ocotp",
> +	.read_only = true,
> +	.word_size = 4,
> +	.stride = 1,
> +	.owner = THIS_MODULE,
> +	.reg_read = imx_scu_ocotp_read,
> +};
> +
> +static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> +	{ .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data },
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
> +MODULE_DESCRIPTION("i.MX8 SCU OCOTP fuse box driver");
> +MODULE_LICENSE("GPL v2");
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
