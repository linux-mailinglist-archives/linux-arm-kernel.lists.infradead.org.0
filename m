Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D345FECF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 16:36:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEsV/HCv0WBzC8E9JDYNIXvwmW0GRSSvSnqgZPBubiQ=; b=RRNixgjaU4tp0L
	L+UXdkuNCd+pUaLOGAhYhku/8UABXqsNGzr4vqWz8v5x0TOYYI5Ys3h1PIpk3Dj0+VlPGWex2Qdya
	yWPXHHccscWw9bx8PL81IKKL6IZh1ZcSV07umQQdvTvm9P/PaIDWB9VYx2NGsocsesEE/6FXW264s
	iCcD/YUgc3XwhlRExZVOCsCXEGaF0AHeduwm3dbX2GURjNrIAkUzZCrN7QUepEm6/Hvc8+e6ZL0Pk
	534L9pCP4aIcTXNOlim/NwJdjJ1KGDy2M+gwvfhq4ukW/CeT8dwmXr/742FR1eXjy4WbJCAYDBDGL
	DEG2qFPa6julscGrm9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW07T-0003rX-Lz; Sat, 16 Nov 2019 15:36:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW07L-0003qi-1E
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 15:36:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id z10so14180626wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 07:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KbnEz2iLp0S1UHHj6E2CggW0R84FXQGiB2UBE1fi4DM=;
 b=ozWXkWyG3A5cGq+w9YTKCVqzCTjQ8/pABQLRwTEnuJfl/Tp871sIjQmSrxnJGEh08Y
 YrRkxaBl5mLQmDGsDD+Z4bLJNvXWRzz4y+T/NmM6Ys+XlyCgjCwoG5ZuK55SzHUaITA4
 blWvky3lGUjj0bogjQfjkjd+Lwpm0nC75cIgsf3JUvR/CaWS0aIl9Icbi5uy+NrhJi3h
 +xXQ1dQs/EEJYNRm0wBFJ/HcFq6OpaP2w+OKLOeXWdQpIlg9I+DzElRS5whsbHO4p1Se
 AZdBF7jdJ7sbB/w/VA4PIZeIxwYy/jm37DHbEwlOLgdD1OB3262csK72wAYffMvZBY0a
 mQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KbnEz2iLp0S1UHHj6E2CggW0R84FXQGiB2UBE1fi4DM=;
 b=TfFSVwRHxYrJCw5vTLLWvQW6WbZRS2syRzgWS+fBKNJ0DFumNndwhDh/RpJXrHctmr
 TwE0O2LXP7lXNzbFvkTl57QLwfMQUj0CY4Hz16IhzSv0tmoaA3ZZypavhtfcqcUm35u7
 amhhn7s1U6ReMM8MDGffVTn3PWA/KM5kX5ErAsC03br/VGLbOVItgb/l9r8SXpA+6oNx
 FNW7iKQlQi4I3/OP6TW86OVgVHrJ1ajIWzCS58XxFmAOJwCctT1X8erN+NGR1R/Tw4XC
 cwGDC0DfWdwk+cLtxWCvr07M+vpz3yOnekd+aj8cRQz+dwyi3fYHhBQPO8uAyi/Wcuek
 p9Dg==
X-Gm-Message-State: APjAAAWXBc/V8UeD9Zw7bJz+6AyIYEvFO5C2HT6gOYGMT/2eHMRDcG5j
 ap3ZGSR355nqg2GUmv5CKiXOcQPu74ZgAuc/0VXBGA==
X-Google-Smtp-Source: APXvYqxM2t9raNDMK+NqCtMfmH9YSp0S1xJvHcg9AcRqIffms5FAXbS0KfhTtU5aXbUuBpruq71GwhjlcLcahEQ2KiQ=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr12115894wra.246.1573918565380; 
 Sat, 16 Nov 2019 07:36:05 -0800 (PST)
MIME-Version: 1.0
References: <5dcf8f19.1c69fb81.c02f3.91f2@mx.google.com>
 <CAKv+Gu_r2Cb3d3OXaOdYy+4V9noL6exJoK6pHevUm2WfPzsr1g@mail.gmail.com>
 <20191116104932.GT25745@shell.armlinux.org.uk>
In-Reply-To: <20191116104932.GT25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 16 Nov 2019 16:35:53 +0100
Message-ID: <CAKv+Gu-uTGi2YHdtWDcCi4n7KbVJ39X-s3OkQTxm6tDA_Q7Ahg@mail.gmail.com>
Subject: Re: rmk/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_073607_083891_9E788F74 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "kernelci.org bot" <bot@kernelci.org>, Marc Zyngier <maz@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, tomeu.vizoso@collabora.com,
 Nicolas Pitre <nico@fluxnic.net>,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Mark Brown <broonie@kernel.org>,
 Matt Hart <matthew.hart@linaro.org>, mgalka@collabora.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 16 Nov 2019 at 11:49, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sat, Nov 16, 2019 at 10:26:27AM +0000, Ard Biesheuvel wrote:
> > (+ Arnd)
> >
> > On Sat, 16 Nov 2019 at 05:54, kernelci.org bot <bot@kernelci.org> wrote:
> > >
> > > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > > * This automated bisection report was sent to you on the basis  *
> > > * that you may be involved with the breaking commit it has      *
> > > * found.  No manual investigation has been done to verify it,   *
> > > * and the root cause of the problem may be somewhere else.      *
> > > *                                                               *
> > > * If you do send a fix, please include this trailer:            *
> > > *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> > > *                                                               *
> > > * Hope this helps!                                              *
> > > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > >
> > > rmk/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3
> > >
> > > Summary:
> > >   Start:      b6c3c42cfda0 ARM: 8938/1: kernel: initialize broadcast hrtimer based clock event device
> > >   Details:    https://kernelci.org/boot/id/5dcf3f0359b514dc84cf54c8
> > >   Plain log:  https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
> > >   HTML log:   https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.html
> > >   Result:     ea70bf6e92c5 ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
> > >
> >
> > OK, so this regression is caused by the fact that the 'armv7' cache
> > maintenance routines in the decompressor are also used for ARMv6 cores
> > if they implement the CPUID extension, which I failed to realise when
> > I sent this patch.
> >
> > There are roughly three ways to deal with this:
> > 1) add a mask/val match pair for ARM11MPcore and ARM1176 that hardwire
> > them to the ARMv6 routines, even though they implement the CPUID
> > extension. This would be very easy, but assumes that those two cores
> > are the only ones that are affected by this.
> > 2) modify the v7 routines to check for the L1Hvd MMFR1 attribute (in
> > the flush routine) and for the CP15BEN SCTLR bit (in the on/off
> > routines), and jump to the respective v6 variants if the CPU turns out
> > not to support the v7 one.
> > 3) revert the patch, and just enable the CP15 barriers (and issue a v7
> > barrier) in the v7 on() and flush() routines.
> >
> > I am leaning towards the latter, since it is the most straightforward,
> > even though it mixes v7 and cp15 barriers in the same function, but
> > that was mostly a cosmetic concern anyway.
>
> I'm going to drop the patches - if -rc8 is released tomorrow maybe we
> can have a go at solving it next week.
>

Fair enough.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
