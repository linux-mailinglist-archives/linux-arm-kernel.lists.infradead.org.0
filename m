Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E581FC510
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 06:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmQ0Lczypr6uRR6kUnJnpBH/cAMSVN/NbW8KGi36dgI=; b=kwsxjCdDRPsje2
	LosSSCgtyAkzLAgXrIsggVB5/d4h89d6k5sxLWOs9a42rFpV7QpaNHP9vgSz3XV+/xtsO64mNLXlT
	FEUwXo25/mcXUsJnKg3GMhKLUYDKSuc9bSnlCrlXPnlpz1Hjf/0GnZ4iQ/gW2lIdKNpMljbSMoqQw
	NEuhr0na/1ouDbPbpUNyA5TXcqGb+LyULgM1RxIzVpcVedPL+UvbLq/xxFqjBBwipcrBQRoDzbRRA
	hdj8yJfPWhw2gMuNpv+GB3zK/nUNykur2WKrnYrggv85uF/PH7kKl4rfI4IF6I30Jb9mZ4fZA+fZ9
	F+HbhNzeUythTVo9VMnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlPcV-00022Z-R8; Wed, 17 Jun 2020 04:24:15 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlPcH-00021Y-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 04:24:02 +0000
Received: by mail-io1-xd44.google.com with SMTP id r2so1262692ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=qnyhMMIEN0LrK0bROeu2AicdajFIxeITYjNsoHRgC8U=;
 b=nufeHlQ+xs1/zH/m/xtBaDN2m0JgiiUl7Wu3rP4N8z3WkDzhLoj21XpHN2NG386Hsm
 hmXxXQGLHDNFtUBZRgP2U/FAY3zrMGXf9gUI7N6wpsLwgTuaeCFAbO/4ctgt7XP7qXmT
 MzONHz5hsVNIgP90DFzJCOoA05nCbJWYz2jIAwLCTvldLhFSbmF4+kr1QLdvJCuSiWfG
 44pTap6vEFqEZo7RcDJirK6m8XuQydmfcFb+LpBOx5lCfr/yEqnTMGPUjYO2LYk0X5lJ
 QmbaCHJspStHUqXAiu9+eHrK73JZA2PutbiE6LuG9NjKEKqKqAETNGx+FWJ5jXwDxDGb
 49SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=qnyhMMIEN0LrK0bROeu2AicdajFIxeITYjNsoHRgC8U=;
 b=RN85RSUzaKl4DnXUwsNLzxX6PpHrkGHuE3Q3JktQ3HxZy/HFSYD8PoVdGZk2o1G9Zt
 M/q//aCfY2N5PHGmdV80WKmS2Ekhy71UCLbYep11SSoSe1JKS0jh+DuVmjfL6nY10qBC
 rVeu2opRzUN4Eq57hOOS1ln5SVEUQwAQWVEVwZG+tmDCQy7ZAgH/ZJwFqPvDSKzEo3m9
 eDBjrn8C+2hUdZliDf8NGZVlR9tRq41wZqZlcAY/+tBTJWptZN54emlQf07pCliG/x4u
 HSEq2g1rbWEgTePmnL1YaDImqxxdyKnMwIWyOA6DGTgz4uqIcG2VrmljhfVGuslI+lBd
 EPAQ==
X-Gm-Message-State: AOAM530onZvR1HcAIt+h61JxFUhGbLOMNWCOPAUxcivhmRyKrmxxi6s6
 H/91WzJu75W38VXn5pHkljSP7N8AyR4sE6hgNjk=
X-Google-Smtp-Source: ABdhPJz/K2qXUqRHjBV/LroAG+ddFcf6lDuQMXgC6ECLEuTBBbDkmXm8wh92hdHPJtYTo1J8chzIQRHjdjVxqbq2di0=
X-Received: by 2002:a05:6602:2c45:: with SMTP id
 x5mr6354932iov.80.1592367840047; 
 Tue, 16 Jun 2020 21:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223633.73971-1-nhuck@google.com>
In-Reply-To: <20200616223633.73971-1-nhuck@google.com>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 06:23:48 +0200
Message-ID: <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_212401_364664_27E1E2E1 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: sedat.dilek@gmail.com
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 vincent.whitchurch@axis.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 12:36 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Since clang does not push pc and sp in function prologues, the current
> implementation of unwind_frame does not work. By using the previous
> frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> kernels.
>
> The bounds check on next frame pointer must be changed as well since
> there are 8 less bytes between frames.
>
> This fixes /proc/<pid>/stack.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/912
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Just a small nit.

Please label your patch with: "arm/stacktrace: ..." or "arm: stacktrace: ..."

git log --oneline arch/arm/kernel/stacktrace.c
...is your friend :-).

- Sedat -

> ---
>  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> index cc726afea023..76ea4178a55c 100644
> --- a/arch/arm/kernel/stacktrace.c
> +++ b/arch/arm/kernel/stacktrace.c
> @@ -22,6 +22,19 @@
>   * A simple function epilogue looks like this:
>   *     ldm     sp, {fp, sp, pc}
>   *
> + * When compiled with clang, pc and sp are not pushed. A simple function
> + * prologue looks like this when built with clang:
> + *
> + *     stmdb   {..., fp, lr}
> + *     add     fp, sp, #x
> + *     sub     sp, sp, #y
> + *
> + * A simple function epilogue looks like this when built with clang:
> + *
> + *     sub     sp, fp, #x
> + *     ldm     {..., fp, pc}
> + *
> + *
>   * Note that with framepointer enabled, even the leaf functions have the same
>   * prologue and epilogue, therefore we can ignore the LR value in this case.
>   */
> @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
>         low = frame->sp;
>         high = ALIGN(low, THREAD_SIZE);
>
> +#ifdef CONFIG_CC_IS_CLANG
> +       /* check current frame pointer is within bounds */
> +       if (fp < low + 4 || fp > high - 4)
> +               return -EINVAL;
> +
> +       frame->sp = frame->fp;
> +       frame->fp = *(unsigned long *)(fp);
> +       frame->pc = frame->lr;
> +       frame->lr = *(unsigned long *)(fp + 4);
> +#else
>         /* check current frame pointer is within bounds */
>         if (fp < low + 12 || fp > high - 4)
>                 return -EINVAL;
> @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
>         frame->fp = *(unsigned long *)(fp - 12);
>         frame->sp = *(unsigned long *)(fp - 8);
>         frame->pc = *(unsigned long *)(fp - 4);
> +#endif
>
>         return 0;
>  }
> --
> 2.27.0.290.gba653c62da-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616223633.73971-1-nhuck%40google.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
