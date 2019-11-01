Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1585EEBC8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2axCU+r68ZsG3TU9j/l6uTv22BcThpjQTz//wZRO40=; b=Um2nsPgLdpG8w0
	CeOKy9+TEyyQySQvIzZGNHzpzqN85e03nM9bu9iViD/oSdng7DV11ocVTcl7h7Y9OuKEI8tIVz5n4
	JomeqnpRrXgsF0G6iaqlshkzM/jQPeW7IOQO/ttHgKJmihkEN6ibAOtKvIuJo0BcYWyfirbINjpfm
	5p7mUuT2nI6xYqTMivedIb6uniw60GBTlNGoHhrMAZ0rQJZBSNM+wUp3D6dCeR+rP2N0c1419qXI0
	Dt8F4QqnnDzhPm8TzN0GQ9UlDzu133xVSRaN3l5xsIDhPCHuDBgUodg/9SU+DLhoMwBGHT/xMNIt0
	QxwhIWmRD3J9vJOOBRVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO1t-0000VY-Aq; Fri, 01 Nov 2019 03:55:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO1i-0008VH-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:55:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id 15so5599051pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zSoUcnGkSf7yfDdI4UPFWole6s3LI6NqVWKcqfKw3S8=;
 b=gdpHWq36NRa5kgf+gRe/MKxYGjAw3bBoglJCiCxqDG/Z5bLWefay/odv1qRX70dC6u
 xEQoc/cnbPdiJcOxSIkOgyhVuljqbWzwmQF4cqReWLlUHB1iREij3Bw5hMnU19ZGaFou
 2x2RfVCm1NB8MMDbP9OX8d28IFnaJuv0SjjDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zSoUcnGkSf7yfDdI4UPFWole6s3LI6NqVWKcqfKw3S8=;
 b=qezL4TyHdauukgW26Rpquw5RqVk1gRanPS/Hw+Bfm0OCSaZ8BQreo22YsNw39JFMa2
 uZcpcxqK4A2JsL63DUS9S4JDD3kEuAY9xo/FqYTHz2tPyJBza2Or827N9iAQNbOy2cw6
 OCoq7us/WvJJGUnhv7WMMiITeNv774/NB9r89ze9U3dGZ8cMJ16pQXTIfjd9njWil+rO
 eva/7HrAWe6pqt0WKTFLpXzwNJtUqDl8CgLOiqrhTxPHR3+g3ZySyPnlS5KUt7swbNzG
 SQsvMKPryzI1OL4phUl0rHEpb9MHHcHN6U9UF4POBCBkXZJpjbnTdI5I4PWffMkEwbz4
 dEtg==
X-Gm-Message-State: APjAAAVIn/LqoSmM44IzPzi7niQyGMHf7oZcoMnQ+kb52ct0bEKT0cOU
 bwjNKQ/D2Y/vedbPNmNELAxnQQ==
X-Google-Smtp-Source: APXvYqx5k7aF99T5w9h4PpSwUM81mxoH0R6qDLQkK0BR3TP2j37wYiYVIHIkontT/DEGLXmTTHNH0A==
X-Received: by 2002:a17:90a:bb0b:: with SMTP id
 u11mr12349099pjr.94.1572580505585; 
 Thu, 31 Oct 2019 20:55:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f25sm7693672pfk.10.2019.10.31.20.55.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:55:04 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:55:03 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
Message-ID: <201910312054.3064999E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-8-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205506_121642_6A52019B 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Did I miss it, or is there no Kconfig section for this? I just realized
I can't find it. I was going to say "this commit log should explain
why/when this option is used", but then figured it might be explained in
the Kconfig ... but I couldn't find it. ;)

-Kees

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7780fc4e29ac..67c43af627d1 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static inline unsigned long scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = scs_magic(tsk);
> +	uintptr_t s = (uintptr_t)p;
> +
> +	while (p < end && *p)
> +		p++;
> +
> +	return (uintptr_t)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static DEFINE_SPINLOCK(lock);
> +	static unsigned long highest;
> +	unsigned long used = scs_used(tsk);
> +
> +	if (used <= highest)
> +		return;
> +
> +	spin_lock(&lock);
> +
> +	if (used > highest) {
> +		pr_info("%s: highest shadow stack usage %lu bytes\n",
> +			__func__, used);
> +		highest = used;
> +	}
> +
> +	spin_unlock(&lock);
> +}
> +#else
> +static inline void scs_check_usage(struct task_struct *tsk)
> +{
> +}
> +#endif
> +
>  bool scs_corrupted(struct task_struct *tsk)
>  {
>  	return *scs_magic(tsk) != SCS_END_MAGIC;
> @@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
>  		return;
>  
>  	WARN_ON(scs_corrupted(tsk));
> +	scs_check_usage(tsk);
>  
>  	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
