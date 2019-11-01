Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5523EBC7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:47:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khq9rCbwV0kGpVCcebu2Buzu+Z4pgm3vt4pQmRb5GQU=; b=BzfNgmp4HLL4RF
	Ns+4HEkgh1wgFv/MgjqAilVK8tz/mIwPPwbG2MnQLHAOaWeTFkONvBr4DxTSKy5Rz4hAwVFUBi4AJ
	SjtASEVoIgN2Dt1zgHBnuMM7scCF9D5Of+WikT1EBMcnDlPwopYHiH0YcmoJw/MpGXGXpEy+tZn8y
	xxpxs/389EfhFQNYRjZX+zjFyxVtMWM6o4fEkjz1EWhF/7hvia90BY0waVYqpgCofibn1f3MTd3hQ
	uIrPzee7yjVv0AbWn78uG7/MSjKnOAEutEFWJtCOQLKnvwe0Ud+MTznvlDVw7/zWo7ZPk3ywgy2hG
	cmSHtesE3VRdKk9oMKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNuE-0004wo-L9; Fri, 01 Nov 2019 03:47:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNtz-0004wA-9Q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:47:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id x6so3742169pln.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=u5Q9VGAIWgqBExeYcYbdu3s9udgqDxFzlJQ7eRueT/Q=;
 b=OUr7ArDiqHbONLazU8MgPIGz23M1A8vMM7F8b9Md5DVHQ+EZhCFgoZlMZ+G5HTnpZ+
 wE2eqONi9hN3i5Bcrge6nsj37dKyheWOwYi04/RxLQQQWFlzKYDXXwSGgtrWINXpoHTa
 pu2AouoST0OW8JKhXcovsqIH4Xg7eOJ6N8a30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=u5Q9VGAIWgqBExeYcYbdu3s9udgqDxFzlJQ7eRueT/Q=;
 b=e7VkWpRZBa3LFlweBJGdenbIH2pM0NzzYsSIcBNZyq1ZTDxvx0mM040V9oLme1//7f
 PbT+IBGJ0DB94V2FnvAbI6+NCf5vS+/0VV73S+P99uXhInzBnhqQsRUwF9cvGsN8tBve
 2zZ1o1xk7o2AuR+mpD2yz1JD6UE3TCf8/OVrx6sWBOzQzvNdfisH4coE1gr467IuAauL
 ju6okPl/o2O/JPrOdPpeTR5RXi49j2+1+g/VboqVLZTPQJVMBCzCcRTQSMQoyS0Klxlq
 q9O9Mr2xvrM0H9gbHCKSC2hHdUhOGbxQZwry35RmzQSS4eqtdVcboT6vb6uJPu4tdqtS
 x+Cw==
X-Gm-Message-State: APjAAAUEDAXejY+9aL8hI0Ru3XmZn2cnZFCopf5rd/0nyYkcmLSyIKUd
 HGFwjhO88BFljDuq2os6/5jHXQ==
X-Google-Smtp-Source: APXvYqzxXwp35RHwMjtICT5o/o5TX+pRdcY4/XDk99r6vm9qvXrxFtMjtkTLjrDyCFVkkuXacPUM+g==
X-Received: by 2002:a17:902:9042:: with SMTP id
 w2mr10476445plz.323.1572580026099; 
 Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z2sm5943741pgo.13.2019.10.31.20.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:47:05 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:47:04 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Subject: Re: [PATCH v3 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
Message-ID: <201910312046.53A31D394@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-5-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_204707_327065_A7612A1C 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Thu, Oct 31, 2019 at 09:46:24AM -0700, samitolvanen@google.com wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
> which will shortly be disallowed. So use x8 instead.
> 
> Link: https://patchwork.kernel.org/patch/9836877/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

This one is easy to validate! ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kernel/cpu-reset.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
> index 6ea337d464c4..32c7bf858dd9 100644
> --- a/arch/arm64/kernel/cpu-reset.S
> +++ b/arch/arm64/kernel/cpu-reset.S
> @@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
>  	mov	x0, #HVC_SOFT_RESTART
>  	hvc	#0				// no return
>  
> -1:	mov	x18, x1				// entry
> +1:	mov	x8, x1				// entry
>  	mov	x0, x2				// arg0
>  	mov	x1, x3				// arg1
>  	mov	x2, x4				// arg2
> -	br	x18
> +	br	x8
>  ENDPROC(__cpu_soft_restart)
>  
>  .popsection
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
