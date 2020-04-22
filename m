Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72AA1B3940
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 09:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpub4eCzUWE9Z7S0rlsuu9vNmsOwh7NQyrbzglSTz5k=; b=nUAhGLmQcVvy/m
	04bDFSWBGAsuve27YTvilVRFGXU1ZJxwadm7YeAllUWa1RHs1P9ufdG/GY3bHyeyxglMgNFG8IK7Q
	qRj7P45DSXuGktWo7f/SgrAUyWhB0LeGafF43sqK9tPrXrqy6v6t0FvYG4tQ8YmGK6Fp9vOMPJC32
	1OUx6JYFmojmeywYpzDMM5wz71yTVHyRXAZ+v23S/vr1xLLt6yMSQ79X/ATA5dfIoKsqWa6Vq8zfI
	+DhrKanQ6Pv4dWbHCpmDmINZI916bC9gCsu9pwJ3S7rCSfGq+sNS6M6mGF1YSwn0vDixtVvaCZB8z
	5tZqKgPmGJveoLWWQ9KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRA4B-0003sF-CW; Wed, 22 Apr 2020 07:45:07 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRA3w-0003q0-Ik
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 07:44:54 +0000
Received: by mail-ot1-f68.google.com with SMTP id e26so1303775otr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 00:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W8UTgb8AJJo1U8f4exnqk+Ltaibbt3oOSY4Baq5cKuw=;
 b=OigP7PDgpbVw/LmsDBQB/bIgJcyf51yyDyp3n0wsH037StK2UGR0mtH+CPEwq+zXnY
 dv+NyLokcdLsqw0p+aBFi0slOfr6d+WDMUnSkq3lcFZUiX/pdKIft1Mvu42KAFQ5db7c
 myYfyySLX4yuyvJpUjJmedhZR55R4oLUwG8hKxBXsja7fIZohQYA3FkmJ8Ek26DIuCjK
 fZqqZ6E3XoUHa/J7sYMLpy2Z6805NNd8I3mjsycTmpZ+87TradCFm+KGHlFvTw6d/GWL
 2t/Ipu5k8oT8lwTERmE/nH/OPo4wW1BIps8Cwu5kqq8z08nZs6osxiwo5gCLiWqT+7tT
 1KNA==
X-Gm-Message-State: AGi0Puae+juCzHIrgfpU/MpNwhHPds3BSg/aduLMsBcj8zwuWfgN7n1m
 lgI+uf996y0ZQBCf4sLe9HM4pluH5Idmio7Ifs4=
X-Google-Smtp-Source: APiQypIQuWSb/KptqNf0JYBzAoXNw5FdyLfnxWcWcL9WWkufg7XYfJEyF59W2Oyod1GqjmPbAgOwdUKzSAqLbd0VOFA=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr13049588ots.250.1587541489795; 
 Wed, 22 Apr 2020 00:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200419191958.208600-1-masahiroy@kernel.org>
In-Reply-To: <20200419191958.208600-1-masahiroy@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Apr 2020 09:44:38 +0200
Message-ID: <CAMuHMdXmJ3gfYzubQRbN6Bx0A=p8TodidmoeaZkJVtYjhDcQnw@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: decompressor: simplify libfdt builds
To: Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
 Russell King <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_004452_619978_5BCAA5E8 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yamada-san, Kees, Russell,

-CC RMK's patch system
+CC lakml

On Sun, Apr 19, 2020 at 9:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> Copying source files during the build time may not end up with
> as clean code as expected.
>
> lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> nicely. Let's follow this approach for the arm decompressor, too.
>
> Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> the Makefile messes. Another nice thing is we no longer need to
> maintain the own libfdt_env.h because the decompressor can include
> <linux/libfdt_env.h>.
>
> There is a subtle problem when generated files are turned into
> check-in files.
>
> When you are doing a rebuild of an existing object tree with O=
> option, there exists stale "shipped" copies that the old Makefile
> implementation created. The build system ends up with compiling the
> stale generated files because Make searches for prerequisites in the
> current directory, i.e. $(objtree) first, and then the directory
> listed in VPATH, i.e. $(srctree).
>
> To mend this issue, I added the following code:
>
>   ifdef building_out_of_srctree
>   $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
>   endif
>
> This will need to stay for a while because "git bisect" crossing this
> commit, otherwise, would result in a build error.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

This is now commit 365a6327cd643eed ("ARM: 8968/1: decompressor:
simplify libfdt builds") in arm/for-next.

In light of reworking "[PATCH v5] ARM: boot: Obtain start of physical
memory from DTB"[1] on top of this, which would conditionally add
another source file to libfdt_objs, I have a few questions.

> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
>  compress-$(CONFIG_KERNEL_XZ)   = xzkern
>  compress-$(CONFIG_KERNEL_LZ4)  = lz4
>
> -# Borrowed libfdt files for the ATAG compatibility mode
> -
> -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> -
> -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
>

I guess the code below can be moved out of the ifeq block, as it doesn't
really do anything if CONFIG_ARM_ATAG_DTB_COMPAT=n, and $(libfdt_objs)
becomes empty?
If not, I think I'll have to add a new Kconfig symbol ARM_BOOT_LIBFDT,
to be selected by ARM_ATAG_DTB_COMPAT and USE_OF.

> -$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
> -       $(call cmd,shipped)
> +OBJS   += $(libfdt_objs)
>
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> -       $(addprefix $(obj)/,$(libfdt_hdrs))
> +# -fstack-protector-strong triggers protection checks in this code,
> +# but it is being used too early to link to meaningful stack_chk logic.
> +nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> +$(foreach o, $(libfdt_objs), \
> +       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))

Is there a real reason this is only applied to a subset of the C object
files, and not to all of them? Or have we been lucky so far, by not
triggering the issue in decompressed.c, misc.c, and string.c (yet)?

Thanks!

> +
> +# These were previously generated C files. When you are building the kernel
> +# with O=, make sure to remove the stale files in the output tree. Otherwise,
> +# the build system wrongly compiles the stale ones.
> +ifdef building_out_of_srctree
> +$(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
> +endif
>
> -ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> -OBJS   += $(libfdt_objs) atags_to_fdt.o
>  endif
>
>  targets       := vmlinux vmlinux.lds piggy_data piggy.o \
>                  lib1funcs.o ashldi3.o bswapsdi2.o \
>                  head.o $(OBJS)
>
> -clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
> -               $(libfdt) $(libfdt_hdrs) hyp-stub.S
> +clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S hyp-stub.S
>
>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
>
> @@ -107,15 +109,6 @@ ORIG_CFLAGS := $(KBUILD_CFLAGS)
>  KBUILD_CFLAGS = $(subst -pg, , $(ORIG_CFLAGS))
>  endif
>
> -# -fstack-protector-strong triggers protection checks in this code,
> -# but it is being used too early to link to meaningful stack_chk logic.
> -nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> -CFLAGS_atags_to_fdt.o := $(nossp-flags-y)
> -CFLAGS_fdt.o := $(nossp-flags-y)
> -CFLAGS_fdt_ro.o := $(nossp-flags-y)
> -CFLAGS_fdt_rw.o := $(nossp-flags-y)
> -CFLAGS_fdt_wip.o := $(nossp-flags-y)
> -
>  ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin \
>              -I$(obj) $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
>  asflags-y := -DZIMAGE

[1] https://lore.kernel.org/r/20200415153409.30112-1-geert+renesas@glider.be

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
