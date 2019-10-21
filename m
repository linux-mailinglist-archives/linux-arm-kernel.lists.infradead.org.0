Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD786DE45B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GtBWxgDVhVCDavan2NqgPtGlw4Src0dTtAL238XaRs=; b=nxds2g9jwkh+Vr
	xYMOxJaquQp3lNWDtrUhscgKkTUZxNACdT19LCUfdcxv6fF0e0zTWDDdBjrvjHmix574j+BqOgDpR
	J74QAfVBvUsYUQAxhj0Chgk2GnowyF2xaLVCHvkJz381wZI9H0+ju7F3qMLkEv0akjUBYb8iIVAmM
	/teVaPRX2eiOW2j75LQlTCZN2eCYgR8DxR0SSBIgo8qZZPBqSEBh4mjFBlHUOG0M4KzmVJk2JTMwe
	cIskPtDv7fLf1ugw2JrBC7ZoZNYVv9xn+8QUzDpiKM+fb4Mzn8eShyqieG0b+lJnYrf8dumJaHd8V
	Ji+orTlg3Dq6J0VvLuzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMQyi-0000Yu-8G; Mon, 21 Oct 2019 06:15:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMQyZ-0000YY-8f
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:15:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so2307362wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wyeF1rMaUaHqm01fq+szlG0Q/Q/37dlLkcs/fhKj+JU=;
 b=NLXY6TdHG8Tz04qn7XKMcvdLN/OzoqTYvrB+JSqGhbSGr3rCzaBbRYQdR4no1EY5NL
 Nh9rCiOB9Og08f19wRWClJFDu0/sS1HKtgYeD23z9WavaGd4NE1QQCGW8pgaYugjj5k8
 2ETtuu2xsV6k3V2UW5rEbo/g5/Ro5F6Dfiu6pP5pMD+QaVJORHRrHwe8sIvzyRQ7nyDP
 jeq1vxJ7pypdSO3Ec2jWIw0zBRJyOT5DrUa7sOW2tzW0AmKLRJNb5sdKiVl76Mfb6VFf
 1fntrhgs76bfmwfvZZGpT+tBafmH1AcMK2MVAeBXgJj+RUvSklAClZI5m15AK4a0NKmO
 Z0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wyeF1rMaUaHqm01fq+szlG0Q/Q/37dlLkcs/fhKj+JU=;
 b=AtlhIkCoZdMlw8KnYBRYZEbJJMI/Cy1MF52crc6GGUatC9a1Vglt8H8q81y02Cvi2l
 z3K6Ozbm47qoKy6si8lAaJE6r87+uzna0blEjsOlNY+ae+h1t0JDdjcX5zlAv7WPV3sn
 a+qK7oye80byaE3XRAqAor183FUqX4rW7mIvqE3HeJGh22gpjcZL5IjO+5ZhZ4qSCpXi
 smBPhGtVCjWlZ2U5NjNzpdc9sJV/MhSUrJfHbKGKH/qJwKRIKiBJ+ta7lh22yCYDUn15
 VvL6BxMF7aM3h0oNRTaeTfbwqeWEgnTOQewkEVrO/yWsRd4uzDdj8Fd64KCFDzUb4Nmd
 aP3A==
X-Gm-Message-State: APjAAAXVZfHCFzyaK8vnFjlkEiBeIqAWdQMz0osoMjC3IqHJix+8X95T
 oJ1e0L+1xF0QcKzV08XiPSz8gC095+i+tUfTQtr7tA==
X-Google-Smtp-Source: APXvYqwy6S1XLT1tP+FIkDZSJy0h8vZRZeJmoRt5dOcKFryQnLOFQp/4bIpH+FqX5564F137wX49Gmx6/y/bSuaFgAQ=
X-Received: by 2002:a7b:c925:: with SMTP id h5mr1828158wml.61.1571638529717;
 Sun, 20 Oct 2019 23:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-10-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-10-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:15:18 +0200
Message-ID: <CAKv+Gu_bYk8oudqfxmN5GUYSrTNeCPmz19BNnBn_TqATFPK11g@mail.gmail.com>
Subject: Re: [PATCH 09/18] trace: disable function graph tracing with SCS
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231531_308553_666132E7 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> return address protection.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

How difficult would it be to update the return address on the shadow
call stack along with the normal one? Not having to disable
infrastructure that is widely used by the distros would make this a
lot more palatable in the general case (even if it is Clang only at
the moment)


> ---
>  kernel/trace/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
> index e08527f50d2a..b7e5e3bfa0f4 100644
> --- a/kernel/trace/Kconfig
> +++ b/kernel/trace/Kconfig
> @@ -161,6 +161,7 @@ config FUNCTION_GRAPH_TRACER
>         depends on HAVE_FUNCTION_GRAPH_TRACER
>         depends on FUNCTION_TRACER
>         depends on !X86_32 || !CC_OPTIMIZE_FOR_SIZE
> +       depends on ROP_PROTECTION_NONE
>         default y
>         help
>           Enable the kernel to trace a function at both its return
> --
> 2.23.0.866.gb869b98d4c-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
