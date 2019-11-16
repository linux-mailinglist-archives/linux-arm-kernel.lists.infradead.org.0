Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680CFEBAE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 11:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsvThFoqQVUGIzcVyqQar/IiKIkdXlvwW/aEUw094tc=; b=CPJaMG8i4+0EgP
	Q2M92wXv0jm8F32F5MXKz+iyQi6HDErjMWxACP90s1HUBA7Aob+J0nJofpfWg+nbprXekuR3QqhZT
	LCtFCfQ7Jf1Zlc185SCyw4wuCStxTfQSW8k+RxFxZMZq6fwOVNhDOdjNXMmeYDQwmUC+YyeMvD9hi
	fU1yXaENqTqURrTLmHc5wByVpL/3JRxZD8FcWIZdZFBwpDeHURoQ9wRiSf9Lg09H2A1mKClWzdMnB
	Cel6BVqA9ouCz1yALt+Pq6JaFwk+1Uo6ghzLf0yaq6zdgldAh7LxPI+4zgy0xHWiaBIY6CHgBXwAy
	D3WqKEqK66CxA46pphsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVvet-0005DL-GM; Sat, 16 Nov 2019 10:50:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVvel-0005CV-SI
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 10:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D521F5TA31KjTzw2pGHrAaQYXT1UKy+cBhgY5ORVh8U=; b=m4OI0FC8DC3aEC56/n2cdCPPd
 UcCS1ua2xs7DUNYqa1ax0vCbc3IWWOTq830lAbad1xFED3Lz7Qwj2FFZ0mm58ex+JBYk4t65YlesO
 OR1i2LwKEZ2AEFr5DJLAHoV5WXApfnBs/UB2dQI4GoPJ6tZEhMkgO0t2v+zZ1N5wE84uI5r8DD1r6
 DR/+jdX78YTt7g6KaSqRgBvKeTehYt1n7c1C1eZ3RV8xV9iKg6ufF/gqOKcQ0ezN7+VBGiD68ODL7
 mxY7BHAC1jTwbg5rHFOnQ5gpifo2Z/frmdPejL3nyOy2+yxdJI+ZWIvZLSqffryDH0mJyIXEI9Upf
 P4kfcZyfQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:36222)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iVveA-00072t-2z; Sat, 16 Nov 2019 10:49:42 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iVve0-0005QC-NG; Sat, 16 Nov 2019 10:49:32 +0000
Date: Sat, 16 Nov 2019 10:49:32 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: rmk/for-next bisection: boot on
 ox820-cloudengines-pogoplug-series-3
Message-ID: <20191116104932.GT25745@shell.armlinux.org.uk>
References: <5dcf8f19.1c69fb81.c02f3.91f2@mx.google.com>
 <CAKv+Gu_r2Cb3d3OXaOdYy+4V9noL6exJoK6pHevUm2WfPzsr1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_r2Cb3d3OXaOdYy+4V9noL6exJoK6pHevUm2WfPzsr1g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_025020_078245_C72FE621 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Sat, Nov 16, 2019 at 10:26:27AM +0000, Ard Biesheuvel wrote:
> (+ Arnd)
> 
> On Sat, 16 Nov 2019 at 05:54, kernelci.org bot <bot@kernelci.org> wrote:
> >
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> > * This automated bisection report was sent to you on the basis  *
> > * that you may be involved with the breaking commit it has      *
> > * found.  No manual investigation has been done to verify it,   *
> > * and the root cause of the problem may be somewhere else.      *
> > *                                                               *
> > * If you do send a fix, please include this trailer:            *
> > *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> > *                                                               *
> > * Hope this helps!                                              *
> > * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> >
> > rmk/for-next bisection: boot on ox820-cloudengines-pogoplug-series-3
> >
> > Summary:
> >   Start:      b6c3c42cfda0 ARM: 8938/1: kernel: initialize broadcast hrtimer based clock event device
> >   Details:    https://kernelci.org/boot/id/5dcf3f0359b514dc84cf54c8
> >   Plain log:  https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.txt
> >   HTML log:   https://storage.kernelci.org//rmk/for-next/v5.4-rc5-26-gb6c3c42cfda0/arm/oxnas_v6_defconfig/gcc-8/lab-baylibre/boot-ox820-cloudengines-pogoplug-series-3.html
> >   Result:     ea70bf6e92c5 ARM: 8935/1: decompressor: avoid CP15 barrier instructions in v7 cache setup code
> >
> 
> OK, so this regression is caused by the fact that the 'armv7' cache
> maintenance routines in the decompressor are also used for ARMv6 cores
> if they implement the CPUID extension, which I failed to realise when
> I sent this patch.
> 
> There are roughly three ways to deal with this:
> 1) add a mask/val match pair for ARM11MPcore and ARM1176 that hardwire
> them to the ARMv6 routines, even though they implement the CPUID
> extension. This would be very easy, but assumes that those two cores
> are the only ones that are affected by this.
> 2) modify the v7 routines to check for the L1Hvd MMFR1 attribute (in
> the flush routine) and for the CP15BEN SCTLR bit (in the on/off
> routines), and jump to the respective v6 variants if the CPU turns out
> not to support the v7 one.
> 3) revert the patch, and just enable the CP15 barriers (and issue a v7
> barrier) in the v7 on() and flush() routines.
> 
> I am leaning towards the latter, since it is the most straightforward,
> even though it mixes v7 and cp15 barriers in the same function, but
> that was mostly a cosmetic concern anyway.

I'm going to drop the patches - if -rc8 is released tomorrow maybe we
can have a go at solving it next week.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
