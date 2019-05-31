Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EA730672
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 04:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg3XxHuCPxam9IqlHQGwZ1eHId6Ul1WHkH7GaGDJADs=; b=lR/hu/S8ow59KK
	wL7+LdVhs11N3mpo+eT80gDCbgNV8RIP5jFi5DCWhBODAc1YMAZO9VKVsJarYGcs2Wa8dn1vRTcxx
	6M5aR7NL8lxcrupRd/Xsjmm60ElDwuL0uaJ8tKJAoUTE+IG2OL7oO0uTdkPE43+KOLD0nE45LcIhP
	eAVJN6MzM7I2R8QyKc/nRKI69NkOAe8jDjQm1lCmRHLKeSY1XwvOz9EGu8ep1dIL5zp0KyJfQxET8
	0tJ0tSmT5F4Rkwh6VkPkJfEa2oNKVlgmcCKywZF6v5KBsF3CUNFSMCQXqswXqWriA2WqZSmouzbti
	VtnlMOgBpJNQNIQP5uUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWWsI-0001fQ-M1; Fri, 31 May 2019 02:02:30 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWWsA-0001es-Ug
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 02:02:24 +0000
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x4V220IG026218
 for <linux-arm-kernel@lists.infradead.org>; Fri, 31 May 2019 11:02:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x4V220IG026218
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559268121;
 bh=JFKrCexjwszU8gfQr6gW63eXVh2Hm+G6S4mj7tEbXBk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Gy9TmV6St9w3knc6CLRQIxjO90p3aOCozwt75d8GEjJesM/ZEDgxL8yKNCQezIlMc
 HVCUNTVU3t2OD7wFo49b/0s5+H1p8zXmzTxBkh0pLyIo5CaZbZeRoUY1gSowgEymjy
 TuHvd6Lqwpt3rRaSn9PoSC76moqRKXBaqC3eHlLE/4kx/sqIMn99GMJGKPF2n4T+Ln
 +3Net432SjsjP6bO0ADHtZdEs8SXhz4pQWYuW4rYy/iu4aSPLm02HrBieQUlI76e9w
 kFq0h9gnBHlNrm938clEM/L8KGz9VputCTg6OE0Jcv0/UMElkP3QO1F6Xh5ykq4NFW
 xHLYv63EaCg1Q==
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id d128so5688274vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 19:02:00 -0700 (PDT)
X-Gm-Message-State: APjAAAX1xpZKfH3bQ3wGm2drhzTkDS2FTb5l9T65BbKHhbQRNB+X6apr
 9q0rsTgsK35RVv8uNmbGbuTvNMmhpmTmcXMeGjI=
X-Google-Smtp-Source: APXvYqzVzNfAFknY7H7mEOgb5wDJU1a317iny5D7E6KvkLWcVJbVf3bJmiOMvqJe5LYISJjwZVa1Kmh96JHDJfwhpUY=
X-Received: by 2002:a67:b109:: with SMTP id w9mr3599220vsl.155.1559268119666; 
 Thu, 30 May 2019 19:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190529182324.8140-1-Jason@zx2c4.com>
In-Reply-To: <20190529182324.8140-1-Jason@zx2c4.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 31 May 2019 11:01:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
Message-ID: <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
Subject: Re: [PATCH] arm: vdso: pass --be8 to linker if necessary
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_190223_201297_106D9775 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jason,

Thanks for catching this.

On Thu, May 30, 2019 at 3:26 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> The commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC)
> to link VDSO") removed the passing of CFLAGS, since ld doesn't take
> those directly. However, prior, big-endian ARM was relying on gcc to
> translate its -mbe8 option into ld's --be8 option. Lacking this, ld


'git grep -- -mbe8' has no hit.

Is it a toolchain internal flag?



> generated be32 code, making the VDSO generate SIGILL when called by
> userspace.
>
> This commit passes --be8 if CONFIG_CPU_ENDIAN_BE8 is enabled.
>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm/vdso/Makefile | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
> index fadf554d9391..1f5ec9741e6d 100644
> --- a/arch/arm/vdso/Makefile
> +++ b/arch/arm/vdso/Makefile
> @@ -10,9 +10,10 @@ obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>  ccflags-y := -fPIC -fno-common -fno-builtin -fno-stack-protector
>  ccflags-y += -DDISABLE_BRANCH_PROFILING
>
> -ldflags-y = -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> +ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
> +ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
>             -z max-page-size=4096 -z common-page-size=4096 \
> -           -nostdlib -shared \
> +           -nostdlib -shared $(ldflags-y) \
>             $(call ld-option, --hash-style=sysv) \
>             $(call ld-option, --build-id) \
>             -T
> --
> 2.21.0
>


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
