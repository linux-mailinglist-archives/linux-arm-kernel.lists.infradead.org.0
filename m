Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DA2F86E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 03:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCIqXkzU65zuGj+0iFBAez00jnRGpa40keEnpv5HQSg=; b=DyxeMhlV96DjQB
	HpqFMcozMPEvYuMCaLO92We2by8krLgO4r7/3kfCKEnFB9lAPjm+mmh7fI5Uqsyy91JQjMbHzlyDo
	c0o/a5Tm7h+4dSh7ZH8vjmy40R4qbG6QzRS+9z+V5ICjhsUZpawDZtLEGn0Oj4VmekuBqX3aUsTnb
	aXB7L7kFje3vBttzn0aPYoKTNuI709Fmm02jLAB1cTAXwXST94axOkqN1a2NmkApYikDi07CQTiZQ
	/vFW8Ar5RCceYkALe3HuW58lAGjbDGJD5stPuQ/4En3ty1ILMmbX3WicwPIzJ84qS988n31RDdzzJ
	v8+4pmzD1tR5L3PBunOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iULoq-0006re-Oj; Tue, 12 Nov 2019 02:22:12 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iULoi-0006qr-3n
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 02:22:06 +0000
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id xAC2Lk9q023058
 for <linux-arm-kernel@lists.infradead.org>; Tue, 12 Nov 2019 11:21:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com xAC2Lk9q023058
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1573525307;
 bh=y7MzE4Tyl7ZA6/nakd70Ls06yxLts/TrU5ic+fxvtfo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C1aJehxV1KpU4kD1mebXEvYGbuHV1tCyJy2FgOKgNde7u2m1urDSByV5602GtcEHX
 AbncWs7376oCtbr6pE6+8WodZdJ6DEmPBTHUceX++/I31xaXYpWxg88hWYYb0qSAAm
 MSiXMDyNTgvdPQaL7wVmb69zJOdVM5H6SjQWOxj/pLSjHvC+xSMeobV8g1+2iHbQKM
 Hkjxc5QOp8l4aqW1LnBreKskO85rXCrrZQp/a7Cq60hklcZ5Krao+n2Az7MAy9GZQs
 sf0/HAmVY/DJ6ZwGGZkfKJO30z/Ca9ZX1nsD8L23ammk/W3EWdYBG19FjQsKYWzxKp
 lP7Coi4msZfdg==
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id m6so9757717vsn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 18:21:46 -0800 (PST)
X-Gm-Message-State: APjAAAXujr0qVYtr6rEFObRjto9X72zDODrw4qERQfgkdra//CurOho9
 QO83ZQZNyUU/Ey4bOHa2iokrExV6/sDIiun9RlE=
X-Google-Smtp-Source: APXvYqxeanEG4WIYh37eR2tVL4EL2c3BDdD2rPZKpV6mv7REHbZo5fpg3hHZj6xKkC+uGEZrKDIqz7lYWNAgwCoomUs=
X-Received: by 2002:a05:6102:726:: with SMTP id
 u6mr20193685vsg.179.1573525305837; 
 Mon, 11 Nov 2019 18:21:45 -0800 (PST)
MIME-Version: 1.0
References: <20191110153043.111710-1-dima@golovin.in>
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 12 Nov 2019 11:21:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQBKjJB0koyAANPb+iwGa7DYi2R+0EFiD6pJ4TihMFjHQ@mail.gmail.com>
Message-ID: <CAK7LNAQBKjJB0koyAANPb+iwGa7DYi2R+0EFiD6pJ4TihMFjHQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
To: Dmitry Golovin <dima@golovin.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_182204_383788_742EFB8C 
X-CRM114-Status: GOOD (  17.86  )
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Matthias Maennich <maennich@google.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 12:32 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>
> ---

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>



>  arch/arm/boot/compressed/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 9219389bbe61..a1e883c5e5c4 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>
>  # Supply kernel BSS size to the decompressor via a linker symbol.
> -KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
> +KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
>                 sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>                        -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
> @@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
>  # The .data section is already discarded by the linker script so no need
>  # to bother about it here.
>  check_for_bad_syms = \
> -bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
> +bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
>  [ -z "$$bad_syms" ] || \
>    ( echo "following symbols must have non local/private scope:" >&2; \
>      echo "$$bad_syms" >&2; false )
> --
> 2.23.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
