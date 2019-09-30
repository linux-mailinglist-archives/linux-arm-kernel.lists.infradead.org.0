Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFDC295D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXAdJlkmVTpTYntPbppCDE+gbkVIg/cPxRnQq66sc4E=; b=CGNW1t0CBZ0h2B
	6aUFYXyHdM3g5RA7Exlk3/zUP8tzDDAeopH4vLgfOqx+JEc0BO1X4F1kvNs4ARp+RkkV7cICvNAym
	mJUXtzAYDTzU4tuVIfXm/chKX/ZtW0VzDzuTwSxMl/WvC/52Go+KK2wXPYMQ02+VQyLxCJrGAaiuC
	na7fSjHlnC5RGaJNghJrGA7mxuk6yqGIhv7aaPl8WLMTlKq/cHIuE1+PFcKry7y07thfQi/YLuwAa
	m6JicmrTZ31tnIIZWu2ATZ2Qelrvw++74AsdiJGbcuLKhyepoVLJQQ7XyLb8ZhfEAeqw2MFeOfaio
	M7mXRP63DpXQeXbUq1TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF40z-0003up-EM; Mon, 30 Sep 2019 22:19:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF40q-0003u3-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:19:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id f21so4426955plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 15:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3oWqyfWTP37SD+PlmYVges0YN8RxVQW6vfcfcw8zHDs=;
 b=QhV0HmO5jThUuDSONZ0Gwfst06GK/Tanlz1FJWN+f/CZoc4LkISoHqY9JE4hw0FxO2
 jC4+tsOfh3HBlM98oTJ9p9UOVH79DzzJa5gUTmKsYr+bbD42dNJuGwEOer03aaUmpaLw
 eoEY23iP1sQUj0A9W6zq2Oo/l/T9Ollwslh4bpuHOkH2NDTTK4NmPGwfkvz0tixLyfpQ
 9I4RmNXA6ZEe1B1kcOrZAyvXu5dzrUONSF2taIHHTGZtSEnSA3bA/38q95WfzCv8gncV
 FcxJ270m3K35a2clJLUZdXxOd9zDP/4IQOoV7c3/ZVJOqMB6Xo9UbRFUUhEjs65NL/8V
 mvXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3oWqyfWTP37SD+PlmYVges0YN8RxVQW6vfcfcw8zHDs=;
 b=p1fhvirxqNgDaHRxu9m6Fh0QnnxY7KrRltYIAnjFY/c7d/BtkST/jn1ediS205dg0f
 nKn+q3GEVTjtyLY1rUHw6OntYZo0dX3vNdAbMows46BN+KkxTP0mPFlo2e05lJcK7+/+
 X1h8y9mSkgoZblWs4zdwrCzLdiuzWhA0xssdK4fpmV9bartUWD45xWMTFANI5tq83YHr
 H+2oG9wYb7EzzYUk1c0JCrq+VgGGfDHWDdc39m17/v7dDiP+N5XyotK8ByKBE8DJoj6u
 xHYE+8x5zAq4ljuCn/B41NjICzgPAGGecG4tnyRVpHq03okL/i/P+PPDDnjGZCP9ejVw
 28PA==
X-Gm-Message-State: APjAAAXJyyvNFLq0PQiz2Fxeh8WelyoNDxZX/uIxT6Eg+feIrU7D5WMw
 P8U5thfr2HOAzjuXkyBHzucx7JuhLclQjrD4v/Rjhg==
X-Google-Smtp-Source: APXvYqyG+eTU5eoURz3A6I1Oi2WUYBcxtn/xMioYPodkxhQPxLm0cWZlBIGnlKCfDVHIastd7l/4gdZrcllqpZUussM=
X-Received: by 2002:a17:902:820e:: with SMTP id
 x14mr22386750pln.223.1569881959520; 
 Mon, 30 Sep 2019 15:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 30 Sep 2019 15:19:08 -0700
Message-ID: <CAKwvOdk4VKK-Z0ZRKb0aV9yH=jtqVp0aYaqMaL7dOq7-jaGX4A@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_151924_295510_F9321438 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 11:00 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
>
>   https://lkml.org/lkml/2019/9/26/825
>
> I also received a regression report from Nicolas Saenz Julienne:
>
>   https://lkml.org/lkml/2019/9/27/263
>
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
>
> The __get_user_check() specifically uses r0, r1, r2 registers.

Yep, that part is obvious, but...

> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.

Right, r0, r1, r2 are caller saved, meaning that __get_user_check must
save/restore them when making function calls. So
uaccess_save_and_enable() and uaccess_restore() should either be made
into macros (macros and typecheck (see include/linux/typecheck.h) are
peanut butter and chocolate), or occur at different points in the
function when those register variables are no longer in use.

>
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
>
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
>
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
>
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
>  arch/arm/include/asm/uaccess.h | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> index 303248e5b990..559f252d7e3c 100644
> --- a/arch/arm/include/asm/uaccess.h
> +++ b/arch/arm/include/asm/uaccess.h
> @@ -191,11 +191,12 @@ extern int __get_user_64t_4(void *);
>  #define __get_user_check(x, p)                                         \
>         ({                                                              \
>                 unsigned long __limit = current_thread_info()->addr_limit - 1; \
> +               unsigned int __ua_flags = uaccess_save_and_enable();    \
>                 register typeof(*(p)) __user *__p asm("r0") = (p);      \
>                 register __inttype(x) __r2 asm("r2");                   \
>                 register unsigned long __l asm("r1") = __limit;         \
>                 register int __e asm("r0");                             \

What does it mean for there to be two different local variables pinned
to the same register? Ie. it looks like __e and __p are defined to
exist in r0.  Would having one variable and an explicit cast result in
differing storage?

> -               unsigned int __ua_flags = uaccess_save_and_enable();    \
> +               unsigned int __err;                                     \
>                 switch (sizeof(*(__p))) {                               \
>                 case 1:                                                 \
>                         if (sizeof((x)) >= 8)                           \
> @@ -223,9 +224,10 @@ extern int __get_user_64t_4(void *);
>                         break;                                          \
>                 default: __e = __get_user_bad(); break;                 \

^ I think this assignment to __e should be replaced with an assignment
to __err?  We no longer need the register at this point and could skip
the assignment of x.

>                 }                                                       \
> -               uaccess_restore(__ua_flags);                            \
> +               __err = __e;                                            \
>                 x = (typeof(*(p))) __r2;                                \
> -               __e;                                                    \
> +               uaccess_restore(__ua_flags);                            \
> +               __err;                                                  \
>         })
>
>  #define get_user(x, p)                                                 \
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
