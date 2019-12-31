Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4332412D756
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKr3aZKIVT3K8gdI5/jGNMaW4nrB1vSv2KvBeQhSUKQ=; b=ue88BPiaAlDpBc
	bSzQepgsn6n131jQglla5OjqWEXnlRoybySD1JTwccb4GK88cBT1lYxjCgtAPVenZzkhdtmG2cK3t
	LbXAZtTuYqh7+hj/+tkMr7CRRVbZCerPHi3CsUoVTYnGfam1T7xkNDkncQc5p2sWGtB1UIpwtTdd/
	6X0iXCi9slRPXLNXL9r/kftbuRGp4lSW1U3A6i3OHKk1yBSd5eQUh9/oaROYqKWMgdG+RBmmzpFca
	o2cJXKuFw00z5++ycQ26PyPiCThG481jyjNtdFzDpFqLkU+5Cdcxn45F7UNX2w/gSKyt46GYhri1i
	uhNlbN4A2ETjGPvWUegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDhP-0003cN-TS; Tue, 31 Dec 2019 09:20:23 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDhF-0003bx-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:20:15 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so49650642otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 01:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=51KgCB90k/YeMVtalDewVaXpSkUpcyrIHB/S/QbadkY=;
 b=gxm5S9xkN7JwuhEbUVaH5WzHfbcKOF+COzdT6LxV5jia05Mon2jG6pBpMX61TbcYeq
 1xRX2m6qd4c2Jk1uwhjhTNjDObjrFlEhpNTkdL6tbL3mV/yx3o7dGdO5Qpsj96N2UlKF
 xeWlnEzxAT9aoY7yRWlad+cyr4sQtVI3+LCWI8/Jwh6fwv9KBxhk5nWRiRZDQfEy0aYn
 mFDCpt3jDcodjLuy5lTO1aVAFgIUP26xB0ANyhsL41o/jeX885iAtNrz7WTJ5tzlmJOp
 2o/gXYLMm9WcU+vEy6GE76B2JLiinUM5OnBhhHWGlAELT1xqO+nT8F1k612TMsbcWBDC
 5PcA==
X-Gm-Message-State: APjAAAWaYTPmzthuLFa33B7xhVIDMOUz4ZFeFOg+DjdHFH/llRk1o7gZ
 iMaoTSfQED0weYq3l06l/Y1bDVsPQcfFrpY47Ks=
X-Google-Smtp-Source: APXvYqydIX4+VnKryzPLTDBNw5J7Rjc5k1kJ1lWW03jACgfDG+a7lTTaqTmK4G3eAg4q5E/imfuaCcpu91dwOTjF72Q=
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr73857782otf.107.1577784012455; 
 Tue, 31 Dec 2019 01:20:12 -0800 (PST)
MIME-Version: 1.0
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-5-krzk@kernel.org>
 <CAMuHMdUXJo3=x32xbfSUXs3O3JHaFpfxt0mHupEb+vzi=5+S4g@mail.gmail.com>
 <20191231090146.GA6872@pi3>
In-Reply-To: <20191231090146.GA6872@pi3>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 31 Dec 2019 10:20:01 +0100
Message-ID: <CAMuHMdWhz7x8MnGeGv2f-Gb7fBRTp=5qq_Mz55sY7tQNpRogjg@mail.gmail.com>
Subject: Re: [PATCH 5/5] i2c: Enable compile testing for some of drivers
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_012013_681454_F88B0F17 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Max Staudt <max@enpas.org>,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Tue, Dec 31, 2019 at 10:01 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Mon, Dec 30, 2019 at 08:11:03PM +0100, Geert Uytterhoeven wrote:
> > On Mon, Dec 30, 2019 at 6:28 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > Some of the I2C bus drivers can be compile tested to increase build
> > > coverage.  This requires also:
> > > 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
> > >    controllers,
> > > 2. Adding 'if' conditional to 'default y' so they will not get enabled
> > >    by default on all other architectures,
> > > 3. Limiting few compile test options to supported architectures (which
> > >    provide the readsX()/writesX() primitives).
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

> > > @@ -611,8 +612,8 @@ config I2C_EMEV2
> > >
> > >  config I2C_EXYNOS5
> > >         tristate "Exynos5 high-speed I2C driver"
> > > -       depends on ARCH_EXYNOS && OF
> > > -       default y
> > > +       depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> >
> > This means it is only useful on DT-based Exynos platforms, but compiles
> > everywhere?
>
> Yes. The driver will proble only from DT.
>
> >
> > Do you still have support for non-DT Exynos platforms?
> > ARCH_EXYNOS depends on ARCH_MULTI_V7?
>
> No, only DT. I think dependency here is a left over from board times and
> optional OF. Actually many drivers depend on OF and some OF-like ARCH so
> it could be removed.
>
> Since driver uses OF, it's rather the choice whether to explicitly
> mention OF.

So the !OF case is only for compile-testing.  Then it can be simplified to:

    depends on ARCH_EXYNOS || COMPILE_TEST

> > (and its help text mentions Exynos 4/5 only, no 3?)
>
> That's correct although it supports also Exynos7 (ARMv8) which is not
> mentioned. I'll correct it.

Good.

Actually "it" referred to arch/arm/mach-exynos/Kconfig:ARCH_EXYNOS,
which mentions 4/5 only, while it covers 3/4/5.

> > > @@ -1055,15 +1057,15 @@ config I2C_SYNQUACER
> > >
> > >  config I2C_TEGRA
> > >         tristate "NVIDIA Tegra internal I2C controller"
> > > -       depends on ARCH_TEGRA
> > > +       depends on ARCH_TEGRA || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> >
> > Perhaps
> >
> >     depends on ARCH_TEGRA || COMPILE_TEST
> >     depends on ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC
> > # needs <foo>
> >
> > to remember which <foo> feature is needed?
>
> I can comment on <foo> but such split of archs would be confusing. One
> would think that driver can work on these platforms, while it is purely
> for compile testing.  Keeping it together is self-documenting: these
> weird platform selection was added only for compile testing.

Fair enough.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
