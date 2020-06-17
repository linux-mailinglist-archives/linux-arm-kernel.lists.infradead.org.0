Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DE61FCEBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWbOpy29fldmZimpAyGPFlGIIxzOj48mvF6ML2lWI3U=; b=bZNmBjI32omkix
	4ihNnIuXPNID6RAgTwDGwY34wVLGIWSxJzmVv39jHY4EaIAv7ntLR35iWeekhtFzfQlTRjKE4KqIX
	lXuxBF6wiagQFCB5+lesbFikfSZeWkBNW20uNIB2141V854wAIyXlhTE1kdyuz49y85NOzwMnHnkw
	iVEzebUiAPwCY6HxUcUXn9/0+h5tZXMQSKkiR6ufN9xLXucwNwlGtf97IxwK5F1jRYHoCPY6NVvZA
	r/dGpaWSl6JSCouPXAWTcHWb0CJBGqQ/uHMpawiiWwr2rtVN9QiBFgKFcot1Fq6SPGZ9hEZeUUnBM
	xsExDhg26DsPhcvTB3cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYM2-000665-KJ; Wed, 17 Jun 2020 13:43:50 +0000
Received: from mail-vi1eur05on2046.outbound.protection.outlook.com
 ([40.107.21.46] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYLt-00065B-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:43:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajM+HrqWLvS9qVmLxExrdDokwKKBwm7wvLjHjqqkzQKrcMkNHXjKqYw6W8N3d95qB2VN01Er58TlM1SYn+ZgceWQSo8RGwiaZGluGgwta1d4FgKQ1/a5V777CLYky0d/8NXi5Ll+UfcYvV7Sg1HsmqWnDLuaGl6JVZMSPkbNZsoqRrWbHM6oH+XgvV/XqyreDj+lXOEi1IT1pxB2ijQPDfwXYqkMRxSPny5ff2Ugl3z1uSnr2SV7aXYg21p3p26OroEtKTC0dX+aj7gbjcIUxTKAU7vBMSYkHhj7huhZdFQaV3+ynwW4Jfm4/dB3G1KnpVzX2eQYDQAeAVem7UmMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rGUUtIu2ym3wcL5yqgPDLZZTiGR/N32oAiER5pCp4Qg=;
 b=en6Vo+LXAHSKQMQkFcjZDBI7j6XqQSfRgYu7Iy4WBko6MgZGkmXOtPetHI96UY8hQMuWwE3GpQ3/G/X05JOswcEL2s4cM3/hO34XfwefIk2L2DePn/BTSbW34ngj2oeaDvuPnvGut49mjL+rvAXoQNENiBmKmauvqW5pXGApR9Zx56yLiiWQAoXH41l+SaPPXiH7Cnj8G+z9ayoFeDVQpHgOKkkRZfD7yZGcECBQBVdOvKwj1CkkrjsNj5HdhFgNuaopwnOj6KbarOGqr8LssHrsNDg/aUEY7JQAzcd7JF1TVrbE0/5zCokOrd1aobEm2d5YrIswU3q0WOtyhwt6vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rGUUtIu2ym3wcL5yqgPDLZZTiGR/N32oAiER5pCp4Qg=;
 b=RkfJyA/qXLHeR78/J7y1PcB5uAs+fcAoLDwsBAvdMiwaoM3pc+wkzDStHd1tf+brZnigyi7U0ZB34WsFsSfJhvQ8yQBrGqsuEg2vxwja6REPAICRreY58RO14XOYocURqYzapJlj44GYek0hTFYnpvqEB4dy1lFoBEBJS3YY2Vg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3675.eurprd04.prod.outlook.com (2603:10a6:8:b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.20; Wed, 17 Jun
 2020 13:43:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 13:43:36 +0000
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
Thread-Index: AQHWP+XeJP9OTzRQzUu8oLCGsNFyaKja/seAgAAQIUCAARffAIAAA42QgAB6UQCAADSjcA==
Date: Wed, 17 Jun 2020 13:43:36 +0000
Message-ID: <DB3PR0402MB39160988A5AEBF0DBEA4A49EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591875295-19427-1-git-send-email-Anson.Huang@nxp.com>
 <1591875295-19427-2-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966C661D52B43E6938FCBF4809D0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916610502199D90B4BFC5E3F59D0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB49661AA8A25B73D04FFF6769809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB391687D9A9CFAAAEB3E4F236F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB4966243E1116C43C595CDD47809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966243E1116C43C595CDD47809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8bff3c55-6103-4290-3cbb-08d812c46f6d
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36751DD3181E9769242FF9C1F59A0@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3bejludNUrISYHerANepM5+sRj7MBceR+KgBuY4N6tLHNS0550ANmcpXkEUpgwbZoiOR19yllkR8B9My64tOkCIS+BstH/LBUN5RCFPVkdnQP8R8UV0z0dAWmTi/VPcXPLTjS2n8pVQkHJvFVd1m7+gYfi3k168Xer8EEV7pC5nmAim8UZOIKPL3wPiNlcxh4ZyRX0dgphWZJumkGvrfTZVt/72BVAgY1q5Z2VgREylCWKT1KReISuwKQPmR3nE3O7Q/H8k3EYPoCqw074ZBP4wviC44Fkb+YSL8Si7iDOhK3ZM+/1tL37hj5J+ORcH/wfqjDPVSATHofFtosxy4aE5pBHMNThRj18gWUIoBzqzR7Eg/v/jaddDe9b1WgAI8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(5660300002)(76116006)(64756008)(66446008)(66946007)(186003)(66556008)(66476007)(8936002)(478600001)(26005)(8676002)(33656002)(110136005)(2906002)(316002)(71200400001)(4326008)(9686003)(44832011)(7696005)(52536014)(86362001)(6506007)(55016002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9E/LI2LvUpwAZ8aTFPceWJ2ABk6jgcS/yX/ODT+rmCQ8HIwLDJFyoRWAFJDhGk2UFje1ang0kCPstC5PelOXPEVsaOHt7xZPf9nzTjRSgiWDB0cMsPAGVrXK3WvUWgUdH3le6hDOyhd4IJCEMjumeBkaIasr34AQPWdBNSHd1s7AxBeiO8x5A1o6akacbEJVvjhoCJ+z3IU4lJbiLB5cZRhs3oIfyOirLOq9/aUD5qiKrYTJn3G2EoybhPZ00ttLAyk4+suM1eC6DQ78y6m+G9S4+aXBGQbmJagxPOCtwL/ylE2JMjrY49TJXL5yS8MfMJSkbpdy8OIJmIFtYRaz2T99uEC6QvD+r/0ikSg66BKc5OtWHiU+MWGi8Rdil+YBIPW44/gP2c9lQxdk0GeKWVCuNm6rGBJbJXnxHHCWRiLmVSiD1baItzsavMmyzRIVf2qZc6R1Mni8iXOmCpF+wYBGeN/Q0G+CGdPSbjNvIYJ6UnwVnW777oaTcd0zvjLL
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bff3c55-6103-4290-3cbb-08d812c46f6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 13:43:36.4805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uxZk1eed6u5coPf9PcBSD++2F9ePAfNUUHlfX5o0a9/x4VU8DnunylKBKe0sMpOtZNnCWerdZ9Ch6EivRBCqBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_064341_145206_90549C17 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.46 listed in wl.mailspike.net]
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
> [...]
> 
> > > > > > - * @dev: a pointer back to containing device
> > > > > > - * @base: the offset to the controller in virtual memory
> > > > > > - */
> > > > > > -struct imx_pinctrl {
> > > > > > -	struct device *dev;
> > > > > > -	struct pinctrl_dev *pctl;
> > > > > > -	void __iomem *base;
> > > > > > -	void __iomem *input_sel_base;
> > > > > > -	const struct imx_pinctrl_soc_info *info;
> > > > > > -	struct imx_pin_reg *pin_regs;
> > > > > > -	unsigned int group_index;
> > > > > > -	struct mutex mutex;
> > > > > > +	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned
> > > > > > +int
> > > pin_id,
> > > > > > +			       unsigned long *config);
> > > > > > +	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned
> > > > > > +int
> > > pin_id,
> > > > > > +			       unsigned long *configs, unsigned int
> num_configs);
> > > > > > +	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
> > > > > > +				      unsigned int *pin_id, struct imx_pin *pin,
> > > > > > +				      const __be32 **list_p);
> > > > >
> > > > > Compared with V4, this new implementation seems a bit complicated.
> > > > > I guess we don't have to support PINCTRL_IMX=y &&
> > > > > PINCTRL_IMX_SCU=m case.
> > > > > Will that make the support a bit easier?
> > > >
> > > > I am NOT sure if such scenario meets requirement, the fact is
> > > > other non-i.MX SoC also selects the PINCTRL_IMX which will make
> > > > PINCTRL_IMX=y, so in that case, even all i.MX PINCTRL drivers are
> > > > set to module, it will still have PINCTRL_IMX=y and
> > > > PINCTRL_IMX_SCU=m, then build will fail. And I believe the auto
> > > > build test may also cover such case and build error will be
> > > > reported, that is why this change is needed and with this change,
> > > > function is NOT impacted,
> > > >
> > >
> > > Is it possible to add some constrainst to make sure PINCTRL_IMX_SCU
> > > value is the same as PINCTRL_IMX? Or combine them into one?
> > > If we can do that, it may ease the implementation a lot and make the
> > > code still clean.
> >
> > Combine PINCTRL_IMX_SCU and PINCTRL_IMX is NOT making sense, since
> for
> > non-SCU platforms, PINCTRL_IMX_SCU is NOT necessary, to make
> > PINCTRL_IMX_SCU same value as PINCTRL_IMX, unless make "select
> > PINCTRL_IMX_SCU" in PINCTRL_IMX, but that is also NOT making sense,
> > because, PINCTRL_IMX does NOT depends on PINCTRL_IMX_SCU at all.
> >
> 
> PINCTRL_IMX_SCU could be conditionally compiled.
> Something like follows:
> obj-$(CONFIG_PINCTRL_IMX) += pinctrl-imx-core.o pinctrl-imx-core-y :=
> pinctrl-imx.o
> pinctrl-imx-core-$(CONFIG_PINCTRL_IMX_SCU) += pinctrl-scu.o
> 
> Can you try if this way could work?

It does NOW work, when PINCTRL_IMX=y and PINCTRL_IMX_SCU=m, config as below,
build will failed because some SCU functions NOT implemented, this is the exact reason
why have to use function callback. Currently, when PINCTRL_IMX=y, PINCTRL_IMX_SCU
MUST be =y, but that is NOT making enough sense for i.MX8M SoCs:

 CONFIG_PINCTRL_IMX=y
 CONFIG_PINCTRL_IMX_SCU=m
 CONFIG_PINCTRL_IMX8MM=y
 CONFIG_PINCTRL_IMX8MN=m
 CONFIG_PINCTRL_IMX8MP=m
 CONFIG_PINCTRL_IMX8MQ=m

aarch64-poky-linux-ld: drivers/pinctrl/freescale/pinctrl-imx.o: in function `imx_pinconf_dbg_show':
/home/b20788/workspace/stash/linux-next/drivers/pinctrl/freescale/pinctrl-imx.c:444: undefined reference to `imx_pinconf_get_scu'
aarch64-poky-linux-ld: drivers/pinctrl/freescale/pinctrl-imx.o: in function `imx_pinconf_get':
/home/b20788/workspace/stash/linux-next/drivers/pinctrl/freescale/pinctrl-imx.c:377: undefined reference to `imx_pinconf_get_scu'
aarch64-poky-linux-ld: drivers/pinctrl/freescale/pinctrl-imx.o: in function `imx_pinconf_set':
/home/b20788/workspace/stash/linux-next/drivers/pinctrl/freescale/pinctrl-imx.c:427: undefined reference to `imx_pinconf_set_scu'
aarch64-poky-linux-ld: drivers/pinctrl/freescale/pinctrl-imx.o: in function `imx_pinctrl_parse_groups':
/home/b20788/workspace/stash/linux-next/drivers/pinctrl/freescale/pinctrl-imx.c:633: undefined reference to `imx_pinctrl_parse_pin_scu'

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
