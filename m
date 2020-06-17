Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF341FCD5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sX6vo+Y1AuIa5CMy2o5Q0z9lI73PkR6JlMoVYLRJ7tY=; b=hK5ISUHLo7TJih
	F/mTUbrIEcpiS7niM86bNTgfEHw03lX81ukknUMmI595vfd4lTNVbGpzQhJQ5kmkt0ZvPPj3RCwNz
	aaBCOx5qko/EMG1r87zKHuIfy4V/kPz9cYaFq9T5PIt6DfyIZXREHw1cMTczKqHDenLRjgE9z+OYo
	ZOUMwjlAzuu8O6HGQniFP5bRmC2JqEuA7mCTJt6B+edZdVCv57hwQ90+aAvr47QfAUFO8lnt8P84v
	czBeDa6MOypk5WLupvrCP7dPJ3NIkQTr94dx8/44UGHJRGaWpuK/OBn2SEZxmaim4j3Lnfd5vVWGH
	RXCx1n+9tF/BV1HMAZTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlX9b-00006h-VO; Wed, 17 Jun 2020 12:26:55 +0000
Received: from mail-eopbgr150078.outbound.protection.outlook.com
 ([40.107.15.78] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlX9S-00005X-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:26:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rcia4LLVO9LaUhRJI+oE5+vNel2vjem50H/UQNQwnCO1cK8FN2AlfeiPm8Xazt6YBMIVH2PX0ua6L6KsWRQ68Zsm9nUTUEzr5tlRUGIi6yZFAE01nEQFfYo02BiR/oiRp00BR73hAW2VlYdMC6R4jJyQukjEfIHKpnnTzYlBHJj3TSIylD/DHmRj1AndG3uIrcNRkABmJjl8Bc1VeNhF91t9gQAhy/kAphVmIKy5JkwHYx3YNcFRj5f1zUeK74G5bi6coAN+niUZueYVc05Xz/R8sV/8NZGNYI82/MnLzXSHo8Fh015favM/PhqDTFOkkUt0VlLZuNzdOtOHgwr6Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3OUq3R75rdKSSnxys/SVFm1fcgb15bPx2uFsnmGFzHk=;
 b=CgBf2QQnoz3sYXzHPllFtZNDIvf2QxEfhmUX3BB8jzW4rPein6m/i/szAQoiS7+KCyEXLYuD2fcNFLU9qyFeG0tTp3rPfGsodeTKPplS3SUB4P8pZWv7mtu0nfwAhrtU60roAM3uWOX/H/308ryjr1WmBKaCa/q2Gnga3RCUoHzoNO3qnFiBjTTbmkoV38XO7O3wV6lDvPXA61FomDR9zXml20AflpEL44q5sLHCEGu2HkJnrznX2bl+4VHuNl4X96LnJOsLpv50YqG5NGhrKn/hLiNwjqllHI58YFgGlMSRyMwCpbq4qtxnZg3z+m93MlUisrKDAIbYJ+hOf87GhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3OUq3R75rdKSSnxys/SVFm1fcgb15bPx2uFsnmGFzHk=;
 b=bebVAoV7VUoyRuMzPKTYAeZAh/U5hvmRIQ8oKnjLFB0TQrjxzQZf/rwQ/GDP95TIW+sz3eVRDPfLJWIVnEduKOowfuzLC6UY8zbJqMWssha6k1haCYxFoAUGLrNptRJtj2Kduz36iAphUo4Tfm63v0stsnz52SKqGrZCxpg4Pkg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3881.eurprd04.prod.outlook.com (2603:10a6:8:12::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 17 Jun
 2020 12:26:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 12:26:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
 module
Thread-Topic: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
 module
Thread-Index: AQHWPjGlTieDV0WYc0SOGNv5XMQ0F6jcrBWAgAAcNCA=
Date: Wed, 17 Jun 2020 12:26:43 +0000
Message-ID: <DB3PR0402MB39163BC04E4E5F4F6A22F6D4F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-4-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49660A10856A3746C7103394809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49660A10856A3746C7103394809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 01fb318e-09c7-4065-a04d-08d812b9b1e9
x-ms-traffictypediagnostic: DB3PR0402MB3881:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3881D5D0335E3B99567381C3F59A0@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 22b1HaOIS2icXu9OLJJPDbGq0TwJimaRLtlfLRCRKYW2CubDF+oDWEAFkY61uyGdnoOsRt0JiBjC+wX4ZHqx/1GqxAFB1LM9kPpG7UGOhZ3ctWq5pvVdF9jp20BI7ZpPad3vkPSw2xD9ZXwfmDYWXfx0MV/NyoXs/8R59TNa/QTagx2TF9yr7c73iZsdCIlNqgEBoXVlT6hAabehww8SyJ5Q/tvNklX2UQ0JZ7V5Y3HRS5Zxbk75JlQFp8twW1FeXa8PI/OM7aXnvoNi4JtyQfjcYmwEoCGAFCOVBMW5a9tLouolqNqWC7at56gy3PLI+GOJ1mDY1pW+e76hC+BzhsVa/fXAQ09SVomxn/S9dRLtota6i+9xzSrKNFR9+wt2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(376002)(346002)(366004)(39860400002)(8676002)(33656002)(4326008)(71200400001)(2906002)(55016002)(186003)(26005)(44832011)(8936002)(5660300002)(110136005)(478600001)(9686003)(83380400001)(76116006)(7696005)(52536014)(66446008)(86362001)(316002)(64756008)(66476007)(6506007)(66556008)(7416002)(66946007)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1ocY81cP+XOnCmjIAj6Aj5oxyPPhSuvxPDC8B9+HTGk3R9BgGln60DdVZrQr9tna54bFf7cFhQy/Xs0NFYOF8L3WeWXn5oHy1nG4b1LQaaI0kguxP4r4B0XBnqFvFoQFKt+dNxJlduxBWGTapx06wNgyIiaFE4HGJnS2dmd9S0u56uPOmN3acDZhjKfM0FlPPU/D78AJ6qOC7riC0G9j656qrieeu4n0sawy3mWKNrc8+GILRi2YwgqiTfZqjF8TwaZM1hzoqbd/bLaPdaz2vC5gB51I4eZyt5fmbypNYMeM5iqxglO2xZICViKIY9ya6u+SMFhJjfPuivYn8yY6azkotkUrs2HH5CTkhClEx0XI0r325A2XXqXnAe6/8rmA5nIHPAShVLKPxavqet2IYghERO/nVj6aVosa6rQZNiMedcgu6XK/O43ZSLjiM7LbRUoG4M7aCXtsNUMLgSNYaMQmoCIpI8BcdDr9E1uJNLFS/1YROOAU3o8o+tpYERwZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01fb318e-09c7-4065-a04d-08d812b9b1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 12:26:43.4164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EAyzG1FAKzgN9l8prxplXvKAxKDnnMYkWHKmnIt1hwKXhOlH5cW6ifB3eXxwDEB/SN2WJG9gvBLD0atG9EU8TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_052646_759179_B109FACD 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.78 listed in wl.mailspike.net]
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


> Subject: RE: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
> module
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Tuesday, June 9, 2020 3:32 PM
> >
> > There are more and more requirements of building SoC specific drivers
> > as modules, add support for building SCU clock driver as module to
> > meet the requirement.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- add ARCH_MXC to build dependency to avoid build fail on x86 arch;
> > 	- move clk-lpcg-scu.c change in to this patch.
> > ---
> >  drivers/clk/imx/Kconfig        | 4 ++--
> >  drivers/clk/imx/Makefile       | 5 ++---
> >  drivers/clk/imx/clk-lpcg-scu.c | 1 +
> >  drivers/clk/imx/clk-scu.c      | 5 +++++
> >  4 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig index
> > db0253f..ded0643 100644
> > --- a/drivers/clk/imx/Kconfig
> > +++ b/drivers/clk/imx/Kconfig
> > @@ -5,8 +5,8 @@ config MXC_CLK
> >  	def_bool ARCH_MXC
> >
> >  config MXC_CLK_SCU
> > -	bool
> > -	depends on IMX_SCU
> 
> Keep this line as it is
> 
> > +	tristate "IMX SCU clock"
> 
> i.MX SCU Clock core driver
> 
> > +	depends on ARCH_MXC && IMX_SCU
> >
> >  config CLK_IMX8MM
> >  	bool "IMX8MM CCM Clock Driver"
> > diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile index
> > 928f874..1af8cff 100644
> > --- a/drivers/clk/imx/Makefile
> > +++ b/drivers/clk/imx/Makefile
> > @@ -21,9 +21,8 @@ obj-$(CONFIG_MXC_CLK) += \
> >  	clk-sscg-pll.o \
> >  	clk-pll14xx.o
> >
> > -obj-$(CONFIG_MXC_CLK_SCU) += \
> > -	clk-scu.o \
> > -	clk-lpcg-scu.o
> > +mxc-clk-scu-objs += clk-scu.o clk-lpcg-scu.o
> > +obj-$(CONFIG_MXC_CLK_SCU) += mxc-clk-scu.o
> 
> Like i.MX pinctrl, I'm not sure if it's really necessary to build core libraries as
> modules. Probably the simplest way is only building platform drivers part as
> module. And leave those core libraries built in kernel.
> This may make the code a bit cleaner.
> 

Will discuss this with Linaro guys about it, previous requirement I received is
all SoC specific modules need to be built as module.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
