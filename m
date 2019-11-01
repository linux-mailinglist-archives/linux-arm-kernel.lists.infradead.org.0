Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B4EBCB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFoJsqiuUNZd0E/H827hIfI5m0nu5Ay7pankkBI4t3g=; b=EK2/Z//ggdoLSh
	N4okDQ2yTqMbe/NWveQ5uZeyw9BT4zuouTeSneO7Su6Hxz1Cyd5qL0qgHHZNo0oHA1OiFPLD/YhKd
	xUKE9GWUX175oAjKdpQnWna7vhlHRE1q7koTU+OTddAar3ma4T5hS21apPymEErb/Ta/l8W+3W/64
	4qBJeN0TO0k6qh5Doq3P1zd8Px3PQcRbrf5Cltn8RRyvJiTIdQVUV0T0g6UVs3cbVAuJpZ4mswT9B
	DiRDh1kctGybCWeNoX/8BpQ3kmJPyrqTFoB+rdQQm3OBtQhYgB2bNc6KUhSWg9VTRJkY5XjzkmflB
	de6s0YnQgH+/e5UriGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO85-0004PE-UX; Fri, 01 Nov 2019 04:01:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO7x-0004Oj-NK
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:01:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id p12so5607479pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0eLf5qXAn9yR1tTlhAmZ2Kyb0+x5CBMrOVTM9Du04Q8=;
 b=A00p0LVjeslqYiGa9TTMJecCqjqU7CuF+R+GJN9ZwqNA5P/P216qCVQztow4VmlEnX
 tXLnkW6Xadee2MXfzJDDN/6VDJN5Hvg7PpCaYjXDQRr3aQ7tgxO8Gz8ZM85B1pEViloJ
 seuhFXQr7ONKb9UEjQKAiqbFkyir6kSgsYGMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0eLf5qXAn9yR1tTlhAmZ2Kyb0+x5CBMrOVTM9Du04Q8=;
 b=ZZwEKVRXLVHS3uViODCtxngxHzEbbul8MLeFxpGMPFj5pWa4Y7qQPkNROGMAxlJvou
 u90diQfQwsn4lV4qb7u5fUfiDRBDLj0juYmnfA8FcZtn7gFXj3//hpuCD5g8agK63vci
 2iUdwH8m41GfuSo2RW+SF+OaeUIJzlr7BnVkL0tup94xRZuVKT0ce2o13+zUDzCOPSAx
 eILfybIQ2pR7015zUTiebcVcKG4JFT25GXgVtE4OEf2oiXwwFAchSP8mUGebaXAADevb
 cDBkebV+m46h87aWHcj8KSCebgqpA9rRKr7S2iiXBWbb/7ByIU6MTg7wc0AkBzTlA9dj
 NbPQ==
X-Gm-Message-State: APjAAAUIrWAz+MOWEaNskGaELOlC+VbX/Oa1u94lXPy0hEPspTKWT6bL
 1hUiyMfaR9wqHHJSclwI9RaQ+w==
X-Google-Smtp-Source: APXvYqwGmV0Y740oqbS4ugktxZHKaSCLqRcPnlrVthpsiltg8oKVKBEvzW9AoxDE8RXSX8ETUSyBWw==
X-Received: by 2002:a63:5422:: with SMTP id i34mr11142718pgb.142.1572580892713; 
 Thu, 31 Oct 2019 21:01:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j11sm4952818pgk.3.2019.10.31.21.01.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 21:01:31 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:01:30 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
Message-ID: <201910312101.4F2048D9@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-16-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_210133_761709_C114C47A 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Thu, Oct 31, 2019 at 09:46:35AM -0700, samitolvanen@google.com wrote:
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I think Nick already mentioned the missing commit log. With that:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index dd2514bb1511..a87a4f11724e 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
>  
>  VDSO_LDFLAGS := -Bsymbolic
>  
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
>  KBUILD_CFLAGS			+= $(DISABLE_LTO)
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
