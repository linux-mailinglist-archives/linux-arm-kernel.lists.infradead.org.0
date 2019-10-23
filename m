Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C5CE1C22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu+d89Z0EllJS3XZAftsZjjH2OfsUFCOTgVZ1dKiehI=; b=GcMSqKVv2IkJXF
	6mS593zodfahkI7cDDbdzIGY/SiwlgTALViSN9e4yfjmTWGY/s7cJPyEn7yS0jvAv4jt2jzz1WSUU
	wzCvEmv8WJecug0nyy0g0OhIDDtCbn+iTtz3uC4y2pHqMF0SMs/9EuSw/+bR5vHepHOmfBBJAhoO2
	bPY8fihfRRk3dhGxSFy7A4Ml1hFyLQi5wcXd3hEP0lgW1GkzuXZ5qllK+3Ubj4pp1ZsyrUnTMTotO
	XCYAqyc9Cj0pp+JUfoPbACUBz+yZEsUD/QIf07YlFE2ofSlizN8u5zgSCnZwMtEtmmWelxG+EI7xL
	AGvVrlD/C7W459EM29Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGWZ-0006gJ-Tu; Wed, 23 Oct 2019 13:18:04 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGWR-0006fj-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:17:56 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mc02Z-1hsL9j3RkN-00dWQo for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:17:53 +0200
Received: by mail-qk1-f175.google.com with SMTP id q70so12134816qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:17:52 -0700 (PDT)
X-Gm-Message-State: APjAAAW3dkXdRFahVcRxZNul6JtOdwwMLl+VMAGPwoNRYOb3InpPLMq6
 rJKOB1W1omvRKBiyKntVvNr6nBfK/VOi0tLUJlM=
X-Google-Smtp-Source: APXvYqwuwF999+RxRIbSV5NNX+xHenNtGFCAqCA+7Cahtx0tw1C0BafJPH8NNbUYS7dpsAsfv3lWqVq7b2MktsSH9qA=
X-Received: by 2002:a37:9442:: with SMTP id w63mr7981201qkd.138.1571836671589; 
 Wed, 23 Oct 2019 06:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de> <20191023121458.GB11048@pi3>
In-Reply-To: <20191023121458.GB11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:17:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3ktdA12vpi6zrTXs7-03efk2Ke_0_mQ9X40MLNcZnEqA@mail.gmail.com>
Message-ID: <CAK8P3a3ktdA12vpi6zrTXs7-03efk2Ke_0_mQ9X40MLNcZnEqA@mail.gmail.com>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:zECkIiPF1HuQQQli3PrIRptewJLlxdm2m1h4nwg30z8zjrMdR4A
 CwTz7EQp4h1I9SnZ8Lvo6DeHo84eCpWlPowgaeBv8k63JP52M/95WN12mVm1d40qA0JlCtq
 Fc+vlsj2pN7PcPAJsQkwY6cWInoIXlVtJwrYDvkelCj8EH0C+tgS/upByMSIGML7Nr0HXur
 PV1GL0cWsWnhDZusl9qhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O5RlkeVz9/Q=:45c9acniqj2EOAM89CNILl
 3yU4W65m4mX33rLvIyDIkmrH4pLtYItnvlqfYTUtoX+CZF+2perK8z+QdW//EK4zFIR3OiMyc
 Hh+yAW2aHi/B8SfGWQa+iJYlr9/LSL+SUx1ecgigE38qfdvBtHxLbRqH+VPKnayV1Y3nqMByi
 NIThLb8VsZ+IrWGZKlcRZS0AFV8yArCBQTaoZUyFCHe6t9tLy8XKgwwwUnHbWau07k6tK+eNu
 05OzqGAFCyUlAiKJ8eZb9Z2JVBD/57TuHKp20nA245fT5y26hTJz0z9jVU5xJSL8tuhB8Cm+Y
 2qFNJfal8MnkUqLStFdS0/U0KzIXIQqTGEgJA/3CFUN+51xZO+ErFujzn9Q2SV6wE7Cm2DQyK
 OJ3mgAJltPVJSUdoZVEmr7HjNCXKj37+XAn2x1SBU9z36M/RQN+eLKefz92AyKKdBTGB8lY+k
 70C5I/gPAfZXzrzcZpaVXRAaZ+Qp+sqnY6CbqoqpDTyjGz8dHD5dAoY9gUcyg5TTxG1ZGjquV
 4Md+QLhF/cqA90Or+FZJsx47OUMKDP0n9GFyFWKvXa5j67zxK12sus2japVhPj6QRZkp/MS9S
 BpXyDOZ2vJJ+MS9KzLD2wwzKQOPZ8hxIp2EfPwm9ep5eZwIIf3H4sd7BUTtcOa7WrQUKz5hVB
 7zFpPXJeEZrfJNPx2F9/LhApfKdgwrVLMfpBB+3OzcLXEidObJSUKjrr861nggQACsXDOsU7V
 6qKV8PbQHRKL1x4w+gn8V6vC5aG2LR19vkLvg/sQiwfVyZWajQT21NXC7ZqQNzT1e038+CNia
 2cjLS8R4W8zsH3ujwQox19C1vMWp3y0+Auk2fAEm+AjFx5VQDHjBODOeMIKZBWmVFs6uSA3v1
 rbYkbEJSlE4TuGWwvVog==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_061755_440332_4D8197EE 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Kukjin Kim <kgene@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:55PM +0200, Arnd Bergmann wrote:
> > These can be build completely independently, so split
> > the two Kconfig symbols.
> >       config DEBUG_S3C_UART0
> > -             depends on PLAT_SAMSUNG || ARCH_EXYNOS
> > +             depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>
> How are you going to select DEBUG_S5PV210_UART now?

I don't see a problem here, the patch should not change the behavior at all.

The whole entry now looks like:

        config DEBUG_S3C_UART0
                depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
                select DEBUG_EXYNOS_UART if ARCH_EXYNOS
                select DEBUG_S3C24XX_UART if ARCH_S3C24XX
                select DEBUG_S3C64XX_UART if ARCH_S3C64XX
                select DEBUG_S5PV210_UART if ARCH_S5PV210
                bool "Use Samsung S3C UART 0 for low-level debug"

so this will work as before with any of ARCH_EXYNOS, ARCH_S3C24XX,
ARCH_S3C64XX and ARCH_S5PV210.

What am I missing?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
