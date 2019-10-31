Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B3EB625
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWCW4SlBL1DnRAilv0Mby+iLF9vFuqh63xrVtn09W4k=; b=SWKxhf/IgamKL1
	+mbqDK4/qGbnku/Sjra3nuqorTz59TmRn7TAf0rIDNu9E6WaDm8YCJNV3Obp91Mb59lBW3N7Ekuf3
	hl6Wgatf517O9MIowZX5T4J2jcI+st73TrzBaX2DsF14+7iBWh60VAVQK05Pkt3Gsam/fjWLveh06
	D2NKGsjj0aPQxJBBwfvPKwlyrq6VoMAtemi4UzwMRBCYnoVq++uy05QiGKh41NReruqR/OJngeg7h
	kolsvuSo7bu+aI3+B35S5wmNQBFeuGY99VrMfUQrJ0WnNiGI7avyPpZKDSwlQblKPvoSt2GclXBZm
	NCNQFLt1rRzzALDFNK3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEFt-00057S-MK; Thu, 31 Oct 2019 17:29:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEFj-00056q-Vr
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:28:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id w8so2988613plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6m++fSIeBZqcJkeOt8/Shjtnuo+Q7rdlGD1c3YsGie4=;
 b=gpOK87CJRb754Y2+vKxaKrfCJA4dCHJjEnrqUCTDyVh8ydN+OuHauU0RzeuaqcPPqz
 8NeU4ITnb3rEWRmC3gSLVjVWnVesKGM1oyS/yh1NVuxjprhNF47oEx8mkDlnMjX5UGW5
 JiROU1AiJ8h+8ySX34AX4ACrznfiflDYVAMZM4a1Ar3B/7Tg5JN2SEMWHv3bPcn4f9qv
 R2QTmF9UEBbN86wcvkIxoBSkI67Kwa+sSYeRuJikIaYcxF+xfeewIHa6mGB7ZX5LMek1
 44Q7BbPEQbga/h7AhHpE5nwsTjoLhikG9VeHjhjiil8JtMG8WHEWP49lOfvP4ttwUXFY
 /yWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6m++fSIeBZqcJkeOt8/Shjtnuo+Q7rdlGD1c3YsGie4=;
 b=ajA7oqNJpizkDNI2FoVpXSukowwexZYkWgM+SACvM4MfVeuLlq5wYmC3IDlwHBhRdY
 jSELxxQHd2SqOhrDzdtWtEvaxP3Vo31too2Bs7mbxpCDrLh95PftxUFkB5f8oTMIHpGO
 r5V7ftmsR1LufDQZYGI3p8R80WaZ1QtT9EEs2viHOVhkmoEgUrxjFRPA8ZncD77BBu+w
 slgkIX28moRl1gCqBBbYwFLHt/Oq+TvkyA8SzZVWHDopL7faI1Fo5BhhrpY6yzshOfXB
 z7jemsklJk0fccQmraLBcQfFlS7nHno391ug0VqYnW9LNE1Le/HowqoTGmnSzDVp9A31
 lJJA==
X-Gm-Message-State: APjAAAXN11FkN6+SD5SXEgoXGJEYQufm4NiK4k+TQm0jnPzQITqpuFaA
 h/7ce97ifD1jYNVHIdK4qT3XvZMnUwzsAtVasZxmvA==
X-Google-Smtp-Source: APXvYqz/zaeuQgN6H9iXB6EC1IiRwlJeGkd2Ujt7JrblzBduB3a+f7TFswdMNV3RtEu438byzq5VFDkdG5vZyTUTeko=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr7530087plp.179.1572542935004; 
 Thu, 31 Oct 2019 10:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-16-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-16-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 31 Oct 2019 10:28:43 -0700
Message-ID: <CAKwvOdkAe9TeB-dVqrDT7ZRQG8U4nHkkHwiDcRRPPY8w-Q9wQQ@mail.gmail.com>
Subject: Re: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_102856_053000_BA4121BC 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 9:47 AM <samitolvanen@google.com> wrote:

I've gotten slapped down before for -ENOCOMMITMSG; maybe include more
info if there's a v4?  Maintainers can take the safe position of
always saying "no," so it is useful to always provide an answer to the
implicit question, "why should I take this patch?"

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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

Looks like vgettimeofday is the only remaining source written in C, so
we shouldn't need to strip it from other assembly source files.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  KBUILD_CFLAGS                  += $(DISABLE_LTO)
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
