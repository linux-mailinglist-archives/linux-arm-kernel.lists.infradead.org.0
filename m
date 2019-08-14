Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C048D7CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXiTmrsgabaqrekvGK0X2Fb31UDahv5j0cHPn/L6Y9M=; b=c2iN3RM1HklpWZ
	AGjxbBDEQ5zj8rJMsGW2pBaHb0j4mZ9uAvpMiAiEpqIVmuJdAHXg4/ZOPW5Qk3pJ7jdsp/uQBf7eo
	iENUYORGctee4uSLL8q3urrzaQP53PTLpgnW7wwkbKjz5WdECWve7JNQ89LdXIkv8SjjvyUq2vPY0
	vueDuuLBb9C6sbbwu6B0IU7DUXid0WvQGhipTuobZ8KA9vdJ9mCHkg1gdXgMKE5yjUA44a62PCukz
	U1Rudx8PApS87yxMEzDZAIQgDEkx+fl3pK+rEo7xzP/SfdLfi+KD1sKqcVPFpKE4bJTIckc7lWhwU
	ndmGWO9KjvdwG0sQVEgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvvh-0004To-Jc; Wed, 14 Aug 2019 16:15:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvvM-0004O5-Gc
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:14:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so9710942wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 09:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2Vb9pRuewyB7X8dmpxJboh/540awqzNX/YAPeizCG8=;
 b=hP6kX/FVHVqqZerZsbPksnoiujOfy+LBYL+vUym2xSKUm0idVsRnQSwxtTXu38OLC1
 g7RfKwJrTbBJ40sVBr+bMyqIs5plMNeywbXaRPio+VX/3XIyhe1uJEgUWo1Nq/kyvqzP
 fQVT0lMxNzXn3k/A9L2/BRrSfHqid+46jCgDJY++V3HzDPyVR/k22PZxEHIWhHBi+pBO
 ckVl9KHicDE2xTcNfX3ebmJXZCtfxY4NBGChT5i7eKDQoy9tZCLXSJN8DkURA4nnL7IH
 VsoFdHNkLjT7BGMcHN6BQ5DyQud4Z5iexEluVfz0DoYpjB4lDNr4YYEzdoLVsRVnwpXD
 1szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2Vb9pRuewyB7X8dmpxJboh/540awqzNX/YAPeizCG8=;
 b=Jbk5f3+VZ6EqnfK9PIr7yAow+H2oteoTQEom8hAwrpofeHQnGKvrH3Blic5aKDFoFE
 QtxXkLeLlBQHZCI6vg7HIZODxeyGG35aguT5PDf3rWWmfsEbb0ZpHOXH29lTPPbRV4yd
 yg6wsAS20UzFoHpB9OC0f1V4QZySBH8/WlphhF2R7DGNyn64b/9l5Xui4+dfLaufyTYk
 xBoOTT60yQstgM3U3nH2C0P9XaDAkfe/v4+plSHnn2BbY4y8EPiC3BMC80tsy1vI1b1h
 BlLdPrHjQXFrNCSnTStZMZSBiH7Fv1F6wbqnNCW55F0APhYCJoyZ8u+rhAyjUUPEgFuR
 SHHw==
X-Gm-Message-State: APjAAAWUfqrpHdyu2uhtsBKPStZPJbxOmbMoZ8kLrsiMHBfY9BIS6zvS
 30TYXsNn7e47pKF0O+5vSY30mDJCNGlN8yiaSVuhi20nF5o=
X-Google-Smtp-Source: APXvYqw7R4gJ8Wt7CCX3V4131yqsLCQKNrpQa0DPB4hst9pYKhtNS5ThTKVF8a/aJR+ruxVVVBVxz5S8Hd1BGr0sBJc=
X-Received: by 2002:adf:eb52:: with SMTP id u18mr519212wrn.174.1565799294784; 
 Wed, 14 Aug 2019 09:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <201908131602.6E858DEC@keescook>
In-Reply-To: <201908131602.6E858DEC@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 14 Aug 2019 19:14:42 +0300
Message-ID: <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_091456_674137_1682ADEC 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fangrui Song <maskray@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Smith <peter.smith@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
>
> It seems that LLVM's linker does not correctly handle variable assignments
> involving section positions that are updated during the SECTIONS
> parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> an absolute symbol explicitly") ran into this too, but found a different
> workaround.
>
> However, this was not enough, as other variables were also miscalculated
> which manifested as boot failures under UEFI where __efistub__end was
> not taking the correct _end value (they should be the same):
>
> $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
>         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
>         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
>   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
>
> $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
>         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
>         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
>   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
>
> To work around this, all of the __efistub_-prefixed variable assignments
> need to be moved after the linker script's SECTIONS entry. As it turns
> out, this also solves the problem fixed in commit aa69fb62bea1, so those
> changes are reverted here.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/634
> Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> Signed-off-by: Kees Cook <keescook@chromium.org>

Although it is slightly disappointing that we need to work around this
kind of bugs when adding support for a new toolchain, I don't see
anything wrong with this patch, so

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>


> ---
>  arch/arm64/kernel/image-vars.h  | 51 +++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/image.h       | 42 ---------------------------
>  arch/arm64/kernel/vmlinux.lds.S |  2 ++
>  3 files changed, 53 insertions(+), 42 deletions(-)
>  create mode 100644 arch/arm64/kernel/image-vars.h
>
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> new file mode 100644
> index 000000000000..25a2a9b479c2
> --- /dev/null
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Linker script variables to be set after section resolution, as
> + * ld.lld does not like variables assigned before SECTIONS is processed.
> + */
> +#ifndef __ARM64_KERNEL_IMAGE_VARS_H
> +#define __ARM64_KERNEL_IMAGE_VARS_H
> +
> +#ifndef LINKER_SCRIPT
> +#error This file should only be included in vmlinux.lds.S
> +#endif
> +
> +#ifdef CONFIG_EFI
> +
> +__efistub_stext_offset = stext - _text;
> +
> +/*
> + * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> + * isolate it from the kernel proper. The following symbols are legally
> + * accessed by the stub, so provide some aliases to make them accessible.
> + * Only include data symbols here, or text symbols of functions that are
> + * guaranteed to be safe when executed at another offset than they were
> + * linked at. The routines below are all implemented in assembler in a
> + * position independent manner
> + */
> +__efistub_memcmp               = __pi_memcmp;
> +__efistub_memchr               = __pi_memchr;
> +__efistub_memcpy               = __pi_memcpy;
> +__efistub_memmove              = __pi_memmove;
> +__efistub_memset               = __pi_memset;
> +__efistub_strlen               = __pi_strlen;
> +__efistub_strnlen              = __pi_strnlen;
> +__efistub_strcmp               = __pi_strcmp;
> +__efistub_strncmp              = __pi_strncmp;
> +__efistub_strrchr              = __pi_strrchr;
> +__efistub___flush_dcache_area  = __pi___flush_dcache_area;
> +
> +#ifdef CONFIG_KASAN
> +__efistub___memcpy             = __pi_memcpy;
> +__efistub___memmove            = __pi_memmove;
> +__efistub___memset             = __pi_memset;
> +#endif
> +
> +__efistub__text                        = _text;
> +__efistub__end                 = _end;
> +__efistub__edata               = _edata;
> +__efistub_screen_info          = screen_info;
> +
> +#endif
> +
> +#endif /* __ARM64_KERNEL_IMAGE_VARS_H */
> diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
> index 2b85c0d6fa3d..c7d38c660372 100644
> --- a/arch/arm64/kernel/image.h
> +++ b/arch/arm64/kernel/image.h
> @@ -65,46 +65,4 @@
>         DEFINE_IMAGE_LE64(_kernel_offset_le, TEXT_OFFSET);      \
>         DEFINE_IMAGE_LE64(_kernel_flags_le, __HEAD_FLAGS);
>
> -#ifdef CONFIG_EFI
> -
> -/*
> - * Use ABSOLUTE() to avoid ld.lld treating this as a relative symbol:
> - * https://github.com/ClangBuiltLinux/linux/issues/561
> - */
> -__efistub_stext_offset = ABSOLUTE(stext - _text);
> -
> -/*
> - * The EFI stub has its own symbol namespace prefixed by __efistub_, to
> - * isolate it from the kernel proper. The following symbols are legally
> - * accessed by the stub, so provide some aliases to make them accessible.
> - * Only include data symbols here, or text symbols of functions that are
> - * guaranteed to be safe when executed at another offset than they were
> - * linked at. The routines below are all implemented in assembler in a
> - * position independent manner
> - */
> -__efistub_memcmp               = __pi_memcmp;
> -__efistub_memchr               = __pi_memchr;
> -__efistub_memcpy               = __pi_memcpy;
> -__efistub_memmove              = __pi_memmove;
> -__efistub_memset               = __pi_memset;
> -__efistub_strlen               = __pi_strlen;
> -__efistub_strnlen              = __pi_strnlen;
> -__efistub_strcmp               = __pi_strcmp;
> -__efistub_strncmp              = __pi_strncmp;
> -__efistub_strrchr              = __pi_strrchr;
> -__efistub___flush_dcache_area  = __pi___flush_dcache_area;
> -
> -#ifdef CONFIG_KASAN
> -__efistub___memcpy             = __pi_memcpy;
> -__efistub___memmove            = __pi_memmove;
> -__efistub___memset             = __pi_memset;
> -#endif
> -
> -__efistub__text                        = _text;
> -__efistub__end                 = _end;
> -__efistub__edata               = _edata;
> -__efistub_screen_info          = screen_info;
> -
> -#endif
> -
>  #endif /* __ARM64_KERNEL_IMAGE_H */
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 7fa008374907..803b24d2464a 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -245,6 +245,8 @@ SECTIONS
>         HEAD_SYMBOLS
>  }
>
> +#include "image-vars.h"
> +
>  /*
>   * The HYP init code and ID map text can't be longer than a page each,
>   * and should not cross a page boundary.
> --
> 2.17.1
>
>
> --
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
