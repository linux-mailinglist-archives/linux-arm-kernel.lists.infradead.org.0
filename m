Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87429170A96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkQMWyPPI306nKVKxDck9TFjaH/gRrMVskzZIDAdEtQ=; b=S65E1ksNbZpu5F
	S7pgpA1k20YrMkNuf4pltWdHZ7HdS/qPXaAsiOCYFrc4h/6uuVWn/5xm4a0uRLtqGGkDmmnOB1p9I
	d5OSoSbC2/X6rUatVZP2aLIrYN4N+6yDmd3gDbXGLGOyroheeYFIft47i+MxiOgVR/f9RPVb2uAne
	VKNl3B8sYfndve3tx+JIG/R7+/8e2XC5KOsfHug/WeKumVJ2iJ6TMAJlKkpu13wPxgRkElHJ3cZqO
	IELz2fPb/UHgB3QPr7xTMzX/JQgMFDpj/sF2fq8LhzJIHsfwyEQd8/iDLr1wDsdYY3L1sZ2Ejhb/9
	anqxGs/o3tz2tBaA7BmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74OY-00020V-4J; Wed, 26 Feb 2020 21:39:06 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74ON-00020A-9u
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:38:56 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep11so201702pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ICcEQ4gQdYyuJJyaNP/FXqF/GhkUX9RbcqCJbqfCFhk=;
 b=JK7mgAJhIECWhL4BqCySSQ6RLJa9mVCEkRWbEgclZW6QParWyKb3pKOOzK7P7B2Fds
 QcJF8TMbhEkv9fkT27o5U2RrqdXSuHQHl3gd7Qlg7QioSGNbW/enlgGOtVHMRwsG9u/z
 ud39wkvioudcK1LY9iGaZX2XQoE68rMHqRca8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ICcEQ4gQdYyuJJyaNP/FXqF/GhkUX9RbcqCJbqfCFhk=;
 b=rRId258h81GQyFP3kD5uw27fiIDvE9+ZzmEmsyX5MCUoONZYI5ZtUDLwccMVd8cLPU
 Watpd3VjOOy/zY8XlOKCBpYjHfwLnoCc3HAQwfvQ1VKdTbhhpilpysBn+XEayWLWOByq
 6Zv/xpE0Ua73VfMMKkW0drcgAf+Ness65fnkbs3vzyjlxF+d9lOH78N+eT+V34CFITy2
 s5ZRzo1AdeKqFDXxz4kYt9MtCGhyh0eaCPhAe0dWFIgf+D9s7PMiAzZNWL7VHCSLze5z
 TFogHWlGSbFNsMPLA7P61KxBkssdy9+j5vgUgUNq+SA6JZWfvBKd89/NCRka/2bXLY2F
 sVVQ==
X-Gm-Message-State: APjAAAX2TnEdKBqUx70iohHllxYXqAT/s9SGvFvFudnI9fDarIRrUU0g
 +Z6QOMhsrQ+9CLZA9MDVURwGWA==
X-Google-Smtp-Source: APXvYqy0FqzsDX/eNvJJ9FIhOvUOIrN2vJCL0P6ncKlZEe17n/wI063mdTJEXhlTrLSMfxHAV6Ojog==
X-Received: by 2002:a17:902:6ac3:: with SMTP id
 i3mr1273585plt.111.1582753134753; 
 Wed, 26 Feb 2020 13:38:54 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x197sm188503pfc.47.2020.02.26.13.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:38:53 -0800 (PST)
Date: Wed, 26 Feb 2020 13:38:53 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 11/11] arm64: mm: Display guarded pages in ptdump
Message-ID: <202002261338.9890367C@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
 <20200226155714.43937-12-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-12-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_133855_342034_FF708216 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:57:14PM +0000, Mark Brown wrote:
> v8.5-BTI introduces the GP field in stage 1 translation tables which
> indicates that blocks and pages with it set are guarded pages for which
> branch target identification checks should be performed. Decode this
> when dumping the page tables to aid debugging.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/mm/dump.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 860c00ec8bd3..78163b7a7dde 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -145,6 +145,11 @@ static const struct prot_bits pte_bits[] = {
>  		.val	= PTE_UXN,
>  		.set	= "UXN",
>  		.clear	= "   ",
> +	}, {
> +		.mask	= PTE_GP,
> +		.val	= PTE_GP,
> +		.set	= "GP",
> +		.clear	= "  ",
>  	}, {
>  		.mask	= PTE_ATTRINDX_MASK,
>  		.val	= PTE_ATTRINDX(MT_DEVICE_nGnRnE),
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
