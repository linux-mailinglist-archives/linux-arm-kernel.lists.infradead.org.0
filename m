Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CFF1FC495
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8fvKjImB3HYR4Iy+qp62K5QRCqc5pa0yDbGUb8K3CA=; b=dqbyn366/ab1kk
	ch2mSpocL0SLLJjAz6Kh/Hcnh255+FOCiSZGXfE+v+4G4siets6v0jNRdEACVj+HWx7sGdwjeNg6T
	4mTgDKnAG/AJBYsyNMIERIN5jRc0uRw496BNzYs5qdRAFpP6ueT7B23ytiuzOH87o1y1I8NUujwUC
	RDF0QCDr/tZmOzYQFsjhX7i0c24qOIfZaZ0IEZiDT0zNeqgIx3tTvbKHoiOgr/V8cqVTIMRYD9q+C
	B5PfFfPQvJgB6dM510wSbEJQNEkyamJJ5gwmd7X/yqnzjrjfsXA4heZdW+GlrwE6U4uCWhbi6JFPy
	TANVnYJ7c6GJJx56UeGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlObt-0004Ey-Qf; Wed, 17 Jun 2020 03:19:33 +0000
Received: from mail-vi1eur05on2044.outbound.protection.outlook.com
 ([40.107.21.44] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlObj-0004Dm-RC
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 03:19:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2psrLbkMlFNhBI26RX0qpgzPT92DHeKNLpINcRlueSxF8Sg7D2pkYkaPcmOPhyV2PWUZI9PyF5S1L4nHmtyAOrkmD0+K28ZEIQwp/VF5kEm+Dy8v53aGTCUoN1NT4olzymE0RR9FdWcAA9Lakkaa7eVcwcpQ+JYEn0+UUISUUvbTijX2rPbEIzJQOOFXEv6Dwy5pWFDDFazxXR7SB2kk/4jW7II5/MWNW6g+GbkulwoD+J13WYOznEiu+7FvQ/uyhsq/D/SnVsZfGnttdcO9qL7i9Y057RJJuhqC1XYBJABeB4rmoACuNC0oHroVtpDST9UMAYUOXtIyV2G9jQS3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v49aZ7pXbYf0QXKnTK8HX8msxnIr5dWNWflPKkaiooU=;
 b=edjRr8HQMO/728N0awFz8CjSqb/cyh3kNCDjitZTuAY2DKi9kFwfdaDyyp3XsEppCgnpBKIl2W2y5oTXOjaPeJGALx5roa3O2bCg8/eaBFZhpO/Ck1uuqs8DY9CmENQg0IrABpazyeh/qxfrpWppKHxtECOZjFCfEDQvXcWPvvZBOXoM8NsZlgV5TZepxMgMFDgz3bLayirboeEcQhNVAFca8BUuMUfCx/ZtCqsdUAYX33pXA48yN3719Dy2F3Mpmbg3UScsbYtXy2e0v0N53itDHHIlRFM6D2MfioZesBs6Oddkajc9S65qCwz9tyQEcUXrj1AERsfznNMXZ0NGIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v49aZ7pXbYf0QXKnTK8HX8msxnIr5dWNWflPKkaiooU=;
 b=n2R0DVlvnt/P97Hfj7P28rZRdi2h5OvdK0w64fuI5E5wG/hhFWd99RezXTmtanuxjYQuVWp+GH9/5iEygZKqZT7/OA0yLp9JSllL9BTh50aZdTgAhSECXxq4HVOdj0wGqK7l33UkvN+Fm0QOL+0RemATmOcazEnSYYjHAkNT86k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3817.eurprd04.prod.outlook.com (2603:10a6:8:12::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.27; Wed, 17 Jun
 2020 03:19:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.029; Wed, 17 Jun 2020
 03:19:19 +0000
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
Thread-Index: AQHWP+XeJP9OTzRQzUu8oLCGsNFyaKja/seAgAAQIUCAARffAIAAA42Q
Date: Wed, 17 Jun 2020 03:19:19 +0000
Message-ID: <DB3PR0402MB391687D9A9CFAAAEB3E4F236F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB49661AA8A25B73D04FFF6769809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49661AA8A25B73D04FFF6769809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 241387f4-7555-4245-3837-08d8126d3982
x-ms-traffictypediagnostic: DB3PR0402MB3817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38173FCB55BAF13977D91155F59A0@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0FqJ13Z1qDpNWk8v+vKHkYnnOKBcTUxey6Bzu4vOdWogHkZGpoaMG17qkwjIC49QzOB3ubMUhPdkzbD15N0PYr7sfnuB2ptFwRKRJ2GfWPuNAVtArpdCZvSljGTMtmwm7xZp7GkMyDyQ4BPMa4lHQQ69drjMfMaaRPyhiHZY6+uB4Scl0pifb7QRyrUUpf2lJ4kpCwjD0UZKXnBIjhmajy8q74tgkMaruVpDSRqKpVUBXgOwUHAlqGqcE6LoLNPCCMws0EPttjosPeuRK4+j7HFSioPCtzH0xwkvI7qg8ky67dbWLiPibuBFXuZswfwDsUvTOn7Nntg/NbhRSykWkBXjmLad8gxPtfM2hyWNJ3DiIv0Itgr5LS43/bXi5/+Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39850400004)(366004)(66446008)(66476007)(64756008)(66556008)(66946007)(86362001)(44832011)(71200400001)(76116006)(7696005)(8936002)(26005)(8676002)(110136005)(4326008)(9686003)(186003)(316002)(55016002)(53546011)(6506007)(478600001)(52536014)(5660300002)(33656002)(2906002)(83380400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: nFHrZFlY7z1Z6HHNKoRi3JEzvVcRvmqlQ7dXOrv9FzsNpny45F9KXf5CDPS22LF03p9N9Vx23/fotwJGf66MacQlk0DcyJPE2/IMokH0u14ZQNf+BtuewpOewsPa7sTi736dXUcnzUw+udL8W3r6XO5NLRkMS+PjjsjrPf2FT8nxrJfj8IaOpSXCK0nN7Z8G8s+n8Pd1uwwW2F86juJ7lhO2vKKWJKvv4gdmUXjkfjrxVMbh76kw9OpIxAZhqm3ECuIZNWWilnwxndzLYpFkAmQXrAcUXOHgHxqT3ZMQURtIyLWxVESxI5791bvRzmAns6TC6QL533SSJKFFWdN7WIGO8voPhY0JOPCu5omgmhc8e4lGQYlY2B75L7R+03kXJD0W+NpXBUQcmWpriXzqYvZqURbvTH80hYqLB5zCBknszQEM9oGZDmDWdRUP20KO35gQBJ8YCzq++M749jumRO9HjdaDf1yGFJoYfTr7R7I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 241387f4-7555-4245-3837-08d8126d3982
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 03:19:19.6556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hsIjLrvnQw8LPE6Hh3B9vGQn0znpTNi9RljfUJmtE5f0VCMKtwAlzIpHDPhJd9HSRMLI5kB/4cev8fWUkPRB8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_201924_132511_38CFCC8C 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.44 listed in wl.mailspike.net]
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
> > From: Anson Huang <anson.huang@nxp.com>
> > Sent: Tuesday, June 16, 2020 6:44 PM
> >
> > > Subject: RE: [PATCH V5 1/9] pinctrl: imx: Support building SCU
> > > pinctrl driver as module
> > >
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > > Sent: Thursday, June 11, 2020 7:35 PM
> > > >
> > > > To support building i.MX SCU pinctrl driver as module, below
> > > > things need to be
> > > > changed:
> > > >
> > > >     - Export SCU related functions and use "IS_ENABLED" instead of
> > > >       "ifdef" to support SCU pinctrl driver user and itself to be
> > > >       built as module;
> > > >     - Use function callbacks for SCU related functions in pinctrl-imx.c
> > > >       in order to support the scenario of PINCTRL_IMX is built in
> > > >       while PINCTRL_IMX_SCU is built as module;
> > > >     - All drivers using SCU pinctrl driver need to initialize the
> > > >       SCU related function callback;
> > > >     - Change PINCTR_IMX_SCU to tristate;
> > > >     - Add module author, description and license.
> > > >
> > > > With above changes, i.MX SCU pinctrl driver can be built as module.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > Changes since V4:
> > > > 	- add module author and description.
> > > > ---
> > > >  drivers/pinctrl/freescale/Kconfig           |  2 +-
> > > >  drivers/pinctrl/freescale/pinctrl-imx.c     | 18 ++++-----
> > > >  drivers/pinctrl/freescale/pinctrl-imx.h     | 57
> > ++++++++++++-----------------
> > > >  drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  3 ++
> > > > drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  3 ++
> > > > drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  3 ++
> > > >  drivers/pinctrl/freescale/pinctrl-scu.c     |  9 +++++
> > > >  7 files changed, 51 insertions(+), 44 deletions(-)
> > > >
> > > > diff --git a/drivers/pinctrl/freescale/Kconfig
> > > > b/drivers/pinctrl/freescale/Kconfig
> > > > index 4ca44dd..a3a30f1d 100644
> > > > --- a/drivers/pinctrl/freescale/Kconfig
> > > > +++ b/drivers/pinctrl/freescale/Kconfig
> > > > @@ -7,7 +7,7 @@ config PINCTRL_IMX
> > > >  	select REGMAP
> > > >
> > > >  config PINCTRL_IMX_SCU
> > > > -	bool
> > > > +	tristate "IMX SCU pinctrl driver"
> > > >  	depends on IMX_SCU
> > > >  	select PINCTRL_IMX
> > > >
> > > > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c
> > > > b/drivers/pinctrl/freescale/pinctrl-imx.c
> > > > index cb7e0f0..c1faae1 100644
> > > > --- a/drivers/pinctrl/freescale/pinctrl-imx.c
> > > > +++ b/drivers/pinctrl/freescale/pinctrl-imx.c
> > > > @@ -372,8 +372,8 @@ static int imx_pinconf_get(struct pinctrl_dev
> > > *pctldev,
> > > >  	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
> > > >  	const struct imx_pinctrl_soc_info *info = ipctl->info;
> > > >
> > > > -	if (info->flags & IMX_USE_SCU)
> > > > -		return imx_pinconf_get_scu(pctldev, pin_id, config);
> > > > +	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get)
> > > > +		return info->imx_pinconf_get(pctldev, pin_id, config);
> > >
> > > Pointer check here seems not be necessary
> >
> > I think it is NOT harmful and it is just in case the drivers using scu
> > pinctrl do NOT initialize these functions callback and lead to NULL pointer
> dump.
> >
> 
> It is a bit harmful to the code readability as we already use flag IMX_USE_SCU
> to distinguish the difference. Not need double check the pointer again because
> platforms driver must have defined it.

I am fine, it is just because checking the function callback before calling it is better.
I can remove it if you insist to NOT check it. If there is other comment, will remove
them together in next version.

> 
> > >
> > > > diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h
> > > > b/drivers/pinctrl/freescale/pinctrl-imx.h
> > > > index 333d32b..bdb86c2 100644
> > > > --- a/drivers/pinctrl/freescale/pinctrl-imx.h
> > > > +++ b/drivers/pinctrl/freescale/pinctrl-imx.h
> > > > @@ -75,6 +75,21 @@ struct imx_cfg_params_decode {
> > > >  	bool invert;
> > > >  };
> > > >
> > > > +/**
> > > > + * @dev: a pointer back to containing device
> > > > + * @base: the offset to the controller in virtual memory  */
> > > > +struct imx_pinctrl {
> > > > +	struct device *dev;
> > > > +	struct pinctrl_dev *pctl;
> > > > +	void __iomem *base;
> > > > +	void __iomem *input_sel_base;
> > > > +	const struct imx_pinctrl_soc_info *info;
> > > > +	struct imx_pin_reg *pin_regs;
> > > > +	unsigned int group_index;
> > > > +	struct mutex mutex;
> > > > +};
> > > > +
> > > >  struct imx_pinctrl_soc_info {
> > > >  	const struct pinctrl_pin_desc *pins;
> > > >  	unsigned int npins;
> > > > @@ -98,21 +113,13 @@ struct imx_pinctrl_soc_info {
> > > >  				  struct pinctrl_gpio_range *range,
> > > >  				  unsigned offset,
> > > >  				  bool input);
> > > > -};
> > > > -
> > > > -/**
> > > > - * @dev: a pointer back to containing device
> > > > - * @base: the offset to the controller in virtual memory
> > > > - */
> > > > -struct imx_pinctrl {
> > > > -	struct device *dev;
> > > > -	struct pinctrl_dev *pctl;
> > > > -	void __iomem *base;
> > > > -	void __iomem *input_sel_base;
> > > > -	const struct imx_pinctrl_soc_info *info;
> > > > -	struct imx_pin_reg *pin_regs;
> > > > -	unsigned int group_index;
> > > > -	struct mutex mutex;
> > > > +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned int
> pin_id,
> > > > +			       unsigned long *config);
> > > > +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned int
> pin_id,
> > > > +			       unsigned long *configs, unsigned int num_configs);
> > > > +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> > > > +				      unsigned int *pin_id, struct imx_pin *pin,
> > > > +				      const __be32 **list_p);
> > >
> > > Compared with V4, this new implementation seems a bit complicated.
> > > I guess we don't have to support PINCTRL_IMX=y && PINCTRL_IMX_SCU=m
> > > case.
> > > Will that make the support a bit easier?
> >
> > I am NOT sure if such scenario meets requirement, the fact is other
> > non-i.MX SoC also selects the PINCTRL_IMX which will make
> > PINCTRL_IMX=y, so in that case, even all i.MX PINCTRL drivers are set
> > to module, it will still have PINCTRL_IMX=y and PINCTRL_IMX_SCU=m,
> > then build will fail. And I believe the auto build test may also cover
> > such case and build error will be reported, that is why this change is
> > needed and with this change, function is NOT impacted,
> >
> 
> Is it possible to add some constrainst to make sure PINCTRL_IMX_SCU value is
> the same as PINCTRL_IMX? Or combine them into one?
> If we can do that, it may ease the implementation a lot and make the code still
> clean.

Combine PINCTRL_IMX_SCU and PINCTRL_IMX is NOT making sense, since for non-SCU
platforms, PINCTRL_IMX_SCU is NOT necessary, to make PINCTRL_IMX_SCU same value
as PINCTRL_IMX, unless make "select PINCTRL_IMX_SCU" in PINCTRL_IMX, but that is
also NOT making sense, because, PINCTRL_IMX does NOT depends on PINCTRL_IMX_SCU
at all.

The change is NOT that big IMO, and no better idea in my mind, have tried that in previous versions
of patch series.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
