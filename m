Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5321B4C18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8YR5mRKZ2nhJHlWxVhpCC1siMCeC8kn8RxA9RaVobc=; b=Qe3N8Hf4h4qBlU
	i7N/z6eRvo9stRjPYTe4hwKykw76q/mzOc/BN9hG9w8gQONMpA1Orqai7zqPJz48SmPS8H0HG72nS
	YmGjvOV8jldrIFFC1gEwE9ofieMqQZl9VOfd27aVt2XR0W8DZoQ3mY/ZsKJ7ZYuPVYKzZ3WpJeZv+
	E73J0dXd8r9QBN93qwjV8bF3iMJNAUN5MxFN+cWwADno8ngqecs4wPuTaLUOa9kS5XlpRvOqJvobm
	ZyCop4Wdes/SFrIId5Io061opGecUkZZBLw6HRCVs2yvoNjoBBRfZExjCy00KK9CvGq8XZRkDQEF/
	Iu960NlZO3QYyZR3kW/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJS0-0005gV-0Y; Wed, 22 Apr 2020 17:46:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJRp-0005fX-Ol
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:46:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C61B420882;
 Wed, 22 Apr 2020 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587577569;
 bh=BZ6+GxqnknwEXTVUtex2UCZYN1TnyT2nFbqPEZvID5Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xeCqLIAIf4jizG2Ckht2qwltfYk8W5t7dkqurW5+DudPXgEs52Se1z8kA6BYPOJvg
 zWeehGFavyojT3LhGVeOWARgj6LEsxC0YHGvVxWT4c7cDFTYsZV2It6kXt09f/QSfF
 HpAJI7pNWvgcdxfndttxPkynvgEj5eZLoxc5MmEQ=
Date: Wed, 22 Apr 2020 18:46:02 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v12 03/12] scs: add support for stack usage debugging
Message-ID: <20200422174602.GB3121@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421021453.198187-4-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_104609_830744_B7DEE240 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 07:14:44PM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7eea2d97bd2d..147917e31adf 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static unsigned long __scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = __scs_magic(p);
> +	unsigned long s = (unsigned long)p;
> +
> +	while (p < end && READ_ONCE_NOCHECK(*p))
> +		p++;
> +
> +	return (unsigned long)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static unsigned long highest;
> +	unsigned long used = __scs_used(tsk);
> +	unsigned long prev;
> +	unsigned long curr = highest;
> +
> +	while (used > curr) {
> +		prev = cmpxchg(&highest, curr, used);

I think this can be cmpxchg_relaxed(), since we don't care about ordering
here afaict.

With that:

Acked-by: Will Deacon <will@kernel.org>

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
