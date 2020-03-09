Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DED17E258
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LjTju/In6y13ZWB5FDCOqFxpGg1/hDGozD47mVBZQk=; b=aoKnghDwb1hra5
	v50AjoUE5JAp+kOxOVpyEoIUPWAtVN2QzXqsNEPVavtOFpzQiP5j4rQBqJQJFKCJ8wehSJtS9q/Gw
	EqGIHEqAebDZsj9BtVfAMoRZgc+g8Q0beJo1LnbaEnFv49LAXHE9hplTm5Y64OK9nvn4wCf27TvmR
	cBrzOQyiA3osHUHi2vxRO7WAzbvQ/Z9XrhTVR3upfcAJopi1Gqq71xHpM2JmlRVhbn1rZIJUbr6E4
	QyZj92FhJsayz2flnof6AaKBdROCE0sUKpks8Ecu9mveHo3GdP5UyoRNbz9xjUbpYsTt0/e7kGUk1
	kDyFXQJgtSXNd/ZF9Pmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ9t-000189-QO; Mon, 09 Mar 2020 14:13:29 +0000
Received: from mail-eopbgr140075.outbound.protection.outlook.com
 ([40.107.14.75] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ9k-00017i-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:13:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhWY2kJRov9F5aMVXug330/T3nBUr2eJUPiiBF3OTtGWM9caGkkRHDje2n3s+UixGPkow64a7HPDDfnX+nr6tk6OuorWOiFBrK0bOOQ0um2+NjkhiBwoAJtoOEQNs9VbJnSd8ILM442dMpHu3W83ZERqLtGhbzneNSVx34XRy4oezwE4NVrYg9C8/icfrJwdX5fBazXZXmB28ZwSJY4AdYgExgYoyXzsMlWvsEjTmx0HAm6fgdQMaKaifEwBYP7F2pyVI9y8vxdqbG/7po/W1VhxK+99ySIPDEk1Xi5aOTR61y0cTbEW3WUcaeTz7BD6zAroPujtRspFLMjpV0sc5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qrb6HXTHKci+6sukaZ+Mg+Ks50kFdpF/pMUe0OAWTV4=;
 b=k0rGdb1VFpo8rGqlWJlKkKRLCg7ly0cEAyHZtu/u2994HMNbIlkoosZPaHkddbaWElaMI1KfaP/C2daPwHJCP2mJahXU/XgOfz5kK+zPwqCOs3JU9ZIK0zEBJlpOLKbnwFJhqvmVrJvm0IYboSl4Z0GniKnxGDuwagjPb4f9C5R7SxfhNl1txuRrbOqhPy8v4CMn2VT6fPnL04o0vm5arYx0XP0b7hTEhzWdWFFY3mxUK8sXf/ZHz+q+d0ZAPlTjAJ5onKMZ3ltNbl03q+7OTqKnm6F1vUbxON0DbHZfOSewhzq5SvINDdGjc1VBVdkTupgmsm9Ous38UfCuiZr+Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qrb6HXTHKci+6sukaZ+Mg+Ks50kFdpF/pMUe0OAWTV4=;
 b=LABl4CG8NL7szkxq2gVCA4FPCP8UaAZ3YTHpD8cCs3TPz9IAF/G+g+fdEsV76SSwQ5gUZgI7LUv/Ci3NH40M0j7p4kn0VR/aKoIXuYxd5ShR1OWEGMcUuVAevv5bCBCjaHSo/ATDIjPwv3HQt5Tpydhb+jMKlscGCtPQ5sgonyk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7076.eurprd04.prod.outlook.com (10.186.130.72) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Mon, 9 Mar 2020 13:58:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 13:57:59 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Topic: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
Thread-Index: AQHVyrHXB0HrD3qW50ui9P9S7z/H8qfp0NaAgAADRlCAACnrAIABBSNwgACHbgCADn0MAIAEANYwgAAfBYCAQm8QcIAAB2KAgAABvUA=
Date: Mon, 9 Mar 2020 13:57:59 +0000
Message-ID: <AM0PR04MB44811CBAABAA8039949F23AB88FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
 <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
 <AM0PR04MB4481B8BDAD2CD7376208B5F2880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a2gOq=qv5C6_0QwBXPuENqhBinK_KkzL5AcAEJtTDyB1w@mail.gmail.com>
 <AM0PR04MB44813F8292A36D84B3F80AEA88FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a0Lc--pDmBG3mBiKyjpOEZVdKVBnLNYBdCjzdgN1byU3w@mail.gmail.com>
In-Reply-To: <CAK8P3a0Lc--pDmBG3mBiKyjpOEZVdKVBnLNYBdCjzdgN1byU3w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc71f208-e0d0-41be-1826-08d7c431e0c3
x-ms-traffictypediagnostic: AM0PR04MB7076:|AM0PR04MB7076:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7076B5FA67F8F90332A20CB388FE0@AM0PR04MB7076.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(199004)(189003)(6506007)(53546011)(71200400001)(81156014)(8676002)(81166006)(316002)(8936002)(44832011)(54906003)(33656002)(55016002)(9686003)(4326008)(7696005)(5660300002)(2906002)(64756008)(66446008)(186003)(76116006)(478600001)(66946007)(66476007)(66556008)(6916009)(26005)(86362001)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7076;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ycp10pmRAFpRndcCFwCDQfZfRAqiGe7piBNPi2aPqipM3itZ1HUXW0EBz/qGe3qKIrdVOj067erkmYBXmgHszH/oyrQ1N8RI+W3OQ7ZmB3I39CYIRplsgrOq6Sg9X6IsXs+yKravZhi6tkBxaG54vthOXRYbTVVFc5AfAUZUVqMAt/1btOTjuKCPR8yykTugajN+788y2Pwk5Uek6iMDDdZrLtCsnSm7tT7SOPeUeji8d60PsEy+feTCp5/FCiX7bxNHGu4edVNO/X5xpiTATQJ0siPE2EpwdwiofO2IvjihmYqB7yHcwo/+jdwiBkpg9bPuISZUxKzgHJTIzBSSHgW48c/bb3av45ZTbYuvAjLj8Dlp+33rGiQ+tqY78ADpCrIXSjvM0umst0og0VsVMjRrfz2WpMpt8QyXBXlHQWP7ZU+pHEgT8ZM9h1lsd3Wh
x-ms-exchange-antispam-messagedata: zUvs3/bVjSn+BoqeR/w4cOdceoJZMd9bx+mWYTGx8nHs2EMuXmhwcK9p8OAAxSJucUUNNscq+aRgB6UbL996/4Yva1cEyyO6tDnXPDSDVrbyTCQMIi89Yk/H9l7zlp7XwhlmGj0wSncinslxhg264A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc71f208-e0d0-41be-1826-08d7c431e0c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 13:57:59.7829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yg32Odeh2LgZwHhF4Q95Wi7NNnqsr1nFduen6dgsD4qYptCbMIKqcvPAXC/UQHTha16KLVGm/8N6ip00HYro2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_071320_964033_50F51BDE 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.75 listed in list.dnswl.org]
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

> Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> CONFIG_ARM64
> 
> On Mon, Mar 9, 2020 at 2:28 PM Peng Fan <peng.fan@nxp.com> wrote:
> > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > CONFIG_ARM64
> > >
> > > On Mon, Jan 27, 2020 at 6:05 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8
> > > > > when Does anyone have any suggestions on where I might find some
> > > > > generic stuff for either iMX8M or generic ARMv8 docs for doing
> > > > > something like
> > > this?
> > > >
> > > > We did a porting for one customer, but code is not public available.
> > > >
> > > > First let uboot switch to AARCH32 mode when booting Linux, this is
> > > > already supported by uboot mailine.
> > > >
> > > > Second, create a mach-imx8m.c under arch/arm/mach-imx to handle
> > > i.MX8M
> > > > just like other i.mx arm32 socs. This is not preferred by Linux
> community.
> > > >
> > > > 3rd, build i.MX8M drivers when using imx_v7_defconfig( or
> > > > imx_v6_v7_defconfig in upstream)
> > >
> > > I think the third part is something we can clearly do once it actually boots.
> > >
> > > Can you post the patch for the second part for reference? In theory
> > > nothing should be necessary there, so I wonder what I'm missing (as
> > > we need no code for arch/arm64) and what we can do differently to
> > > make it work out of the box.
> > >
> > > Is the problem that the SMP bringup using PSCI for arm64 doesn't
> > > work with the 32-bit kernel for some reason?
> >
> > Sorry for long time delay. I forgot your mail. I did some try again,
> > seems only need the following piece code to make it boot, also select
> > GIC_V3 and drop some ARM64 dependencies in Kconfig for some i.MX
> drivers.
> > Need some addition work in ATF/U-Boot
> > to make smp work, that is not Linux related.
> 
> Ah, nice!
> 
> > +static const char *const imx8mm_dt_compat[] __initconst = {
> > +       "fsl,imx8mm",
> > +       NULL,
> > +};
> > +
> > +#include <asm/mach/arch.h>
> > +DT_MACHINE_START(IMX7D, "Freescale i.MX8MM (Device Tree)")
> > +       .dt_compat      = imx8mm_dt_compat,
> > +MACHINE_END
> >
> >
> > Are you ok we add such piece code in drivers/soc/imx/soc-imx8.c to
> > support
> > aarch32 linux?
> 
> I don't think that code does anything other than set the machine name. Are
> you sure it doesn't work without that?

Per setup_machine_fdt code, I may need to give a try with
CONFIG_ARCH_MULTIPLATFORM. I'll give a try and update later.

> 
> If it's indeed required, I'd prefer to add a file for in arch/arm/mach-imx than
> in drivers/soc/.

Thanks,
Peng.

> 
>       Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
