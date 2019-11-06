Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A52F2003
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 21:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTa7u6I+A7TlLHHOscqxz6280LvnB63E9ifkK3M2Tzw=; b=fHmhuBR12910lU
	pztriEJJHtLKrz1tnQ+TxeDNfwsf46tsSZwx4OYd+yBD4cjk70DOE7KVT3WCGmhRmxsLKMATcjr/k
	WQSpNuu4VubGX6bpvQJD3prDvAXd0qqJ1nStgwMjzxPGdnf1zTUDQBFf9XGVtE9xncxoP/bhUfvKC
	HE1q5sEjOSwRCXw8B3fRiGPRW8Ui79tSqgMLJxq+W2ERQ6t8n8kRzYOnnrbknrU6UcN2Z4CuvBvNj
	3VFRx5S0mbNXBBHuEN0j8+7BPebSOarR46uHeCzk4MX0JqQpztMjGz/JJArdvUVF04Ha5H2lztWp8
	yu9cmJRMVU+9NbUYrkrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSS5b-0003Gb-Oe; Wed, 06 Nov 2019 20:39:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSS5U-0003Fm-Ba
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 20:39:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id s5so11554735pfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 12:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bp86L5fucSA+9Bwlt84/eQbHaJRbEE/iIVDIU2TrYmM=;
 b=CrBxheWL+VkOfPX3aTBccoLvNQF92thO3oi5LNHeY04/wZsBJ5+Awp3yG38gVaW419
 EwFnyiPDR1gnnZmr8ul0W/yKVfgIK5xZNdfgklRC9owvzvrb5YtTfIJlYj3tqqOBxrYA
 puDhDKyZABgAkq3XZb5IJ/rCNzuAn76ZWc52ybg9wLNMg+z+ZgcGsKJOYHhRkT6tP0wM
 ec8iwNatVcZ1mqzjbPOeUiHln+ne0fBBsTlHbQGoAkvksK/Txg3rLgikXk+7vSpyZ9Zz
 Pee10GCisuUq4SYMJ+mByVVfZzuStCOWn9eeJ1oEBMVnENoJixSlbPeRYZP5cyGdf0TZ
 UunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bp86L5fucSA+9Bwlt84/eQbHaJRbEE/iIVDIU2TrYmM=;
 b=PQdQ++1bgUepU+LytoxWaUdlTfZCJLXQxBml8oQ6IQinTOr7UfAwmb7aLH23s3IY8v
 X6iSneyW14madoSu+hnZOT1LeuC5NLQ25lSd0u8dvkI+wZ9r69LExdaAvVyDatbHssEq
 YyfpRYjSIVKcmreF0JZS1QubIlLAP823LF1HT+Vfpoc5G8bEuK6kR67uhsHSXSOYViSH
 pGzMCeu5CCH3HJvfANgMZi8XS9KfauvmzOW/dOKWnm3q9GdEdyBlejsjaOjgg2y8rKMa
 r1qm6MWQ5KVA50nLSbJkOaYabAYB+4vadusYptNs6c8977oY4s1/BAZO6aY47eJ9Yo0V
 FMxg==
X-Gm-Message-State: APjAAAUrdVYygvGU7i+H5+nV7clCHUa1kuDl/umDjW0YUO7SrmmK9jjz
 PSJAIRMvDWE/VOwr8+BI7WcsPJSBm7e/dFT20RxEgQ==
X-Google-Smtp-Source: APXvYqzpFAhempBHWwl6LQCKUCJ19FjjZGAWA1oF9chpT593c5XiKJbvgs2xxIRCQukRs4o+FH4Rat+2Sk/7ytURtoo=
X-Received: by 2002:aa7:8e56:: with SMTP id d22mr5854475pfr.3.1573072766085;
 Wed, 06 Nov 2019 12:39:26 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-11-samitolvanen@google.com>
In-Reply-To: <20191105235608.107702-11-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 6 Nov 2019 12:39:14 -0800
Message-ID: <CAKwvOdkGUn+X2HCnV7zM8ruCPYBsRi_UD8JY4VW4FbuOam8Pmg@mail.gmail.com>
Subject: Re: [PATCH v5 10/14] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_123932_396449_470C2831 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 3:56 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Re-LGTM

> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
> index 8939c87c4dce..0cde2f473971 100644
> --- a/arch/arm64/include/asm/suspend.h
> +++ b/arch/arm64/include/asm/suspend.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_SUSPEND_H
>  #define __ASM_SUSPEND_H
>
> -#define NR_CTX_REGS 12
> +#define NR_CTX_REGS 13
>  #define NR_CALLEE_SAVED_REGS 12
>
>  /*
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..5c8219c55948 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>         mrs     x2, tpidr_el0
> @@ -73,6 +75,11 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +       /*
> +        * Save x18 as it may be used as a platform register, e.g. by shadow
> +        * call stack.
> +        */
> +       str     x18, [x0, #96]
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +       /*
> +        * Restore x18, as it may be used as a platform register, and clear
> +        * the buffer to minimize the risk of exposure when used for shadow
> +        * call stack.
> +        */
> +       ldr     x18, [x0, #96]
> +       str     xzr, [x0, #96]
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.24.0.rc1.363.gb1bccd3e3d-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
