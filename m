Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228C015635A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 08:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+ICcZlFUJV10hF1Uo1LbmPwKdquFTknGQBD18DK12E=; b=gG8SMjjLb2Z3o2
	1QeB3TTep3o691hbF47wT5unJGP4eUNUbDJL3bXhrcTgzh23cP4CGPDvZ737NfL/lqmsC7He5Hm/4
	LBosj5EYQ5bG8fE87fMxSedk2iMQXwDLJbKTTcxNlHLK/GWstUYFJmPkZBSi5ys3pXGc/1opRJbgT
	KnUp0/eEkQhpjJzUf4LSSVetBVObZXTG7UAWjI0lE4ODPhpUDV+LKjepdIjThs3rf1O48aaD6CVYS
	jX6TMl1GLBg/Lcj9WiQpDUh5bRZSoH4uZI5yhRSf+WdYlRAfGiER0EaqjXhzoeL6Chfem3Q08g19S
	ixQgFkEw+h317Weg7qAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Kx9-0004PA-Jz; Sat, 08 Feb 2020 07:54:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Kx2-0004OI-Dz
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 07:54:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id s10so4738958wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 23:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7TqSOzSAKSsYvnnzVEi6urtzhXp7OVeHxDe+9KpIZTA=;
 b=rWARtL0ukHQNT+TvxZs4+kgMqutC0CeHhMoIImJkHjHbjuSMGdKEaRE5StVVfC0QJv
 tjE9kWjEJE+cmubyMlDpX0/rrqdN6to5mwVx5uJ5/Xwdu0Sy/KwVMWmeXQYiAyVhKTSS
 bfr8u9vuJSFc/QbXQ16RShd17CYFyMZ7Jo/Qab7ehHCnwuLXTZ9iISvsFCZM+uiMsn95
 1P6lmVqElXlhFF5AJJlDpHrKO0PgkaOU1+3U6aJPqB0YKyP7GMLhQ0HQAP5kUt5jOHPB
 jcboylyGULeGJ2jr0i65e/J52lVeSn35T8xmCN8V2Zq2v68tocyXlS817obp+iWH9TzC
 P95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7TqSOzSAKSsYvnnzVEi6urtzhXp7OVeHxDe+9KpIZTA=;
 b=rk+l6FnfFCIDejimkqQQMooY2AxGlOdFKFBhq79/kIv7zyClODMYvrEAUWMuKzhfsE
 4TywiV3jBNI8ckkRAeMoUAZhDWTXCiSUDC+vAS1i8lmF1pe2H42KG2x+hiHA1i+9AGSp
 6TiBpVXH0rVGHVAWlXhCEebOtPMZuhKGhw/3LahhY58jHGy8R5J5qCbvMTHLVlCxAeBW
 aBiHEqpJggWR3KWs678Ak8LE3uOT/xqnPfP0vmH1g/GAZ6w66tcNmOMsvpwWgEYdvL9p
 ut2ksO7P5IpCLMYky/4SuRpg3iPE2ulpp9MbRBDkS8IMPfiV85KVu7Kr+CWaFyO9lD1g
 XliQ==
X-Gm-Message-State: APjAAAX5v2mz9MwqAyaNYxH/FGmWeb74t7S3hpQQPG5bM2qctfYqztiF
 mtElGbwCJ09/sNDR+drA2SVgds9Z6LFSIYoPgRqzLA==
X-Google-Smtp-Source: APXvYqynvhr5YGpRwcBYP4yDLNbMRX0LTg2KUMPlXfyWVZaJCpY1l4H20puJJGHrcYZXRtch/ngUJNQNXHmz5wJ6Zfg=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr3328511wmk.68.1581148490179; 
 Fri, 07 Feb 2020 23:54:50 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook>
In-Reply-To: <202002071754.F5F073F1D@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 8 Feb 2020 07:54:39 +0000
Message-ID: <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_235452_486768_310CEDF1 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
>
> When the uaccess .fixup section was renamed to .text.fixup, one case was
> missed. Under ld.bfd, the orphaned section was moved close to .text
> (since they share the "ax" bits), so things would work normally on
> uaccess faults. Under ld.lld, the orphaned section was placed outside
> the .text section, making it unreachable. Rename the missed section.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/282
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Manoj Gupta <manojgupta@google.com>
> Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

As Nick points out, the *(.fixup) line still appears in the
decompressor's linker script, but this is harmless, given that we
don't ever emit anything into that section. But while we're at it, we
might just remove it as well.


> ---
> I completely missed this the first several times I looked at this
> problem. Thank you Nicolas for pushing back on the earlier patch!
> Manoj or Nathan, can you test this?
> ---
>  arch/arm/lib/copy_from_user.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> index 95b2e1ce559c..f8016e3db65d 100644
> --- a/arch/arm/lib/copy_from_user.S
> +++ b/arch/arm/lib/copy_from_user.S
> @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
>
>  ENDPROC(arm_copy_from_user)
>
> -       .pushsection .fixup,"ax"
> +       .pushsection .text.fixup,"ax"
>         .align 0
>         copy_abort_preamble
>         ldmfd   sp!, {r1, r2, r3}
> --
> 2.20.1
>
>
> --
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
