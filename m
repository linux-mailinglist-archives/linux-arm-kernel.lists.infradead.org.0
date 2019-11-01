Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F836EBCA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXbdAgH3R4SqCYwqOIbt/752ymZ+a5K+WtDFjst7aRo=; b=hr3pCi6OKXneNA
	UdiA/q//e3Nm/Le9gA8fTUjj0qS3go1L0u/s2FAVY7rOE2WnHwfdwiEX3DQTCy+hjdtevYRSs3aPp
	JHv6pJ4xgBd5AHscAY5ZI1r5NC5kbYgBjopsc4pnwQS7rz+wydUjyEJxHuccg4/RWhhPdB8TVC7w7
	jhZYI7sx2ify6/Bd9LvUl82WXFQ7Wvawwf/b1lbgyN/WoFfAwPb1XapbTQuLeqoT26UOSfhPi8zEw
	CQtOqFUJibdn63H5/GTfQ2/dezVJt0jOpei/v4a/FJOwmSaj2XetmADXOZRWU25cftoOjR4kGkyKr
	ZI1IV/Wt5LDrRrkXtN0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO6l-0002kj-Vk; Fri, 01 Nov 2019 04:00:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO6S-0002dl-MV
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:00:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id c184so6112458pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A7vrO+MQB63nPz6FPwTRdUgznbxQobdODcdehGRotvI=;
 b=SoIAx/f+o5ObJpWgtzqlvIdoi9BrVBtR0sORn7UXLhxKD40+Hq5g8o71ljOsCw58Xu
 nV5Xy/0YwVtNd7g4N0HQfZNFqvK0+sr9AAyTxnNs4Qwhx3+vEE4Ynyv8Aid4jjjCxSzD
 BwrcVTfNY0xZuV8VaybEOQY3+plZAuUInWL9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A7vrO+MQB63nPz6FPwTRdUgznbxQobdODcdehGRotvI=;
 b=Nw554XurS1fic3Mz5zGsKgIRyViHmCy+bjw+91k26UhM+U7ER0tRXqOHZeBLUwp/CV
 hd/JVlpn5vlOglVhNTSKOrHx6wWkqx3D+zbs4KBsvzXqwlj/cKNaflWIitd9FIWTjswJ
 d6RNRmx8Gr65W4wUcpuSEflYADrOAFlojmxB3lWX9xnYNjERtLi4PxXNf00O/vHsds/t
 kN8bqe1cEMA2G3FjJAFws7lmXryfHtg5b1so212wJbTdv4ehQpjNdED4duvSyAZF7d/d
 6HMe//Tt0UR2BMeWZxWmraEM7BZ+YUOdP+Yt702ekU+8b2NFksCTTUbgHToSes+VX+nk
 YKEA==
X-Gm-Message-State: APjAAAWtXE9CQYuo9WfVGj4B1NUx1g5KzPX4Fa48YRw+7oX13wzz9Yul
 UrnHK4RKZ1nK2xWvCiOSEwVmBQ==
X-Google-Smtp-Source: APXvYqxYKGSK6I8b7hoUIAqJTB3Ku0XRihpPu4nBcAxKCNBJscoqFmYbPUJv9aMkupfl7+/RJ59IiA==
X-Received: by 2002:a63:611:: with SMTP id 17mr10933319pgg.191.1572580800014; 
 Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v19sm833472pgn.84.2019.10.31.20.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:59:59 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:59:58 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 12/17] arm64: reserve x18 from general allocation with
 SCS
Message-ID: <201910312059.C43A11D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-13-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_210000_733308_E15A4B17 
X-CRM114-Status: GOOD (  14.29  )
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

On Thu, Oct 31, 2019 at 09:46:32AM -0700, samitolvanen@google.com wrote:
> Reserve the x18 register from general allocation when SCS is enabled,
> because the compiler uses the register to store the current task's
> shadow stack pointer. Note that all external kernel modules must also be
> compiled with -ffixed-x18 if the kernel has SCS enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>  					include/generated/asm-offsets.h))
>  endif
>  
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS	+= -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS	+= -mbig-endian
>  CHECKFLAGS	+= -D__AARCH64EB__
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
