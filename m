Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE8C103654
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ+3x7osTpyDboxIqMssk3eTBIluxtXQMiqRBbbDVbw=; b=lh2fk6H5ddstLT
	noosIYtcxqSUZ1Gl6lxmK/DWRk4G950kf37e9zMycA4dGb3DCmsLz5V6RCfyFSc7KfPvahb2Gg5rX
	cIbHL7ASfIH0d3wziriDr3sl2UIkVgYdcWdPAPs4XsF1hUYEbGaGLnZLuzPagPG7W1XA8QOXR/+Kq
	2L1rU0KJ+5pkNxia5xXyd0ZEEr0MqhfU7xIlRhz2Rb6jp2Y4B6W+6fqap8mbsNQWAwTzpZARPyqNr
	JgNOw8SvaHYO6XYGHoFQoQXukZYNn4St4Hzthyn3w1mvxPzXWSK1dbi6y2f6Y4/Jlf98Vy255gC1z
	2hZDnugBduXrQ/E9X8Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLtS-00007K-VH; Wed, 20 Nov 2019 09:03:22 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLtJ-00005z-TC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 09:03:16 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id xAK92nGY029299
 for <linux-arm-kernel@lists.infradead.org>; Wed, 20 Nov 2019 18:02:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com xAK92nGY029299
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1574240570;
 bh=m7KBfeLVUaVldoeCBn57xyKRXioAEHJWAKA15h/kKOw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yrPlmMLjrm/420zfmfGBS/I0SF/s2iL/7hwEfaEhsOs+k8UHF2vDwkAoNgAVpZxy7
 YEynptZPHZuFMMjbYHVD7PQYxaicQ09vQ7jKxTKMR7WjTMx4xUoh8UAc/vzW7DDM11
 r3vKSYZvXjmigjkK2Nq9FQEfvLP2bxo/CIsMdx+q73pYa727Ckh2cBGsfmluZnVjk4
 cd00+k1Q6NuMXioEzpsV5x2NBuwUZC90uqjNtsrVB94x2CJVRe0WlWlr2Jw4lOX+vD
 NEYfzpQvVMWLTjBLsZ6qOEOhnhKpJrR/wJrP6HovZn/ZXzjvMzlT3ARKBKj9jHoPcJ
 UhFPpHNSeV6Tg==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id j84so5847227vkj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 01:02:50 -0800 (PST)
X-Gm-Message-State: APjAAAXV35AeYdxW0rTnRGAkTqsjJpS9dypO1gERBjvO9hi2ujPjQmke
 Hvc7E171/xsruC/w0O8LuR2WquHhJvJEFCrNfeY=
X-Google-Smtp-Source: APXvYqzHf4xseGQAK2EkTNNwcmQcZHl3J1GGFg4Z1/Q9olKn7GOSfLFb/CAj4UlR2ei54LDLujGeeSWN3AoM04Sd0IY=
X-Received: by 2002:a1f:7387:: with SMTP id o129mr807276vkc.73.1574240569015; 
 Wed, 20 Nov 2019 01:02:49 -0800 (PST)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
 <20191113170058.GP25745@shell.armlinux.org.uk>
In-Reply-To: <20191113170058.GP25745@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 20 Nov 2019 18:02:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
Message-ID: <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_010314_180612_EC34B6B0 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,



On Thu, Nov 14, 2019 at 2:01 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> > Hi Russell,
> >
> > On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > > function and does not need to be exported, as shown by this warning:
> > > > > >
> > > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > >
> > > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > > >
> > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > >
> > > > > Thanks for your patch!
> > > > >
> > > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > >
> > > > > > --- a/arch/arm/kernel/return_address.c
> > > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > > >                 return NULL;
> > > > > >  }
> > > > > >
> > > > >
> > > > > Checkpatch doesn't like the empty line above:
> > > > >
> > > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > > >
> > > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > > +
> > > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > > >
> > > > > > -EXPORT_SYMBOL_GPL(return_address);
> >
> > > > What has happened to this patch?
> > > >
> > > > I still see this warning.
> > >
> > > Simple - it got merged, it caused build regressions, it got dropped.
> > > A new version is pending me doing another round of patch merging.
> >
> > I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?
>
> I don't keep track of who did what, sorry.


Arnd,

I believe this patch is the correct fix.
Could you please put it into Russell's patch tracker?
(patches@arm.linux.org.uk)





> >
> > [*] Commit 0b0617e5a610fe12 ("ARM: 8918/1: only build return_address() if
> >     needed"), which I discovered in next-20191031 when checking if Arnd's
> >     patch was applied....
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
