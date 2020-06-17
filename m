Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340041FCA08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yTkjRUxht+MapkLPlvVtrMOwr5GbOjULhH52e4+dwE=; b=dmor9BVS6g3llh
	fLmDO2+IFaGl6/kin7dFgKdMCTTVgGalTEDNSZDOOnFzjR1nFeF5trSf2AXDCDp7GRX9z6IP/lmE3
	SaF7pkxdKoQik/xAWZD1sP3KDoMxdfJg6cSRWF8ZL5HBdFSII7SA6q+TwJjRl7cmYIwRWHpOVtNgE
	Aa84TKJNh2sHNfCWAG6B8UraythF3VlqXO9LXRwBNO3NHDoibGBxwaEYmy1Ifs6GeLdDXKzSE8rey
	pamUcC9Iq3W9SC2S4ZYDA64+M0RJQIvCCnjCgmkHeaHqIZzHE2GrIRDG6ApzgsZf2N5dfGviBv2Ig
	xXKlhuK0OgokTRuIR2kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUZa-0004tH-Jc; Wed, 17 Jun 2020 09:41:34 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUZE-0004nA-S0
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:41:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LokqSsRmcEwZBLsMIpba2BkKZaHUCYyrzTFo1hMuYy0SOmu97KD5QtExQiyWUZhuBHwmvEmgi0EfAFdh2hAF52IrYsdlsHiai5CyN0P62sx4PLXbF92qZKVFp267Hd3+JjSPetpxtjwl15zTk3O0z3En+gop2T9JcQsCbNLqhg5U10x8ESa87jVDt6QyFQghcVPXCqSrN8PF6t8cOVB5JHa46PiGcIzjEFyLcxkbWO4BblTnawpSWclsWMiNBptY7w4+X9fmE1c90ugCAAUaB9dY/fdEqc33vjMEOR9Jdd4VqmR2GrA8Fq7SM69Mj6dvWFNaIcNvEsL7Dr8FAkVgDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RH4MLm/e69JsZpomYK9XFdBoK3kwAUbYMKwfVOPkP/Q=;
 b=W9+QCdlkoHITlOjBjXu4PyqdZ4nwT3XSyy3iC9IJ3s4JgvunAg5FJ/3t9YoG/HQcpY1Ca+HoDNsGjzLzaVHdoMfrxD+XwmEymsao3YYKuijzV5TP5gvDVljcQMurho+HCx/joRBkgfMlfjXQihihlyPFXBL/nS5Ivb2qmgOQHT/KO8uk/C2Vy0Oxjv2n8XoKSt5zXyVYmSj5nLD3T2EghVg6KAyF2T1I9sKzfZLJIgvOGsaewxl+Wyi0Fh+z0VjZkGP6Rgpk48mRQIFdLxeaOdxOnfkkYU7V9JA+dxe4cXp9rmIWMcZIp0VHOl7u5xE1jU/CzHm7whNDnQ0pUITmig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RH4MLm/e69JsZpomYK9XFdBoK3kwAUbYMKwfVOPkP/Q=;
 b=P4tiz9Tz6i/ZlwTHdRkUjS3905TIFF6LMBrr7CW3pELzheY3B1b4VqdN/gSiJ8A51ReFAp+SevxYg731HDpgx82DWUOD5A91Tc5jjd9NklOlCRdntLyvBbamy2PLaFL132/1yV9fIe45sxuQEBBpKpYvqZiXE+1mE6OoB3w6UMI=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3849.eurprd04.prod.outlook.com (2603:10a6:8:e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Wed, 17 Jun
 2020 09:41:09 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 09:41:09 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, "arnd@arndb.de"
 <arnd@arndb.de>, Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org"
 <krzk@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx-scu: Support module build
Thread-Topic: [PATCH] soc: imx-scu: Support module build
Thread-Index: AQHWRGTWiz8NXUZ+xUGFBcoJjUMmmqjccS8AgAAAf6CAABnooA==
Date: Wed, 17 Jun 2020 09:41:08 +0000
Message-ID: <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 96edc783-f23e-4d64-9f7b-08d812a29079
x-ms-traffictypediagnostic: DB3PR0402MB3849:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3849CC1225E37535260F347CF59A0@DB3PR0402MB3849.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pQ97wlO0/CpnSvPP6W7toINFo4+Kb2Z4NcFdF5qkTygidUd5N7YHvTB6L+KmMAVP4Fg0DfOlcdVZELMvwh7+Vt5JKtBcxq9zJs9mFXOfOS8bTN5xXBhYjUq3+/PYaz3NPmvq2lVdZLUHBLAUYImNIojAr5Z/xaZ7Cp/rt90rEPBHcMJqkMMnd7rpHWqyS4SvBV1gSgv+8JcjqRBLIJt7mRNSXuBQHsb78SRXLXKQqisrcmLMrNnLJMfeESv2RZRyJIyBEJLYQsqL+XN+gOZX6kDmEySGf5/NfKQ9J+MwR8h0f4d4ecoczvM8mH9DfvNtmmaR4M27/9xp00hPDyY0Wfegj5BLfOZbSWHJCuFDjRuTi2bPkroteYatRKZfIHrS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(316002)(33656002)(8676002)(186003)(44832011)(5660300002)(4326008)(83380400001)(6506007)(110136005)(55016002)(71200400001)(26005)(52536014)(9686003)(66476007)(478600001)(7696005)(76116006)(2906002)(64756008)(66946007)(86362001)(66556008)(8936002)(66446008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4EGvsl+XMev9iQ8lmqyDF1fyteaigcCkR72l/Vfr8oUg+LUWlMLulXH2AsHJ/X4fZy1Uogq1ZEto1RtJZBXFgFqQdD7nhJH7AxbXdW2nxkxXh1dKS1PF5TFLcMJdt/Zo2GDmgqIgpz7ZunYMuPJvQqXBKeRG9RqZD3gCXq6fvRINFh+2m0q9hs5/ZJG/zfL5LZhQAjH8bjTWzFd49sk7leYr99uMPwr0jPAkcARR1f+spDoofedG1VeyzGfdC3Au/w0uKQBPTm554WQ7cWV3Zy7bw+qGhuM2me9eYD+BeJk2QY+lyQXviu169rt2eEwLxhIH6T1yQCyfvLGkerJkeQgUYMozQwETTSmO5bbJhUAU/+yM8b5v8egLOhY7zqG7fdzjoAVvfH4du1/6EO+3fG0wG+aQUz7w1AP2a+tQKIZcFDN2nSltoqRrJs/5gDI781CDVP6JsdvSNiPokTHjYBEasMa/KyJGcPQchMJVnL0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96edc783-f23e-4d64-9f7b-08d812a29079
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 09:41:09.0037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oVEvdPJoMRepQwo9ipfeJHuLY8N4sxDrBrQvsyavVpT5UPuO4KNymSZv7gOozI51qYGQ+OCMoVHDI3x0klpqVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3849
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024113_008318_538D1CEF 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.82 listed in wl.mailspike.net]
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


> Subject: RE: [PATCH] soc: imx-scu: Support module build
> 
> 
> > Subject: RE: [PATCH] soc: imx-scu: Support module build
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Wednesday, June 17, 2020 12:54 PM
> > >
> > > Change the configuration type to tristate, add module description,
> > > author and license to support module build.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  drivers/soc/imx/Kconfig       | 2 +-
> > >  drivers/soc/imx/soc-imx-scu.c | 5 +++++
> > >  2 files changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > > d515d2c..c255acb 100644
> > > --- a/drivers/soc/imx/Kconfig
> > > +++ b/drivers/soc/imx/Kconfig
> > > @@ -9,7 +9,7 @@ config IMX_GPCV2_PM_DOMAINS
> > >  	default y if SOC_IMX7D
> > >
> > >  config IMX_SCU_SOC
> > > -	bool "i.MX System Controller Unit SoC info support"
> > > +	tristate "i.MX System Controller Unit SoC info support"
> > >  	depends on IMX_SCU
> > >  	select SOC_BUS
> > >  	help
> > > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > > b/drivers/soc/imx/soc-imx-scu.c index 20d37ea..bdd43ed 100644
> > > --- a/drivers/soc/imx/soc-imx-scu.c
> > > +++ b/drivers/soc/imx/soc-imx-scu.c
> > > @@ -5,6 +5,7 @@
> > >
> > >  #include <dt-bindings/firmware/imx/rsrc.h>  #include
> > > <linux/firmware/imx/sci.h>
> > > +#include <linux/module.h>
> > >  #include <linux/slab.h>
> > >  #include <linux/sys_soc.h>
> > >  #include <linux/platform_device.h>
> > > @@ -185,3 +186,7 @@ static int __init imx_scu_soc_init(void)
> > >  	return PTR_ERR_OR_ZERO(pdev);
> > >  }
> > >  device_initcall(imx_scu_soc_init);
> > > +
> > > +MODULE_AUTHOR("Anson Huang <anson.huang@nxp.com>");
> > > +MODULE_DESCRIPTION("NXP i.MX SCU SoC driver");
> > MODULE_LICENSE("GPL
> > > +v2");
> >
> > I'm ok with the change. But I'm curious how can this module be
> > autoloaded without MODULE_DEVICE_TABLE.
> > Have you tested if it can work?
> >
> 
> I ONLY tested the manual insmod, if want to support auto load, may need
> some more change, will try it later and send out a V2 if needed.

The further check shows that, if want to support auto load, the platform device
register needs to be done in somewhere else which is built-in (in my test, I move it
to clk-imx8qxp.c's probe), and also need to add below module alias in this driver,
because it has no device node in DT and no device table in driver.

+MODULE_ALIAS("platform:imx-scu-soc");

Since this driver has no device node in DT, and the target is to build all SoC specific
drivers as module, so the best way is to add a virtual device node in DT in order to support
auto load?

Anson 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
