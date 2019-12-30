Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3B512CFF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlrK5VyQotEVgC0G5sMeaBONaR8Tcd1fR98SUi9WCuU=; b=dSU0qbE9CVS+rm
	32Rra3UoS5q4QAt+IqhvfIqqs1CIGlZP96qRNIdmf7apGdgB6Y6iPYAGNTTRbadZ1CqjquEJM49Y8
	izivcXEHxGTcq1Bo+Os9LMZfByTUVOeKyREpti8V5JYDfKXdDp2cjBBlbekRw0GTg0tDgr03vGnPB
	304wYFSjT6zf3ERtMGFFbJWujCqsWanHQ19hojCgpr8idg5uDYuOdX/y7V+RlMdYDMT1QSJS9KqMp
	fDoIeBDjnmZAL2G1s1saqFs6ZilEk2K7SUZKdPac+NaYT5U75rfJosXv6PDdzjMBGAr0zVDMCmWvx
	BJOOA5uM4MOG6gSXWopg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilu9c-0006CP-H0; Mon, 30 Dec 2019 12:28:12 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilu9R-0006BB-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:28:02 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mhl4Q-1jPNls0umG-00djee for <linux-arm-kernel@lists.infradead.org>; Mon,
 30 Dec 2019 13:27:56 +0100
Received: by mail-qt1-f182.google.com with SMTP id d18so26820508qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 04:27:56 -0800 (PST)
X-Gm-Message-State: APjAAAUIDwzY3LZdk8xkTYCvYqO3rTechYl7IjkRv3Z6Eg/HvtNQsNSk
 Mcszxz2OYngYMPXberjIMzP+DIhob0X5Dx2U25w=
X-Google-Smtp-Source: APXvYqxPg18QcBCheXEg57bO676E88LDtMzW6UpknzYUThTzCz6Q+c1Pcfg/qqj52aosJr397+kYQUCE06+nF/bwaDM=
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr47462525qtr.142.1577708875107; 
 Mon, 30 Dec 2019 04:27:55 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
In-Reply-To: <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 30 Dec 2019 13:27:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0QGtjygLJUWX_1-s1vfCzE6UoOzrb+OZWwjaBdh=RpVQ@mail.gmail.com>
Message-ID: <CAK8P3a0QGtjygLJUWX_1-s1vfCzE6UoOzrb+OZWwjaBdh=RpVQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Provags-ID: V03:K1:xdzi0CXlN0HIr7N/t79O70wzsPwDDrOnLAAAwmfcxckeQMiZmB1
 JY8tXberiBv2Rx8u2F9gn7KAyuX44EZamjNXoQmyDTUPxZM/yRSci8T4sHoakAY/AclwDps
 75THcUikNplTodUP9Wc4PhlsbE3ZtMX0nLqgAD8g4pqenHLCBOGG9zx5iTKLtI7tS+Q886j
 OI7KizDjG15vn6hBu2BXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oM9cd5EmYWM=:y4Ux5BQVOqDamWdkvckA5M
 kWoVpvTP4nFxOmrc6ZkoXY5NLL8ldvQP6dRs2TqjenasN/aFXf6QpNfInP2ArH9n77Z6djVx0
 DGUpo2EKjfSS0jjtLa7448VGpE4Fcq0kGh9wYsYuX7YR7oW5KZfvXPfSaDRJCgqtKcnStCEpJ
 6L6WhAqNwSF2yaTunCTiMilvABkRwYPBIBo0JseD0H+Uls3JKvjuejludoyRBVObURdiepJSJ
 aeA9jVENHV9zB7HFXWyjDzKOyMgRp+wXpSqLBcH8+f4QQf3tRtlZz952cPS4zPF4ukovcFM5G
 5F0kwbI6eoV8wTi8DawEe1QPbZJ98pcO2WoreAn9yFNBkBwcS7BXj/pkWZrXOyHzvoTT7mCvy
 bkKOdHMyP3uTB7rLNVYci9qLZE8d2e91IDDSOt246am2I4FhFlAcymvJ+V83NiNvMfQLO/1vQ
 UqmHpkRRaTSIgIqPufGFnEVbKj3y720wsZlG7/X7IsDWwVDgaFdEA2Zg6DkYck5m6IUDFUsKs
 t9NxerWfCJkpccRS1pe+sZHd3Po2a0X6R5FNJsLlYlOsU407jC8xcXqKY//JiQr90IL9J3UD4
 v7ZgFElVg+iEjHLYE68sQ7tenDr1T698I/HLYbjS581aM3w61TaEK6eiJPZgjApApijw8WJWE
 MzXFI+lfW2O8/yQGWJJ9Luld2SAOrtuMTMWg/EAlcaZmW2OlMWHS7OJSQDcjhWixGUfjLdZkX
 mu6pJ3qRs1q8G0lYhaAP/yMqafwMQl7Aqq4T75FpIKkpNi12pkSuZQC3TDbpGC9SDSXcQynNT
 ftVqdhiXvEfKSbfVBkwyVNXV1kAS35i85Zzd0PhEMLwltZpRN9cevQiXbjRqZlPgzR4Jdlr66
 oMBeeX4ONO9P7dV1HocQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_042801_393645_2B1F92D0 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 3:31 PM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> In order to simplify next step which moves fallback call at arch
> level, ensure all arches have a 32bit fallback instead of handling
> the lack of 32bit fallback in the common code based
> on VDSO_HAS_32BIT_FALLBACK
>
> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>

I like the idea of removing VDSO_HAS_32BIT_FALLBACK and ensuring
that all 32-bit architectures implement them, but we really should *not*
have any implementation calling the 64-bit syscalls.

> +static __always_inline
> +long clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
> +{
> +       struct __kernel_timespec ts;
> +       int ret = clock_gettime_fallback(clock, &ts);
> +
> +       if (likely(!ret)) {
> +               _ts->tv_sec = ts.tv_sec;
> +               _ts->tv_nsec = ts.tv_nsec;
> +       }
> +       return ret;
> +}
> +
> +static __always_inline
> +long clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
> +{
> +       struct __kernel_timespec ts;
> +       int ret = clock_getres_fallback(clock, &ts);
> +
> +       if (likely(!ret && _ts)) {
> +               _ts->tv_sec = ts.tv_sec;
> +               _ts->tv_nsec = ts.tv_nsec;
> +       }
> +       return ret;
> +}

Please change these to call __NR_clock_gettime and __NR_clock_getres_time
instead of __NR_clock_gettime64/__NR_clock_getres_time64 for multiple reasons.

- When doing migration between containers, the vdso may get copied into
  an application running on a kernel that does not support the time64
  variants, and then the fallback fails.

- When CONFIG_COMPAT_32BIT_TIME is disabled, the time32 syscalls
  return -ENOSYS, and the vdso version should have the exact same behavior
  to avoid surprises. In particular an application that checks clock_gettime()
  to see if the time32 are in part of the kernel would get an incorrect result
  here.

arch/arm64/include/asm/vdso/compat_gettimeofday.h already does this,
I think you can just copy the implementation or find a way to share it.

> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> index b08f476b72b4..c41c86a07423 100644
> --- a/arch/arm64/include/asm/vdso/gettimeofday.h
> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> @@ -66,6 +66,32 @@ int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
>         return ret;
>  }
>
> +static __always_inline
> +long clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
> +{
> +       struct __kernel_timespec ts;
> +       int ret = clock_gettime_fallback(clock, &ts);
> +
> +       if (likely(!ret)) {
> +               _ts->tv_sec = ts.tv_sec;
> +               _ts->tv_nsec = ts.tv_nsec;
> +       }
> +       return ret;
> +}

As Andy said, this makes no sense at all, nothing should ever call this on a
64-bit architecture.

> diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
> index b08825531e9f..60608e930a5c 100644
> --- a/arch/mips/include/asm/vdso/gettimeofday.h
> +++ b/arch/mips/include/asm/vdso/gettimeofday.h
> @@ -109,8 +109,6 @@ static __always_inline int clock_getres_fallback(
>
>  #if _MIPS_SIM != _MIPS_SIM_ABI64
>
> -#define VDSO_HAS_32BIT_FALLBACK        1
> -
>  static __always_inline long clock_gettime32_fallback(
>                                         clockid_t _clkid,
>                                         struct old_timespec32 *_ts)
> @@ -150,6 +148,32 @@ static __always_inline int clock_getres32_fallback(
>
>         return error ? -ret : ret;
>  }
> +#else
> +static __always_inline
> +long clock_gettime32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
> +{
> +       struct __kernel_timespec ts;
> +       int ret = clock_gettime_fallback(clock, &ts);
> +
> +       if (likely(!ret)) {
> +               _ts->tv_sec = ts.tv_sec;
> +               _ts->tv_nsec = ts.tv_nsec;
> +       }
> +       return ret;
> +}
> +

Same here.

> --- a/lib/vdso/gettimeofday.c
> +++ b/lib/vdso/gettimeofday.c
> @@ -125,13 +125,8 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
>
>         ret = __cvdso_clock_gettime_common(clock, &ts);
>
> -#ifdef VDSO_HAS_32BIT_FALLBACK
>         if (unlikely(ret))
>                 return clock_gettime32_fallback(clock, res);
> -#else
> -       if (unlikely(ret))
> -               ret = clock_gettime_fallback(clock, &ts);
> -#endif
>
>         if (likely(!ret)) {
>                 res->tv_sec = ts.tv_sec;

Removing the #ifdef and the fallback seems fine. I think this is actually
required for correctness on arm32 as well. Maybe enclose the entire function in

#ifdef VDSO_HAS_CLOCK_GETTIME32

to only define it when it is called?

> @@ -238,13 +233,8 @@ __cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
>
>         ret = __cvdso_clock_getres_common(clock, &ts);
>
> -#ifdef VDSO_HAS_32BIT_FALLBACK
>         if (unlikely(ret))
>                 return clock_getres32_fallback(clock, res);
> -#else
> -       if (unlikely(ret))
> -               ret = clock_getres_fallback(clock, &ts);
> -#endif

The same applies to all the getres stuff of course.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
