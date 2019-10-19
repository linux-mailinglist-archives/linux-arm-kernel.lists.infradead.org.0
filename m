Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B21DD61C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 04:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxEKfjJ5tkBkguSuwjs/45JoQ7bdJ8IW5RcfWt7A15o=; b=YF4GZC2zG/EbuJ
	t/xIHbaOerI0c9rV9LuB7qKOr/bjXzjH7u6crBiufAbJlWtt99g7hRVoZ6/JMfYEvvIqApyaAZytl
	zAeNCJieChsTrwesJygKnsArJo6w0zcNM8aITJmwXI29Cce7bdNJhD27HE6/puBA5ViFNNoDwtvD/
	VW0JwSJXyBZMfuay22QW7HWkS3Uoib5TrVRurenVsn5NDFwXM0o3Pl7/bWOS+F+yaYoV0GdsDAbJQ
	SP+VetMqBrSUGwCaQ7ReLt6IFoAiQK3AdyrFQKk7L+9x/WEwBrHUjDsPeH9xa1NL2L1YS1tB735mr
	9vK8YrRB4L26cmT3EGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLe3f-0000Fb-Bm; Sat, 19 Oct 2019 02:01:31 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLe3V-0000F1-53
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 02:01:23 +0000
Received: by mail-io1-f65.google.com with SMTP id a1so9639518ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 19:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h2Om4jrmaYSV3RVSH6Bll8Mfy0zcDVPMDEzdsJPKN50=;
 b=HTiyjLhsN0NtAz/6iga9R6ZMu92sIt6wqNRjg6EdyWRi82y+UOqHuS5nm/jNcnc53M
 4ERrwj0HAmiIIqbaOFmJcwIYzZOpWv0IBIwg4j2rAEvjnq803wzVG3JFA2o1cVutsxGx
 Zosq5ZdW+fN0ZTHlRHDwJXO7oMjMU1ldZT/nq0ksMbS2f82aoOGvXhiERZszTrduj4hE
 KnQqkUdfgOSpxdYDN7PziBqsmSd51V+I9qRMpXQ7M3gefkGSgPYos2JY+uRnj8fcBJbo
 03+bS1f3YPWqqoylocBEDWaW+jlwmi6AY9bvyiUSbXBIT13GgTu/4xKhr7tC0xtSkN54
 OUkw==
X-Gm-Message-State: APjAAAWtwdwRv6DJgpKvz6f6uj/n2l+O+hUjpFs8n4fNK2nv6veDj8h7
 gXhda0YLPtHH3cVXPO8abmp54HH1QA00NNU6OUdvitWR
X-Google-Smtp-Source: APXvYqwHrQhnbWkOoQLJVQp2N+es0LAx2Wmn9w8QNgxiqk1apZzW4d5JGiFF1Io/cEidwgaS33xtQf1YEbr309wTW3I=
X-Received: by 2002:a6b:5c0f:: with SMTP id z15mr11805568ioh.173.1571450479050; 
 Fri, 18 Oct 2019 19:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
 <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
In-Reply-To: <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
From: Huacai Chen <chenhc@lemote.com>
Date: Sat, 19 Oct 2019 10:06:42 +0800
Message-ID: <CAAhV-H6VkW5-hMOrzAQeyHT4pYGExZR6eTRbPHSPK50GAkigCw@mail.gmail.com>
Subject: Re: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
To: Andy Lutomirski <luto@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_190121_196671_27017E6B 
X-CRM114-Status: GOOD (  33.59  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chenhuacai[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Andy,

On Fri, Oct 18, 2019 at 11:15 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> On Thu, Oct 17, 2019 at 7:57 PM Huacai Chen <chenhc@lemote.com> wrote:
> >
> > In do_hres(), we currently use whether the return value of __arch_get_
> > hw_counter() is negtive to indicate fallback, but this is not a good
> > idea. Because:
> >
> > 1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
> > 2, For a 64bit counter, a "negtive" value of counter is actually valid.
>
> s/negtive/negative
>
> What's the actual bug?  Is it that MIPS is returning 0 but the check
> is < 0?  Sounds like MIPS should get fixed.
My original bug is what Vincenzo said, MIPS has a boot failure if no
valid clock_mode, and surely MIPS need to fix. However, when I try to
fix it, I found that clock_getres() has another problem, because
__cvdso_clock_getres_common() get vd[CS_HRES_COARSE].hrtimer_res, but
hrtimer_res is set in update_vdso_data() which relies on
__arch_use_vsyscall().

>
> >
> > To solve this problem, we use U64_MAX as the only "invalid" return
> > value -- this is still not fully correct, but has no problem in most
> > cases.
>
> I'm sort of okay with that, but...
>
> > Moreover, all vdso time-related functions should rely on the
> > return value of __arch_use_vsyscall(), because update_vdso_data() and
> > update_vsyscall_tz() also rely on it. So, in the core functions of
> > __cvdso_gettimeofday(), __cvdso_clock_gettime() and __cvdso_clock_
> > getres(), if __arch_use_vsyscall() returns false, we use the fallback
> > functions directly.
>
> __arch_use_vsyscall() is not currently intended for use in the vDSO at all.
>
> >
> > Fixes: 00b26474c2f1613d7ab894c5 ("lib/vdso: Provide generic VDSO implementation")
> > Cc: stable@vger.kernel.org
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Paul Burton <paul.burton@mips.com>
> > Cc: linux-mips@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Huacai Chen <chenhc@lemote.com>
> > ---
> >  arch/arm64/include/asm/vdso/vsyscall.h |  2 +-
> >  arch/mips/include/asm/vdso/vsyscall.h  |  2 +-
> >  include/asm-generic/vdso/vsyscall.h    |  2 +-
> >  lib/vdso/gettimeofday.c                | 12 +++++++++++-
> >  4 files changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/vdso/vsyscall.h b/arch/arm64/include/asm/vdso/vsyscall.h
> > index 0c731bf..406e6de 100644
> > --- a/arch/arm64/include/asm/vdso/vsyscall.h
> > +++ b/arch/arm64/include/asm/vdso/vsyscall.h
> > @@ -31,7 +31,7 @@ int __arm64_get_clock_mode(struct timekeeper *tk)
> >  #define __arch_get_clock_mode __arm64_get_clock_mode
> >
> >  static __always_inline
> > -int __arm64_use_vsyscall(struct vdso_data *vdata)
> > +int __arm64_use_vsyscall(const struct vdso_data *vdata)
> >  {
> >         return !vdata[CS_HRES_COARSE].clock_mode;
> >  }
> > diff --git a/arch/mips/include/asm/vdso/vsyscall.h b/arch/mips/include/asm/vdso/vsyscall.h
> > index 1953147..8b10dd7 100644
> > --- a/arch/mips/include/asm/vdso/vsyscall.h
> > +++ b/arch/mips/include/asm/vdso/vsyscall.h
> > @@ -29,7 +29,7 @@ int __mips_get_clock_mode(struct timekeeper *tk)
> >  #define __arch_get_clock_mode __mips_get_clock_mode
> >
> >  static __always_inline
> > -int __mips_use_vsyscall(struct vdso_data *vdata)
> > +int __mips_use_vsyscall(const struct vdso_data *vdata)
> >  {
> >         return (vdata[CS_HRES_COARSE].clock_mode != VDSO_CLOCK_NONE);
> >  }
> > diff --git a/include/asm-generic/vdso/vsyscall.h b/include/asm-generic/vdso/vsyscall.h
> > index e94b1978..ac05a625 100644
> > --- a/include/asm-generic/vdso/vsyscall.h
> > +++ b/include/asm-generic/vdso/vsyscall.h
> > @@ -26,7 +26,7 @@ static __always_inline int __arch_get_clock_mode(struct timekeeper *tk)
> >  #endif /* __arch_get_clock_mode */
> >
> >  #ifndef __arch_use_vsyscall
> > -static __always_inline int __arch_use_vsyscall(struct vdso_data *vdata)
> > +static __always_inline int __arch_use_vsyscall(const struct vdso_data *vdata)
> >  {
> >         return 1;
> >  }
> > diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
> > index e630e7f..4ad062e 100644
> > --- a/lib/vdso/gettimeofday.c
> > +++ b/lib/vdso/gettimeofday.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/hrtimer_defs.h>
> >  #include <vdso/datapage.h>
> >  #include <vdso/helpers.h>
> > +#include <vdso/vsyscall.h>
> >
> >  /*
> >   * The generic vDSO implementation requires that gettimeofday.h
> > @@ -50,7 +51,7 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
> >                 cycles = __arch_get_hw_counter(vd->clock_mode);
> >                 ns = vdso_ts->nsec;
> >                 last = vd->cycle_last;
> > -               if (unlikely((s64)cycles < 0))
> > +               if (unlikely(cycles == U64_MAX))
> >                         return -1;
>
> I would actually prefer:
>
> if (unlikely(cycles < last))
>
> or perhaps:
>
> if (unlikely((s64)(cycles-last) < 0))
>
> which would have the nice side effect of getting rid of the annoying
> x86 special case in vdso_calc_delta().  The former version is
> compatible with U64_MAX, whereas the latter version would need the
> error case to return last-1 or similar.  The benefit of the latter
> version is that it can survive wrap-around.
When you say if (unlikely(cycles < last)), do you means if
(unlikely(cycles <= last))? If __arch_get_hw_counter() return U64_MAX
every time, I don't think cycles can be less than last.

Huacai
>
> >
> >                 ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
> > @@ -91,6 +92,9 @@ __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
> >         if (unlikely((u32) clock >= MAX_CLOCKS))
> >                 return -1;
> >
> > +       if (!__arch_use_vsyscall(vd))
> > +               return -1;
> > +
>
> NAK.  I don't think this is helpful or correct.  It doesn't appear to
> do anything valid, and it's racy.
>
> >         /*
> >          * Convert the clockid to a bitmask and use it to check which
> >          * clocks are handled in the VDSO directly.
> > @@ -145,6 +149,9 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
> >  {
> >         const struct vdso_data *vd = __arch_get_vdso_data();
> >
> > +       if (!__arch_use_vsyscall(vd))
> > +               return gettimeofday_fallback(tv, tz);
> > +
>
> Ditto.
>
> >         if (likely(tv != NULL)) {
> >                 struct __kernel_timespec ts;
> >
> > @@ -189,6 +196,9 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
> >         if (unlikely((u32) clock >= MAX_CLOCKS))
> >                 return -1;
> >
> > +       if (!__arch_use_vsyscall(vd))
> > +               return -1;
> > +
>
> Ditto.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
