Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D5A19696A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 22:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XbOnqPMQsb4Ec77w/qDpAg7BXvfL0aOJjFSC7o7baI=; b=GK0QjhZtQuapUy
	tiSxD7aEThswweetnm8d8rxon51dZrZHmGhVaSwhTtKO6vs8+8GZ1DQGnvsTkVk3fp/uahoTJ8DWR
	Xo69ArTE+GBMNUFvj5QHZ08Bs4FXRg6eZzXI6KJcMCVsSRCclOYDNenUklEillKchTUwTRv2uX55i
	khAVrv9H9ESG9ZqHf04UiJPgfrUdmxKV7erp89UiXIW4SqoVFdNAPFwkcElxVNBJcbsJkQWwKjPU8
	jqYlbieafPBEu5WYp2DhtTwJsuV7PNRuYczmLhxRwzE5saAkuZLMyQnCOYJlYq3Rj0vELH/8NizNJ
	ryKstIYBTQrSrwMybdWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIIs7-0000Qz-6m; Sat, 28 Mar 2020 21:20:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIIrw-0000QQ-Sn
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 21:19:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id b9so4994735pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 14:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=p31D4b7xXeHdXVuvDBo6WTQ+M9u4+E8Z3FZSkv19XcQ=;
 b=c8T+IWmZU486uIj6smH2wCMmjRH2Z6qoEwCCoLVYvTUoYbhipRutOQowwFsTF+B1U3
 vdUZYFbraCzyCoN+U7jCS74W5nPurTqOrLdrAN44rUO2P59ZWBGmLcYWnZXny9BM+aMG
 XJDcEw9wsJJRn1qeGeLpnKl24U+eEfz8IJ9OE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p31D4b7xXeHdXVuvDBo6WTQ+M9u4+E8Z3FZSkv19XcQ=;
 b=rB906+KVCSbBBgu2AUwyf5vv4Cfa5AnfSVuZljEKGGKekTU0XlfPutv4QuCj95miDX
 ebP/GdTSHnSFcegVUSEY+Hw20zQMWQZCb24uOxeZykZZ3Z7tBrKalMONo3fagQfEWmcn
 ++iz5KEMRLhvT5+Ym5v7HPy7g3VpiKCOm87lPWaP+lb+0EG+7Yjd0+nNi1tlJsMse8Zf
 tgq8F8f6L60TchaTYTquM1UxYDQBJFYmzQDqW+TrdnrTiC1XoYzUhg6hlHCQzqTXQSPz
 NUBH1cW6SIAx7UBj3hdqhX7iFaMRWfhjINXu/T1R6LDPuHxn/XLjJfxTfGGwv5T/ER8X
 CKIw==
X-Gm-Message-State: ANhLgQ05tgKL2XfYzHbbo4TCF1YQ4Yu5MaU1XQILbVD9EBTD+J9s6rCg
 rGCulAdaWju4tOIHsn979iRwtQ==
X-Google-Smtp-Source: ADFU+vuMKOFrcjjrCBEGtJdKLPfCRM3QQ1qDL71YbXeEDmuYCeAt3QIW4DhwqaXLpRT7taK6HL0kdg==
X-Received: by 2002:a17:90a:a414:: with SMTP id
 y20mr6985852pjp.124.1585430391559; 
 Sat, 28 Mar 2020 14:19:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b2sm6423712pjc.6.2020.03.28.14.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 14:19:50 -0700 (PDT)
Date: Sat, 28 Mar 2020 14:19:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 5/5] arm64: bti: Provide Kconfig for kernel mode BTI
Message-ID: <202003281419.718CDC24@keescook>
References: <20200327192107.18394-1-broonie@kernel.org>
 <20200327192107.18394-6-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327192107.18394-6-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_141952_953744_9960FA7E 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 07:21:07PM +0000, Mark Brown wrote:
> Now that all the code is in place provide a Kconfig option allowing users
> to enable BTI for the kernel if their toolchain supports it, defaulting it
> on since this has security benefits. This is a separate configuration
> option since we currently don't support secondary CPUs that lack BTI if
> the boot CPU supports it.
> 
> Current testing appears to show an issue with GCC which causes it to
> emit unsuitable landing pads for function entries in some cases, until
> this issue is understood and either our usage fixed or a suitable
> version of GCC is identified the feature is marked as incompatible with
> GCC.  No issues have been identified with clang.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Kconfig | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 00cb4db4beab..25bb0931b2ba 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1607,6 +1607,24 @@ config ARM64_BTI
>  	  BTI, such binaries can still run, but you get no additional
>  	  enforcement of branch destinations.
>  
> +config ARM64_BTI_KERNEL
> +	bool "Use Branch Target Identification for kernel"
> +	default y
> +	depends on ARM64_BTI
> +	depends on ARM64_PTR_AUTH
> +	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI

(this depend can be dropped with my crazy Makefile suggestion)

> +	depends on !CC_IS_GCC
> +	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
> +	help
> +	  Build the kernel with Branch Target Identification annotations
> +	  and enable enforcement of this for kernel code. When this option
> +	  is enabled and the system supports BTI all kernel code including
> +	  modular code must have BTI enabled.
> +
> +config CC_HAS_BRANCH_PROT_PAC_RET_BTI
> +	# GCC 9 or later, clang 8 or later
> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf+bti)

Exciting! :)

> +
>  config ARM64_E0PD
>  	bool "Enable support for E0PD"
>  	default y
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
