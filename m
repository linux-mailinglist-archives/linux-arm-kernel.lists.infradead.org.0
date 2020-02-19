Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3313E1638CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTI+WrBRX3zPyLmd83yVAsBV1gCTAmfJ91ieeKfnue4=; b=g8+DAjeTO5z634
	oeu77GObhb9cw9UlohABvR6nf6y6u14kTG2VgstCTTIE9AjPDVIUn2uiGzQqJ9Vp5Ylg7rTWRUEdQ
	EyQkEiDFuJhJ57n/Fjgvj6gIgpbJBjDgWj6x0fLk/6DyVNGDKGjkBsu7hbHHI/ETvIFrqPdExU2j2
	okNQUJ2yXd9lE1rg2b7t9Lq+dlJwMz1TQf81o7K/HoYxpqEk9yJJKi9AJdzXWSOMPKXTfgM3zZmLI
	Ke9uc760IxPaZEoSr0WxELWiuaiuzaQ2FC/Nyf08+6LtJ4DIto3ApfkjpnXmzFD+SubXk96V4y4oy
	WRipjtTYBt/Vvmxq/32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4DhK-0003CQ-Ih; Wed, 19 Feb 2020 00:58:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4DhA-0003Bp-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:58:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id y30so202148pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iSZk69ptAiTyf7jpHNkoClrlGQ6cnI+6Xpj9dCGMjN0=;
 b=Ih0TjNY9842AqcuQgmoScvFqrmIbnDcyT2G+Zz4H7cAxEjHt0DyfSoOYIn774f5oXB
 7N482BmqyEb+fPQ62sT9IirOQ1sOWGAEpZc/b9h9LQ9qxLL2Xkg18FgiTMcYoMsUYOV1
 Agml5+hejGispc0IEUqgulEwAitKHdS/jC2J0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iSZk69ptAiTyf7jpHNkoClrlGQ6cnI+6Xpj9dCGMjN0=;
 b=aGQkK+XSjJkdaNmrcKIZ+8StiWyBX3CmtvSC7Eusblj72SwjQL5YT5tmGVofzXOBva
 p7iihjtY6AlJl5kC/urPLQVVu+gZkA5wOIvD5PjMcRnHJ/FOyaG1K6AcPtgsCiI3hawQ
 pv7erMN5fow/tc8CG3djQhDFu1qhi755gldMIJKzZuxvPJZi2w99rw6VKQ96kDgtNGq8
 QXJNqJM+IFP398kjRGTZTtJguHxk6WIKksPhDGhxReoOP2c9Sg10u46bEIfnbLpLKDgO
 vMm6LnPM7asgjQsj+wxadLHqupGyAqxNNUcezWV705NORfOLTK1SOcqNxExHrdZxzrks
 TC9Q==
X-Gm-Message-State: APjAAAXf3ezkA9tPKM8+UZNT0/1ee8PAPhUR+GLhbVeAHL2roKvsiC6r
 b5/4RpGLwFcPxVrgmxghkW3z3Q==
X-Google-Smtp-Source: APXvYqwMB+TjIkvXxWZ6X+9g5aGFD1+V5OiJ0ztLwJPySi7aV3TrAhaznYiFLVqLpiYGnEPzwM+MEA==
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr24532698pfi.131.1582073906946; 
 Tue, 18 Feb 2020 16:58:26 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 4sm213446pfn.90.2020.02.18.16.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 16:58:25 -0800 (PST)
Date: Tue, 18 Feb 2020 16:58:25 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v8 09/12] arm64: disable SCS for hypervisor code
Message-ID: <202002181658.41FA7C514E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-10-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_165832_886369_E105A591 
X-CRM114-Status: GOOD (  15.23  )
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
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, james.morse@arm.com,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:08:14PM -0800, Sami Tolvanen wrote:
> Disable SCS for code that runs at a different exception level by
> adding __noscs to __hyp_text.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/include/asm/kvm_hyp.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index a3a6a2ba9a63..0f0603f55ea0 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -13,7 +13,7 @@
>  #include <asm/kvm_mmu.h>
>  #include <asm/sysreg.h>
>  
> -#define __hyp_text __section(.hyp.text) notrace
> +#define __hyp_text __section(.hyp.text) notrace __noscs
>  
>  #define read_sysreg_elx(r,nvh,vh)					\
>  	({								\
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
