Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977121FE365
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 04:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLfNkxUaGGsEEuo5exv5nQJSmRz2lr+/DH9vBskOVQY=; b=apgTbCOedRTzYO
	FKKIjlLzmSjNhjS5ZkatBDbq1qfN/3LXJK8+Hh9F0Wy1F34+O8r3dm2k5DI+Ax/JhwA1NOeahKZUM
	MbMRWyPVIhGfl3BcuBRMr05b2zOwJZKfeTZm8xBrznBb5552sAcB0Ow9NNJiyKV/QYDdGw99TN1D9
	8aQtkXYM7H6/Ong8ew1cpJP6Txv+VgocsV2VhCBz/rzQN6BUZbgDbuOrxmERYwJdTpCtl+C1DY3lb
	B0Zq9kn8P6XKGPpKz4HuXMZ8KX53LEI9p7j3hq7/27W4Wx7uObSYXP7Yqgo0W2wwRM660FnzIRwsR
	wmoZX3ghYmFCbfwYeHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljzU-0008MH-Ka; Thu, 18 Jun 2020 02:09:20 +0000
Received: from mail-am6eur05on2077.outbound.protection.outlook.com
 ([40.107.22.77] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljpW-0003Zg-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:59:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gni7DTaK0MbK3vmal4kYqmcaHXL4uD8O4359nl3+BNxK61FZRGI8SiQENEjS6a0g7+/WvRXOV8oQvBV0q6YtEwllF1G6cJ/gAlw2gSQhV44QYhSs1OoR5GsZae6mvnN9ydR19tc5b2D2rAa4gfr+zWb9YoRr+DT2UYZvcUtRkVCN5EUVvx/WF1nFuV3JaPHE+e6TUDW0K55c/J3TirZCsb3IDfUQpu3FsczYnn1MgwieZ9W/kaOlzvPtB01K3Ux1FwubyIQi1nDZcAMSyg2ee69N6AG5I7yralFoCORtQPNGvIGq09garGm73PQy4wyQT1O9qzg4ftuKTWE+mJvMpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnppIL3oCXx8Ftrawzm3nzRK8t976Xzu+IVXltWxhF4=;
 b=lq90lYCiWER07HZcgzmRR5iUzTGIEkJnjB5hq3iTisyG9hluIq8dQFLu0SJBpZz+C+hRR0FhGrzHiS7DewEKlv0dsZ82D7/i4I3bvZ26Fypmx4qUHVsHarfQ0YMuUncX6MRgAZx/i5SxA8rMyRuA8gMOgkXluKhiJFfSi/D0wcDBlRMHiPiJ7j86fVyEhmL0NHaY3LwFc21TKtBMvdZI+t4q/s480+XNEuGplXlg042aFFx2MKBYiF0Tj33Dga7L+FvdlRdLMFTb6VXnhYygZ+XQY3Q0l4vINpegbMpx+v0W9zqa2XQcDFYo7/0brRg6lTOSgKgU7r7wp0mQVtpKmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MnppIL3oCXx8Ftrawzm3nzRK8t976Xzu+IVXltWxhF4=;
 b=Ixrfz6bslIJAQLR54dv7iTouFDALE7MiGxI3DNBdXvXl40i92RJd9Bx9fPXAEvfsNmjJzF19MOUfcmyJHipPbQ51qXJ9vnc43fDIaMk869dmFvmZrvE6tXNozopTzc9C9nKSIH6mjMXqABqmnV05jFnEglU5+TfODXztU04JkBI=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5895.eurprd04.prod.outlook.com (2603:10a6:20b:b0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Thu, 18 Jun
 2020 01:58:51 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 01:58:51 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "linux@armlinux.org.uk"
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
Thread-Index: AQHWPjGl8KdpudYoFUWSs6/zaZS5vqjcqcVQgAAe9YCAAOIhAA==
Date: Thu, 18 Jun 2020 01:58:51 +0000
Message-ID: <AM6PR04MB4966B94CFAE642E6AF5AEF79809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-4-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49660A10856A3746C7103394809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39163BC04E4E5F4F6A22F6D4F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39163BC04E4E5F4F6A22F6D4F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3f9438cf-5c70-4df8-8c51-08d8132b25f9
x-ms-traffictypediagnostic: AM6PR04MB5895:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5895157FE6F25CC473DEF15C809B0@AM6PR04MB5895.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wc+QUbu3NrTxY8s/F3DLhDN/YulAtJwcGY6kwPkqbq/Su0xTuz+KbGDvXx9ev7Ubw+KjWjB7UB1wu4up1YnN9MIaEoP1NYxYbN9oHKHV7EK+IhzQryPfD5DYgDFZoV24/fE2TopTxuk7RP+d9BZ3+ouRyHn+GArblX5+7vn8wXmthdZLcHjFXgOCLunjzsjXffF84KF25OCuDkT4M/watyBIy47vLIKLp7IcSvGKaIQ6g2HAtu6bXGyVUq9G86jkbpAJAiTU2qhYHLOj9/xYj72wrVocsPS1dBe9l0bWgrZ0HqoogwWthR0tvdHCTUdwNjw1gLtUX1YSkgHQXxBaBlIip6bO+HoGiNMbEvfyYbXXP2g80qHVcpJGtPF0s/E3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(44832011)(66476007)(66946007)(66446008)(64756008)(66556008)(8936002)(186003)(2906002)(7416002)(76116006)(316002)(53546011)(55016002)(6506007)(7696005)(9686003)(478600001)(86362001)(33656002)(26005)(8676002)(71200400001)(4326008)(52536014)(5660300002)(110136005)(83380400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: D4M2qAbuHMVItlIQjH9X+mLDkFq8xcsow0ITU6x/zgT66mQMOFXvOZXraokbhs5dfipCql6BT5c5MiKhhlKHmhO0vk3bNBZiuJ/uzdUj6wqtx/BHVeBHl6ZYfjdBQDWd35rjGKb1A/PoEMQ47MPmSuQkfcW1u35iWjgCpWunZwubWgqtwz8ZqNRQLKNRWqB592f2ofo3ZNyC5uLRha7NHlW6Ax3646ES5athVzIJfUCIw2/ac0zbroW2agq27RDScTLqUTdtO3cQWApltg/xJjpIHr+L+r2ZKgm4CRcNNN3WHQKvG2a7q2WlYUX6PR1tqIw1lPW1hMQXVHDm3M/fdNx0rb8gwLNG2OKu6wV0fUTRSbSqgU/CCU95r5t0uus5VOG8cF9tsR8jWR9+RA74Cjk8lvtlCVXgAARxUmIXWgM5ncH0DXxjpS3in4TGK42asV+NRkFNa3npTJ3GHm7Nu2gKQORKS08bwQxfPhYYJiITXH/h775alL6U79mmCf9j
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f9438cf-5c70-4df8-8c51-08d8132b25f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 01:58:51.2829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KB1v+NghntJ6N+YB6dWI50KDQ/akWmP+2fqhrQEqpGh9esE/dUPrNekz/mvj9WHcROs/6ppgzS8TFFEWXeVgKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_185902_373508_5AE063D9 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.77 listed in wl.mailspike.net]
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
> Sent: Wednesday, June 17, 2020 8:27 PM
> 
> 
> > Subject: RE: [PATCH V2 3/9] clk: imx: Support building SCU clock
> > driver as module
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Tuesday, June 9, 2020 3:32 PM
> > >
> > > There are more and more requirements of building SoC specific
> > > drivers as modules, add support for building SCU clock driver as
> > > module to meet the requirement.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V1:
> > > 	- add ARCH_MXC to build dependency to avoid build fail on x86 arch;
> > > 	- move clk-lpcg-scu.c change in to this patch.
> > > ---
> > >  drivers/clk/imx/Kconfig        | 4 ++--
> > >  drivers/clk/imx/Makefile       | 5 ++---
> > >  drivers/clk/imx/clk-lpcg-scu.c | 1 +
> > >  drivers/clk/imx/clk-scu.c      | 5 +++++
> > >  4 files changed, 10 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/clk/imx/Kconfig b/drivers/clk/imx/Kconfig index
> > > db0253f..ded0643 100644
> > > --- a/drivers/clk/imx/Kconfig
> > > +++ b/drivers/clk/imx/Kconfig
> > > @@ -5,8 +5,8 @@ config MXC_CLK
> > >  	def_bool ARCH_MXC
> > >
> > >  config MXC_CLK_SCU
> > > -	bool
> > > -	depends on IMX_SCU
> >
> > Keep this line as it is
> >
> > > +	tristate "IMX SCU clock"
> >
> > i.MX SCU Clock core driver
> >
> > > +	depends on ARCH_MXC && IMX_SCU
> > >
> > >  config CLK_IMX8MM
> > >  	bool "IMX8MM CCM Clock Driver"
> > > diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
> > > index 928f874..1af8cff 100644
> > > --- a/drivers/clk/imx/Makefile
> > > +++ b/drivers/clk/imx/Makefile
> > > @@ -21,9 +21,8 @@ obj-$(CONFIG_MXC_CLK) += \
> > >  	clk-sscg-pll.o \
> > >  	clk-pll14xx.o
> > >
> > > -obj-$(CONFIG_MXC_CLK_SCU) += \
> > > -	clk-scu.o \
> > > -	clk-lpcg-scu.o
> > > +mxc-clk-scu-objs += clk-scu.o clk-lpcg-scu.o
> > > +obj-$(CONFIG_MXC_CLK_SCU) += mxc-clk-scu.o
> >
> > Like i.MX pinctrl, I'm not sure if it's really necessary to build core
> > libraries as modules. Probably the simplest way is only building
> > platform drivers part as module. And leave those core libraries built in kernel.
> > This may make the code a bit cleaner.
> >
> 
> Will discuss this with Linaro guys about it, previous requirement I received is all
> SoC specific modules need to be built as module.
> 

Okay. AFAIK it's not conflict.
You still make drivers into modules.
Only difference is for those common libraries part, we don't convert them into module
Which is less meaningless.
 
Regards
Aisheng

> Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
