Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2DE1FAE54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygihCnzoTN8MD/y6XXCMoF9AoXQACgTcLCBX+6ml7EI=; b=D3FxaVBjDqUVC7
	BJAhn2Vn8jujqx0saFn6ackAhQhP0hxFlaoPxsHlFNL9gPvjf/7l0HssvyDjz13CglKIzm7/mS7GO
	KBFUsB1XddUrEa+qBuzblF/yMl4NTnVCcVwSniRCa/pYFgTlrY3V9UBiZUU9V0haPHphxMhshYgIQ
	GE4RvtG4N9rcbZcaswaNyrZ+kyVbnVYIOdPqm2P+CilZRHp/MktGRYVrAJS7eX70oznGKM+tkG8Wr
	TCBGdd6NTvtqgtFxO7tPMO3vVXwA/pK1vpMsW2r21GVVhjUiYsh89AFay6re+zgY9k+XyRbCmILTV
	jNxMO6Wv6QtTtS+pswJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl959-0005Qn-La; Tue, 16 Jun 2020 10:44:43 +0000
Received: from mail-vi1eur05on2088.outbound.protection.outlook.com
 ([40.107.21.88] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl94y-0005Pf-Q3
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:44:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nsw+Ys/0SvFdaRn3E7AS5vW4fi/W72i2XpH3d8bzU4nwp1CWZh212/GPIrXwhTPX/yV3wkkKRI38E5hzlJe9gf1MdrkoGPSHZBi5BZQgH+xBiNrkRK0T0i8vr1SU+KV7dlygpmujT1o1c9nW863SaDz/+byToRoVG5vty0XxKDStFaKd4yiEXgMH1g/VfG5nB6FVLC41J/hwsyHV3yOgTLUAcxGRw3X59/bRCVOY+SzzTeREOHxNBQYMi/G2/dQvr+J/rlCs+TrAB42CGfXQQuvvYct9xZZCrTAkXZyCyQ7OLRtOkaNTN+LUC03o5Q0OMGd9jBkP0Guam6SQAPjmhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJjp/72SpbIUFREm/ugJjSIbkdd/gRMx2bRcNc0vPtk=;
 b=Ip5DTmEp9F8nJiiVoRDvBb+m5nhqd6ghRanS4+iWP9MewbPLY2tC84VMLw2OOEPGSmLlpE5ioXn4U2h5gdQDxjlhaCOrI/YoxkeSngmUgjW0eDqJmORFEroK96l5SaF52apjKLX1bRGegjgvgLg2LaohbdVGL3UNuFq4fmmTYopl67JWq6SpXQHEAH33ydVov6ZobXEVBnbV/ypJfgH78wVvI9FI7htY8u6MSKL3IygeU+qMrEIurpa/VEbEWMx24YSSq3djV+PCixOsn5ZdsaKnQIqVunn/2tnf8GlGOByWWR4FZ+6Bv6jAc2Z6GGvk7gQcXYQDfXXm70X0dU4d6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VJjp/72SpbIUFREm/ugJjSIbkdd/gRMx2bRcNc0vPtk=;
 b=lHZWkXoH6+IfgYRsc8McMMckBE63hA5g4QchEC9iSKiLSQeMRw+6Wb0hnbJKUHDQA+hadLSnJRWSh8GF8EroTX/c3zjS4AUJnavrY00QTLMPx6gJNnz7sd0+GRKUYR1/Qq7QX0U+7xxFwOx2uzXeJcBLEZJIYJJjhrKbXzvDjPE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3946.eurprd04.prod.outlook.com (2603:10a6:8:10::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21; Tue, 16 Jun
 2020 10:44:27 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.029; Tue, 16 Jun 2020
 10:44:27 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "festevam@gmail.com"
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
Thread-Index: AQHWP+XeJP9OTzRQzUu8oLCGsNFyaKja/seAgAAQIUA=
Date: Tue, 16 Jun 2020 10:44:27 +0000
Message-ID: <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 05bc5bee-0848-425c-0215-08d811e23e50
x-ms-traffictypediagnostic: DB3PR0402MB3946:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3946400E7B165844C35A146AF59D0@DB3PR0402MB3946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i1DYpMf4RvA8I5i3fFtRffvlXglIwPcZhgwXq7dU+kY/z43G+4Zr77GgLpbNkiAPwQDZiXDhX3lHpBbijOgCf7F0TM1xWy5orr8uJWWLtSW0PjhPxDgqZswyYurXf2ZsPp/zcq74SruhTxDAWY4RARbYPIY7RdQTgzeKy6JuMffDnLh/Kg7UgOvM10JfioQIIi53tuM48Ov4nJOB/TzMTaZo4gdM06U7s0iQ6/zvSx59RS4bGV5dWRlwTrLNCfWgsh8p9YF60FU7jzepGVrGNiX793TaEzWHRsRuYjNupF2j/oxouw5MtrYqAVW4ubWcBwam7nhSlR/ppEffwqmBZERxqOHRgWqOcqY8sgFVpPwynfw6iBqOfVfQXsaM/1DL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(346002)(366004)(376002)(4326008)(71200400001)(44832011)(83380400001)(26005)(5660300002)(186003)(66476007)(64756008)(55016002)(9686003)(66946007)(8936002)(316002)(7696005)(6506007)(66556008)(110136005)(2906002)(8676002)(52536014)(86362001)(33656002)(478600001)(76116006)(66446008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZboKMRXEA2y/uU8RnCfl7w3xZvCp1vQqD7cKiDxn9cY4+jhqJUk4jMD9cqNAoDOY6CZ2FZXwA4h4L/SnzhSnh0tdiKlUlprNipeR4aSbkE8tVM5sgjxKBStBMTYsjYhMgQi6ay9nnIqoOcMhE7EvqHc2Jp+e0qZ4p3iGE0/IocJu+5l6OSiz3TgkQdJTcHukPkQ7knnb9gEyR/q+V8EZCU4ErstYVG6sKoQbHWLAxoeyYfGyYIndCgABY/VCLNLZPagjXchvdQJ4tfDu8EbUSMus1N2dsmtqBCgIhdILGvezPFIbONJUUvnVVlvZiMrczv9Q23ubjwC6pfSd/dLIEiNrMX9Q3PXSjCQpKeNrMIv+zOUxKvOHjDoCNYeEknL+eF9vTFW1bxdAPJezuSjXCbr54gytVYVI+nnIULHCbXbNJLc8JEfJ4PxS9/BR/JvLaqnvgO5nPEv0I40iB0nVo7MF4mldDg59qGXxxTYrsCCgqmNQgu+e8kZvfovWnyJ6
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05bc5bee-0848-425c-0215-08d811e23e50
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 10:44:27.7137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eLtVbjQ/M+ac+AqCLb1KgI91jNncO4It/nWvMFbkZYiEKNF5a1hBu81hI4JDNLN/mZHq4BA2Ee3DII8r1t0LRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_034432_923985_5E6F775B 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.88 listed in wl.mailspike.net]
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



> Subject: RE: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl driver as
> module
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Thursday, June 11, 2020 7:35 PM
> >
> > To support building i.MX SCU pinctrl driver as module, below things
> > need to be
> > changed:
> >
> >     - Export SCU related functions and use "IS_ENABLED" instead of
> >       "ifdef" to support SCU pinctrl driver user and itself to be
> >       built as module;
> >     - Use function callbacks for SCU related functions in pinctrl-imx.c
> >       in order to support the scenario of PINCTRL_IMX is built in
> >       while PINCTRL_IMX_SCU is built as module;
> >     - All drivers using SCU pinctrl driver need to initialize the
> >       SCU related function callback;
> >     - Change PINCTR_IMX_SCU to tristate;
> >     - Add module author, description and license.
> >
> > With above changes, i.MX SCU pinctrl driver can be built as module.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V4:
> > 	- add module author and description.
> > ---
> >  drivers/pinctrl/freescale/Kconfig           |  2 +-
> >  drivers/pinctrl/freescale/pinctrl-imx.c     | 18 ++++-----
> >  drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
> >  drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  3 ++
> > drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  3 ++
> > drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  3 ++
> >  drivers/pinctrl/freescale/pinctrl-scu.c     |  9 +++++
> >  7 files changed, 51 insertions(+), 44 deletions(-)
> >
> > diff --git a/drivers/pinctrl/freescale/Kconfig
> > b/drivers/pinctrl/freescale/Kconfig
> > index 4ca44dd..a3a30f1d 100644
> > --- a/drivers/pinctrl/freescale/Kconfig
> > +++ b/drivers/pinctrl/freescale/Kconfig
> > @@ -7,7 +7,7 @@ config PINCTRL_IMX
> >  	select REGMAP
> >
> >  config PINCTRL_IMX_SCU
> > -	bool
> > +	tristate "IMX SCU pinctrl driver"
> >  	depends on IMX_SCU
> >  	select PINCTRL_IMX
> >
> > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c
> > b/drivers/pinctrl/freescale/pinctrl-imx.c
> > index cb7e0f0..c1faae1 100644
> > --- a/drivers/pinctrl/freescale/pinctrl-imx.c
> > +++ b/drivers/pinctrl/freescale/pinctrl-imx.c
> > @@ -372,8 +372,8 @@ static int imx_pinconf_get(struct pinctrl_dev
> *pctldev,
> >  	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
> >  	const struct imx_pinctrl_soc_info *info = ipctl->info;
> >
> > -	if (info->flags & IMX_USE_SCU)
> > -		return imx_pinconf_get_scu(pctldev, pin_id, config);
> > +	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get)
> > +		return info->imx_pinconf_get(pctldev, pin_id, config);
> 
> Pointer check here seems not be necessary

I think it is NOT harmful and it is just in case the drivers using scu pinctrl
do NOT initialize these functions callback and lead to NULL pointer dump.

> 
> > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h
> > b/drivers/pinctrl/freescale/pinctrl-imx.h
> > index 333d32b..bdb86c2 100644
> > --- a/drivers/pinctrl/freescale/pinctrl-imx.h
> > +++ b/drivers/pinctrl/freescale/pinctrl-imx.h
> > @@ -75,6 +75,21 @@ struct imx_cfg_params_decode {
> >  	bool invert;
> >  };
> >
> > +/**
> > + * @dev: a pointer back to containing device
> > + * @base: the offset to the controller in virtual memory  */ struct
> > +imx_pinctrl {
> > +	struct device *dev;
> > +	struct pinctrl_dev *pctl;
> > +	void __iomem *base;
> > +	void __iomem *input_sel_base;
> > +	const struct imx_pinctrl_soc_info *info;
> > +	struct imx_pin_reg *pin_regs;
> > +	unsigned int group_index;
> > +	struct mutex mutex;
> > +};
> > +
> >  struct imx_pinctrl_soc_info {
> >  	const struct pinctrl_pin_desc *pins;
> >  	unsigned int npins;
> > @@ -98,21 +113,13 @@ struct imx_pinctrl_soc_info {
> >  				  struct pinctrl_gpio_range *range,
> >  				  unsigned offset,
> >  				  bool input);
> > -};
> > -
> > -/**
> > - * @dev: a pointer back to containing device
> > - * @base: the offset to the controller in virtual memory
> > - */
> > -struct imx_pinctrl {
> > -	struct device *dev;
> > -	struct pinctrl_dev *pctl;
> > -	void __iomem *base;
> > -	void __iomem *input_sel_base;
> > -	const struct imx_pinctrl_soc_info *info;
> > -	struct imx_pin_reg *pin_regs;
> > -	unsigned int group_index;
> > -	struct mutex mutex;
> > +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> > +			       unsigned long *config);
> > +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> > +			       unsigned long *configs, unsigned int num_configs);
> > +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> > +				      unsigned int *pin_id, struct imx_pin *pin,
> > +				      const __be32 **list_p);
> 
> Compared with V4, this new implementation seems a bit complicated.
> I guess we don't have to support PINCTRL_IMX=y && PINCTRL_IMX_SCU=m
> case.
> Will that make the support a bit easier?

I am NOT sure if such scenario meets requirement, the fact is other non-i.MX SoC
also selects the PINCTRL_IMX which will make PINCTRL_IMX=y, so in that case, even
all i.MX PINCTRL drivers are set to module, it will still have PINCTRL_IMX=y and PINCTRL_IMX_SCU=m,
then build will fail. And I believe the auto build test may also cover such case and build
error will be reported, that is why this change is needed and with this change, function
is NOT impacted,

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
