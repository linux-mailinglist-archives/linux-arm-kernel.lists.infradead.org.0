Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6918BB49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFobDWjR/Kd0f8Bvp24uursQxlUjm4P6cxFJFI0g2NU=; b=ew7htVleSC0g+w
	FuSdQky1v2qxBZJmsoF/E7gKiUUkqI9Ih+LPPFeqzbJhzsXP4l8MjcQE1JUkJuqRK5wZmQBMtO59z
	i6wzstHPPM04hCB0CNUUNPJPOuFXT0RNY8u76Abg4cv18khpsGfkASjfTDCziigNfHev/cq7qBCmW
	C3BZo/G3sN7uk6jKow9gCDjiRDo5MkMIA9RRsY4R6EhodbWs8Hoc8SPWuJvEeESPwYmq9Lc4OE8rT
	VeAyIUYM4soMVHK1jPpxnFIVfNYIw1wSEi5WzDUJyiGfEsNK7fHKRMIhff7SQqSxqfSBWTIM6WVSM
	Yb/9lLW4j+PdQxc+X+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExHA-0007XW-Rd; Thu, 19 Mar 2020 15:40:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExGx-0007Nw-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:39:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id x2so1616465pfn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 08:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OJgQNwFa53gC09TOaQbw283OU+sAvTexYYepz9mHTvk=;
 b=JCHznEO1d/dPI9KmbxT2UsYTSPVWGTO0JQFu8zE9Fku9PNaj9S2RVahq9q4azOe7TY
 DB3r4LVZshUvFI+JziN5cuQI/p09dpe9ivMspo3Iq1qRGmMi13twglOy9KFGWW26IvGI
 /SrsvEs0J7F7Iwd7E+0B9+XZvr4/3yL7Y77tgOn2DzNnZi1x5uxpDxHCv57yLv1CgMKR
 TlT9yP8UwkscK8hacTGD1u7xfMWgMcmX0NFv+5i29qpEHOxTINNISLyU0U+4pivtDMLi
 eBm6ksRB4i1fRQp4DTWW6Gx9kGvr03dHsByqHng7qkyKoYoQpWoneR7lMELh06kh7VvK
 Bk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OJgQNwFa53gC09TOaQbw283OU+sAvTexYYepz9mHTvk=;
 b=eZJAGQVxPr4DcT1q3rgAG6qm1NCMp8sfUaP1mVCx12eatDBOiHMfa08B+pbN8erppx
 w8I5R2KzrEH4+sOPDKMqjZ9QJuSUGBBnHRV8hyYeYuNahm2D5tnPdfp3o9u5dkvr70w4
 0DOfHLHsxwYcWl25iy+F12Kc4CnaIuMdM3YnuZ1SdwRE5pnNAc31xR6RMJakoXOpGi5H
 fHQft1kOEo4uJhMVo1NnrYOmAxfpETlv84PFtA+63Ki2WOMw6dMIg+UT7xMp+1TQe9G+
 +TGJAt0Sz++4QiaM9Gfk9IcUqoJRrXpigOycfz7Zpi4sLnRtZ4Noo/whTAvLpQwvfzj5
 I3PQ==
X-Gm-Message-State: ANhLgQ1h7OOq+hnz+xM4NxgDAyO6obFMxZ9YsfjaLlxghsaLenQ8nHgL
 25FJ6rbhEiyBa+FTr0XX6cfD4Sp1TWU4sNzZ2AluOA==
X-Google-Smtp-Source: ADFU+vvmDa2IbJuoRz7OqaXc97kIF7ReJt2HPcxDcSY6tuLJIrsnsTmzlMTMcc9bp5uVkabytdEutxv4gci9jRtn7xk=
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr4577798pfd.39.1584632387767; 
 Thu, 19 Mar 2020 08:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
In-Reply-To: <20200319141138.19343-1-vincenzo.frascino@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 19 Mar 2020 08:39:36 -0700
Message-ID: <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_083951_528418_37445B6E 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 7:11 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> The syscall number of compat_clock_getres was erroneously set to 247
> instead of 264. This causes the vDSO fallback of clock_getres to land
> on the wrong syscall.
>
> Address the issue fixing the syscall number of compat_clock_getres.
>
> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/unistd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 1dd22da1c3a9..803039d504de 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -25,8 +25,8 @@
>  #define __NR_compat_gettimeofday       78
>  #define __NR_compat_sigreturn          119
>  #define __NR_compat_rt_sigreturn       173
> -#define __NR_compat_clock_getres       247
>  #define __NR_compat_clock_gettime      263
> +#define __NR_compat_clock_getres       264

This seems to match up with the glibc sources:
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/arm/arch-syscall.h;h=c6554a8a6a6e7fe3359f1272f619c3da7c90629b;hb=HEAD#l27
Here's bionic's headers for good measure:
https://android.googlesource.com/platform/bionic/+/refs/heads/master/libc/kernel/uapi/asm-arm/asm/unistd-common.h#240

I assume the _compat_ prefixes are the aarch32 syscall numbers?
Otherwise here's the list for aarch64:
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/aarch64/arch-syscall.h;h=c8471947b9c209be6add1e528f892f1a6c54f966;hb=HEAD

Looks like 247 was __NR_io_cancel; that's a subtle bug I'm glad was noticed!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  #define __NR_compat_clock_gettime64    403
>  #define __NR_compat_clock_getres_time64        406
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319141138.19343-1-vincenzo.frascino%40arm.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
