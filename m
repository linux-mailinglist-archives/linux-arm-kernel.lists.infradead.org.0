Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A433A1F40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HVehUtG0/+s5DgSjmTu9KBHCLUURYNWk49FCpYGnkE=; b=RWNOJ5qNNIVWQC
	AS9sm1Ki5zvTnFWeOWB5VQ1x97oMXbkMvl8aRN2IybHr+xfvUq34l77OGvK6XoR+0aoxPl4Lqj5yB
	zcEo6QQrD0Zp4LOG4XWem4Eb2iJC1NPkyf04s5WwLpP6MWfdJcqJOd71vJ/SgDVOaF9rmNCEtyCTf
	dDWckigKHK+3WNi1NYBSqbJ2SiEwQZc9J1nH5gLwydg9WZ0HzUG9FZLzXRpzEdGKfGIWzylrKrGhN
	no46jbB/iHlsjf0oB2ymcLZ4cVPf3rEYM2oUAyZwySBMPg55yYPLUdz/jauP/+qyfD/FRfd5ww2oo
	EB2onJn1I+OfSHTWf7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MPU-000344-GL; Thu, 29 Aug 2019 15:32:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MIV-0000ll-GI
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:25:18 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5D2623430
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567092315;
 bh=izoNkph/QjwkRYkXPZQmm9ytluYnjBoc9TYsmIgqnSU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iUFipIVZ1HFIrEALnAF/EnoEcF209ZLWvRC4PEWbszkw/lCP9Yvj37ci8J+w7/hxQ
 zi/3IdAUX14zyQDtjJ0thyL4mPt5cSWzBq103mHEZpUO2EBt91zBEDCvu4xzO9SOzg
 6Vbq+bL+ekh6s4QH3C1lVJ97BVS4YmMDzILHOYCc=
Received: by mail-wm1-f49.google.com with SMTP id n2so2906137wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 08:25:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUU49xRZjHHOEwva4q2tiCfk8gBGWhAExJeWVM411GeiMDRE/zR
 Ai+8CUlrg+4wdjnU7kQmjM1gJ4LKRVcWDtUtsmVg7A==
X-Google-Smtp-Source: APXvYqw9u1fu+EHt/4WAojvjLjQ7rKpFezaEHESzZAnb7jZ2raRq1MIbYw3eQuXsuFrZUlLqFJAlw9hQa1Rszg/FXvs=
X-Received: by 2002:a05:600c:22d7:: with SMTP id
 23mr12807622wmg.0.1567092313279; 
 Thu, 29 Aug 2019 08:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-5-vincenzo.frascino@arm.com>
In-Reply-To: <20190829111843.41003-5-vincenzo.frascino@arm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 29 Aug 2019 08:25:02 -0700
X-Gmail-Original-Message-ID: <CALCETrVprrrR3TSVSAnHfLW4HDQG=gcVrdjmsk6ss6Z3+vKOBg@mail.gmail.com>
Message-ID: <CALCETrVprrrR3TSVSAnHfLW4HDQG=gcVrdjmsk6ss6Z3+vKOBg@mail.gmail.com>
Subject: Re: [PATCH 4/7] lib: vdso: Remove VDSO_HAS_32BIT_FALLBACK
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_082516_145306_FA91586A 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andrew Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 4:19 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> VDSO_HAS_32BIT_FALLBACK was introduced to address a regression which
> caused seccomp to deny access to the applications to clock_gettime64()
> and clock_getres64() because they are not enabled in the existing
> filters.
>
> The purpose of VDSO_HAS_32BIT_FALLBACK was to simplify the conditional
> implementation of __cvdso_clock_get*time32() variants.
>
> Now that all the architectures that support the generic vDSO library
> have been converted to support the 32 bit fallbacks the conditional
> can be removed.
>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> CC: Andy Lutomirski <luto@kernel.org>
> References: c60a32ea4f45 ("lib/vdso/32: Provide legacy syscall fallbacks")
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  lib/vdso/gettimeofday.c | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
> index a86e89e6dedc..2c4b311c226d 100644
> --- a/lib/vdso/gettimeofday.c
> +++ b/lib/vdso/gettimeofday.c
> @@ -126,13 +126,8 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
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

I think you could have a little follow-up patch to remove the if
statement -- by the time you get here, it's guaranteed that ret == 0.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
