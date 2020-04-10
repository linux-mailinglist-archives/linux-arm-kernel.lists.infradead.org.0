Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DFA1A4562
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VguSiYVR+H47OGtB9yDSyG6B9VV2Ef7YrGw5zHzb+UI=; b=I2teJZEYpDmVt5
	+MmhS31dC1rsw4bVnbzhZezo3ugobwN9abP1RDlWUqY6mpEM/4uIZe8x7NOrF1WpxY7pIzOgaKSQI
	j7z3YNQCBmL9BE1nd9Tf3lQoevaas1T2hJvuGTyiQep7bWEgw8aSwmv6UXxRW5PtScis/uZB53Pgv
	zponCi+tKqFq/ZFYFXf3V0vCc1Qs9f+3eLZZSOlV0TyMPNWFAgeEs5bgaGrltZS7gYtYEimHP4L+i
	jQSCSdxB7ehrG1ZlscTWfJzr+RWwjm/rsUuzkp/ieYj4Kc6ebwz1B0H/w0s5hxz6UzLXKrhY/YVU9
	C6p7ETS37+FltqC+K06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrCJ-0003hR-Pi; Fri, 10 Apr 2020 10:47:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrCB-0003h6-PT
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:47:37 +0000
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6829221841
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586515655;
 bh=U3wmJx6hLjdbpi9nNIeT1fEN5cdk/6ttAPKJ4Brye00=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kp997bcLfABP723lf8fm7ymzoCZy/BOcnjK6rtWodOzvp8kJN74/xyXNE0RPwAZnX
 ipCy6HSzeQykN+E0hK/HgtKDpuccoOP68HJoF4S+4bywrx6uMTA+sziQCSvnmwEMW2
 cym5bSmxRYBoYkThrYRtGNNvsrN8XqromYU8b5eI=
Received: by mail-io1-f49.google.com with SMTP id w1so1358996iot.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 03:47:35 -0700 (PDT)
X-Gm-Message-State: AGi0PuYdmNpOmRH/IgbVir8WlOb21hxkbO4Nu15z3hqH57Tw8d+x2Gzo
 a9mdS6j4QkZRjNocr1BPRa9DNGmTJJYopV5H2H4=
X-Google-Smtp-Source: APiQypKXvEl7sIHmBvdTO2/Sq82nNedbtcTWI9il5KSUN0FhnjNovFdxXB0laKwHoxVv+x13Op2+8K9kQu7VpjrjlQY=
X-Received: by 2002:a5d:8b57:: with SMTP id c23mr3679119iot.161.1586515654446; 
 Fri, 10 Apr 2020 03:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200117224839.23531-1-f.fainelli@gmail.com>
 <20200117224839.23531-8-f.fainelli@gmail.com>
 <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
In-Reply-To: <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 12:47:23 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEmSk6Sq+WPAMc=x=HyP2EzVYbNYjB-4YSLByUurbXa0A@mail.gmail.com>
Message-ID: <CAMj1kXEmSk6Sq+WPAMc=x=HyP2EzVYbNYjB-4YSLByUurbXa0A@mail.gmail.com>
Subject: Re: [PATCH v7 7/7] ARM: Enable KASan for ARM
To: Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_034735_863537_611C9E81 
X-CRM114-Status: GOOD (  28.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm <kvmarm@lists.cs.columbia.edu>,
 Jonathan Corbet <corbet@lwn.net>, Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 bcm-kernel-feedback-list@broadcom.com, Andrew Jones <drjones@redhat.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Philippe Ombredanne <pombredanne@nexb.com>, Jinbum Park <jinb.park7@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrey Ryabinin <ryabinin@virtuozzo.com>, Rob Landley <rob@landley.net>,
 Philip Derrin <philip@cog.systems>, Andrew Morton <akpm@linux-foundation.org>,
 Thomas Garnier <thgarnie@google.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ Linus)

On Fri, 10 Apr 2020 at 12:45, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 17 Jan 2020 at 23:52, Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > From: Andrey Ryabinin <ryabinin@virtuozzo.com>
> >
> > This patch enables the kernel address sanitizer for ARM. XIP_KERNEL has
> > not been tested and is therefore not allowed.
> >
> > Acked-by: Dmitry Vyukov <dvyukov@google.com>
> > Tested-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
> > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >  Documentation/dev-tools/kasan.rst     | 4 ++--
> >  arch/arm/Kconfig                      | 9 +++++++++
> >  arch/arm/boot/compressed/Makefile     | 1 +
> >  drivers/firmware/efi/libstub/Makefile | 3 ++-
> >  4 files changed, 14 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> > index e4d66e7c50de..6acd949989c3 100644
> > --- a/Documentation/dev-tools/kasan.rst
> > +++ b/Documentation/dev-tools/kasan.rst
> > @@ -21,8 +21,8 @@ global variables yet.
> >
> >  Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
> >
> > -Currently generic KASAN is supported for the x86_64, arm64, xtensa and s390
> > -architectures, and tag-based KASAN is supported only for arm64.
> > +Currently generic KASAN is supported for the x86_64, arm, arm64, xtensa and
> > +s390 architectures, and tag-based KASAN is supported only for arm64.
> >
> >  Usage
> >  -----
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 96dab76da3b3..70a7eb50984e 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -65,6 +65,7 @@ config ARM
> >         select HAVE_ARCH_BITREVERSE if (CPU_32v7M || CPU_32v7) && !CPU_32v6
> >         select HAVE_ARCH_JUMP_LABEL if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
> >         select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
> > +       select HAVE_ARCH_KASAN if MMU && !XIP_KERNEL
> >         select HAVE_ARCH_MMAP_RND_BITS if MMU
> >         select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
> >         select HAVE_ARCH_THREAD_STRUCT_WHITELIST
> > @@ -212,6 +213,14 @@ config ARCH_MAY_HAVE_PC_FDC
> >  config ZONE_DMA
> >         bool
> >
> > +config KASAN_SHADOW_OFFSET
> > +       hex
> > +       depends on KASAN
> > +       default 0x1f000000 if PAGE_OFFSET=0x40000000
> > +       default 0x5f000000 if PAGE_OFFSET=0x80000000
> > +       default 0x9f000000 if PAGE_OFFSET=0xC0000000
> > +       default 0xffffffff
> > +
> >  config ARCH_SUPPORTS_UPROBES
> >         def_bool y
> >
> > diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> > index 83991a0447fa..efda24b00a44 100644
> > --- a/arch/arm/boot/compressed/Makefile
> > +++ b/arch/arm/boot/compressed/Makefile
> > @@ -25,6 +25,7 @@ endif
> >
> >  GCOV_PROFILE           := n
> >  KASAN_SANITIZE         := n
> > +CFLAGS_KERNEL          += -D__SANITIZE_ADDRESS__
> >
> >  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
> >  KCOV_INSTRUMENT                := n
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index c35f893897e1..c8b36824189b 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -20,7 +20,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >                                    -fpie $(DISABLE_STACKLEAK_PLUGIN)
> >  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> >                                    -fno-builtin -fpic \
> > -                                  $(call cc-option,-mno-single-pic-base)
> > +                                  $(call cc-option,-mno-single-pic-base) \
> > +                                  -D__SANITIZE_ADDRESS__
> >
>
> I am not too crazy about this need to unconditionally 'enable' KASAN
> on the command line like this, in order to be able to disable it again
> when CONFIG_KASAN=y.
>
> Could we instead add something like this at the top of
> arch/arm/boot/compressed/string.c?
>
> #ifdef CONFIG_KASAN
> #undef memcpy
> #undef memmove
> #undef memset
> void *__memcpy(void *__dest, __const void *__src, size_t __n) __alias(memcpy);
> void *__memmove(void *__dest, __const void *__src, size_t count)
> __alias(memmove);
> void *__memset(void *s, int c, size_t count) __alias(memset);
> #endif
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
