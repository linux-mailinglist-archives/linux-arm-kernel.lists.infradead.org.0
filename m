Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AD3EBC94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nUuNm1F1vl5WWepFJR47FgCygdRPOlAi7pQEOPPlfo=; b=YXvYctchXmwCyW
	Av5OLhyl9gfM3uqAHW1jWkXIyoypLUNkjZnGK9RrGeVmQRN9liU+5zf6+EeoMSk8Llf1HJztg1efu
	45TayR5r/q8TLzVr1zQuakLsbehQdtOhlIXYPNJ9J2WLxGLeVGvGod04+8I2/fjKfduijFn2IfGGr
	js/nstkJfqTLBboj68xhkLoWGehq1wA9I5vKCQww59JljhOBSvAE61Angd33ZLU/hO2iAXzxGy/m4
	HMswBIoG1Z6xhfp+XZKuH/UQDt+NI69+C5mPlAwwEW//ppanaqRbzpfzF9gciEMXLeQWgDMqximKu
	EwY1qCT8gz2BcfXQ8Fdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO2y-0001GU-HO; Fri, 01 Nov 2019 03:56:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO2o-0001G8-74
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:56:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so3771047plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Z+nYmbiX+N1St4EAeF06ZLBIc22exSOWn82chVWgQ58=;
 b=CCX57PXeSP8raTIa7stPdOtMkXfDOMY7T1F5hUmVdwgHt3jJlYyT6pDYvyD+nZPnjd
 RDynOfkryq8ctGOLHdv/HhV7WAh/aJmiBALoqt5gki6zK0lyCCvj+8TBwx4BlVd4ZsYn
 QlzmEfXTcWlJFOzLS3MwRZqKvvLzEB2qTfEAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z+nYmbiX+N1St4EAeF06ZLBIc22exSOWn82chVWgQ58=;
 b=TZV2JZopPxW6b6xUltjR4TQkh8gBSa9EBbtvaXnURD6R8Ho99XS2kJRVHlpnYFyCS1
 Xo8JWmujgGGHwByMl5JKpIeouMhilK/WxG0Jq1wQt1F2T6rwENxBKc/hiX4DokhqZVdE
 URx6iSfgpi1LRRICsXAvLoJpQomUaeD1SfXx1JphKmYC0BpgyX1+9EXWl3opPVu8IPl0
 cAQ0gwaekrLqobvJiBpsOioDlGSMcCiwFanI0Ihv0y0aCLY6tfOg3Ny4F/wAAzyRJtWu
 N8BeXwON7JDaHteySjTqeOwoSzK+KD2VyulDJZHoE77Irze4VyQ74k2kIDS4Zg8p6QMZ
 SdiQ==
X-Gm-Message-State: APjAAAXTkqr9tknU9MU/1NwRQVzQaHitIEb6JJ7Ym2i+Cw+eGK0kFZA1
 xldW431u45EnOCprOTLgn/DByw==
X-Google-Smtp-Source: APXvYqzjbJ7PTCwR8dbLX9yGoruNQd+AcfmNqc/IOeBXJ7CEpc7/rFxnCKUJlN4CgjbHYqxLA44oZA==
X-Received: by 2002:a17:902:988d:: with SMTP id
 s13mr10329146plp.335.1572580573736; 
 Thu, 31 Oct 2019 20:56:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z5sm4476882pgi.19.2019.10.31.20.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:56:12 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:56:11 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 09/17] arm64: kprobes: fix kprobes without
 CONFIG_KRETPROBES
Message-ID: <201910312055.BD31A966DB@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-10-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205614_255472_09B6E473 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Thu, Oct 31, 2019 at 09:46:29AM -0700, samitolvanen@google.com wrote:
> This allows CONFIG_KRETPROBES to be disabled without disabling
> kprobes entirely.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Is this worth folding this into the prior kprobes patch? Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/probes/kprobes.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..98230ae979ca 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
>  	return (void *)orig_ret_address;
>  }
>  
> +#ifdef CONFIG_KRETPROBES
>  void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
>  				      struct pt_regs *regs)
>  {
> @@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
>  {
>  	return 0;
>  }
> +#endif
>  
>  int __init arch_init_kprobes(void)
>  {
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
