Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A36DCBE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDRkJmtuFql7UULz2AjLXoc1Bwyw9Dka33GyA9mE3+0=; b=XO0ZgrEuLN8qE1
	TsXDGGBWYonNVASxoovKZ8lbVPd6XGb0ZRcL9bPJWQKshEMAWN450djM+BM6whXnqU7uQb1OyI6vX
	5YJ/17HPTCws1OTKH20NIQDoOD3yOcvrWMVh6KjkBS0Xfi77DfXO3QRboovLNH8jIsIlhPs2/B5wS
	n1vo8D3a72os7dQXIxMRT06vq/6TT9ypm88X9yzTB40wjAMXMrfhpvsMmI+yiaWp870OQrw24ul9W
	6ZIAXCT6EiK1+CAa5Lp+tQ0vCrEP1VIvbTtIX+WlC4mW1Iso7HHFP7q4m2dQuwCnKDs+lu70ZAYS3
	XJNt1gD04TCcuNBm8mKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVRh-0001LL-Ql; Fri, 18 Oct 2019 16:49:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVRX-0001KN-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:49:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id e15so3659482pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6mKQPL/e7dgXDTrUQfJTszcQHu3ycRwNWrvUbHLb4pk=;
 b=avwoHFY5CW3JD7pFCn4n29wE6NiGHkirgHDoIVifZVsZL4y+SlMfOxesI682OTDpPr
 fFMjgep4cFlosOsjjEllbB10AlrvG3W2M8so8tnovxudL3Fnr2jRYL3m20YfhXFXiql4
 YYV2FAqAxa1SUnQUjrvRBLsJzPigiZyieER9bEuAyzFDDpqgXg0PS7F91qEI3rZASNj/
 x1S9cd0eWsR188TqUpS+/Mmf/vhy38JniOEz/ZK0Uhw6NKJX4sswW0+SOrWYXCeoqTVW
 NuHBVQntzhM2hJG8H38DUhHoPaoGsnAGtVvqyZ7liKevC5AP2i2yiIximEnQJ18clNZ6
 PqSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6mKQPL/e7dgXDTrUQfJTszcQHu3ycRwNWrvUbHLb4pk=;
 b=RRas9fT11yk0mcID9bgPJbi42e8g6nTgnGcfuivxbwo4AUXcDjkSYyc3iUjGm0SdN5
 zPUFU8zXSBXyMiIZ4luAuF1CJNhUi20+K+DmmOPb3DTNvdA9fWRunQxz1uMghKE6oa0p
 PcmfAs4/gytc37qJVnJjGZvSJ/RCwmniPXdPr64rRNO5+PhUlWKs51MM7oCW8NYAZd/9
 Tr1YPpv6bDJfg3Y+H0clG0ewoA6tw9YGlileZUU+g/zEe0SDBVyWZAJRy9C+1vXmmTKD
 AFV3XYzDrTAGaoxoImxTxVW8/QMfqlMRwhLVivEeqRLiPXx7P4fhYnqZAuFL1jYhgaIu
 0Mgw==
X-Gm-Message-State: APjAAAU6ZLxnPQlDOuF1i/gw41ClVITuzJIaLaZbzClrjVbyvlQuuw87
 8Lx14yqdRyHT3LnkDh6B95xbCFjAy5L3Txw+xKg18Q==
X-Google-Smtp-Source: APXvYqwGHsfE+gcGNX/CNr6xsUAMOGd4jaqDKhx5i50DIeOxIYrr7yFluB8PcrxyB5XuOda6b/Qeh6/IFkeALLNCeCw=
X-Received: by 2002:a17:90a:b285:: with SMTP id
 c5mr12166608pjr.123.1571417373841; 
 Fri, 18 Oct 2019 09:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-14-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 18 Oct 2019 09:49:22 -0700
Message-ID: <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_094935_373960_1DF479B3 
X-CRM114-Status: GOOD (  12.98  )
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
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:11 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/mm/proc.S | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..9a8bd4bc8549 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -73,6 +73,9 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       stp     x18, xzr, [x0, #96]

Could this be a str/ldr of just x18 rather than stp/ldp of x18 +
garbage?  Maybe there's no real cost difference, or some kind of
alignment invariant?

> +#endif
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +92,9 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       ldp     x18, x19, [x0, #96]
> +#endif
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
