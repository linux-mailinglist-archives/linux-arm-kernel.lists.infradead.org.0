Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D2BEBC9F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kViqTDT++hJIio+j6Y8c8CTRpEdu3SHW2WmYDMxzcNA=; b=SutPL0v3qQibxi
	wrAcn/5q/7toDSdJ9l2SN/KnONfR+3VgACpvAnPZKdXUIkBzSZ77+ozmSn9hTIjApaqg4swOPdj8c
	X0FL+gtyZNAFRuCOZJMpsEbCBYUSIyVy+Q4/66j4L9uTx6bK6yVB5EojKo3tvaghXdYGarttU9lVa
	KiKz3F98aXzwl4lYGWwTB6PWj1HkaeP9B8jpjd1bmLAxe3meI8Ijtt8vdB53ps9Xxcjl6Fj83EA0f
	hvxndK7AHB+M33yPe+n15X/F7CuVvBNXOXab9oEVBth/D25fvAO+B8aPpbYbX2dBripxvIg2zWJ+t
	5ev/1pwwQ0eelUuA0Arw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQO4p-00024P-JI; Fri, 01 Nov 2019 03:58:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQO4Z-000240-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:58:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id z4so51801pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KTD68U7akKeCQJeQQO/3NWtyqqeAW/3/QV3ZglVyD2U=;
 b=g7eFmtjav3cj0iIv3dbseME7IVoTl6guKvHDgto9iv8aby8HSUCvIJ9sygsE5R3aF7
 sKXlGLL8uYrezZz9ZBeSn3ezAH1xjYETzfnrSaxHbKNbjiGxvuZvvDGELcQqBkpd+r4G
 E7p34oIlOhqLBiMnYarxTp8OFroVAyrGZ/Sfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KTD68U7akKeCQJeQQO/3NWtyqqeAW/3/QV3ZglVyD2U=;
 b=G4qsUrb9NrPYP3+SXocl+5oDGWx9/F+1Frr+uesFLBeGYHaLQNqtqB9I4CJEvbtFUL
 YGE8aM+K/inDDJ+B5jpDrXpaiG1kTC+jYtscT4RJ5oPsWhGHNCafl+JfbfglWSMhoHvx
 kr997P2rS0HKkap5WqoknSQZnyRVfLtpWu08D+sqJJwGWEjf1LphbNODDyQw5Q3hzD2Y
 zLlu5eb/7w82/edCaxBtbIHxkfW54SCOW/+6WkFpTkjm6s0iZ5NbZTj+7CDXimTcDhDM
 l63hj/99LFelFwTslcMByZQhqj5fwFnHfdov4fJwFInjp+nUIJhfGAf+HJynDOl6Oqha
 HVfQ==
X-Gm-Message-State: APjAAAVhGgTnsRQ72Wlge9Q/adWZhELF4O2z4GVMZnK2AwH+92xx9TI8
 aMad4RHIZHD8h5PeREFMmUZspQ==
X-Google-Smtp-Source: APXvYqzUltQIjex4hQjkY+4c/lISYONuL0ugq2i91UuUeDXV/D7mzBYyTbSsX4Ym4f6zfYJqkCbq5g==
X-Received: by 2002:a17:90a:d149:: with SMTP id
 t9mr12088130pjw.108.1572580682690; 
 Thu, 31 Oct 2019 20:58:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y2sm4973514pfe.126.2019.10.31.20.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:58:01 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:58:00 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
Message-ID: <201910312056.E3315F0F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-12-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_205803_267865_B3612FED 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Thu, Oct 31, 2019 at 09:46:31AM -0700, samitolvanen@google.com wrote:
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> SCS.

IIRC, the argument was to disable these on a per-arch basis instead of
doing it as a "depends on !SHADOW_CALL_STACK" in the top-level function
graph tracer Kconfig? (I'm just thinking ahead to doing this again for
other architectures, though, I guess, there is much more work than just
that for, say, x86.)

Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees


> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e7b57a8a5531..42867174920f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -148,7 +148,7 @@ config ARM64
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_FUNCTION_ERROR_INJECTION
> -	select HAVE_FUNCTION_GRAPH_TRACER
> +	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
>  	select HAVE_IRQ_TIME_ACCOUNTING
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
