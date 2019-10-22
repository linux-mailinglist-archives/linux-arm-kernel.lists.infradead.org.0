Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384B1E07EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rV7Y/QLGV5M0sW+NvyAInZyCtgl9wpFziXsyNJwwMMg=; b=TTdPWZVwaP0wdb
	k/5BLQ6oe9a0oDAO0rLbqQSVQVd4D4Lo92gr2FfPpbhRJrpfovRWCDCDUNu2X7r2983pcXxUBzB+e
	q6A5+DmK2orTdQlgvDqggJWbGH29aKJGsRU5LTxqx/nZYIF+JDRsa8JEt68HlH11erRtVu35/vbcc
	n7uJSyBvdeZirFmcRWryiRvRKiiqVXmZXMMUMd8gIYNzkVgjA+OWfUNZvdzjtu3VlSWHmanjQMdk+
	Wrw8xgoJy1krzhycstobCyrTIQNx+YCY8FVPpbBzlTNoh8fPtg0nR6Spv0dagAcJQte3fEiUoSgsV
	iwRqNkISfY7Kutw6dn+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwTP-00084k-NS; Tue, 22 Oct 2019 15:53:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwTC-00083c-Nj
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:53:16 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMwT7-0006Ja-Jx; Tue, 22 Oct 2019 17:53:09 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iMwT5-0002EX-5J; Tue, 22 Oct 2019 17:53:07 +0200
Date: Tue, 22 Oct 2019 17:53:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
Message-ID: <20191022155307.izh4ryorm7thw7tq@pengutronix.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
 <20191011055149.4dudr4tk2znpt65u@pengutronix.de>
 <CAK8P3a1st8gR7u+8-oyP6HrzZdmrzhq7PRonYuz0a5O8rfKaSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1st8gR7u+8-oyP6HrzZdmrzhq7PRonYuz0a5O8rfKaSA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_085314_771080_7319D4F9 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 linux-spi <linux-spi@vger.kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Tue, Oct 22, 2019 at 04:01:12PM +0200, Arnd Bergmann wrote:
> > > @@ -235,7 +235,6 @@ machine-$(CONFIG_PLAT_SPEAR)              +=3D sp=
ear
> > >  # by CONFIG_* macro name.
> > >  plat-$(CONFIG_ARCH_OMAP)     +=3D omap
> > >  plat-$(CONFIG_ARCH_S3C64XX)  +=3D samsung
> > > -plat-$(CONFIG_ARCH_S5PV210)  +=3D samsung
> >
> > Would it make more sense to make this
> >
> >         plat-$(PLAT_SAMSUNG) +=3D samsung
> >
> > (in a separate patch)? Hmm, it seems there is no plat-y for
> > PLAT_S3C24XX=3Dy builds. Is this intended? If yes, the directory name
> > containing "samsung" suggests something that seems untrue.
> =

> By the end of the series, the plat-samsung directory is completely
> removed (folded into mach-s3c), so that would only add more
> churn for the same result I think.

fine for me. The background of my question was me wondering if builds
for PLAT_S3C24XX=3Dy (before your patch series) don't need plat-samsung.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
