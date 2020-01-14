Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F4213A7C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyFScoJMrhicy9kOHB5aDvH6O286kZW2GoHEuZ+72h8=; b=ClDwx65RFSEMG1
	g4yqaYmKbRdUAlT0k5mF7kuASLf6PUYjJ1kdQVJ9vEfJU0c1fQ05NXHxYp82Lddk08cRgYyDREYPH
	EGY/wppnK1oRldIjya0Lj/nojrLS+7WhRQaXUKyupsktCd1D1gy2VLVVbESEP84f6NWoFerBaCyAz
	4hflZVD7KZF8wY9nj5j86mmhZYdZslds/e9u3jexkb8jlVZYHsIPJrKtHW2hzpqVnq59+hRvczjur
	USrrVTD2hddb5jC8cM86v+/WWVRKOBv3r0S+1iraWW947BXEFy0Yjd4ewI7LzN5f09FXxokdn/D0o
	CF3+6sUXDY68sG+XjZww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJvi-0002kE-Gs; Tue, 14 Jan 2020 11:00:14 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJvQ-0002Yq-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:00:01 +0000
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M6URd-1ikQ2S1ghF-006tXx for <linux-arm-kernel@lists.infradead.org>; Tue,
 14 Jan 2020 11:59:53 +0100
Received: by mail-qt1-f173.google.com with SMTP id k40so12016660qtk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 02:59:52 -0800 (PST)
X-Gm-Message-State: APjAAAXZuiWNPpJM97mIy0CNdIRLiuaTtamrU/dccM4JJ4kkCK4xY9y3
 CTcMSSEL7OmqFcpQ1H9r/sy0pzouKR/umzUIuYs=
X-Google-Smtp-Source: APXvYqy7DVQeNpwjj8/PcKvWd95l2BRRTtcYFTLWs1RZ+YhziEOQD5McLfFwTnVEhhx5R0yRDJ/gghU9Y+a5TCN65G8=
X-Received: by 2002:ac8:6153:: with SMTP id d19mr2975529qtm.18.1578999591888; 
 Tue, 14 Jan 2020 02:59:51 -0800 (PST)
MIME-Version: 1.0
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 14 Jan 2020 11:59:36 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
Message-ID: <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:B1VHeGi3th2Ijzbfq9Xi+Q6kmD4DYPrwac2kdAkM9kOqT2FM6Px
 7cupp9JlXcPDMzbp8K/IMlqaA9ZWXgxcpjz/0W1B5SM97JSV4o4mcq9m9nFUHFzhsa8InE1
 rS3iGfGgouj5nOh1CH4TqD5zhs6fHgKNrLHJAluCROCNDWvQi43uFQLrc2c3YUwqsOuylHI
 tIrrYCmIr449R3riTVkCw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kd7tvcZFWQo=:hvK+7nDNSn7C8vOEayQ0TI
 JxMWXxUq4USYTN7LWUI0mXL8dLA9MytPLoxXhnzmn3N7ZBWZFTrAXrfKWGp6e+9+b2T1rnjKI
 W7cHFjSDoMyn22W+pebDn7/wzO2IwNH++OGGQnEKKnDwQW7zTQIQ4z6jqB5Jk5GfLM+sP8AhS
 x090rHwT3tJPxvVEthZMesCNQmfqCfb2yA+CvaXu/S0jPjUofT5/E6r/iOigFt4JbcXkJGIce
 gYl+JCzxYlO+PFhdPT0amKt6nZsLMmVm2aL7w2gzMNwPuBnL7MUUrw1UMzSj8ILJMbvtDtIlR
 9zlz81uxM9opcssUueK8Pgj/9akXrZwzN68Engva6jNtw6rv1gkxzEK0TY53YcaJt32Z4vr2T
 1ttODt3kr4/1lWja8jRPzRrY266r6z3606GukvkMj6PhfxtZ5kIsrNUivmGfC7gayGcTuG8dI
 16Wdu29pasP5zAZCWpY9rcb3BJV97CKRavZJ+rOnyhUIwJlUmga6Nr4N68Z28J8HYDtGoPoQe
 vPAIarB0crZ5qMnP9uNSGgYmP9574tdivKEJbO2MDY4+VqfR2oli0SqKLYNxOAztkTm5XGDbP
 RRg+tsRU7YoAWMXepW3Fe10MTkYy/RA9nGHiALy1ybVhUx9M3kYzJYGaTfoHNCqiSk352ZJMv
 ZiPu9+ejwrEzgCs/iqY/2E4W8tY5J6as/kzC17aunD/EMOER+NqGfpTYr+bIUA2qUavF5gUB1
 /CXcY7S3W61ff1hdU/UpB2cO+I3B9vj6tAqQFnT6GEU9uDjnyyW2giOvxL9EvwOLgxurB5NYb
 t8hjL3F4hKMnltp1Qn9i79d+TrNysYMdHFO1Lfj++j2mCm1fTjsD9seQAEMmLoMPdNVT9uwEb
 S9rpwy8ZkWinb+SKgZIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_025956_753035_02F250A1 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 9:32 AM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > CONFIG_ARM64
> >
> > On Tue, Jan 14, 2020 at 08:08:45AM +0000, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Only need to build soc-imx8.c when CONFIG_ARM64 defined, no need to
> > > build it for CONFIG_ARM32 currently.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  drivers/soc/imx/Makefile | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile index
> > > cf9ca42ff739..cfcbc62b11d7 100644
> > > --- a/drivers/soc/imx/Makefile
> > > +++ b/drivers/soc/imx/Makefile
> > > @@ -1,5 +1,7 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > >  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
> > >  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
> > > +ifdef CONFIG_ARM64
> > >  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
> > > +endif
> >
> > For earlier SoCs we had kconfig symbols like SOC_IMX25. Actually
> > SOC_IMX8 would be the right one to decide about soc-imx8.c to be compiled,
> > it would be easier to read and verify than the suggested
> > "ARM64 && ARCH_MXC" and it would stay right once NXP presents it's next
> > 64-bit SoC i.MX9.
>
> There is no SOC_IMX8 currently. Need to introduce one in
> arch/arm64/Kconfig.platforms. But I not see other vendors
> introduce options like SOC_XX. Is this the right direction to
> add one in Kconfig.platforms?

I think it would be more consistent with the other platforms to have
a symbol in drivers/soc/imx/Kconfig to control whether we build
that driver.

If the driver is well written, it should be possible to allow compile
testing it on any architecture (please test this, at least on x86).

For some SoCs, we also allow running 32-bit kernels, so it would
not be wrong to allow enabling the symbol on 32-bit ARM as
well, but this is probably something where you want to consider
the bigger picture to see if you want to support that configuration
or not.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
