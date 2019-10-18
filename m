Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C263DCC47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVyrDpBIUaH/Z8hzasMhbBLV36zpocJ+HSzekqQoGVs=; b=bUk37uDhR5iidi
	Hii1xv57buCXr5p8RC6NHKwtMU/qHIDcD9XqShdEGHutd3S5C6mNeF7yrczxciFzZRu1WCoctuPc2
	mEgf2ZoO1opVfSoLUymwwcwyt94QKvFSyJbiItikrzP2FbKM+TMwYpEYLZPQfS6fIUrxHHO49hDVz
	Cg+T9VoLoPEFmm1qKhfzOm19myqc4qepwlrXLSUL4bsmiJsjHuwHH8lu1jwmzNobu3cN64eZGMQYa
	iY4G6ezbUaeF66IqFSRX5G9VKLR8v8/CnbcUUnziIDgh8W6xaA2gbQ4XpWLVBRqm/n4HOtZQb6AMD
	EDjORf6ruvPfGvxAVgmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVk0-0002Z7-SQ; Fri, 18 Oct 2019 17:08:40 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVjp-0002Yk-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:08:30 +0000
Received: by mail-vs1-xe41.google.com with SMTP id b123so4512510vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=icZdr5RXUlfIVPQUZ5ag+GwSMhqiqaO3j83adcgUQWY=;
 b=GEpdi/vgYB3Dbp/h96wQEbZdgTLwWntVY74quNjgbeeg+hzsMk/zZrigXjhZJrnpFb
 1sCxD/BkPu3n7ILO/vPRn92A4D4Pr6zGfOnoOhHoLbcienF2os3HqnY38YjnZQJ6CPhG
 2cEVlEkOD94zB1mmdsNc/rgKAweeHHSgQwOR9VQJUeRc6eDJnhZALabYW62do/0UnUKN
 RPD8sUmEbIHcS6c0uuy1U053bUE0xElIjmjrspvbBm1j/HBDqlS+YM/Eb3VkslwJ1EmK
 DxiIUIGOP9sE/R5mKuzwIB5v1VMKO+wkGaN/oK/qSJiYn43BeozwBBvtWYrtPX2GM7z4
 dH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=icZdr5RXUlfIVPQUZ5ag+GwSMhqiqaO3j83adcgUQWY=;
 b=TAnn9uRm1kRQIhyOoLqKS+OfyN43KT+BcKofUdzj/GaC5qoGgSt/IRthzwA1datJoK
 Pyy/sSMm/B26FXgVdVdMZceyJ1sP8XvXf/6xaSm9itr7yqH3zFCqxT1NA6L7DH7zhcWW
 B3ycailOkmSNJ5qk9gThLGWaqsPbsDXxbqhAqwBr8vIA7PdvMzQ/D3LNRra9MM0d8F0h
 VQL58QaN9SSfvXVGe4ao/TZ0UM+BmVhwr8kfEX0ChaAXbv1vuueVverNh3SKEbjOXfbu
 bQmE2ZfmfFdTnrILP/P7xsc7NtKQR8Ugm1F00c2aG37c/1a6rFRbpjqHMfx/P4MC/edL
 MaZw==
X-Gm-Message-State: APjAAAVAR4RhIGm0pcm8SMHOsQKWfU5108VLMwQjYn0tNJEq1t/u158J
 xR0xSMAWW7ITgTXFI3Jsheu43EHysp8PAdOiPmDN+A==
X-Google-Smtp-Source: APXvYqyzzIiNyDr2Id6Kr8DVoqWVgixdTZAxPTLo1g0mx6+HWc+w18Nu6n4FjKGbHpDO9wjpt2GMM+GyVFTzkMX0z78=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr6015143vsp.104.1571418507964; 
 Fri, 18 Oct 2019 10:08:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-10-samitolvanen@google.com>
 <20191018130127.23746ff2@gandalf.local.home>
In-Reply-To: <20191018130127.23746ff2@gandalf.local.home>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:08:16 -0700
Message-ID: <CABCJKufdDxJ_q-8Sj3+4rPuhAB3bdo_EN=DybZF5eenwZB4v3g@mail.gmail.com>
Subject: Re: [PATCH 09/18] trace: disable function graph tracing with SCS
To: Steven Rostedt <rostedt@goodmis.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_100829_505068_AE543757 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:01 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> NAK, Put this in the arch code.

> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b4257b72..d68339987604 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -149,7 +149,7 @@ config ARM64
>         select HAVE_FTRACE_MCOUNT_RECORD
>         select HAVE_FUNCTION_TRACER
>         select HAVE_FUNCTION_ERROR_INJECTION
> -       select HAVE_FUNCTION_GRAPH_TRACER
> +       select HAVE_FUNCTION_GRAPH_TRACER if ROP_PROTECTION_NONE
>         select HAVE_GCC_PLUGINS
>         select HAVE_HW_BREAKPOINT if PERF_EVENTS
>         select HAVE_IRQ_TIME_ACCOUNTING

Thanks, Steven. I'll fix this and kretprobes in v2.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
