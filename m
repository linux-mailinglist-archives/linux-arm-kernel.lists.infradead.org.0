Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A33DE1DC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 16:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJbu5D/Ua62yR2XOhjtA7F8W7eqY5lkGxLwrN0X/E38=; b=IfY71nLgX4ZjRW
	Cpo4iy7k4g+XsHrM45SfKxukXjgPb+0xX6t5JdA71q3a/6e3GrM9D4TVn4UzqmtSxcMel9MdkET1V
	6MZ+qDRpEVM8G10FgsCv0TR6QyPXEBjGbV/KX917i0xz8zkgey4Ef8Tc30kM/NBPUG6NtCE9toMLl
	tDRTBdu9kjOKXqgjc7sjGxl2zFUYIa8ZFy3YA/QjmOT6Xhl+f9Qqy1ENih5eajOxR3BuX4QGPXSuQ
	mNLXBVbZQGfNadBW+mvcN4JGFIA9FV7kdS/VKHIT1qlPvOuG5VYnxc+B0AKzSez7KOs1JOjLMPbOv
	T9wDm9hWs/oXRKmST6CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNHNL-0008Hd-Gc; Wed, 23 Oct 2019 14:12:35 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNHND-0008HC-0h
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 14:12:28 +0000
Received: by mail-ed1-f65.google.com with SMTP id f20so15875685edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 07:12:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rcTMyT1DxjA7fFrS2w24JzXu+0SnoZwJUx+ToqxoQbY=;
 b=Fs05muZstgYvWJovlwI9sAfmwNFMNFOZIowtt666xpKT7gVup+etjc024AlT5Un3Bw
 LnctytcAzT/kz1FhwCU19+7r18TbnAFpsPXFoFuvYinA4/LPWxgmR8NlSxZiNI7/nsjl
 H1s80gwZxqTVHMHHFCXrg5s7de83xWgJPQf/Y2vR2VwIU4EDt4SiAtL7xi4uD0Fg6fVM
 +pAiki353VC1y+8O0gKarIjEhTx5jTKEUsM1cCL0tEhDNp222jmXzfJL068ll8JhxD+x
 TSnT2wtbm83lfOVdE8ACTmMouijvplzYViocKP9mzwv6TesAEML/ut5/c6illLPIL2KR
 H5hw==
X-Gm-Message-State: APjAAAXVrWilIzbbvT8PJWQ9rrV28Y2IXz03kgYFg4EhpuIqTgMCjawG
 nkEp0aFdkvKmuA5Y5hm0Fd0=
X-Google-Smtp-Source: APXvYqxkd9DwWDZi/qHKDFHlMK0H8AlyVBKbEwPxz7lMmEqyzeKCvZ18JbP/k1gOjozG9nkYwgwxAA==
X-Received: by 2002:a50:ee8d:: with SMTP id f13mr25391791edr.285.1571839945480; 
 Wed, 23 Oct 2019 07:12:25 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id p9sm60974edx.4.2019.10.23.07.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 07:12:24 -0700 (PDT)
Date: Wed, 23 Oct 2019 16:12:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
Message-ID: <20191023141221.GA11575@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
 <20191023121458.GB11048@pi3>
 <CAK8P3a3ktdA12vpi6zrTXs7-03efk2Ke_0_mQ9X40MLNcZnEqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3ktdA12vpi6zrTXs7-03efk2Ke_0_mQ9X40MLNcZnEqA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_071227_062136_129F7FC3 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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

On Wed, Oct 23, 2019 at 03:17:35PM +0200, Arnd Bergmann wrote:
> On Wed, Oct 23, 2019 at 2:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Thu, Oct 10, 2019 at 10:29:55PM +0200, Arnd Bergmann wrote:
> > > These can be build completely independently, so split
> > > the two Kconfig symbols.
> > >       config DEBUG_S3C_UART0
> > > -             depends on PLAT_SAMSUNG || ARCH_EXYNOS
> > > +             depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
> >
> > How are you going to select DEBUG_S5PV210_UART now?
> 
> I don't see a problem here, the patch should not change the behavior at all.
> 
> The whole entry now looks like:
> 
>         config DEBUG_S3C_UART0
>                 depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>                 select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>                 select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>                 select DEBUG_S3C64XX_UART if ARCH_S3C64XX
>                 select DEBUG_S5PV210_UART if ARCH_S5PV210
>                 bool "Use Samsung S3C UART 0 for low-level debug"
> 
> so this will work as before with any of ARCH_EXYNOS, ARCH_S3C24XX,
> ARCH_S3C64XX and ARCH_S5PV210.
> 
> What am I missing?

Ah, everything is OK, I mixed up removed with added line so it looked
reversed (removal of ARCH_S5PV210).

Looks good.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
