Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308941B457E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLX3kDFjG861QkC+kHp/vN4pk3CNVJldOv67plT2OIk=; b=bczwnPCXLUwwwX
	3r5AYNWXeJVXNp5sdZ0NDOVP4jz5RyvYTbMEUMmotULVYbwh0H3ScFPniewSqYDJ8Vq5Yly5X4Uax
	01YahescwcPUI/Jho56TVzypz7vA+hpaFHxiD0OOhZ7pgozLOC4v4etXoIhq3+KLcj0RHyoB6+pGs
	tqKoUliMWJNcgDRh5WAX0PQyqdPo+/4D+i4qiH04IJPHxU8J1PAIYQZiDsDd82o/dRvpNvbfHoN6J
	2AhXCsUMKKafMbK9E0xGMIKpuCVAiSlUD8dyvOoz6BPDrSY3lZhEJ5DUEIrLjwbsLkHU8anvWjwKV
	K6R6j7AoOnB7pvZf7gCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREw3-0000ib-B3; Wed, 22 Apr 2020 12:57:03 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREvv-0000h8-Kd
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:56:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id 19so1774549oiy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 05:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zzvL78lEZJZZBFAXY+TFKarBpBEWri4b/Z4UmBJWwmg=;
 b=Wnu6Mh0TR94ODUpyrcev0urd9pKSHOSmF4Kmc95KJRiQWxZJwV3rEQA4yvuOlpKx7u
 6McxbTvuDpWwe8BgzmZckFntzts3KxgsANpXxieUJ00pnOiSebpIVdgV6zMSvAeirWIe
 7Celw0U2FvOlTViU5SQlZAhKjaTVp3GT45PqHcpqd+lLz/yM6yXhJ/LeqRbTYkZ3O41/
 FGtLi99u9ApJJMBugWmv+SAgYU8WiHUSmRmiX8TesNSzIWfINCxirtWlhzIH2dyEk8ZS
 3T3F3MVg56zp84asZCOeMNnQeyMumj+WymjCrN3s5JDQxCNF1+huhlGsJQJE+rpTUSna
 +WRw==
X-Gm-Message-State: AGi0PuY/afUxd7CEY3h0QJhrmR+SE+ZoVGuUk7vr85TDOBR4TJXrGWn9
 dD0hq3Z41hq7KfK4InNTlrx74DzWEpjcuFXe2mU=
X-Google-Smtp-Source: APiQypKlY9AL9oGCHqvsvq7HAWEqYxiJe7tzeW13eiPtbh5rx3VI9q+k/Vw2MPNuwYHJurl61ZqmAuVx/CG57PjPTFc=
X-Received: by 2002:aca:f541:: with SMTP id t62mr6438042oih.148.1587560212232; 
 Wed, 22 Apr 2020 05:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200419191958.208600-1-masahiroy@kernel.org>
 <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
 <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Apr 2020 14:56:40 +0200
Message-ID: <CAMuHMdUcFk0AW+A-=4MMWsLNX41cPopWjBcEh+Hn6OQT_gSv8g@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_055655_674817_01FEFA76 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yamada-san,

On Wed, Apr 22, 2020 at 2:32 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Wed, Apr 22, 2020 at 4:44 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Sun, Apr 19, 2020 at 9:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > Copying source files during the build time may not end up with
> > > as clean code as expected.
> > >
> > > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > > nicely. Let's follow this approach for the arm decompressor, too.
> > >
> > > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> > > the Makefile messes. Another nice thing is we no longer need to
> > > maintain the own libfdt_env.h because the decompressor can include
> > > <linux/libfdt_env.h>.
> > >
> > > There is a subtle problem when generated files are turned into
> > > check-in files.
> > >
> > > When you are doing a rebuild of an existing object tree with O=
> > > option, there exists stale "shipped" copies that the old Makefile
> > > implementation created. The build system ends up with compiling the
> > > stale generated files because Make searches for prerequisites in the
> > > current directory, i.e. $(objtree) first, and then the directory
> > > listed in VPATH, i.e. $(srctree).
> > >
> > > To mend this issue, I added the following code:
> > >
> > >   ifdef building_out_of_srctree
> > >   $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> > >   endif
> > >
> > > This will need to stay for a while because "git bisect" crossing this
> > > commit, otherwise, would result in a build error.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > This is now commit 365a6327cd643eed ("ARM: 8968/1: decompressor:
> > simplify libfdt builds") in arm/for-next.
> >
> > In light of reworking "[PATCH v5] ARM: boot: Obtain start of physical
> > memory from DTB"[1] on top of this, which would conditionally add
> > another source file to libfdt_objs, I have a few questions.
> >
> > > --- a/arch/arm/boot/compressed/Makefile
> > > +++ b/arch/arm/boot/compressed/Makefile
> > > @@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
> > >  compress-$(CONFIG_KERNEL_XZ)   = xzkern
> > >  compress-$(CONFIG_KERNEL_LZ4)  = lz4
> > >
> > > -# Borrowed libfdt files for the ATAG compatibility mode
> > > -
> > > -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> > > -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> > > -
> > > -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> > > +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> > > +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
> > >
> >
> > I guess the code below can be moved out of the ifeq block, as it doesn't
> > really do anything if CONFIG_ARM_ATAG_DTB_COMPAT=n, and $(libfdt_objs)
> > becomes empty?
> > If not, I think I'll have to add a new Kconfig symbol ARM_BOOT_LIBFDT,
> > to be selected by ARM_ATAG_DTB_COMPAT and USE_OF.
>
>
>
> Right. We can narrow the ifeq block.
> I did not know your on-going work.
>
>
> If I had known your work adding one more file here,
> I would have written this part as follows:
>
>
> ------------------------------>8----------------------------------
> libfdt_objs := fdt_rw.o fdt_ro.o fdt_wip.o fdt.o
>
> ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> OBJS += $(libfdt_objs) atags_to_fdt.o
> endif
>
> # -fstack-protector-strong triggers protection checks in this code,
> # but it is being used too early to link to meaningful stack_chk logic.
> nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> $(foreach o, $(libfdt_objs) atags_to_fdt.o, \
> $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
>
> # These were previously generated C files. When you are building the kernel
> # with O=, make sure to remove the stale files in the output tree. Otherwise,
> # the build system wrongly compiles the stale ones.
> ifdef building_out_of_srctree
> $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> endif
> -------------------------------------->8-----------------------------

Thanks, looks good to me!

> So, how shall we move forward?
>
> Leave the necessary Makefile change to Geert?
>
> If Geert and Russell want to replace my patch,
> I can send v5 with the code above.

I can fix it myself when rebasing my patch, unless you get to a v5 before me.
I just wanted to find a good approach, to avoid delaying my patch.

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
