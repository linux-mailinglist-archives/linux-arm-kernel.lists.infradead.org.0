Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FACFEB835
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 21:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6di/PdM2B9YB0r2sNIwXs+577XmpcFXupagLePH0mQ=; b=B7W16/heYn3djY
	5BSkRue+TaKa9ai80MwT780go8Ol+8HPKeYMaURCdx4yFaVlDWw2yj0++4cQrmUAu/xnT7zzETINu
	20g2v50bsO2tvJfQ1YiDP5g0ox9DCNlgV1HeN7gWRyDTNVa0G4ZiD7BcXef9F+ZKbq/aWSWg63Ik3
	eUKEUM3LDX9B2c37e9zUkguDTwEWAkJkdWbTWdJIUg7BXnepskQTUtMHaveLRquMTtAnLjr3JJUsU
	m8AmhY6PC+9EwcVdpPB8UQ9lQAzdoFLefrcvm9enaJRwCYiZK2hqU0KxtyldGcLX/tSCB1HrvqTtZ
	BYlVihiuvVK7zXo4qWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQGf7-0004Jd-Ac; Thu, 31 Oct 2019 20:03:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQGev-0004JB-Pj
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 20:03:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id x195so1668328pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 13:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wAwSqScQ+vUrp/ryQqbWQb0d71qTBbv+M5ScuaTLVuA=;
 b=UvFpZAsm+36z2+sVeR2oDCHtBR3Blvo8Iq+db4k7K4CtUyKAQYn5qxSLqzoHJ6/z6L
 VqALkp6XxC5EiLQ9WnBzOvBG2PcTfxaQby/DZOWC3d9nemjKCQ4r8pqb3dZaZkOYKb5t
 zUbXEXIJDZCk71l+sW/rcZw3/5hUabjvHS8Xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wAwSqScQ+vUrp/ryQqbWQb0d71qTBbv+M5ScuaTLVuA=;
 b=F7sIs1Tu8vLadqG7vd11x+xzkdtfXJFpkCNtxCC2eGfUgbl8dZMtmBccxrkLepxRPm
 WkBzk1qX5VezpPub6uNFs0gu3IIWRVoRIr3rjaxvEjaJhKb4CHybShacqWK0irSvsfVd
 TScFp6BZqeOTP4odSfULMVWgfM8e1+zJuXdGYv1IZyH4Gfvutxu0nnNgIgFSv6MVX0si
 tXUQVxVqxFX2yrimREc43Md5S9zo2ZIFPs4e/+7kpMcSkHBXVtRp5dmf52IubD8h2AkF
 4w4495NRXYcR057MQQnk54vliz8MANYsUsxH0rs9V7yjridMT382ENsAExAp1NtMqEa5
 LK+g==
X-Gm-Message-State: APjAAAVR8xTjDV2P/t0sPpA10wmF9wZ8AG2s58u4DZwjY//sOXwc4yyV
 e7OdMktQ8ZCqGq6vLrI8FoTiqg==
X-Google-Smtp-Source: APXvYqy1QFcdBaNSK/vZaJl7cUaoBDnBBJPRlMAXTpmkfOsy4mLwiwytHZEScxC/mQYNhuxZsgvUow==
X-Received: by 2002:a63:be4d:: with SMTP id g13mr8899385pgo.257.1572552184348; 
 Thu, 31 Oct 2019 13:03:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o1sm4230452pgm.1.2019.10.31.13.03.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 13:03:03 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:03:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated
 assembler
Message-ID: <201910311303.2FBAA3E3@keescook>
References: <20191031194652.118427-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031194652.118427-1-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_130305_857948_E90773EF 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 12:46:52PM -0700, Sami Tolvanen wrote:
> LLVM's integrated assembler fails with the following error when
> building KVM:
> 
>   <inline asm>:12:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:21:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:24:2: error: unrecognized instruction mnemonic
>           NOT_AN_INSTRUCTION
>           ^
>   LLVM ERROR: Error parsing inline asm
> 
> These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> which test for the existence of the callback parameter in inline
> assembly using the following expression:
> 
>   " .if " __stringify(cb) " == 0\n"
> 
> This works with GNU as, but isn't supported by LLVM. This change
> splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> to fix the LLVM build.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/472
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9..324e7d5ab37e 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
>  static inline void apply_alternatives_module(void *start, size_t length) { }
>  #endif
>  
> -#define ALTINSTR_ENTRY(feature,cb)					      \
> +#define ALTINSTR_ENTRY(feature)					              \
>  	" .word 661b - .\n"				/* label           */ \
> -	" .if " __stringify(cb) " == 0\n"				      \
>  	" .word 663f - .\n"				/* new instruction */ \
> -	" .else\n"							      \
> +	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
> +	" .byte 662b-661b\n"				/* source len      */ \
> +	" .byte 664f-663f\n"				/* replacement len */
> +
> +#define ALTINSTR_ENTRY_CB(feature, cb)					      \
> +	" .word 661b - .\n"				/* label           */ \
>  	" .word " __stringify(cb) "- .\n"		/* callback */	      \
> -	" .endif\n"							      \
>  	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
>  	" .byte 662b-661b\n"				/* source len      */ \
>  	" .byte 664f-663f\n"				/* replacement len */
> @@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>   *
>   * Alternatives with callbacks do not generate replacement instructions.
>   */
> -#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)	\
> +#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)	\
>  	".if "__stringify(cfg_enabled)" == 1\n"				\
>  	"661:\n\t"							\
>  	oldinstr "\n"							\
>  	"662:\n"							\
>  	".pushsection .altinstructions,\"a\"\n"				\
> -	ALTINSTR_ENTRY(feature,cb)					\
> +	ALTINSTR_ENTRY(feature)						\
>  	".popsection\n"							\
> -	" .if " __stringify(cb) " == 0\n"				\
>  	".pushsection .altinstr_replacement, \"a\"\n"			\
>  	"663:\n\t"							\
>  	newinstr "\n"							\
> @@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>  	".popsection\n\t"						\
>  	".org	. - (664b-663b) + (662b-661b)\n\t"			\
>  	".org	. - (662b-661b) + (664b-663b)\n"			\
> -	".else\n\t"							\
> +	".endif\n"
> +
> +#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\
> +	".if "__stringify(cfg_enabled)" == 1\n"				\
> +	"661:\n\t"							\
> +	oldinstr "\n"							\
> +	"662:\n"							\
> +	".pushsection .altinstructions,\"a\"\n"				\
> +	ALTINSTR_ENTRY_CB(feature, cb)					\
> +	".popsection\n"							\
>  	"663:\n\t"							\
>  	"664:\n\t"							\
> -	".endif\n"							\
>  	".endif\n"
>  
>  #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)	\
> -	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
> +	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
>  
>  #define ALTERNATIVE_CB(oldinstr, cb) \
> -	__ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
> +	__ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
>  #else
>  
>  #include <asm/assembler.h>
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
