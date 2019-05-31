Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D7330A57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyCIChC5xTN0yiWZ7P+0dKTaeyAp46EH3ZMZHhESUjo=; b=TsAv3Xo7FZMxB9
	z7w6xpM495xkhG0Y1FJRGW5lAkHdXQdnxhoYSqCgVMxe34xtyFHQlE2M5RGGeEASaCtRvb0OZUnos
	d7/w9xqrB2/6GsX/bbe+LoEux9bur48WVdF2mq5qOt9at52eJ+LJ+Q6NRf3OToAfyYlIjpI115q8B
	uUXwe5EldoRSRuc3wDBeeupk/gmRIO6+kY6AY55DTeuEzOz8F6bwZcJaXQCR44fd2pu6SgqN8RvgM
	2YHfugW6q7YxqbR3qNYmAKalck/2y8YvhFngoC+XfJaic3XtyuiQ9OKIwKzU/9bWpNFLvykKD/pvM
	mFNpE6pGIT1X4mhs1GTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcxz-00022O-Tk; Fri, 31 May 2019 08:32:47 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcxr-00021n-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:32:41 +0000
Received: by mail-qt1-f195.google.com with SMTP id l3so10393294qtj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:32:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=igjuJGXMsnGZDhorJwfUv0+nOH3lmOMpPh5Fkg034nY=;
 b=WUEp6pzOAzbEsxpZcb2XYNZyci+7I37aFmBkVXaTM181Y8Rti1XWhljERO0fjb8wwl
 VnFDJ5ykdl7IbKQxmotvZHruoKZyorYj3srGT1EvTn1i6W1RGpEeHZPQhANAgfSJzfjZ
 Y880HRc6d0YrjKg/tlQUXSVW9IMn2ojh6nzHj1mMe1eeDwtjHxdC5BnCe9wTWqJmRJjj
 dvucP4YIXpRnDtswDpdkA3ElGPpMY1MZQ7LOYzCHStQcsnWYYnzH8tuZlj/GgZCoh4+a
 x1LAe5IaCEuCtb9UhUh5Q/rNxVMrDpKjeBtoh/QTLfL2esmHqNzqy6RvYSgTRbCFkoJo
 i5UA==
X-Gm-Message-State: APjAAAUg4DYWCPjC9jsi8In4pFay+Y9/iGmNzuYgFms/TerxrMKNbRv6
 60P6WJ4uN7hQiybd98mBIRy+JyHoqAH2CrmCq60=
X-Google-Smtp-Source: APXvYqz9UY+8/pkIhfjqDnPdgHg65ZqG2L3gJyCnwOw2GV9Dc8VpZX9nAZNc7+rmbc0MPEHfPZRNJe3CE7OZS8hHUVo=
X-Received: by 2002:a0c:9e0f:: with SMTP id p15mr7572827qve.176.1559291558659; 
 Fri, 31 May 2019 01:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-17-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-17-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:32:22 +0200
Message-ID: <CAK8P3a0gKJX0fAdizNoO3r-UzAoN0Nf=gkMmw++wuryjHy3-8w@mail.gmail.com>
Subject: Re: [PATCH v6 16/19] arm: Add support for generic vDSO
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_013240_012363_7F1538E8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:16 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
> diff --git a/arch/arm/include/asm/vdso/gettimeofday.h b/arch/arm/include/asm/vdso/gettimeofday.h
> new file mode 100644
> index 000000000000..eeeb319840ba
> --- /dev/null
> +++ b/arch/arm/include/asm/vdso/gettimeofday.h
> @@ -0,0 +1,96 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2018 ARM Limited
> + */
> +#ifndef __ASM_VDSO_GETTIMEOFDAY_H
> +#define __ASM_VDSO_GETTIMEOFDAY_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <asm/barrier.h>
> +#include <asm/cp15.h>
> +#include <asm/unistd.h>
> +#include <uapi/linux/time.h>
> +
> +#ifndef CONFIG_AEABI
> +#error This code depends on AEABI system call conventions
> +#endif

Instead of an #error here, I would use a Kconfig conditional and make it

'select HAVE_GENERIC_VDSO if AEABI'

> diff --git a/arch/arm/vdso/vdso.lds.S b/arch/arm/vdso/vdso.lds.S
> index 89ca89f12d23..05581140fd12 100644
> --- a/arch/arm/vdso/vdso.lds.S
> +++ b/arch/arm/vdso/vdso.lds.S
> @@ -82,6 +82,8 @@ VERSION
>         global:
>                 __vdso_clock_gettime;
>                 __vdso_gettimeofday;
> +               __vdso_clock_getres;
> +               __vdso_clock_gettime64;
>         local: *;
>         };

Why are you adding __vdso_clock_getres here? I would probably
leave the addition of the new entry point(s) for a separate patch
at the end, adding __vdso_clock_gettime64 to all 32-bit ABIs
at once, since while that part is a trivial change, it's also user
visible and deserves its own changelog text.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
