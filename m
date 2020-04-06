Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D7019FD19
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 20:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz9hPbeR8vn88p+tlQmMjksxGnb8W4j00PQrFa5vCfg=; b=pIFPNCEy6p/skk
	JQz83d3lXvrfZn5d3ToiqrMU0TphbPoP/BW8Qpcv9uu5ReHY2rIGaafUS6p7sOEtWnPQ4lF19pm+0
	0kfPvoREknhWx2w+talMtK9q8wDvKDBNeuONrkeguYdWAdXuZLFPKgPSpBIIUmCpeG1YsX3z11h7h
	n22Qq6xwgtTkpctZOk8zDkkm6gLlE7A8po96hcxNduH63eKB3/h1arMUOQd9mGHTSLTLap3GwvLgf
	k5e98vao+v5Q0prJ0WEW30I99rdl23BvdNm1I+CYc9yDwT85qNCxa5OyisVVNvtu09yvEWLYef1Qm
	CBXhBZT0z5NOtGybI/ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWRO-0005SZ-OB; Mon, 06 Apr 2020 18:25:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWRH-0005Ry-Om
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 18:25:41 +0000
Received: by mail-pg1-x541.google.com with SMTP id o26so369867pgc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 11:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9XYlLQFnWWwdu63sAOZZGoKgEJL0Ub8ZWN6C/xE+U6U=;
 b=SDponCt4iCqvCfanCAa+3pMV+vTOM+mT//ho9jt22D8PbBsbH2TJbTcKnPOBjtwXoZ
 SQGfpcE+gQXFzNGbuAmAiUIxrWnTfyp79v9RE+eyo4jV4iEqo5Rzj6koUCpF2IQ8lEGG
 y96wsJ90XGooCKj5qCos/vO8fxQnHFE8YVifk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9XYlLQFnWWwdu63sAOZZGoKgEJL0Ub8ZWN6C/xE+U6U=;
 b=UpgeXQII9/kXp+6CEXO0OD+MRhkeEHHLnYnpMSEKilVUbckJ+3/66avVaVpQUMUOU0
 eBJ2FpF83ij++09S4VWS8Cxlds+3XUMYJSZ+yuvKxfxWrJbOce62vQPSRUQ7hQChfP/m
 9ueFosHq4EC/FL6tIIv9nfpWYAeiBITlk0m7SLMXPlTc5RqGkUdEsiLhBfUBssm8cOEG
 rxAnhTRtwm7u6YGkkD0w/NXVqOygE9avBlkB1olu88ckA2KvK74KQfVutrvHIu32I1TW
 M6kqnCpHHwAuZh/TMKP5+n8RlHaTpEwfQIwcGBQeIPztUBpXS2R6J/j3ShQmiiYNoaBF
 fXKg==
X-Gm-Message-State: AGi0PuYjFxrPQP/o/HVV408Tx31tlIRhuLboX8RJbaPuXo5No5U55EtF
 OioxxSYdJbb1YcBOb25UGqvn5g==
X-Google-Smtp-Source: APiQypL0jJAGP0KYiq4xc4nfkEj6Ve2H6MRdFYIgYzUTD/bPjtmfpTZVeXWK4n9dyWmezbWFwHJWVQ==
X-Received: by 2002:a63:9143:: with SMTP id l64mr388752pge.75.1586197538998;
 Mon, 06 Apr 2020 11:25:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 17sm1673185pfa.8.2020.04.06.11.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 11:25:38 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:25:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v10 12/12] efi/libstub: disable SCS
Message-ID: <202004061125.A4C4EB70@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
 <20200406164121.154322-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406164121.154322-13-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_112539_810444_D4F7157B 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 09:41:21AM -0700, Sami Tolvanen wrote:
> Shadow stacks are not available in the EFI stub, filter out SCS flags.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
>  drivers/firmware/efi/libstub/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..fa0bb64f93d6 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>  				   $(call cc-option,-fno-stack-protector) \
>  				   -D__DISABLE_EXPORTS
>  
> +#  remove SCS flags from all objects in this directory

nit: double space

-Kees

> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> +
>  GCOV_PROFILE			:= n
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.26.0.292.g33ef6b2f38-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
