Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50EA1FAC31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87P62/tdsYiDN59ft1iHQepllIIFIlK+TnHmsEl3Bvg=; b=rd+GeBBN62GvBO
	oip0nq8w61O9l0a5bAZtZWTIR1J9juQwCg0+IPlGSaF5mU5dcZaFCgxbEawZfs8Tn33i8AbDK2OXk
	OiRyKne3REMf2Reqp9J4Gy+fsUA3BzQtqp43VJtdarU8gbEhYS4jbtJrfPnPJgzJHjL3OjtAKhwJn
	mG3nqkNGnFqLdx+wwRCQlZgfhTYpi7lVnj/FW6g2ZaHcHBk62jX2iDv2gMyr8bPqYxSb2/XruIxIE
	wmIezOopNDCg2lM5QOXVxEgeQCt8mfhBXV8aAZCq4aq47+gMvTYwzjc9IaQqF98xGmKTPxOLyckzy
	7hi5gPMVra/4Z175o/4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7lY-0005V3-72; Tue, 16 Jun 2020 09:20:24 +0000
Received: from mail-eopbgr80088.outbound.protection.outlook.com ([40.107.8.88]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7lB-0004mh-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:20:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gkVwlsdAWGARB03uWJJrEhj7WZN43AHvZHsttg/KARoPzIicY5kAdZXPKQ9Ezs1q3WalS1wUFaMXBQ1xnAttDk+KISkqgtibQONHTOj7lIzq3I79UfoxiHb7tFULbkElgXR9fQoXg4U5Bhr1iCHNttdFC1KlRwaNQdhHFv0TvnMGArVkfRXNMd6tb2NRW3NjZRiv12gr+TYAkDBEoFUbb6HkqscTDlgCYuhiJuqFzodLK0ZQviuJ9F71bKEDMu4PjQBCweP1EF1YxWFkBujAABr6I0KMYigFK84tHQm0p4UMWfHoEXbyyK+haempOMRceZyC9yP5ePHM8PJ1tvAYSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9GNuJfVptZDNVV1KxPx7JiEXRfTjY46HEX79bBEWB1k=;
 b=VAbB2ZG2xfKIZ2ECCz9dMeF87LNzwTG7yxq66Hq8HrjU4SVY/Uom5zVUKyjjbuSeJYODPX3VB5dzU9GelLYCve78Bf8HZL5nxsA3v2ZQzw5PoZeqYGbgAskqrRbklSrSJjVJi8K7ilFGQPhucJb7QPdKnTZUuu/rZXJCYQnw5fiQ2Jx+x2LPmFyZWmwUJRh6AbZ5UxVl9FskNpofg0rDpZtVnUnRdYe1Mzo1x5Ix21tOXawxomCc0Gdh78hETmHlw4aca7CmPnC3zQ/BYNM/fjy4wBA/K98WDPJFNOkulGVAKDXYg6HAW2NtRDwqKQfR4al/ZJrV9xobQx+17rcFYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9GNuJfVptZDNVV1KxPx7JiEXRfTjY46HEX79bBEWB1k=;
 b=nJc6zbhAjHtHdvxMF+ZCPDTJqINglds1hlnsbYg8olPWH2XwS79ZFPyr8rsWLVGNZigaD6vma0yB+g5q15Jh+hBhzgM2yozcjMS9EKaZoKlFo4ynR+VMXDTyLB2i2N6jzv7YqE2oXp3O6n31EqAVMotfPkUlX0OoT/bfHRQgrMM=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6376.eurprd04.prod.outlook.com (2603:10a6:20b:d8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Tue, 16 Jun
 2020 09:19:52 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 09:19:52 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl driver
 as module
Thread-Topic: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl driver
 as module
Thread-Index: AQHWP+Xe3FoK7wvcIE2WhqslqxeLCKja/NXg
Date: Tue, 16 Jun 2020 09:19:51 +0000
Message-ID: <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 61f62af4-0a52-49ee-6764-08d811d66cdf
x-ms-traffictypediagnostic: AM6PR04MB6376:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6376A3D8B476FE0DB67F9C3A809D0@AM6PR04MB6376.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5/IN93Pl7V/3CE8AzlHYjurk9MeqGFN2qTrPthsZfILp48fxU28Utjco069MyDzGwln3iDapOKhMPSZ/f68oPH8mfCQKxXMimHSXL6zZPY5kB3Ye+lzxoiXFseRVxHP2+mECptvZ2fpoLxdue7I1pYNhkeIbevzlNx8OwLohKurQ6lIz4CL3IbEkNZtE0H0lPlaFd/3cjyjfjrvwoxL6xTN3mxC3GYCVfcU/Yo1o3OM9uS/TMQAip/yWWRI91O3MnEghr7YZ9c1FLm9eTkD4tISU/oIlorrivSIBaRd97Kqqhy03jClPkvsNMJVcO2w+/SkRKdmvsaJx6xFffE5wwsrhPXzx88iLTjidEUR1DbypegM3utshTcAbJ/gJDTGI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(66476007)(66556008)(55016002)(66946007)(4326008)(9686003)(52536014)(66446008)(316002)(64756008)(71200400001)(5660300002)(186003)(26005)(6506007)(110136005)(8936002)(76116006)(8676002)(2906002)(7696005)(83380400001)(44832011)(86362001)(33656002)(478600001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 467k9uXLzOMcOKGDTEdHhGcejZvgYAfwKDjBcYWVZYGCL+/QIi0zoYxHCkZMoutMbmZG6sFzWO4NSbOIxTK7+U6dMCrSwBq69pqy0qDUAcCdSanQyWgJH4aVtwOrC7b/OVaIRuT0GcJVdpjf6Q3LmMew5SrWXLFtobaxCeQhWI7S2qhgca7/t1xMbdbxs3eucYOe+ONalI+O4ercWFcFeVoz6UiUTqmHX3HNj3w44DVK9gEauE0lJmm0LInFoqN6zYNsSHMHJ+NnFtpjpuRodMXjmInoHEtGnXHUlMlA8iY9jt2Z+SEgu1Rzw+iI53nzg5RnGb+8QLt0dvw+8w7gG6NW6CPYj5MeeXZJA6oM7ae8IBt3d/XZfElpiDIcqA7jDHs1QSZpJB5VPDs7W3Fw0UBqFT3nNo7ple8H63aixsBGIh5Ioz2tuzdNabqB+5fdxzkQogVBXzaJlSRrmwIrMYzi1kMn8nkETu+s7ulKnzBBpQvY6DHhaJWlItyRvsn2
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f62af4-0a52-49ee-6764-08d811d66cdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 09:19:51.8939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lwtkE18D02rs5Pr6JgT3pJILbhJVmaWUCEYKY9+Umwrn8MsbNYP1eiegrBz4uETIHkdHVAO8thb6ezhcunJVrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_022001_852770_F5D3AF72 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.88 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
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

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Thursday, June 11, 2020 7:35 PM
> 
> To support building i.MX SCU pinctrl driver as module, below things need to be
> changed:
> 
>     - Export SCU related functions and use "IS_ENABLED" instead of
>       "ifdef" to support SCU pinctrl driver user and itself to be
>       built as module;
>     - Use function callbacks for SCU related functions in pinctrl-imx.c
>       in order to support the scenario of PINCTRL_IMX is built in
>       while PINCTRL_IMX_SCU is built as module;
>     - All drivers using SCU pinctrl driver need to initialize the
>       SCU related function callback;
>     - Change PINCTR_IMX_SCU to tristate;
>     - Add module author, description and license.
> 
> With above changes, i.MX SCU pinctrl driver can be built as module.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V4:
> 	- add module author and description.
> ---
>  drivers/pinctrl/freescale/Kconfig           |  2 +-
>  drivers/pinctrl/freescale/pinctrl-imx.c     | 18 ++++-----
>  drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
>  drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  3 ++
> drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  3 ++
> drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  3 ++
>  drivers/pinctrl/freescale/pinctrl-scu.c     |  9 +++++
>  7 files changed, 51 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
> index 4ca44dd..a3a30f1d 100644
> --- a/drivers/pinctrl/freescale/Kconfig
> +++ b/drivers/pinctrl/freescale/Kconfig
> @@ -7,7 +7,7 @@ config PINCTRL_IMX
>  	select REGMAP
> 
>  config PINCTRL_IMX_SCU
> -	bool
> +	tristate "IMX SCU pinctrl driver"
>  	depends on IMX_SCU
>  	select PINCTRL_IMX
> 
> diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c
> b/drivers/pinctrl/freescale/pinctrl-imx.c
> index cb7e0f0..c1faae1 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx.c
> +++ b/drivers/pinctrl/freescale/pinctrl-imx.c
> @@ -372,8 +372,8 @@ static int imx_pinconf_get(struct pinctrl_dev *pctldev,
>  	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
>  	const struct imx_pinctrl_soc_info *info = ipctl->info;
> 
> -	if (info->flags & IMX_USE_SCU)
> -		return imx_pinconf_get_scu(pctldev, pin_id, config);
> +	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get)
> +		return info->imx_pinconf_get(pctldev, pin_id, config);

Pointer check here seems not be necessary

> diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h
> b/drivers/pinctrl/freescale/pinctrl-imx.h
> index 333d32b..bdb86c2 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx.h
> +++ b/drivers/pinctrl/freescale/pinctrl-imx.h
> @@ -75,6 +75,21 @@ struct imx_cfg_params_decode {
>  	bool invert;
>  };
> 
> +/**
> + * @dev: a pointer back to containing device
> + * @base: the offset to the controller in virtual memory  */ struct
> +imx_pinctrl {
> +	struct device *dev;
> +	struct pinctrl_dev *pctl;
> +	void __iomem *base;
> +	void __iomem *input_sel_base;
> +	const struct imx_pinctrl_soc_info *info;
> +	struct imx_pin_reg *pin_regs;
> +	unsigned int group_index;
> +	struct mutex mutex;
> +};
> +
>  struct imx_pinctrl_soc_info {
>  	const struct pinctrl_pin_desc *pins;
>  	unsigned int npins;
> @@ -98,21 +113,13 @@ struct imx_pinctrl_soc_info {
>  				  struct pinctrl_gpio_range *range,
>  				  unsigned offset,
>  				  bool input);
> -};
> -
> -/**
> - * @dev: a pointer back to containing device
> - * @base: the offset to the controller in virtual memory
> - */
> -struct imx_pinctrl {
> -	struct device *dev;
> -	struct pinctrl_dev *pctl;
> -	void __iomem *base;
> -	void __iomem *input_sel_base;
> -	const struct imx_pinctrl_soc_info *info;
> -	struct imx_pin_reg *pin_regs;
> -	unsigned int group_index;
> -	struct mutex mutex;
> +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> +			       unsigned long *config);
> +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> +			       unsigned long *configs, unsigned int num_configs);
> +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> +				      unsigned int *pin_id, struct imx_pin *pin,
> +				      const __be32 **list_p);

Compared with V4, this new implementation seems a bit complicated.
I guess we don't have to support PINCTRL_IMX=y && PINCTRL_IMX_SCU=m case.
Will that make the support a bit easier?

Regards
Aisheng

>  };
> 
>  #define IMX_CFG_PARAMS_DECODE(p, m, o) \ @@ -137,7 +144,7 @@ struct
> imx_pinctrl {  int imx_pinctrl_probe(struct platform_device *pdev,
>  			const struct imx_pinctrl_soc_info *info);
> 
> -#ifdef CONFIG_PINCTRL_IMX_SCU
> +#if IS_ENABLED(CONFIG_PINCTRL_IMX_SCU)
>  #define BM_PAD_CTL_GP_ENABLE		BIT(30)
>  #define BM_PAD_CTL_IFMUX_ENABLE		BIT(31)
>  #define BP_PAD_CTL_IFMUX		27
> @@ -150,23 +157,5 @@ int imx_pinconf_set_scu(struct pinctrl_dev *pctldev,
> unsigned pin_id,  void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
>  			       unsigned int *pin_id, struct imx_pin *pin,
>  			       const __be32 **list_p);
> -#else
> -static inline int imx_pinconf_get_scu(struct pinctrl_dev *pctldev,
> -				      unsigned pin_id, unsigned long *config)
> -{
> -	return -EINVAL;
> -}
> -static inline int imx_pinconf_set_scu(struct pinctrl_dev *pctldev,
> -				      unsigned pin_id, unsigned long *configs,
> -				      unsigned num_configs)
> -{
> -	return -EINVAL;
> -}
> -static inline void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
> -					    unsigned int *pin_id,
> -					    struct imx_pin *pin,
> -					    const __be32 **list_p)
> -{
> -}
>  #endif
>  #endif /* __DRIVERS_PINCTRL_IMX_H */
> diff --git a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
> b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
> index 7f32e57..be3b09e 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
> +++ b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
> @@ -159,6 +159,9 @@ static struct imx_pinctrl_soc_info imx8dxl_pinctrl_info
> = {
>  	.pins = imx8dxl_pinctrl_pads,
>  	.npins = ARRAY_SIZE(imx8dxl_pinctrl_pads),
>  	.flags = IMX_USE_SCU,
> +	.imx_pinconf_get = imx_pinconf_get_scu,
> +	.imx_pinconf_set = imx_pinconf_set_scu,
> +	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
>  };
> 
>  static const struct of_device_id imx8dxl_pinctrl_of_match[] = { diff --git
> a/drivers/pinctrl/freescale/pinctrl-imx8qm.c
> b/drivers/pinctrl/freescale/pinctrl-imx8qm.c
> index 0b6029b..9ba3249 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx8qm.c
> +++ b/drivers/pinctrl/freescale/pinctrl-imx8qm.c
> @@ -292,6 +292,9 @@ static const struct imx_pinctrl_soc_info
> imx8qm_pinctrl_info = {
>  	.pins = imx8qm_pinctrl_pads,
>  	.npins = ARRAY_SIZE(imx8qm_pinctrl_pads),
>  	.flags = IMX_USE_SCU,
> +	.imx_pinconf_get = imx_pinconf_get_scu,
> +	.imx_pinconf_set = imx_pinconf_set_scu,
> +	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
>  };
> 
>  static const struct of_device_id imx8qm_pinctrl_of_match[] = { diff --git
> a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
> b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
> index 1131dc3..05906b9 100644
> --- a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
> +++ b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
> @@ -198,6 +198,9 @@ static struct imx_pinctrl_soc_info imx8qxp_pinctrl_info
> = {
>  	.pins = imx8qxp_pinctrl_pads,
>  	.npins = ARRAY_SIZE(imx8qxp_pinctrl_pads),
>  	.flags = IMX_USE_SCU,
> +	.imx_pinconf_get = imx_pinconf_get_scu,
> +	.imx_pinconf_set = imx_pinconf_set_scu,
> +	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
>  };
> 
>  static const struct of_device_id imx8qxp_pinctrl_of_match[] = { diff --git
> a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
> index 23cf04b..59b5f8a 100644
> --- a/drivers/pinctrl/freescale/pinctrl-scu.c
> +++ b/drivers/pinctrl/freescale/pinctrl-scu.c
> @@ -7,6 +7,7 @@
> 
>  #include <linux/err.h>
>  #include <linux/firmware/imx/sci.h>
> +#include <linux/module.h>
>  #include <linux/of_address.h>
>  #include <linux/pinctrl/pinctrl.h>
>  #include <linux/platform_device.h>
> @@ -41,6 +42,7 @@ int imx_pinctrl_sc_ipc_init(struct platform_device *pdev)
> {
>  	return imx_scu_get_handle(&pinctrl_ipc_handle);
>  }
> +EXPORT_SYMBOL_GPL(imx_pinctrl_sc_ipc_init);
> 
>  int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
>  			unsigned long *config)
> @@ -66,6 +68,7 @@ int imx_pinconf_get_scu(struct pinctrl_dev *pctldev,
> unsigned pin_id,
> 
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(imx_pinconf_get_scu);
> 
>  int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
>  			unsigned long *configs, unsigned num_configs) @@ -101,6
> +104,7 @@ int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned
> pin_id,
> 
>  	return ret;
>  }
> +EXPORT_SYMBOL_GPL(imx_pinconf_set_scu);
> 
>  void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
>  			       unsigned int *pin_id, struct imx_pin *pin, @@ -119,3
> +123,8 @@ void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
>  	dev_dbg(ipctl->dev, "%s: 0x%x 0x%08lx", info->pins[pin->pin].name,
>  		pin_scu->mux_mode, pin_scu->config);
>  }
> +EXPORT_SYMBOL_GPL(imx_pinctrl_parse_pin_scu);
> +
> +MODULE_AUTHOR("Dong Aisheng <aisheng.dong@nxp.com>");
> +MODULE_DESCRIPTION("NXP i.MX SCU common pinctrl driver");
> +MODULE_LICENSE("GPL v2");
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
