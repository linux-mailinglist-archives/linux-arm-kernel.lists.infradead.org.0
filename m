Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ED5DD125
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 23:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztZYQ+4HW8NO8e/mwE0tg98P4Ws5RC50IkK14qOdz7s=; b=oiimMtWotTluan
	Cl2a0I+maB15mbBOUPBcRw+szERWuPAdPB/kNsOWmunTG/COWidwlV5+j68a0oDeYVaatmIWTw7XY
	xHOE6K/aGKJKXWaAiX9ad8PoDoq1ahgPpygVSA8Djb7BLxVIy6NhINdJSlQh/vmMbePcWsX3x/TzE
	ks1NhaVsaMvo4CvN/G4ZyV1Y37iZIYdtjejStWJfEAovo8Xtm+zTizJGXav2OqwFsno9qc4rkmjrM
	8EjXiN9wOTrqIP3E5FA3j2HRqu6uCU/Touab0s0rsek9i1bmM1HZP62Pz5nLJGZ/CxFLv7znmsmG8
	yqCpjGhQcrW+ShXZZBjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZie-0003op-5v; Fri, 18 Oct 2019 21:23:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZiW-0003nv-9n
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 21:23:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id i32so4014465pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 14:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vIoI90AJcGtmRzHkaXHGdwrJxP2gbeW0bBXLDxZIi6o=;
 b=kmFuT5Kg6bHVBqvSrwwjd80o3NyLk9kXgyAEqkBiecWeSw5sIbx2razxWIcHpKmuCx
 bJO2L0Jt09AzB11Ioy48fJTW8FR+EMVEr0M9zHJAcwWGJOQg3HRcf2WrQ1l4SzEXAZq4
 n6Xg7mC6TZcE9jyt02zaa38SwNptcs9lLZ8G/gPn1z84v6FiEYb28HVQX/UzL1C7GhyF
 PAoEIeSihIs40ESqTd4Oi5iDvDNXP4+cR6jf/BkW9ReFPCWFW0DLQ4SlZLRQeGvSHN7n
 CoZ3rxSv+LnWUEqcGvtveotIJsaouPfkBE7vIksnyOAEvvP1q7/C1giHe26s6vQXFvJX
 liOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vIoI90AJcGtmRzHkaXHGdwrJxP2gbeW0bBXLDxZIi6o=;
 b=t3l5v5sHYzNRR6BWHWhXA0D69RnjRQN+Xbn8kmt7rO2ilDLP6iWf/51ZrmNCNK/IKm
 37chDnt+odW4IrwhhmRKLUYH5KAF2Y6OGXcZrE3/3hGnfX9t3s/jPsI06qCMaax/Y7lY
 kfG/89AmKAhQQS4GofIp0iYyT5jbu8/gQe53mp7hc0yUeaw4lkM5YUVIeMRbCCvzTvF7
 Q4ZBBWUlvO1vlgUAlMYhu9BHXcvNZMduxTFRgTPW2IDgKNCyvwbzSZ1KHfjrKGiwL3bE
 +gLx4rWbXQINMhOwSQ8Qpf6Y1Cc/OoYqyeWByOUX8ScCjZj2mY5gnKb+0dGKOWb+s3kz
 rL5g==
X-Gm-Message-State: APjAAAVeZ1ECdw94z37gyPxJSP6gPlainDcfhVHKl+kgITzxYhP3qFnx
 8RAoZcxPY2RV/5AeclCy3vW5vgDKmOZ0m/3Zw6q6VA==
X-Google-Smtp-Source: APXvYqyiiPLOZOS1kQpsZ9qqN50RFADJX438WB0rEo22PxmnqtNJSl9IB/wB6WS07gKTHpmXSLKmBJieIge5XbhC8jY=
X-Received: by 2002:aa7:8210:: with SMTP id k16mr9015314pfi.84.1571433802129; 
 Fri, 18 Oct 2019 14:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-13-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-13-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 18 Oct 2019 14:23:10 -0700
Message-ID: <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_142324_364932_9A62D517 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:11 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
> kernel modules must also have x18 reserved if the kernel uses SCS.

Ah, ok.  The tradeoff for maintainers to consider, either:
1. one less GPR for ALL kernel code or
2. remember not to use x18 in inline as lest you potentially break SCS

This patch is 2 (the earlier patch was 1).  Maybe we don't write
enough inline asm that this will be hard to remember, and we do have
CI in Android to watch for this (on mainline, not sure about -next).

Either way,
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Makefile | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 1c7b276bc7c5..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -55,7 +55,7 @@ endif
>
>  KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)     \
>                    $(compat_vdso) $(cc_has_k_constraint)
> -KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables -ffixed-x18
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)
>
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>                                         include/generated/asm-offsets.h))
>  endif
>
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS  += -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS        += -mbig-endian
>  CHECKFLAGS     += -D__AARCH64EB__
> --
> 2.23.0.866.gb869b98d4c-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-13-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
