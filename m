Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07DA17E12C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgNfXpbo+aMtAEqQjCr5gSNufGAKdxN/nvN0jOZ7dew=; b=XJiNig0g8YTUoo
	+gtKHCTdqgVzkhRNq0zno9ETMASRFSXpqZocbc6Vy0lW3Vwjsgn8V0BwuES9I+SA6PxAiYX6ch3tv
	FmF68B3xJvGCwWzwFuDzZL7j1nCcBUUD9ggPwytjmZDwJwOXWlN+RzR//inNOrrz05qhGJH+CRqdH
	1j3Ho9/QEWTDnUlz1wOtK2TMxZ1XcmieKgR6STMO6HmHeiLOhn+cUbuq4HwycemBC3hXVRJ541L5T
	NFeqipFRTScCy1N8PnpRvrIGMYNh2Hu5wVil0WoYibRtdpNRlGE0b0tLlPlmV/UUautJY1FJXPohv
	QDHXhJDqIDsmqKCgnXnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBISe-0004jC-J7; Mon, 09 Mar 2020 13:28:48 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBISW-0004ib-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:28:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HfKTG5u5lsukCJyGlx8NHs7Xghkl3pOXOgOcx+QmIyPsGFZcFiT/PyyfCpsBfXhPAzrhNoSSIS39qbpClf01U0uez9bBv01OzRgQ+CUioWtYltPQaIKvvgpwtNSjELRDPNv76eHsY2gQCsc3+vVBvDnt0H9lylj9cKUpY0RKNunLvxGJFsu2Ii4H3saZLpZygl//P5fG+dNqgvqSvaOissxqJHQEb+m3bSfe5e1QH+PJCdo+/wlDb6UkA3noWo+F5rHxbkQBpw7p8U/oQhgLFcgculPM8w5pP7+7LT6KPSZHMl/DhXXOQhX0MS33Re4bcqAQJzTVBvXf0mSJ0vjdww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KiMQjdhKshysxHpWF2uKsXIN9uhFZ0MEIK7BPmSOfc=;
 b=WBxnxrQrrexMRCUhKlAQ5g9CtfzK3PohE0JF4M2FmMJ+0t38jBuk5vL/7I/x6FCCsVbhe6nPCqVxwfI909+R5XJqclWVgFPZ9UFVQVZr2gLk/m9SKL9ixDWpdvZPJwWWdQjWYointZR/GkxUCV7UrY4WqBWc9sPalMyRCgwxlqlpS2l03BBLY6FG1+ixbjJpML2b9QpB4kkP3Yg16BFl3LUUDesJHQKyiVrGy9AKe/BVqE2fMdOhCTUtJpyKM53E8V4L1e2eA8tz3ZArrQbQu7zIO3draQ4v67M5cn1xvQ9z/w5rsca8roRAQttFoEkt8LMVSFD1m5TC+FGXZF5E+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KiMQjdhKshysxHpWF2uKsXIN9uhFZ0MEIK7BPmSOfc=;
 b=sSSUpw9SEnuJyvsIUcCifAD9fFc2EfMQFkU1LG/hBZY88RoqzqoquoYLJRwAjLDfe6/lgZUKIMCZyHILRvNBfpy3sYrOWPHMmuYNZSs3EvVFceck8LLOqUUgV4fYyJUvFOfH65Vw74HM7NGIYYGwAu0Ed0Av6FZ4VqjL68IjURc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4353.eurprd04.prod.outlook.com (52.134.125.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11; Mon, 9 Mar 2020 13:28:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 13:28:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Topic: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Index: AQHVyrHXB0HrD3qW50ui9P9S7z/H8qfp0NaAgAADRlCAACnrAIABBSNwgACHbgCADn0MAIAEANYwgAAfBYCAQm8QcA==
Date: Mon, 9 Mar 2020 13:28:32 +0000
Message-ID: <AM0PR04MB44813F8292A36D84B3F80AEA88FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
 <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
 <AM0PR04MB4481B8BDAD2CD7376208B5F2880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a2gOq=qv5C6_0QwBXPuENqhBinK_KkzL5AcAEJtTDyB1w@mail.gmail.com>
In-Reply-To: <CAK8P3a2gOq=qv5C6_0QwBXPuENqhBinK_KkzL5AcAEJtTDyB1w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2a2849fe-c318-40d2-1761-08d7c42dc392
x-ms-traffictypediagnostic: AM0PR04MB4353:|AM0PR04MB4353:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4353351F992C13ACF00113DA88FE0@AM0PR04MB4353.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(136003)(366004)(376002)(189003)(199004)(86362001)(26005)(8936002)(2906002)(6506007)(478600001)(53546011)(44832011)(8676002)(71200400001)(33656002)(66946007)(76116006)(66446008)(7696005)(316002)(66476007)(81156014)(64756008)(81166006)(66556008)(4326008)(9686003)(55016002)(6916009)(52536014)(186003)(54906003)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4353;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZEiKaUaU9TFwvl2CJ338VPh8kkpc0rj2iuYskq8zt9eSYKuWk1Kz3eycL5RcJQQfeLTkZGqFx3ArN1sCVtqhEojZtNVVmZkVqPbbiX6uRizoLNzUsz8tz9Yz9O7owzTiV+sXbDdLHaFFIygJhxzNl8UQX3XyGgaeQMTe2HE7zu81Prznh6br251Xo3J/nv3KVqDXBOxKFX3iZXWLmR/oSUXiYVx00lDeJGta5mqbhWsLDroFCYndVa7ErbDyM1Hs77vP9GwAgX69Bolh1SI1AZk+Mq1W3l4m52HlA25i+L57F3n1Xgem60qGKtuMxIMxCyGivVBjRKoy3vrQqtLKwStwjGWZI8MmZU4KZvE+xRkql2qToqhrhRt0Uuu9+6m9rNhcJhHldlbQ409lA8Shbuf3Kpp3NVpj2uZz/DaquGU29PEp0/IJ35Kz2BUVgy3F
x-ms-exchange-antispam-messagedata: EyqSxMuOOBS5n9Bn0WEdzewEbd7lYM2Fn5OL0q6g+/2HRHwBXAAXOvqd38iDhBIjI1BYuoeV6m+D0AI60dDg+9a5xfS0Io3eBCPOi6pYwDfbD0gDdcM247+kAN3YKvSSbUqcQM9ViBykLkryAeCFxQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a2849fe-c318-40d2-1761-08d7c42dc392
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 13:28:32.9628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +AUFQk54uAG48aeC+8W8uTSF/yi4zhFC+hGU8o1GCaKorhCaraPE7v8IYY7ErLxLNiiCD883elGt12dsObQ0mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_062840_564710_AD7B7F7C 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Adam Ford <aford173@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

> Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> CONFIG_ARM64
> 
> On Mon, Jan 27, 2020 at 6:05 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > Does anyone have any suggestions on where I might find some generic
> > > stuff for either iMX8M or generic ARMv8 docs for doing something like
> this?
> >
> > We did a porting for one customer, but code is not public available.
> >
> > First let uboot switch to AARCH32 mode when booting Linux, this is
> > already supported by uboot mailine.
> >
> > Second, create a mach-imx8m.c under arch/arm/mach-imx to handle
> i.MX8M
> > just like other i.mx arm32 socs. This is not preferred by Linux community.
> >
> > 3rd, build i.MX8M drivers when using imx_v7_defconfig( or
> > imx_v6_v7_defconfig in upstream)
> 
> I think the third part is something we can clearly do once it actually boots.
> 
> Can you post the patch for the second part for reference? In theory nothing
> should be necessary there, so I wonder what I'm missing (as we need no code
> for arch/arm64) and what we can do differently to make it work out of the
> box.
> 
> Is the problem that the SMP bringup using PSCI for arm64 doesn't work with
> the 32-bit kernel for some reason?

Sorry for long time delay. I forgot your mail. I did some try again, seems only need
the following piece code to make it boot, also select GIC_V3 and drop some ARM64
dependencies in Kconfig for some i.MX drivers.
Need some addition work in ATF/U-Boot
to make smp work, that is not Linux related.

+static const char *const imx8mm_dt_compat[] __initconst = {
+       "fsl,imx8mm",
+       NULL,
+};
+
+#include <asm/mach/arch.h>
+DT_MACHINE_START(IMX7D, "Freescale i.MX8MM (Device Tree)")
+       .dt_compat      = imx8mm_dt_compat,
+MACHINE_END


Are you ok we add such piece code in drivers/soc/imx/soc-imx8.c to support
aarch32 linux?

Thanks,
Peng.
> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
