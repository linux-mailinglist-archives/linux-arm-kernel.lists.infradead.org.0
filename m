Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B0CEBC9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5NGmdJlglQlXsoPWF/HjtgTU2iJY/nGoDO+IbHB5Ek=; b=lvApugeGv1cOOP
	Sg3IpKFTNT0LflfULQ2lO85OA2MMpSsj5Z6jjJTda5T5OLF6QHs1mwSW2aw3EVb3XSt53jInZ2nRh
	5oQyWAzS1ZWB0SZSw5QZrZYGAVoEQkkzXqX/pvi9urruVtQJVxJrWdKbW/eaBRe7BLNBoqX1XZHJT
	ITz41LISKCzzvnpBNQNZYGZerZwZliVdn+/5eG+ATAl1FfHSbDEPBuX3+OW6gmA7T0F7sYUeFfe1s
	bPq+FtgOazvmVF4AuFXi9I8jnNI0BLCH87YMb6ykQPmnPs5IzeqPwSF3V8vRn4dC0NaLLFz6a++F0
	YUjMdsitGFrA6DyLd2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO3Q-0001YW-D4; Fri, 01 Nov 2019 03:56:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO37-0001WP-Tv
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:56:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so3754438plp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8r2XeG5yFjL/afEHA1efUXOPQ4O3tMgoY9LidcT6tD0=;
 b=J3B2kmOf3zKgvU8NNZfjzZBmIFxRSy0lZFZruLxNULA4qZjQB6y6wIjGU/654UxcSq
 DGZf/NBIx2XtK2v+AA+MLyDxAbIORjfYicFLhlVGCrHycRnDK8l+uJgiV67UYT7zvD9+
 bcjozvh2Lkb/12B+x5PYqqYyeNoY18Xk3hg5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8r2XeG5yFjL/afEHA1efUXOPQ4O3tMgoY9LidcT6tD0=;
 b=c7SeKTfNokJJ5a98A346eDCheWokSncsdW8BWLYp/ZBJSZ9x5UDxsMMTVFzyB6ikYc
 BRcpH5MEwWBdnRXfeNhUFnltIaGhox6mqpDaJ/UUJ0oOkAkFZ1a7hqCd8mNhttbWSVQT
 UmarylUTYQLvtfbwOVSaJWwMBuP3PDI8Iyfdm6dayi71TFZUQi92xhbMJ13W5b+jRTH/
 PfdqmevGBIjT10Oz2aqdZCsf3J8nvYQfGz9ziMve+3nqtwcslmJEwxp34g2Wppm558mU
 /RJkgxto+e3EJMFPmtoApEDGJKII8edcGbFbKmGiTcZS5SV+gpO8kIWc4gsc8JoG4joN
 yRWw==
X-Gm-Message-State: APjAAAW/hcUiUwE8b3IEWwBgPSggXRyPMjJSsbmsI8DoIv0GbKXEkxB1
 pFo1b1ySx6BW+F9b4FoMN9QSww==
X-Google-Smtp-Source: APXvYqy05XZ8Z7dJgqZ7/iJDGYhT5+3LQCw2SnVzAAPcmNQfe80zEq+KFf6BAA6Nkk5/7y2Fze7yKA==
X-Received: by 2002:a17:902:d88c:: with SMTP id
 b12mr10325171plz.254.1572580593477; 
 Thu, 31 Oct 2019 20:56:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d4sm7481695pjs.9.2019.10.31.20.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:56:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:56:31 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 10/17] arm64: disable kretprobes with SCS
Message-ID: <201910312056.328195A@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-11-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205633_972994_4F424380 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Thu, Oct 31, 2019 at 09:46:30AM -0700, samitolvanen@google.com wrote:
> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible
> with SCS.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..e7b57a8a5531 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -165,7 +165,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> -	select HAVE_KRETPROBES
> +	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
>  	select IRQ_DOMAIN
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
