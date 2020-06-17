Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C3D1FC447
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 04:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxSN7AKZnICXvvluJCKUR8SOf1jmsY2k5Zj8Ga6URHw=; b=kUcHJ7Y/TZkIJx
	+obLWfGTgYilc/YMMFCh5QyW47IZsn3pGY9FU2IJMMOdOKEM/BKm0f/nRf7+X7n6GziUFckxViL3U
	OAkoIHHC5LF6plQyjF5Ug7g/e8qFKOwjlPwTewdKJwxKnfVDECILcLbHuxTBlIC6JW8DyIb6Qi0Yz
	Z6lbywykccUDtbmCI7+qAqc+K52Qm086OxlnE6BngxjyAQurSiGLGtX5Th1AMsccUPUZzOL7I4/cV
	AzT294U6SqL13UYmjNt9UBBjEG+DUMbVvqgT7EvbQxwndjIUYfBo2sr5UQKvXxl320lHWnRYFmrli
	aYHoXmcTEsmNfjRUb3Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOIW-0007C5-KL; Wed, 17 Jun 2020 02:59:32 +0000
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOIM-0007BQ-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 02:59:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGSA4sT8exO1X0Zhwf2+HwB51YVNvJWA4DKV6kyZ5jKwV40QgR3bAByZkkVtkZ3maZbgQka60+GiokMHAaqs3Gv+w5oaOA/22pEmqJM8zzSYYaZypmZnQI3pD5i3kVP/scVZFxjNNPr+7juTFGp7ahtk41urPPKVZpvg1dr6SMRejCufomxe4sRiYXaDczzai5/70t9lr85mjE5GPH4GrxzMaOeuUB2fYClyjeE/vbgpzXPOi5zoipPRFKoAMDubQZLuioiUXKQC6Ch+8ClZZUK80jIRBUezrlF0F5cYIdZY+JNJvv1Dtxobityw6+ATQPIv8mH2egIcnjim283tBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvnfV5fWd7qgzRnRhY8xAwF5FPID5Zq83EGA0La5AJQ=;
 b=Isg5QxUVNQ3Tzt3owm+/ytN8DS0fjAtq18cyMJe9aG3epqWa8EqWfAPAgfMVQvANIvFoJiMx2EVT/14qNXwwvFuCeLkpt9Xg5OcD9T7UxotwC9KBeqdW4Q2jvswHuIiqP7pZ4/d3D/iWn0QBeUqBDp7OArQeYxWxpZ3ADcTAc+4uigYPkvqeK64jlZ7beQewY6cCZ2d+sHhyGmxoynHxy2gV1m00c+w/WeEC9+/8W/qKJSGp1ZAti2EQ2bRh4SuSFYrKS4uiYbFK30B2bbsZSjn0p1DwVf2mtFHa4o2sUgzB5R0KbPXarC/UkUkTgxpfVbrajS6VaYsrkp/rIke1Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvnfV5fWd7qgzRnRhY8xAwF5FPID5Zq83EGA0La5AJQ=;
 b=GDEj5KuAACE7uSnTWQDtvocUSpcYC7UQaP4AT8FTTPWF84gEneQFPNg9gDH4aRHYFipQg0I17KPzSw0S0cr/h1B/8CB+fxLkulJXXQeG36PEupav+V3N0Ju2/yZAGvkoPkNnYtt2xrPDlVlimleNF6u5f8m+wPL0TDy75Ieht4A=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB3959.eurprd04.prod.outlook.com (2603:10a6:209:4f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Wed, 17 Jun
 2020 02:59:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Wed, 17 Jun 2020
 02:59:16 +0000
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
Thread-Index: AQHWP+Xe3FoK7wvcIE2WhqslqxeLCKja/NXggAAZlYCAAQ64MA==
Date: Wed, 17 Jun 2020 02:59:16 +0000
Message-ID: <AM6PR04MB49661AA8A25B73D04FFF6769809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 43eac679-3431-4927-0411-08d8126a6c8a
x-ms-traffictypediagnostic: AM6PR04MB3959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB3959CA9B2678BEFB9B32307C809A0@AM6PR04MB3959.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2+KRgXfryBWYuWW92HtcaNHhlVRVzYIj7Y6Vrh4jcTpBUkFAQmPNjGogUkGEyXHM1LKOwZGPUfMOvKQ9G1MJESJHrNnaXw77zVS/HH8ZCSg1JbOo4tX8piVm9WYgWunRygH01qoiA5myU88eTx24wYarkGR8bXPqNSf8g9ahQhjW8I0AsN5vl6yte64nOYAklbiEFZZTy0vXx2OASKyWKb3h3UDf5nYEhc/styRyzYtCgParLt9sLHKNhD/CgcWymtKcKY8Dfafa3DaC6aBNJ7MWQoddsr/E5S3j5N0+3/aA6Q8n8MO4mHlXcKa2y50l8BZ5OqtKWfWX7JoCaeYWP1TqMXRdGTcDj3jw8dGuza0zoB/zf03ldDRrAkt9tkXa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(33656002)(4326008)(8676002)(316002)(110136005)(478600001)(55016002)(8936002)(26005)(9686003)(2906002)(7696005)(83380400001)(186003)(6506007)(86362001)(52536014)(66446008)(64756008)(66556008)(53546011)(76116006)(66946007)(66476007)(44832011)(5660300002)(71200400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: JRxRSL3rdnznkJ2ACxWhFq/dk85VYY463wwplu6U64lg1LKrDXnKyVdWwNn5yeVb4r7ffvdnnbHygjHZ7BoVkTE70zSMYZrZ7WZW4WoegsHwsbkNn0m8TPEFjgPlPOaY6fO381pZxl8yHYpg1Of8+h9dpHlR7awjJG+lYONr/kUa7EJroUspyIVhk5krKbMQ4//X5xUiS7HTImMMdtmD75T1jzVM82fFT3k3qxLSfcSQJGb337K6nPAHE9Yl1NK5QO0l+Cf+mhBVMBvLJ9VXqY80bvBFdCmsMLUwiaWik/mrABJs1uGttt3/XQIfVxyHoQIMjPpHYKP+3SehZuyxlcINt0gmypQGU/+B76bLOr2KAz4fAAnLgTXlhu+Mhm1o1pqYuaTE0J1kYEXxUXF6d0kn5iZc2qewqQkGJYPMMG9G4TwiNt6CAq/sNMbRfRTmm8xOLkPsX2IA4oa6pFv8DyVJx/lTBF9NDzjeEjr2tDU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43eac679-3431-4927-0411-08d8126a6c8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 02:59:16.7843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXBQhWKU04zRhkSosSt5QoWKOlaG8P/AFJFyulNZXuXM1trDwNDAxqOWYC1pFi98cTanl8gaeXM4yBnyxt7zFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB3959
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_195922_117635_A7F1FC9F 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.88 listed in wl.mailspike.net]
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

> From: Anson Huang <anson.huang@nxp.com>
> Sent: Tuesday, June 16, 2020 6:44 PM
> 
> > Subject: RE: [PATCH V5 1/9] pinctrl: imx: Support building SCU pinctrl
> > driver as module
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Thursday, June 11, 2020 7:35 PM
> > >
> > > To support building i.MX SCU pinctrl driver as module, below things
> > > need to be
> > > changed:
> > >
> > >     - Export SCU related functions and use "IS_ENABLED" instead of
> > >       "ifdef" to support SCU pinctrl driver user and itself to be
> > >       built as module;
> > >     - Use function callbacks for SCU related functions in pinctrl-imx.c
> > >       in order to support the scenario of PINCTRL_IMX is built in
> > >       while PINCTRL_IMX_SCU is built as module;
> > >     - All drivers using SCU pinctrl driver need to initialize the
> > >       SCU related function callback;
> > >     - Change PINCTR_IMX_SCU to tristate;
> > >     - Add module author, description and license.
> > >
> > > With above changes, i.MX SCU pinctrl driver can be built as module.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V4:
> > > 	- add module author and description.
> > > ---
> > >  drivers/pinctrl/freescale/Kconfig           |  2 +-
> > >  drivers/pinctrl/freescale/pinctrl-imx.c     | 18 ++++-----
> > >  drivers/pinctrl/freescale/pinctrl-imx.h     | 57
> ++++++++++++-----------------
> > >  drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  3 ++
> > > drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  3 ++
> > > drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  3 ++
> > >  drivers/pinctrl/freescale/pinctrl-scu.c     |  9 +++++
> > >  7 files changed, 51 insertions(+), 44 deletions(-)
> > >
> > > diff --git a/drivers/pinctrl/freescale/Kconfig
> > > b/drivers/pinctrl/freescale/Kconfig
> > > index 4ca44dd..a3a30f1d 100644
> > > --- a/drivers/pinctrl/freescale/Kconfig
> > > +++ b/drivers/pinctrl/freescale/Kconfig
> > > @@ -7,7 +7,7 @@ config PINCTRL_IMX
> > >  	select REGMAP
> > >
> > >  config PINCTRL_IMX_SCU
> > > -	bool
> > > +	tristate "IMX SCU pinctrl driver"
> > >  	depends on IMX_SCU
> > >  	select PINCTRL_IMX
> > >
> > > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c
> > > b/drivers/pinctrl/freescale/pinctrl-imx.c
> > > index cb7e0f0..c1faae1 100644
> > > --- a/drivers/pinctrl/freescale/pinctrl-imx.c
> > > +++ b/drivers/pinctrl/freescale/pinctrl-imx.c
> > > @@ -372,8 +372,8 @@ static int imx_pinconf_get(struct pinctrl_dev
> > *pctldev,
> > >  	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
> > >  	const struct imx_pinctrl_soc_info *info = ipctl->info;
> > >
> > > -	if (info->flags & IMX_USE_SCU)
> > > -		return imx_pinconf_get_scu(pctldev, pin_id, config);
> > > +	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get)
> > > +		return info->imx_pinconf_get(pctldev, pin_id, config);
> >
> > Pointer check here seems not be necessary
> 
> I think it is NOT harmful and it is just in case the drivers using scu pinctrl do NOT
> initialize these functions callback and lead to NULL pointer dump.
> 

It is a bit harmful to the code readability as we already use flag IMX_USE_SCU to distinguish
the difference. Not need double check the pointer again because platforms driver must have
defined it.

> >
> > > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h
> > > b/drivers/pinctrl/freescale/pinctrl-imx.h
> > > index 333d32b..bdb86c2 100644
> > > --- a/drivers/pinctrl/freescale/pinctrl-imx.h
> > > +++ b/drivers/pinctrl/freescale/pinctrl-imx.h
> > > @@ -75,6 +75,21 @@ struct imx_cfg_params_decode {
> > >  	bool invert;
> > >  };
> > >
> > > +/**
> > > + * @dev: a pointer back to containing device
> > > + * @base: the offset to the controller in virtual memory  */ struct
> > > +imx_pinctrl {
> > > +	struct device *dev;
> > > +	struct pinctrl_dev *pctl;
> > > +	void __iomem *base;
> > > +	void __iomem *input_sel_base;
> > > +	const struct imx_pinctrl_soc_info *info;
> > > +	struct imx_pin_reg *pin_regs;
> > > +	unsigned int group_index;
> > > +	struct mutex mutex;
> > > +};
> > > +
> > >  struct imx_pinctrl_soc_info {
> > >  	const struct pinctrl_pin_desc *pins;
> > >  	unsigned int npins;
> > > @@ -98,21 +113,13 @@ struct imx_pinctrl_soc_info {
> > >  				  struct pinctrl_gpio_range *range,
> > >  				  unsigned offset,
> > >  				  bool input);
> > > -};
> > > -
> > > -/**
> > > - * @dev: a pointer back to containing device
> > > - * @base: the offset to the controller in virtual memory
> > > - */
> > > -struct imx_pinctrl {
> > > -	struct device *dev;
> > > -	struct pinctrl_dev *pctl;
> > > -	void __iomem *base;
> > > -	void __iomem *input_sel_base;
> > > -	const struct imx_pinctrl_soc_info *info;
> > > -	struct imx_pin_reg *pin_regs;
> > > -	unsigned int group_index;
> > > -	struct mutex mutex;
> > > +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> > > +			       unsigned long *config);
> > > +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned int pin_id,
> > > +			       unsigned long *configs, unsigned int num_configs);
> > > +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> > > +				      unsigned int *pin_id, struct imx_pin *pin,
> > > +				      const __be32 **list_p);
> >
> > Compared with V4, this new implementation seems a bit complicated.
> > I guess we don't have to support PINCTRL_IMX=y && PINCTRL_IMX_SCU=m
> > case.
> > Will that make the support a bit easier?
> 
> I am NOT sure if such scenario meets requirement, the fact is other non-i.MX
> SoC also selects the PINCTRL_IMX which will make PINCTRL_IMX=y, so in that
> case, even all i.MX PINCTRL drivers are set to module, it will still have
> PINCTRL_IMX=y and PINCTRL_IMX_SCU=m, then build will fail. And I believe the
> auto build test may also cover such case and build error will be reported, that is
> why this change is needed and with this change, function is NOT impacted,
> 

Is it possible to add some constrainst to make sure PINCTRL_IMX_SCU value is the same
as PINCTRL_IMX? Or combine them into one?
If we can do that, it may ease the implementation a lot and make the code still clean.

Regards
Aisheng

> Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
