Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B091643E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPUhIBSmU2yLq42X58GtmOeRkSz3c8lJVaDO7eOskqU=; b=HyuOoS982rT4hv
	Ryfiw2IRPG/dfqhuEyb1BZLoa5/5sVZtO9zyqnIXHBFcjUH0JVvGrxUtepfDupSQSj64PfLWdNY4A
	ucZ4KilYnM0KeYMRBKOUY7FFlc/j14chaprUGCdQ9yUNaKsvJmy3Q9lzM+MdPEQ7UJUUx6V652ipF
	DjQMIY2Jog3TfPoydcxRBbFolvSqrRkI7Socesc5OIIjf7SJLxJUqkYbQoCRTfRbT/gZ04mGDKtyJ
	mBCvOWLTkFb08BBrISIpf7rFZs8fhDcZ+l9S9RlpiPh5KFyaE9lIhq1wk9CBAseXnyJdOnsYLafM/
	tj1bpHdE6Bssg8lJYLwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8Qw-0004Hk-92; Wed, 10 Jul 2019 08:58:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8Qj-0004Gy-31
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tGVK8wsAuWr8Qn7qe1FmpGQnQVvxqZOxCuBAe9rzOVs=; b=ws8ZlSNuRKf2udjEGWe4O23qM
 4YZzKbMaZasaLJsNPN/MsyavSHDphQtMvk8lWRaRSGt27iWdeaeCXm0facPqKm0268NtjpvpqPam4
 p3B+gk6EiK29FupjXvEnd5TxmBMFGlL9IHqu06CjBbbU9yzh8vH7weSkazjG4SWLpL+zC07VUs+89
 c5AWCsGtgxRpbGnSYpA2yoTMl0oqig6NlEpE/qp9NFmfrVyTe1gdd3Tijnbs87BTUqyfTIv8dg3wU
 VxB1MwtwCDVjxMtiq3dUV7iL8yOCQg8MuNnLD80jnmvDTfIYCoNiq4ao5iYp6D/pGL+iTYgDMuU0C
 k3+VCcNrQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59416)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hl8Qb-0005iE-6D; Wed, 10 Jul 2019 09:58:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hl8QY-0003lo-VD; Wed, 10 Jul 2019 09:58:14 +0100
Date: Wed, 10 Jul 2019 09:58:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
Message-ID: <20190710085814.vgwdnj4b3s3zjmco@shell.armlinux.org.uk>
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
 <CAKwvOdnm6rd4pOJvRbAghLxfd2QL5VJ+ODiMyRh1ri3pmmz0yg@mail.gmail.com>
 <CAK8P3a2anB0hD5J0JfPpJ_Gjc=NjoNC4k9nJ=t9H5AOBbdnfqg@mail.gmail.com>
 <20190709222517.c3nn6fgrz2eost3s@shell.armlinux.org.uk>
 <CAK8P3a3Sv1dfSC3W4_Hfj8TSKaiJKS+fW1woLeLhGw97jHgT6g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3Sv1dfSC3W4_Hfj8TSKaiJKS+fW1woLeLhGw97jHgT6g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_015825_135970_C3238DB5 
X-CRM114-Status: GOOD (  19.97  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 10:33:31AM +0200, Arnd Bergmann wrote:
> On Wed, Jul 10, 2019 at 12:25 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Jul 09, 2019 at 08:40:51PM +0200, Arnd Bergmann wrote:
> > > On Tue, Jul 9, 2019 at 8:08 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > On Tue, Jul 9, 2019 at 1:41 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > > >
> > > > > I guess this brings up the old question whether the compiler should
> > > > > be worked around or just considered immature, but as it happens this
> > > >
> > > > Definitely a balancing act; we prioritize work based on what's
> > > > feasible to work around vs must be implemented.  A lot of my time is
> > > > going into validation of asm goto right now, but others are ramping up
> > > > on the integrated assembler (clang itself can be invoked as a
> > > > substitute for GNU AS; but there's not enough support to do `make
> > > > AS=clang` for the kernel just yet).
> > >
> > > Note that this bug is the same with both gas and AS=clang, which also
> > > indicates that clang implemented the undocumented .rep directive
> > > for compatibility.
> > >
> > > Overall I think we are at the point where building the kernel with clang-8
> > > is mature enough that we should work around bugs like this where it is
> > > easy enough rather than waiting for clang-9.
> >
> > While both assemblers seem to support both .rept and .rep, might it
> > be an idea to check what the clang-8 situation is with .rept ?
> 
> Good idea. I tried this patch now:
> 
> --- a/arch/arm/include/asm/mtd-xip.h
> +++ b/arch/arm/include/asm/mtd-xip.h
> @@ -15,6 +15,6 @@
>  #include <mach/mtd-xip.h>
> 
>  /* fill instruction prefetch */
> -#define xip_iprefetch()        do { asm volatile (".rep 8; nop;
> .endr"); } while (0)
> +#define xip_iprefetch()        do { asm volatile (".rept 8; nop;
> .endr"); } while (0)
> 
>  #endif /* __ARM_MTD_XIP_H__ */
> 
> Unfortunately that has no effect, clang treats them both the same way.

In any case, good to know.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
