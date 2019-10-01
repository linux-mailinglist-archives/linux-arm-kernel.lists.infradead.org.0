Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B40C3DF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fX4Dck5p/oeo3tAYa/+OmEieArpKbD391KswOi7JQWc=; b=udJ9Jeji/R95/k
	J20PU4IfsM/dtWDiTCdIKaJLoKKGB3HXpHK9T2sMBmPiyChtVc3KR4IrF3mvGJMDuLwfdHWgKYaL6
	ktwhz9D0AhFaDdygODWDRo3mS6Dc2uhSuppjx213SANHArryH0+xtUIaG27HxqfyvkNciRP0JzYgR
	wkffvH2F3vWQXj0GW3+OSczlfpktcKgbRTxcC5a7UWYFe/mQhQa351Qd0UJkzmQbD9+u/OelvWDbI
	UcBFuJPlZWXlFR+uvKlJaMv+XSILS386ddCj++ZXQB9uM6BGLqEomshAdfN2RWCYH18tXlEUY+MY1
	Q0zxidG9k0lmveVqK/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLZL-0000dC-PM; Tue, 01 Oct 2019 17:04:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLZC-0000cq-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:04:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so8462363pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 10:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EcBrAvMosjOG+UozMLy1mX7WITMjOIgSIxKt9S1MY78=;
 b=tQeowPI5FGxOFELVxn4y0uIrJzC5WdQ10Icig06ZTrO0qKSy0zxsNCHYx7PmJoHS7p
 dog98eiYC996iI878c1DE9kDWe1n3D3glN7bCP3v+0GjdRobfuD6Wz5/LnugQCizZyKk
 3t+GPMpzdPfo1HbVPk7aMWwpYS3e2/yiAtXINj1ZEEPjJ/r4rXi1mw3kWiTZbGtX2HY7
 3Y64wTqHn2rZkQswmnTCus2NmKzKuBV5mD8CYr2MtWGQn0+L9J4dAcrgVi5Nhlx1+AK/
 SQdt2fRwKidwBzn6oVp/ixyPx3dK1TWxMMj4ReQ25zrY85m6rZ9BTXSs2fD6sD4snKLA
 M4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EcBrAvMosjOG+UozMLy1mX7WITMjOIgSIxKt9S1MY78=;
 b=jIh3JI9qOh6EC3Zu6HB3aRQlgUML5pe50kRtiya67suu+mnusrktUm0+JCwxQWC7sv
 7k9DVXV4Do2tjOWTZG0hxmjmcmRfB+iSxxdqNoU3C7QS51DVxmjKLdfhmJXNVYq9DoqL
 RK6CXnQZWy5lUKp/EJoXgGQ3XVLzfBVMP3pb2Vr0gpKfqbEHcc08RqRnXA0HfLktemWw
 ZyAOyMQ32npyZ5RO1lg7aI05I93uvijuBDGkgGBSI67SAwIll/JjzGYmnud8nkhI5c9S
 wgBnUr8R5He0zKePWYxPA51pQypa4ma16AM3iBsK008FL8d5+rCVbfYk8TgbFove/NwI
 VIcQ==
X-Gm-Message-State: APjAAAUl9ksdJyRR5m+6Y5hpy6gEvyVpV8CwD/r/NR/tJyhzcLMb9gbA
 Kgk3P//f68xNmRq49Xii3MuIX0ODCEciqP5nPSRP0w==
X-Google-Smtp-Source: APXvYqw3A/RUIhbvi9tHej5gK5Ducu/8QWOwZ72fe1dUcSs00OVimHuao8TGBKT2Q9Yr+5x6YGdZ13lsQb3fiV6nTWk=
X-Received: by 2002:a62:798e:: with SMTP id u136mr29331106pfc.3.1569949441392; 
 Tue, 01 Oct 2019 10:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191001083701.27207-1-yamada.masahiro@socionext.com>
In-Reply-To: <20191001083701.27207-1-yamada.masahiro@socionext.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 1 Oct 2019 10:03:50 -0700
Message-ID: <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_100402_466495_371A9ACD 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Enrico Weigelt <info@metux.net>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Allison Randal <allison@lohutok.net>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 1:37 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly") (https://lkml.org/lkml/2019/9/26/825).
>
> I also received a regression report from Nicolas Saenz Julienne
> (https://lkml.org/lkml/2019/9/27/263).
>
> This problem has cropped up on bcm2835_defconfig because it enables
> CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends to prefer not inlining
> functions with -Os. I was able to reproduce it with other boards and
> defconfig files by manually enabling CONFIG_CC_OPTIMIZE_FOR_SIZE.
>
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined.
> Otherwise, those register assignments would be entirely dropped,
> according to my analysis of the disassembly.
>
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.

No, the C preprocessor is the only guaranteed way of inlining.  I
preferred v1; if you're going to <strikethrough>play with
fire</strikethrough>write assembly, don't get burned.

>
> I also added __always_inline to 4 functions in the call-graph from the
> __get_user_check() macro.
>
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
> Changes in v2:
>   - Use __always_inline instead of changing the function call places
>      (per Russell King)
>   - The previous submission is: https://lore.kernel.org/patchwork/patch/1132459/
>
>  arch/arm/include/asm/domain.h  | 8 ++++----
>  arch/arm/include/asm/uaccess.h | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/include/asm/domain.h b/arch/arm/include/asm/domain.h
> index 567dbede4785..f1d0a7807cd0 100644
> --- a/arch/arm/include/asm/domain.h
> +++ b/arch/arm/include/asm/domain.h
> @@ -82,7 +82,7 @@
>  #ifndef __ASSEMBLY__
>
>  #ifdef CONFIG_CPU_CP15_MMU
> -static inline unsigned int get_domain(void)
> +static __always_inline unsigned int get_domain(void)
>  {
>         unsigned int domain;
>
> @@ -94,7 +94,7 @@ static inline unsigned int get_domain(void)
>         return domain;
>  }
>
> -static inline void set_domain(unsigned val)
> +static __always_inline void set_domain(unsigned int val)
>  {
>         asm volatile(
>         "mcr    p15, 0, %0, c3, c0      @ set domain"
> @@ -102,12 +102,12 @@ static inline void set_domain(unsigned val)
>         isb();
>  }
>  #else
> -static inline unsigned int get_domain(void)
> +static __always_inline unsigned int get_domain(void)
>  {
>         return 0;
>  }
>
> -static inline void set_domain(unsigned val)
> +static __always_inline void set_domain(unsigned int val)
>  {
>  }
>  #endif
> diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> index 303248e5b990..98c6b91be4a8 100644
> --- a/arch/arm/include/asm/uaccess.h
> +++ b/arch/arm/include/asm/uaccess.h
> @@ -22,7 +22,7 @@
>   * perform such accesses (eg, via list poison values) which could then
>   * be exploited for priviledge escalation.
>   */
> -static inline unsigned int uaccess_save_and_enable(void)
> +static __always_inline unsigned int uaccess_save_and_enable(void)
>  {
>  #ifdef CONFIG_CPU_SW_DOMAIN_PAN
>         unsigned int old_domain = get_domain();
> @@ -37,7 +37,7 @@ static inline unsigned int uaccess_save_and_enable(void)
>  #endif
>  }
>
> -static inline void uaccess_restore(unsigned int flags)
> +static __always_inline void uaccess_restore(unsigned int flags)
>  {
>  #ifdef CONFIG_CPU_SW_DOMAIN_PAN
>         /* Restore the user access mask */
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
