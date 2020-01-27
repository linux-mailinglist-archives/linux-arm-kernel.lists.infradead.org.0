Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF0B149F1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 07:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNUGa15OxteFihMF7x1fEB9AWfuaQuzqomNGWn91P3A=; b=Ewq/Nh6JH8EQEj
	kqO/i1v0wGk6zO2fwMfDOvxfDasp9cFAaBtX4x97TVNzQ94Trfj3eiZu5+jaicG2P3XKoLvg1++ki
	PIfwAuWtwv7bWIGsIHQC0d8pxT4ZfS9ZMlLlT6ItSx42wIim+naKb8CjQ6oVTIP6N1rWe3usr8FTj
	NLaJeRrBiadwWjxgdniI8JTVYfg0SuqJLS3zROpm+zKoC/aS4u1gJjxVazvM/D4Ka53TWAO/tCSSv
	97C21bf58lB6IdMEYyPsyCDqaPMrWja24JSgbNKpbYWf5rgdj74spA6ppHtUBoZfGEVj/ldZfMxwH
	4FEyntOTMVSQlW+xKg6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivyHQ-0007if-LN; Mon, 27 Jan 2020 06:53:52 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivyHD-0007hy-Or
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 06:53:41 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MUok5-1j59K62jiL-00QmgK for <linux-arm-kernel@lists.infradead.org>; Mon,
 27 Jan 2020 07:53:31 +0100
Received: by mail-qk1-f180.google.com with SMTP id j20so8602308qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Jan 2020 22:53:30 -0800 (PST)
X-Gm-Message-State: APjAAAVcn1OtfVGs1tn2/2VYwWs+fVDxrVtVhgqv5NsOqLhyOxnjN84c
 WkJMQM121AN0o6WocHUa+h158Ld98SvgM6zkAc0=
X-Google-Smtp-Source: APXvYqyBg0aK/XM7DOCpc+zyNjEeT72WLcZ4upAGMAoAxkkLtsbwNOUentHIPudsyZSd0HoIMQEnbY9lJ1UtKJSacRI=
X-Received: by 2002:a05:620a:218d:: with SMTP id
 g13mr14318824qka.286.1580108009529; 
 Sun, 26 Jan 2020 22:53:29 -0800 (PST)
MIME-Version: 1.0
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
 <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
 <AM0PR04MB4481B8BDAD2CD7376208B5F2880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481B8BDAD2CD7376208B5F2880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Jan 2020 07:53:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2gOq=qv5C6_0QwBXPuENqhBinK_KkzL5AcAEJtTDyB1w@mail.gmail.com>
Message-ID: <CAK8P3a2gOq=qv5C6_0QwBXPuENqhBinK_KkzL5AcAEJtTDyB1w@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:tkmcAwL7HxMXuov4ITdDmHElEAArlOahPSC//qqztgVBZhqBzLB
 +r7XYsUB6bdqdliRPJH6U74rPa4xA3dDGhL2r8SF6eWDNtBYBHv406ci0CxCkrELZtgCNc+
 8/G0HmEGuheTvE47ZqeG9Cy7vcXDAQEwL/c/KjG2z/ce2aBk2jzck2cb/FL1LSQCv7AMeaQ
 EWefD09pnqWCFNMdD1oCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CNE7j51CIdk=:+DCF8q2WL4XIEaIyZMIkVv
 4Fgf3Op+coRgiCcGdhMI+EEha6S5LJkCzkCTemvKClLZ4oimBf526MOsQ3zcNJHawEXgtU1kg
 3dD5aBOtx5PlvU6h8wjVml+WRaLnKjCTPXYrVW81bjHjKA/d6tLjPPawX4ImpWyxi35nNPF9o
 mwHjeZBYlr/I7NMf7ezhN1WBR+PpAlNnyPg6pAy2CG3Ne1ARUWQlcVbxvQkwzP4SPhcix8L/N
 n9UFrLHzrHnuOQpNRtWI9kNQWKjnaxZ6X6lLsNLEMmTQWWMJT/ykzrGDyrAQ99GIImsYSPp/O
 xQffVK9W2nPUNK4yNF5S8ZiGUx9Q4Kd50GsBTbnUKB0KdStqhhg+53Au+XGFFpIDUxRFrwAOF
 2YK4AIHoziCWsslPJgBaA3DopE5VR1pxCFiOfO/+VU0PwVmSMYvD5/V4HtZNFeak/PNtOZN0Y
 32zIN8jx+kbGf1omqeU16W2afLXyobhU7kbP/uDK1e7NtjaztWYue//FI2f4vEIkcPnMAGKwE
 zceywuHbNTq9BYWvlDlnMzpmqsxVvaH9XVIdShtPijdfZ+6Z7tTSH5/N3nfPyu416NKKjKuMS
 YZ0t69KC4c4YwSI/nCfLvzbqjwZzX7omR3AbJDAFwtTAyT/SVM+RQ2SIfv903UgSWAhe+XoBB
 laAVuvw4vvwh2mnrCEN7s4jBgx/jrNbA/iiFkB/uxK6Yf/gPCDQfJf3ees0xJjieKB9FZVaOP
 kzwwdfSXGRuEq5Twc7/OdGLba7OowqYUQjOlVL53hvm05P9PJwtQF7O9XIdLkufrssiMfTOKi
 RpXGIRPulnKT8rodWt90JlFCzMsTWGSrrLW09/nwCCUuyIB3w4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_225340_100049_F2BB1450 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 6:05 AM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > Does anyone have any suggestions on where I might find some generic stuff
> > for either iMX8M or generic ARMv8 docs for doing something like this?
>
> We did a porting for one customer, but code is not public available.
>
> First let uboot switch to AARCH32 mode when booting Linux, this is already
> supported by uboot mailine.
>
> Second, create a mach-imx8m.c under arch/arm/mach-imx to handle i.MX8M
> just like other i.mx arm32 socs. This is not preferred by Linux community.
>
> 3rd, build i.MX8M drivers when using imx_v7_defconfig( or imx_v6_v7_defconfig
> in upstream)

I think the third part is something we can clearly do once it actually boots.

Can you post the patch for the second part for reference? In theory nothing
should be necessary there, so I wonder what I'm missing (as we need no
code for arch/arm64) and what we can do differently to make it work out of
the box.

Is the problem that the SMP bringup using PSCI for arm64 doesn't work
with the 32-bit kernel for some reason?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
