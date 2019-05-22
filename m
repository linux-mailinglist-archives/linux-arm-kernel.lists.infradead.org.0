Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83EA262A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jxJszC0NsLNHHYD121tPzy0tk70MsvZeM/WrVIvAMA=; b=ZN3qESv7lUeBmd
	cWie2KX72/VGA0ck3j1//Y1QFz1xl3pQxeTSPQPXNE89XthU+nt89HLLK5PKeKmf3MSYMD7y3CMCh
	j+jEcdwyUz1v7L7w64J1olQ8BA44gx91SYhs0txYr9YLLG35xCoaHK775rIsylDaC1Dzn+W75Soq6
	/f/EGLi6Yz4vipVq03RJ0dCcey6mF8d40MY1uneb2P1eX+lJhssX//v/2sveWObDMvuTOQiE5FaIi
	A5MBmVzTd0Fn6V0vs5EW6dR0JSlxaOvV8Mnrp5jnPN/JgurzbAaqnDJMiEMqQDKedi2TrWFLftoII
	tZpWo2pZloAm49aShqDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOy5-0003lK-4M; Wed, 22 May 2019 10:59:33 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOxx-0003kt-Qv
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E/ridlp7tUAyBzpi5gaohhfqrbU6JWE1TDOdO5e3Ko0=;
 b=MPFcX9QXFyrqRbIXCtCD55HjYN/lEcbJonuPjugwWbQgXlb5CoJHrYI0NZJ/HKv+pb1iy222C1uub4cSCva56g/9a6pSoaeNDeuomtUHYDVxNs4lMJ/uYUA1VaMAkJwdp3h2q8YnWyDojJPXAo+nFoluBR3JBwlILuG6aMR7RoU=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6354.eurprd04.prod.outlook.com (10.255.182.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Wed, 22 May 2019 10:59:22 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:59:22 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V5 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V5 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVEGbg2QLbsVO1oE+jxvonbRb8fqZ2+gOA
Date: Wed, 22 May 2019 10:59:22 +0000
Message-ID: <20190522105921.p7h5sdrf4ykvfdz3@fsr-ub1664-175>
References: <1558505898-722-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1558505898-722-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6b6f141-02c3-4e16-ec3a-08d6dea48bf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6354; 
x-ms-traffictypediagnostic: AM0PR04MB6354:
x-microsoft-antispam-prvs: <AM0PR04MB6354A966885ED905E190206EF6000@AM0PR04MB6354.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(366004)(189003)(199004)(8936002)(25786009)(5660300002)(33716001)(26005)(1076003)(186003)(8676002)(6636002)(81156014)(81166006)(305945005)(66066001)(53936002)(3846002)(14454004)(6116002)(498600001)(2906002)(7416002)(6486002)(76116006)(91956017)(6246003)(229853002)(256004)(486006)(71200400001)(68736007)(71190400001)(54906003)(44832011)(99286004)(102836004)(76176011)(53546011)(6506007)(6862004)(446003)(11346002)(476003)(7736002)(4326008)(6512007)(9686003)(73956011)(66946007)(66556008)(66446008)(66476007)(64756008)(86362001)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6354;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BxkcUSQ5sWa8tTz9qT4LVTq3qbsKm1Iq9E5EX9j3J2CnE7/c32uy3NCCi2CAHibPN9SgXPxCb83q2kBxxCO+K3Tif6P9vMrkof4zyyJmcjAJJ/PKQMXjCRhUhq9VYdCTmCBH3JMpEnP99Iy96kKEYWpm5Y7kdlXb4MMrmZ8aE9117N8VF1WxUflXI7bbdZsE69bLH/qYGHyuBB/W4V+RGsHRbxLurOy/4ZV1UJwurokrTyyKW7WlgoiqeASumerxna0U3jzIasoDTeHuoE2MxEhYehKNT372B0QP1PlyLJyFoRIN1HzlgmXlfACvm950Uhni/P2SNAzZpCWxU2h6tpaetfAdpDq5p7G8T/zDdBJcfgVqFTfu2PSeG67L3IfQxWHZ/TnX0XUBb6vY8ylEGAeDfsJv/MrHZZLdFbplhmY=
Content-ID: <266E643100E92A45A5723DCAFD39CF99@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b6f141-02c3-4e16-ec3a-08d6dea48bf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:59:22.2453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_035925_884544_1263ABA6 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
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
Cc: "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-05-22 06:23:31, Anson Huang wrote:
> Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
> driver dependency into Kconfig as CONFIG_IMX_SCU must be
> selected to support i.MX SCU SoC driver, also need to use
> platform driver model to make sure IMX_SCU driver is probed
> before i.MX SCU SoC driver.
> 
> With this patch, SoC info can be read from sysfs:
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/family
> Freescale i.MX
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/soc_id
> 0x2
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/machine
> Freescale i.MX8QXP MEK
> 
> i.mx8qxp-mek# cat /sys/devices/soc0/revision
> 1.1
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For the entire series:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> Changes since V4:
> 	- using extern struct of_root instead of searching it again from DT;
> 	- add of_node_put() after "fsl,imx-scu" is found.
> ---
>  drivers/soc/imx/Kconfig       |   9 +++
>  drivers/soc/imx/Makefile      |   1 +
>  drivers/soc/imx/soc-imx-scu.c | 155 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 165 insertions(+)
>  create mode 100644 drivers/soc/imx/soc-imx-scu.c
> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index d80f899..cbc1a41 100644
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
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index d6b529e0..ddf343d 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> +obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> new file mode 100644
> index 0000000..17deb4e
> --- /dev/null
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/firmware/imx/rsrc.h>
> +#include <linux/firmware/imx/sci.h>
> +#include <linux/slab.h>
> +#include <linux/sys_soc.h>
> +#include <linux/platform_device.h>
> +#include <linux/of.h>
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
> +		struct {
> +			u32 id;
> +			u16 reserved;
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
> +static int imx_scu_soc_probe(struct platform_device *pdev)
> +{
> +	struct soc_device_attribute *soc_dev_attr;
> +	struct soc_device *soc_dev;
> +	u32 id, val;
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
> +static int __init imx_scu_soc_init(void)
> +{
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
> +device_initcall(imx_scu_soc_init);
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
