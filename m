Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E09DDE477
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7cBha9+54vDSgqHQybub6QYtZGY4MTmtCrlbXsnmB8=; b=AFAULRdCrEteS/
	B6hzQQ7LlFw4ssvAF6mOFUOyNG6J3lAK1wxxI7wxSltLwRm2Bm0R0dGcL8dT+8VSKggQR/PbwzUyy
	zIT55Ud8Zwrg8DAqDUBwkiy3c5y6UjGdRcZt7Rh0dKj8OYS4Dmf/1n/E/lO95sqBcGhcspY+dGPzf
	7jd85Qn5isLRQRPF5rxnW5ZpW7Ir3lIc8t2rtLRubm4raz43sZM3I9rEHFpZGaIIXckKR6RSkZBjU
	FeG3nU9yJUgpAqlkhrPNFtK9Th6N7+JK1leFo6njly6Ou/OqrzOmqq4CX3nI4BmIPGXlWlE2qpIEV
	2eluWWntiethLIt38+jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR4P-0004QA-IK; Mon, 21 Oct 2019 06:21:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR3n-0003rr-H6
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:20:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so2568275wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CdvcOGCYVL+T0dd/Qovdpy0EycQbYWDHOCHJnmgemls=;
 b=h6kY1+snCa9b1x7e/EgIjsAXXWChcSe7Uw0FjL6G+anKZpluVsnHZlfXHSt09rzA17
 7QEgstgPbNp7zGit5Kg6IcWlVJCjEQWPZhijlHGqzE9gZYmdrNfkbUvmJSjt7J9BNrVI
 iBrcqQELNZQolZpgXvm2krI6QCIE+5auETUijcAYUxxeV14FrPjKGIpTjQQ1uW5xGnK2
 rB//6di6mnksNQgm1xPuAgR98MBRjT/PtPVc/7XVHsjRva7gRDw9sCzJA2LXB2t3ypJ8
 2klWs/YFyTytVptXjN8BopBVvxJrkKyMYaLh0RglRJd0PZbT5T5vpgEG/gQbOEjzJNvh
 219Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CdvcOGCYVL+T0dd/Qovdpy0EycQbYWDHOCHJnmgemls=;
 b=GZe1ZDZ4+5Umss+bN45IFp7ZosHKTUTOYZdFNV+noS8nyBAO79dgPz8hA+Ux4JEiyX
 REMyreqdIZHoxe5Lln10djcweouSUkUQNRO1xOueBW/yQ4qvhRH5SCeExg+o02gBgsPo
 xcWFbiMrqFfTVVxSz0XHH4FMb+w0cW2YnjdOEA2LYRHmt6D60I6mfK9L2qU2dN3tV5FJ
 DR/lWSqX5j3C9qY7YMfUFIkFEXPYodAB3/rGpKRe7EgzihCr7YkqQOzikWUh9N/jlwS4
 SRwv07HiYe36XeFO5c9aWmPLBrOK3aMTySUWIflIRcU4VYkciINBzskId2s28XtFcj+B
 sCIA==
X-Gm-Message-State: APjAAAWGou7f+mCrsPt+mqhr9jjhRpG9VWsjAo1C6uKaSCADv/9wIn0f
 ILkif6ddiycz4zVspG0LE6aY6W/5ejAVieVLoXAaqw==
X-Google-Smtp-Source: APXvYqy24wsGU0Cj+4SmHZlaSf1uaZpL2g4+f87/+EJ/1iZO4TCaFGyxMrU8YBrf0ThCHUcVzuLjkwXTWadLECQwLMk=
X-Received: by 2002:a5d:43c9:: with SMTP id v9mr11140606wrr.200.1571638854218; 
 Sun, 20 Oct 2019 23:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-15-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-15-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:20:43 +0200
Message-ID: <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232055_652356_41257233 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code.
>

You'll have to elaborate a bit here and explain that this is
sufficient, given that we run EFI runtime services with interrupts
enabled.

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..945744f16086 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
>         ldp     x29, x30, [sp], #32
>         b.ne    0f
>         ret
> -0:     b       efi_handle_corrupted_x18        // tail call
> +0:
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       /* Restore x18 before returning to instrumented code. */
> +       mov     x18, x2
> +#endif
> +       b       efi_handle_corrupted_x18        // tail call
>  ENDPROC(__efi_rt_asm_wrapper)
> --
> 2.23.0.866.gb869b98d4c-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
