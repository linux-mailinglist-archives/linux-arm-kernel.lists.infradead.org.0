Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C717E1A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TllObklBuUn730AtAklPxW7f3syjIrnbAgWtZKyWO1M=; b=hoEhXxpH1wok5p
	olr18FGUzhvE7r4S0NJa4XeEO4v3//dVz9m8+jhuMiu4WhSR4hAiZo3CuGLr5MtLfWDC1Y9NYCg2K
	Hl0GJNDnDknH3ILg84GNwg95g9PU3CpvRkvEU+9aIGqhuhbbSW6oHL5MBd6NRjPTe6DZPINgk4+/3
	+IdYGXgVZhO6f+jeYgVJlKnPj4jdQi/Qn42rl7ZpMg89+r3evbMudwutRAOlhTyiGTMH+LH5kd0aP
	jTrSgbv3lm2YTooex6KXkU6+3h9/mvT5yxHCN9U30Z1sYTFB7JQ1BU+JaNVyIm6UthkpHpIB5GLc8
	oZ026lLxCTKDCHkmCW6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBInu-0007DE-42; Mon, 09 Mar 2020 13:50:46 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBInm-0007CQ-QX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:50:40 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N4hex-1jIpp605ih-011fIb for <linux-arm-kernel@lists.infradead.org>; Mon,
 09 Mar 2020 14:50:35 +0100
Received: by mail-qk1-f173.google.com with SMTP id f198so9181556qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 06:50:34 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2opjs8FuAbwTu0VVFr0VCxzS4yGggLUe3+YJWbIeRY00856zMK
 grZC7h4dLVdQbNHD7xDGH3gkDAvJ45xvWoiDWKk=
X-Google-Smtp-Source: ADFU+vuqpwW8ZhxLQBpNPchoZcyzxLU401q7S/l6dUozKVJq9KHwtsxSODvooMUjZKLBpgQVX9CQBQG+FwLDoTO1dSg=
X-Received: by 2002:a37:a4d6:: with SMTP id n205mr4917403qke.352.1583761833703; 
 Mon, 09 Mar 2020 06:50:33 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <AM0PR04MB44813F8292A36D84B3F80AEA88FE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Mar 2020 14:50:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Lc--pDmBG3mBiKyjpOEZVdKVBnLNYBdCjzdgN1byU3w@mail.gmail.com>
Message-ID: <CAK8P3a0Lc--pDmBG3mBiKyjpOEZVdKVBnLNYBdCjzdgN1byU3w@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:BPBJWKeONckSlyyXVfpMd7TY0ocWSddq0bQC7hC1HG4NvtTKWq+
 lb2huGMVofSF9U9fs6GHDkQWBRk40fq0dNC9Em54QnaZFzZ6OS8KCDr7CB3gEL/NJJUUEza
 prw1m1cq3+ipWu+fmRmZp824NCBNLG0Zmmn1mt8q9zmTBrc8GPlh79Wd4dqneXY0lgsaDUt
 FtCHWnb0dqGLVSpcP0Hig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p3DgtEONrEU=:wlEIW4Ve3LV8y17IW3dkEN
 uQyZu1mZXV/xAKWuTnMrWWHcwQi57FibE3MoubJR3ue6xdQkA49kIZQHo3+TZ61yzlUvqYaHQ
 pFHm+VaG/xXPiDYGo7zySR0yLNtBMSzDVCXS+aNI6aVg2l8NuB4+ausS6R4yfqOfoDPP+wgYu
 Ox2kOL0uoGSXNaZcX3tEsJ41EFrlbC0KxpslfdB2MhPTY/RI3AMnJl2/lbVsoUnQZLvD5EEwm
 ipiWDfGJGKxlqNEElFc9/RIJmzBQYbySBthQ3k9/oAXVq1KQvdTAMITpC+CS9j9/Dnfv+xo5c
 Br7HWipBMeQB1nOD1ViZp4QWTiTwqzN3elutijSY5og8HmIwlVpKGD+GQVZYo9wX0/HS9Vtnn
 7yqECCbSt8bQSW2jaHl2NgRbbqGJHe0W3+kw4D7OpJrDkOcY0wu3qj3V9Igh7SCDcjFezlizd
 HNAsHfksnQXnMna2wBWMS7AhN9+LrODgqOLmCkwG6/QYadZY0EfJFVa0+doolWY2e47GA8BG/
 HKAY0fzpqbJhI3pRV/Xxi9/hmmx/ejKhKH1a+vbkJxJwDm8E3bAAG5Dhtvn2xPzdPrt/4ZVxh
 +nFKBxmHYFN6Otsi5bzWHpF8mWHPyPGrJSOQqBQaqXs9W5Q5pTpScylfrNxilYsXud3rnqZb6
 SEkn1XcK2P6SV7cWtIlj2TS3ZnCoW2o6BEkhFPVo7aoI/cUXGFTTrSaG65Z0+nDfiLB2S8Icg
 13Jea6rf1Ag7ca+MhUplHvqk/YwZsjWpIqwF05ZIqxOsVEcIntaVmLMKa0DlgoMnESmjQw5Ld
 6dG/Ozr4eYBEY9XCaBQFNi+zSWlMjyyQwoLMrD0RngVzV8j0tA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_065039_150529_FD58E4E3 
X-CRM114-Status: GOOD (  23.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, Mar 9, 2020 at 2:28 PM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > CONFIG_ARM64
> >
> > On Mon, Jan 27, 2020 at 6:05 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > > Does anyone have any suggestions on where I might find some generic
> > > > stuff for either iMX8M or generic ARMv8 docs for doing something like
> > this?
> > >
> > > We did a porting for one customer, but code is not public available.
> > >
> > > First let uboot switch to AARCH32 mode when booting Linux, this is
> > > already supported by uboot mailine.
> > >
> > > Second, create a mach-imx8m.c under arch/arm/mach-imx to handle
> > i.MX8M
> > > just like other i.mx arm32 socs. This is not preferred by Linux community.
> > >
> > > 3rd, build i.MX8M drivers when using imx_v7_defconfig( or
> > > imx_v6_v7_defconfig in upstream)
> >
> > I think the third part is something we can clearly do once it actually boots.
> >
> > Can you post the patch for the second part for reference? In theory nothing
> > should be necessary there, so I wonder what I'm missing (as we need no code
> > for arch/arm64) and what we can do differently to make it work out of the
> > box.
> >
> > Is the problem that the SMP bringup using PSCI for arm64 doesn't work with
> > the 32-bit kernel for some reason?
>
> Sorry for long time delay. I forgot your mail. I did some try again, seems only need
> the following piece code to make it boot, also select GIC_V3 and drop some ARM64
> dependencies in Kconfig for some i.MX drivers.
> Need some addition work in ATF/U-Boot
> to make smp work, that is not Linux related.

Ah, nice!

> +static const char *const imx8mm_dt_compat[] __initconst = {
> +       "fsl,imx8mm",
> +       NULL,
> +};
> +
> +#include <asm/mach/arch.h>
> +DT_MACHINE_START(IMX7D, "Freescale i.MX8MM (Device Tree)")
> +       .dt_compat      = imx8mm_dt_compat,
> +MACHINE_END
>
>
> Are you ok we add such piece code in drivers/soc/imx/soc-imx8.c to support
> aarch32 linux?

I don't think that code does anything other than set the machine name. Are you
sure it doesn't work without that?

If it's indeed required, I'd prefer to add a file for in arch/arm/mach-imx than
in drivers/soc/.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
