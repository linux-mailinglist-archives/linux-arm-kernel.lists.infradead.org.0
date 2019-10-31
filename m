Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EFBEB5F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hODtvVJqGWztphpepmphd3toGX4YcwlMZoNz7g00rZU=; b=WLmHgfuWnmYqjQ
	IjbtrfeqEydbHh5+u9/kQova3SM4PVlWmP7wekbo0bsySr+eKN7oMhsuykP0hW5FZy/CohWTJZi55
	y/ueF1CIYCzE9beBMJC9IdXvGpb8GrMgrx9QpUq1WrPdjF8pJYMi7FoKWnJhPurQpLafUpE3U67+L
	NYIY99c5nbSxA47HrZLArfQvSMNcTcbjlCaiBn17k/gufcdJd5Xn6GJ2drxJPxguC12nYKiImEmZ/
	M3+CTCi3cTJsXBQ7tzB6dnB8p1CU6zl5GQKTpKKvtRBVI8Tz6XuX7UNM6FIOq6yAT+JW2veKaWPR1
	srH492nPmDlZuIk3c4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQE64-0000OQ-9E; Thu, 31 Oct 2019 17:18:56 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQE5u-0000O5-M0
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:18:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id r1so4433469pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b+sTelK7MqY9vqwBDqCXPdhr5H6iAxzQESslNr9zDOQ=;
 b=sAYUg0xOdfPTn+R7wNZGdRYPWXJ0IdrBAI1isYFeeATDEGBf/DeF/t/ZC+H3KIMgan
 scNTMCKvOZRUj4tgeq6prlPtSshBDQBCF8nDaSqtG/BB51WfgyTuiGolOBB0Hk97OVfz
 FFZL2/SpGY2l/y2lqqJAw5+jcGGYpBSNf5bJcjlclOWtICbLQxkBTOk8MvT5oITN3pnG
 u+i+4fHB5kQ65haNFrEGLXiuPbYXS6McAD9HBk//2n+3DoaI5W2ndyF8sGSN0/ZerFFI
 3ArURY5RQHp58GR8A9bgodEJWmPTR5znmgAKkcDzIz1L01aQy+rSiF9f4uhSMFQIKuF+
 AFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b+sTelK7MqY9vqwBDqCXPdhr5H6iAxzQESslNr9zDOQ=;
 b=ZBqLymAqyXq4y6LSa125ZpKZzlVuEHYROfNNfUQfdNlJKUduHwpLzskS1REgErcyuB
 guDYyX3oUdjGfodyNCdXq5twgseP+8/z8vsshILphE66OZBwsB0Rkoyfb1Lm31eqDzwG
 GnGx+bndeymhXOKnint8MTyXqwiUQZ/mThPil5rxJbzx0iW5XbWGu0eFIXUPIESBsuzr
 jGRoT1fPKYCh1e5c+bxuMY+i3DELvAZrPHqczqRZpfsmtvI538k9fkQ+td2smo0ovNkt
 ZAkWjJxmk6BFizpc++aLu1TDxCXTZiEwsCV0imzCIBSVVbs1HoDMSPluPykPTRoZPeMR
 PbaQ==
X-Gm-Message-State: APjAAAVEP4RlTuIAxgILljrnk54kXcwmig3JRBikisjISofSvVSUah+a
 hD5NzFOiNDb68zEAXkDZu4KZZdEtxC8sEeoFQG9Sow==
X-Google-Smtp-Source: APXvYqz01CRqRV0ZKEE1VvIGwwKTxW2/uSPOY69zp6ZxsDGHojkbREYW9Biz6FMIeN9w2FNx45LJJlyb3cbOtfyj3Rc=
X-Received: by 2002:aa7:8210:: with SMTP id k16mr7828428pfi.84.1572542325643; 
 Thu, 31 Oct 2019 10:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-14-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 31 Oct 2019 10:18:34 -0700
Message-ID: <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_101846_743005_C766E020 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 9:47 AM <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/suspend.h | 2 +-
>  arch/arm64/mm/proc.S             | 9 +++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
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
> index fdabf40a83c8..0e7c353c9dfd 100644
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
> @@ -73,6 +75,9 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       str     x18, [x0, #96]
> +#endif
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       ldr     x18, [x0, #96]
> +       str     xzr, [x0, #96]

How come we zero out x0+#96, but not for other offsets? Is this str necessary?

> +#endif
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
