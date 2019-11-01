Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764B7EBCAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT61J1WylEtWjQ0BRZ+mKqsWQqqwcfUWMOvUvNrIsj0=; b=i+acYYXkPd07/t
	pLbRYdsmihDNnoEoL3Kb4cdr1hqkyrl0QS+7ZjEJmXibDRu8h8uCgZTO3syvB7LS1xO2GoqYqgW10
	PtmlvdUtprqzpg8O7M+Lw0efP2CqEkBcu9QwUgGSKWPlB7D5YXFMLTxxkVkqOkwW67WfxNff3zvL5
	AOtjae/2Gwgb3iPH+w28E6+evKif7sAsyAldLvnLN19t29pINIYSUTVyvLQCtM+yKRB0PnWq7uaF1
	8VLYElh6yhO7nwEhbWCzIRwFWbC9CeV9ovbwe0R//myW11yl0GlIojDTEULoO5PHXAeFz0uWCw+hp
	otloOGuc8a6BerOkWA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO7B-000460-BX; Fri, 01 Nov 2019 04:00:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO6z-00045U-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:00:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id c184so6113611pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DqG2K0fvYUAA4E302d2Wr4MEutud0mjKuHdZBEE6NhQ=;
 b=gAic49MAeOc0RHQwT7q95mZfaWy/E6IhEpBpV5hJ3STSid/jPRu+sGJtzjSfKCXuEf
 cHqE/dxdIBbercFZyX9sSIjRyybd8IPXMMKNRCD5XgWMmq1WJvMLtGj8wgTBt16jV32H
 m8Pv3sMDvWULeXDkmLgUa3AZ6LDQXwbzmCxlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DqG2K0fvYUAA4E302d2Wr4MEutud0mjKuHdZBEE6NhQ=;
 b=NJC2/v4G5gsA/WTGrohrkVqtyXZrXvnyTDNetc54EO7iCDBZ64uje6DqVbpCbK+RMX
 hjL2zVmEa2KQcuNIftU3ERQMZJPvFThY3e+1OgSWp5JBl9wWQFXs1aBmZG1Nb6h+jblY
 ycUaXX+n46UYuu2SqUbctHevdPAad7auIJtlFxMt3uwDKxR3Fw6wwYKDgPoIUFdDMFBR
 c+39HVpe1s7QnuHaLTodsINBbCPpoR01e2bmeC+uZoxwiqm4yAl+Glkbjtg93mKoVjUj
 U7qMh7vtLAgF4RMYi62qfP3ekeofYGtQ1277uDKYuwfX9lEG0r+XwTCTowvKtGhc0f3x
 X0Yg==
X-Gm-Message-State: APjAAAVk/jNFRgy/HFnQSvgOp4VQzeS8PLqsgrCXuXIV0rEs99Ts/ik6
 i6zBqULZ5TOcY9/p9TDJU+plCg==
X-Google-Smtp-Source: APXvYqwjxz9PkVBJaSe/Y1M2wUY5vJE9zTstT50unKznJW5kGeoF7F85nWGFPaym5lZ0YmXY+dykwQ==
X-Received: by 2002:aa7:90da:: with SMTP id k26mr1506175pfk.162.1572580833083; 
 Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s15sm6603181pjq.19.2019.10.31.21.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 21:00:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:00:31 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 14/17] arm64: efi: restore x18 if it was corrupted
Message-ID: <201910312100.E35C214206@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-15-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_210033_477269_329F9858 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Thu, Oct 31, 2019 at 09:46:34AM -0700, samitolvanen@google.com wrote:
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code. This is safe, because the
> wrapper is called with preemption disabled and a separate shadow stack
> is used for interrupt handling.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..945744f16086 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
>  	ldp	x29, x30, [sp], #32
>  	b.ne	0f
>  	ret
> -0:	b	efi_handle_corrupted_x18	// tail call
> +0:
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* Restore x18 before returning to instrumented code. */
> +	mov	x18, x2
> +#endif
> +	b	efi_handle_corrupted_x18	// tail call
>  ENDPROC(__efi_rt_asm_wrapper)
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
