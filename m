Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230B0EBC78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6Zh3glxKKx9D4VsGK2vj+iH+HJxP4DEFmxtkBaqGxk=; b=Gy9fLdxbCaW2mo
	BnWrar/6EjJ04bShEbcmPdXKNMtF7nu3gd57mpDL4cYKekLUrrfGJwYzY+3CmE5yCxsBEPwUwMCsz
	QgniYY9aC3QVzyrvVmWcbuD5k3Pm8zWutNAUmtH3al8uVHlTw4nmA9r00rP40Xac3hZiBDzCadoZb
	sn5oP8zSn3ZVFJuwZXMJcTANTuN33T4BfzZTl5WsXkvG3OcdF1xjLWaJjkCiU+abB3S9/cvAZEDMY
	QbvgXaj1AnsrqgUZ4PUVUw+gvQ3eIrRsR17w4oFwZgYahTnlbDGaEmJGSyPInsVOUk+UHnj+X3DA6
	9vZoXBZE3nPCNgHnrXgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNtc-0004aA-GF; Fri, 01 Nov 2019 03:46:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNsz-0004Kc-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:46:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so5572686pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ipB5k5z37+Fd8igQLbmVYrL5E9roHGbRK+wBmA4Y9yU=;
 b=IJQVm+nHblMlKtJOM196C6hcfBE3KUu5qTQKv0FOe/rkT2KShvxSF9ZK3miYtArp8S
 iCx9zhvAVMbHgtEQYP6IvQSYka4Me/BNhBXNxL6j6tLCRlIaOcOYAOppDrF9cr1jDZQa
 fRCejTSNEe4g/nH0rKI9uiV455M5B/EKg6M0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ipB5k5z37+Fd8igQLbmVYrL5E9roHGbRK+wBmA4Y9yU=;
 b=om3rOSGC6AW8As96yNvh7tbgETnIaWO5oyfC3omGALi3kFMCQi4HQrcY+4oQQONL8k
 HV3EiwZjEgWGwZL6wjQD/p3sKYS9YtLRVEprsymuxW0Mwnyf2dZOmJ8EVcqfhq/jxAW3
 Nmd0ldsotEtOC0XyFnN2S1QF4M+itOlwS1nOMwho3+0FJCubqilN6tCeYWVyMdwAZZex
 LLX5U7ZOgXNX292M/2KI7aqqKGtLIjMvwgTV2/7G96ISUVNdLdY7hIc/vxn2RrKiWlba
 tkmRd8kE2A4wLhnCWFd60oylrdLGHJePC7SSudr46XMCphAa3+MlgPR9jD/oTHYzfoGQ
 gOtw==
X-Gm-Message-State: APjAAAWlFs/ysDY1eBAwwwUEyYYk8RGmLliH7Pj+b3Z5FUB/xKdMPrOG
 gZ21uASLuy29XxgEnk58iILgow==
X-Google-Smtp-Source: APXvYqzPevvEfpBSK+c7IiF5pLcK+obnlKmRuGuDHbGO/WB/NYdDcoJIb57F0lxIPa76vBgqS1skUA==
X-Received: by 2002:a17:90a:2326:: with SMTP id
 f35mr12315696pje.134.1572579965327; 
 Thu, 31 Oct 2019 20:46:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m12sm6209846pjk.13.2019.10.31.20.46.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:46:04 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:46:03 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
Message-ID: <201910312046.343E275D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-17-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_204605_914095_5DCAEAD1 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Thu, Oct 31, 2019 at 09:46:36AM -0700, samitolvanen@google.com wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
