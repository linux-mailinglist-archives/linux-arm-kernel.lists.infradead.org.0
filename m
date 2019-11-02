Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A953ECFFE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 18:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ma/2FDnSpwggru4B9pMWEDin9p/K8lGEdlTClcjJVk=; b=Cqgbio36lIQa2e
	EVpVVDpHfyRKWNE0+MLu9DPzvKj7q1W/2YPCPopYMGxVT4AvAeV67CTv53X4fsZlJXcEdiaIxsSVV
	D/tNhCpGdB+45F/PLyRu2LQjc2t2T7SIrV10S/GBgVU49t4cHrIgcxXFmt52uGyhzaSz4BRZOTfFo
	Qtlx0mLcC9RIJIvquVjGmOJ6TAtqTwDcTxUEn93uU07FvP5tPnfC3QSX4zbHLyqOUPfEAiJZ4XO6w
	MKkfGdN72N3GI8LtVBCOgCiF511e9IejN6Li41sK8E0rFoOYykAu51JFs9gZkrjUFWk3owqlwIKQr
	wj3G5OZfmcafT0enQj3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQxFH-0005ON-PQ; Sat, 02 Nov 2019 17:31:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQxFB-0005NW-Ty
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 17:31:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id t12so5720471plo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R5U6Kj8zEV9KobA96rVptQNqSLtfG2r+Wn7yLIJ/SjM=;
 b=nZuWTF4BuB9R9IrgYRoEbpBnjy2uh+hDRXXBWx+J+/nKCK3Q9SqQb4rGc0o2JbS78Z
 IGasXP4JcJlcZqvBr8jr42AoqszXdT6ZkfobJEO3q8eAMYsdFqaxFxfcOX/QrjMVv/qW
 Gdq8mBjWvMInhMP1k9d4nI6SG1KYp3FJBWObE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R5U6Kj8zEV9KobA96rVptQNqSLtfG2r+Wn7yLIJ/SjM=;
 b=X1rUf6z1cdLUiWe1CRPbUeoaDlFL9yGnxSZIjm2taT5atGJU+ZHaefUhspnqDrkKrN
 YQPrC88n0AiWEBGjRjBI8UEvCk/T/nxw3vemE2DOaYdoQQubwVm6n/BBf+4pY13xH9n6
 OHJZ5fFcQobP0Sb7yRAkDgtgpp0kaIFlltqeoN0swjy+Y6U4YY/6P7x+SyqFXuPdIRvO
 oXAj3Wj8gmlcAyjB5xvydT87evI/A+dc8oqK6IYtXDvJefhFCMcat5jm9ANU4jY+MjbA
 bTbKGJuZGIeXo/ECt8bwJ+19vt1kwfH13+Kjo0frCtq7L7H87xmDIMZtgM8UfLeVtYDX
 qWyA==
X-Gm-Message-State: APjAAAVF85/x9FkKsXj1On+Gr6fZwO2sn5D0kUsLueTey2W4Xya1RKwK
 twcrukQsF2jLcmmGVnji/pPjOA==
X-Google-Smtp-Source: APXvYqwc02Tws2pGBZl8WuCjpMDz1HN7KL0ueLxBeqsIsd4eXR/cQCznRRNO20Nh24wWyn2g8VRU7w==
X-Received: by 2002:a17:902:864a:: with SMTP id
 y10mr18474527plt.162.1572715878210; 
 Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m13sm9636034pga.70.2019.11.02.10.31.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 10:31:16 -0700 (PDT)
Date: Sat, 2 Nov 2019 10:31:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
Message-ID: <201911021030.88433384D9@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-8-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_103121_992633_099EEA69 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:11:40PM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks for helping me find this Kconfig. :) :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
