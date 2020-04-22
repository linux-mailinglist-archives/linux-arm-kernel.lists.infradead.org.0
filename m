Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF2B1B4535
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfaJSqsAB4B6iOsxRdAKOnZpZ1t5mIaUp4rHCM7VyQI=; b=PQZR7wteGcwXm+
	VW7L4h3IpccjqlVwHDQ61kOGPAgjwbFbLYapdbDOnLky9JBhnuPRqtr6Mk+YNbift+2//n5RPBGUk
	oLSLnEdkrG0WOk6abONxcDl6V3b5SVD3W/JjG8tc5ZEYYyyO1kB+Dfm1L89ADgHBljGw9yuWuIY6D
	Kms3M8ilCYuqrZRqe0Qp+7cNd7RpU3n0Gr+c/CycrzgQ4LC3KIZclpK6jYXTUDUITZdu7LcvlcwKA
	KCx7pNukFAQcQE2+jBI77jzEB2UfgkpdddWqyUvPaXW6as6JnaT7xgoxMmDyMWo6KE7MSb2kiS7Aw
	RQrgcJfMZLpQacCo1mzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREXy-0007yF-5S; Wed, 22 Apr 2020 12:32:10 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREXo-0007wT-Pp
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:32:02 +0000
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 03MCVdvF026856
 for <linux-arm-kernel@lists.infradead.org>; Wed, 22 Apr 2020 21:31:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 03MCVdvF026856
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587558700;
 bh=18U+KD98bGoEuR6HWpNpyNBYDarF4Eglb8nm1vLH1uM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A/dBfb+Rb7SEC0o38ZdVIvNh9O53R1nAOr2NDFimUJhc2fw8nXSDmyQr93f05iVTk
 1D0xtjCWgI2MFdvuQ5TwOEXdDP6lugWik4CbefGpsT08VxCicuR/Sq20unpWZh4cIE
 0NhkcPaqu/A75lJgNHJAhLorsOFCgQz1aYQjZM2yLfG0Kvriuks6D3k2TKp3QyL6un
 jAy3KPoVwjmmnqpalQzOw2KGFRsaQc4wrjzyS5c/AjS2zA8u07muomseUbWyICqzRG
 YBtO14Kyih5GgM7Z3njgZUHhANlwdH0Y+0f46bhepJojQjRJ0pHAwqHxF5jDPZjMuI
 H7HsnjRftqWUQ==
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id u12so1360008uau.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 05:31:40 -0700 (PDT)
X-Gm-Message-State: AGi0PubwKY77c7S/UIVEtnpIYRbPQe52FUZRM7l25XYvFxpmgvOFZIWN
 jSPtbczxCmINh00fFjzJFq/eMSfwFhLaErg79pU=
X-Google-Smtp-Source: APiQypJ9exjhakXg2Zd4w+0mothFVo9SiU5pXO0nEEgqwxxyrfeuZ5MkvXiVsJT67jzlS06HguNuPV3c6AbphmaUeKo=
X-Received: by 2002:a67:e94d:: with SMTP id p13mr16329166vso.215.1587558699066; 
 Wed, 22 Apr 2020 05:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200419191958.208600-1-masahiroy@kernel.org>
 <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
In-Reply-To: <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 21:30:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
Message-ID: <CAK7LNAQ+3Jgf9sNUju3gTJvvRxUn6bM1r1A6j9HCTNmeOWXFzQ@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_053201_189688_5E43B75F 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Kees Cook <keescook@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 4:44 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Yamada-san, Kees, Russell,
>
> -CC RMK's patch system
> +CC lakml
>
> On Sun, Apr 19, 2020 at 9:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > Copying source files during the build time may not end up with
> > as clean code as expected.
> >
> > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > nicely. Let's follow this approach for the arm decompressor, too.
> >
> > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> > the Makefile messes. Another nice thing is we no longer need to
> > maintain the own libfdt_env.h because the decompressor can include
> > <linux/libfdt_env.h>.
> >
> > There is a subtle problem when generated files are turned into
> > check-in files.
> >
> > When you are doing a rebuild of an existing object tree with O=
> > option, there exists stale "shipped" copies that the old Makefile
> > implementation created. The build system ends up with compiling the
> > stale generated files because Make searches for prerequisites in the
> > current directory, i.e. $(objtree) first, and then the directory
> > listed in VPATH, i.e. $(srctree).
> >
> > To mend this issue, I added the following code:
> >
> >   ifdef building_out_of_srctree
> >   $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> >   endif
> >
> > This will need to stay for a while because "git bisect" crossing this
> > commit, otherwise, would result in a build error.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> This is now commit 365a6327cd643eed ("ARM: 8968/1: decompressor:
> simplify libfdt builds") in arm/for-next.
>
> In light of reworking "[PATCH v5] ARM: boot: Obtain start of physical
> memory from DTB"[1] on top of this, which would conditionally add
> another source file to libfdt_objs, I have a few questions.
>
> > --- a/arch/arm/boot/compressed/Makefile
> > +++ b/arch/arm/boot/compressed/Makefile
> > @@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
> >  compress-$(CONFIG_KERNEL_XZ)   = xzkern
> >  compress-$(CONFIG_KERNEL_LZ4)  = lz4
> >
> > -# Borrowed libfdt files for the ATAG compatibility mode
> > -
> > -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> > -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> > -
> > -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> > +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> > +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
> >
>
> I guess the code below can be moved out of the ifeq block, as it doesn't
> really do anything if CONFIG_ARM_ATAG_DTB_COMPAT=n, and $(libfdt_objs)
> becomes empty?
> If not, I think I'll have to add a new Kconfig symbol ARM_BOOT_LIBFDT,
> to be selected by ARM_ATAG_DTB_COMPAT and USE_OF.



Right. We can narrow the ifeq block.
I did not know your on-going work.


If I had known your work adding one more file here,
I would have written this part as follows:


------------------------------>8----------------------------------
libfdt_objs := fdt_rw.o fdt_ro.o fdt_wip.o fdt.o

ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
OBJS += $(libfdt_objs) atags_to_fdt.o
endif

# -fstack-protector-strong triggers protection checks in this code,
# but it is being used too early to link to meaningful stack_chk logic.
nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
$(foreach o, $(libfdt_objs) atags_to_fdt.o, \
$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))

# These were previously generated C files. When you are building the kernel
# with O=, make sure to remove the stale files in the output tree. Otherwise,
# the build system wrongly compiles the stale ones.
ifdef building_out_of_srctree
$(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
endif
-------------------------------------->8-----------------------------




So, how shall we move forward?

Leave the necessary Makefile change to Geert?

If Geert and Russell want to replace my patch,
I can send v5 with the code above.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
