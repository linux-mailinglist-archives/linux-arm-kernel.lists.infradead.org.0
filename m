Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A148EA22B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 19:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5DKJprHZbeZH2Iqso9uWKXALseRYdjw/td5AerKz30=; b=rHAmbQ9qksFuzf
	7U9L1NSXUl3KnUuAcmuHb331PTVHLPxTlfykiLMHJuX3yN9gDSkZrbkU+gSgAybKW1ulMQwb28AHL
	/5P+bsOcItYND/USJxrNv8bBK4UoUOf+sEnjOz94gjPFUlIu63b5TZCBaAVKeC7YMoym6aVUrAB/h
	C5k/CdXFRhOq441ZXonwATCOyh0TTDj6bJ1i4/OIgNhO0fgE+O+PI9ZKOzgYiRU1IGRCKRLk572Mi
	Y9bJ3GrsmV4CTlDGxpiNIwny25PCdBH3y8FNHiXyteGIO0NO70E7Tk/+WRd2ztLxkYp8Yd0gq0pHV
	knDgp0talh8WkRiJ2MIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OWh-0004wo-1L; Thu, 29 Aug 2019 17:48:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OWR-0004wQ-9M
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 17:47:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id 26so195742pfp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 10:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0xvDFXohsTBiXQteUhF//5H4PlMVw/jPy8bTloT6sZ0=;
 b=fFRWa3CUxlEe4Zp3arLzv0l9uJ5VFCXzlxp7hwuyHTspodZ4d0KlP1SEtSURGaGnDD
 NpjlV4bLNpEZ9dYCXXrLvBBUwpbpLSVGgy2n1j5Kno7RuIHtWFph5O7jqi8wzHVHUfgh
 hHB+twcs0O8tbyltexBmXk7tgghg35kUiw3WmGt0BCJuvNJd7OwQTPRMQ6hjgUBP6Ca5
 bKbNxsIlwDYjUgro8pvYejc07lknU8/m+1dBYI0PMmQbk94cvhK96H+zyQQt+GOowZuZ
 kb/v5PDZO17NN+6W8/x5TMRQ6xU8J1p8NxwRZl395l/VonfFwVkTyw9ONPzKU4KjaIzM
 XK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0xvDFXohsTBiXQteUhF//5H4PlMVw/jPy8bTloT6sZ0=;
 b=NhmDcsyfIT0jOmEq0QrvS8+x7X38U5DM2CjAui294pgjRInPgieELc+y8K1j12R+gt
 5U7anjTvAc/rgGRQ6fxln2INRWShrP+/Uz/wkwg//7MOhDNtA8ceXFOfN/aUVPeoJ2XW
 aafrWaD2r2/D91HUi6jjOuZeDwm5GbEgu4W6Dj0Ko7xhRIRO9s5shT9YgGQhmIA+SM3H
 NPXI+LfyTUt6KXRy0xuzfRs/xA5Nqav3ZY2keetEdAR1meXBIpSilN3SoQmOW8Q5tKFO
 WCSAYLpORpnjaE7DeYJUR6pZJfukLasALyciaJY3C+ENwTKe3A0iAiHA5oNILrerGtUt
 Rtmg==
X-Gm-Message-State: APjAAAWmWWvSos8sfHZvNWCItrBm+s2oFGKaEJm1EajNi7XV6uFsT1n1
 lW+YkH2p7c2LjaTuJM6TU6d7irmJxvdddhpo1voajA==
X-Google-Smtp-Source: APXvYqxq90no7VcBcm4J1ASuW3u/DGByPmO36ANysRUYdi9XY8JNfjdFRB3JuVAqolGWEE6gOnsE3jSeweKXDDtJGOY=
X-Received: by 2002:a17:90a:3ae7:: with SMTP id
 b94mr11295208pjc.73.1567100866053; 
 Thu, 29 Aug 2019 10:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-6-will@kernel.org>
In-Reply-To: <20190829154834.26547-6-will@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 29 Aug 2019 10:47:34 -0700
Message-ID: <CAKwvOdmRa+cc7tEzHrOwcDt28OmAHEWiysy64FzJCU6d25k5QQ@mail.gmail.com>
Subject: Re: [PATCH v5 05/10] arm64: atomics: Remove atomic_ll_sc compilation
 unit
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_104747_356702_E9933DCB 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tri Vo <trong@android.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 8:48 AM Will Deacon <will@kernel.org> wrote:
>
> From: Andrew Murray <andrew.murray@arm.com>
>
> We no longer fall back to out-of-line atomics on systems with
> CONFIG_ARM64_LSE_ATOMICS where ARM64_HAS_LSE_ATOMICS is not set.
>
> Remove the unused compilation unit which provided these symbols.
>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/lib/Makefile       | 19 -------------------
>  arch/arm64/lib/atomic_ll_sc.c |  3 ---
>  2 files changed, 22 deletions(-)
>  delete mode 100644 arch/arm64/lib/atomic_ll_sc.c
>
> diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> index 33c2a4abda04..f10809ef1690 100644
> --- a/arch/arm64/lib/Makefile
> +++ b/arch/arm64/lib/Makefile
> @@ -11,25 +11,6 @@ CFLAGS_REMOVE_xor-neon.o     += -mgeneral-regs-only
>  CFLAGS_xor-neon.o              += -ffreestanding
>  endif
>
> -# Tell the compiler to treat all general purpose registers (with the
> -# exception of the IP registers, which are already handled by the caller
> -# in case of a PLT) as callee-saved, which allows for efficient runtime
> -# patching of the bl instruction in the caller with an atomic instruction
> -# when supported by the CPU. Result and argument registers are handled
> -# correctly, based on the function prototype.
> -lib-$(CONFIG_ARM64_LSE_ATOMICS) += atomic_ll_sc.o
> -CFLAGS_atomic_ll_sc.o  := -ffixed-x1 -ffixed-x2                        \
> -                  -ffixed-x3 -ffixed-x4 -ffixed-x5 -ffixed-x6          \
> -                  -ffixed-x7 -fcall-saved-x8 -fcall-saved-x9           \
> -                  -fcall-saved-x10 -fcall-saved-x11 -fcall-saved-x12   \
> -                  -fcall-saved-x13 -fcall-saved-x14 -fcall-saved-x15   \
> -                  -fcall-saved-x18 -fomit-frame-pointer

+ Tri (who implemented support for -fcall-saved-x*, -ffixed-x* in
Clang).  I won't be sad to see the use of these flags go.

> -CFLAGS_REMOVE_atomic_ll_sc.o := $(CC_FLAGS_FTRACE)
> -GCOV_PROFILE_atomic_ll_sc.o    := n
> -KASAN_SANITIZE_atomic_ll_sc.o  := n
> -KCOV_INSTRUMENT_atomic_ll_sc.o := n
> -UBSAN_SANITIZE_atomic_ll_sc.o  := n
> -
>  lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
>
>  obj-$(CONFIG_CRC32) += crc32.o
> diff --git a/arch/arm64/lib/atomic_ll_sc.c b/arch/arm64/lib/atomic_ll_sc.c
> deleted file mode 100644
> index b0c538b0da28..000000000000
> --- a/arch/arm64/lib/atomic_ll_sc.c
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -#include <asm/atomic.h>
> -#define __ARM64_IN_ATOMIC_IMPL
> -#include <asm/atomic_ll_sc.h>
> --
> 2.11.0
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
