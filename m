Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDB914C327
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiG7/rQQkyMRQ1L7tnmzhKRAOhtA530prcvP9FislI4=; b=h8kYZ2j820baG0
	RIPQZhodCnM0dzM+GmlM0U0S5dxwEqwjghgubuG1VMx+80EeDVIUNn2nzUMIg/X4/DC+YXXAsguiK
	ldywfyfM/65Opol5xO7BJJIoTj0nmwpyWRjzI5vPjWHoxzRTTm64yhh1g58x9hg5A5nJqujy6fS8E
	4mG9TFKdSrU/e5W5JLSl3fCJ/Y+8l+/wUV68Q0+KfdEFzpzCyriBxVDyo69Yt2vwKgVDX0w5SnoCh
	WGMDo/REovGV5pEynJNTksfID9o02onOgAbXTjNw9oOjy2KE1fMSIXQ/AeKeqIQGRAzN+0+7lL3Kz
	QFGBHn70WUc5bkaQo27A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZgX-0006wB-Hc; Tue, 28 Jan 2020 22:50:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZgJ-0006Tw-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:50:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so7800842pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 14:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eHEMtu7LgfkFmyO7oGGN1Lq9IQ3mukp2v1f/r5o0L0s=;
 b=T1hFsGEO0/ylAav9HFUtgqeRhLCk+8mN4axKzOMQw6onWhdziR92MjVxq99AAlFqvU
 kku1dM+53W1OlgPVvAdZpJUQQFRFZXSDYoFSRxG+GgXnjw7uLYw9w3Uwi+5GnyvWh7Zr
 AS8uPHr3/+DROwe5Czh3qwOMmnX6Zh6aNF314=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eHEMtu7LgfkFmyO7oGGN1Lq9IQ3mukp2v1f/r5o0L0s=;
 b=CG3N8eYMnZ9l3N2yKSv9vdWOz9JKin9muU7WYAUT7YDkmUiYE7hsO6LORGoiTdQM8p
 mrSddZKXmf6S09mwFM2G7Fi0JWGrIsopZFB+qvbvO08oWloHJEvLrwtgTT4FVn0uomeO
 lILr/EtvKLPUJou/6EHja702PaqdFbxfTHfYcd29LrGeBpmI9I6HixtmnwYFFM+u+wo8
 RqcqPGhsuzH6hjX1I/5auDAkDLv5nDL7m/MbuQyyeNQrYyx2DAmUguuE7F842WOCUs9p
 h4/QmgjkjAJzL8tdD3+znqadkPf/lrmWeB3jYJAnOxcfUa3X2XhS6E3/IH5S1+5R6/p/
 DjBA==
X-Gm-Message-State: APjAAAUnP3BEEjLuP85Iq8orvzgrZQaHSihhpjohof5aT/+0OyeaAkm8
 he3sesngEvCo+DoibCsxzprguQ==
X-Google-Smtp-Source: APXvYqx9wzHAeZmTEPl0AGnf9TAiBUX0F1ZcpzaNR4O6MA9xWbzMW0w2pC5Y4TVfo8+2jVMqh5iIHw==
X-Received: by 2002:a65:5786:: with SMTP id b6mr27614437pgr.316.1580251802779; 
 Tue, 28 Jan 2020 14:50:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s23sm2178658pjq.17.2020.01.28.14.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 14:50:02 -0800 (PST)
Date: Tue, 28 Jan 2020 14:50:00 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v7 04/11] scs: disable when function graph tracing is
 enabled
Message-ID: <202001281449.FB1671805E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128184934.77625-5-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_145003_746890_B12B5669 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, james.morse@arm.com,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 10:49:27AM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 1b16aa9a3fe5..0d746373c52e 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -530,6 +530,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on !FUNCTION_GRAPH_TRACER
>  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	help
>  	  This option enables Clang's Shadow Call Stack, which uses a
> -- 
> 2.25.0.341.g760bfbb309-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
