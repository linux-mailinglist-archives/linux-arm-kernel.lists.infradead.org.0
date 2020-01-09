Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11186135B63
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DidHdn3cTEAFWWgvYEobfRp7iqAaXEvAScPc2MkG7og=; b=LtDbeQV9+KQXgNrA19HDLrG2i
	UY0LUFqXJbJhZcjU1DjZV8zJAY72kVKpozMtYhvKh0YTR31LmCrNbyFJBS2t126Ae2I9vpbMVxpdA
	6kcdY9YKK+qH1cQTPL6itLoKYawVfxWG4wCnFQEkMn+WVEQiPVT4cGHYnaRPIJJGQoIH8pJu+DVbv
	OxtCaAPNxLqkzy55uKIk8TuHfs00JVtYvLGiAccVWKsK+Jr/tphaKWU/4n9ee5ZjjUGLPIEdHpe2j
	WWIBrA0/3H2VDYK/pff7434Ys0m5AzWf6PnA1Mkvtsz/aS3RRg2+mdRli0CKi4ktrzofWy3CHWT4f
	+V3piGIxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYq2-0001eJ-Oi; Thu, 09 Jan 2020 14:31:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYpw-0001do-38
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Jan 2020 14:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dgtbOJ6GPSiUuAHZ+hyLv7NQt+/i4zk9t9P9ivBbasg=; b=B2w5rLF9thuImoQDuWXcYBIhFX
 Pyf40IZMFJPbqfSRX3UdORRTYBrqlohASUtNGv6yC+7AIaseHFHj1ZRqFzi10SFiUU4nt4Llqz+TB
 hO2lO4huAKvcdO6oCyYHaxEK4KZmS5IbEQJ0l9SO7vS3YZ5SRL9NGaKo9UbGyl2tyvFR3dYa7FI9f
 Y9HfOJs8fJ4QwoBGoQlfVnUT60rQ+IAJZY1MHgvzBPtYWhJMrxd9ykx7JGgu++Uvc+j8N99LLqoRo
 s6GnvGPajBsrhL5fvHuYpOFj3knRXGyhLrwGTd+DwfBbCnlL8S4KeTQHzWeKTCWY0TK6ij2ZSK9bJ
 UkAlfehQ==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYqJ-0002iW-NQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578580222;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dgtbOJ6GPSiUuAHZ+hyLv7NQt+/i4zk9t9P9ivBbasg=;
 b=aKldbH5UjLDX8uzDYx1t8KMCu3RdMykU6tdJCQxZAa1xgRCBBeV/mvOxQMzthYkYFOQYVv
 3FEsgw2RYfoXpkzcYS8M7SQ4hnpl9/4yn1gkwXcpX+wVkKiJ3It4ZnitnQZnN4UV0Agb1+
 7hRlZC2MCDdzjimgfxrDMuR1I41b0t8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-OCtH6KGBM12G-F8vcPsLfQ-1; Thu, 09 Jan 2020 09:30:20 -0500
Received: by mail-qv1-f72.google.com with SMTP id v5so4199961qvn.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:30:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dgtbOJ6GPSiUuAHZ+hyLv7NQt+/i4zk9t9P9ivBbasg=;
 b=OklrKMc9zGsgYKo8dk8DahItTnpmPhsJRV3QG/emUxMko9IDT4lzvo/IllMZP/usYG
 B/Pz0etANNMiWUhkdpZ/YdVoYWtZR0eWNrfIZX8UEp3K8IhsFAOwx9dnUPIxDtZxQNpe
 htCfoqaYjsVWJKEVNfwPC6eGwYStQjFvHAe6Nn1/uySXHT6XqZFuWSUHeNCceKN9Wq70
 +O74tKSwy7rlL0O4hx5FVrvRW0RH7WIur2yenbC+QXkUTpmGqzT0hEyiOlWorENmBP/Q
 op+cdehfbHPU0WJ8k52UlAO+VNCZ8aOIjB6zewgG6H3VMxG8mDpREXlgew5/OEKdaOA1
 gOUQ==
X-Gm-Message-State: APjAAAX2ayyYOtMOFPRwOldXKqo3p9994TepWu1JNWkWwybOnOA64iAT
 lpcOSx8pZzIQYy9+VullFJJxCuiIGQrt242yGruTmYdKJ2cSSwPUvX3xpw0ESrO7+S+NVtCt8it
 pT4ME5cKOKKjm2Jt5RNicwVDyEjBLYo6dTNI=
X-Received: by 2002:a37:a4e:: with SMTP id 75mr9572040qkk.411.1578580220082;
 Thu, 09 Jan 2020 06:30:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqzt4B7tgq2PavzNdkZGbd5tvlTNS5Mhk08noiU5L+HqjrMpQcMLEo0+3AA0j6b0Z3Nup07vAg==
X-Received: by 2002:a37:a4e:: with SMTP id 75mr9572024qkk.411.1578580219840;
 Thu, 09 Jan 2020 06:30:19 -0800 (PST)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id z4sm3049877qkz.62.2020.01.09.06.30.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 06:30:18 -0800 (PST)
Subject: Re: [PATCH 05/17] arm64: entry: add a call_on_stack helper
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-6-mark.rutland@arm.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <5fdf8bfe-a0a9-350c-e3f5-6621ce4fc564@redhat.com>
Date: Thu, 9 Jan 2020 09:30:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-6-mark.rutland@arm.com>
Content-Language: en-US
X-MC-Unique: OCtH6KGBM12G-F8vcPsLfQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_143123_866447_C5D818E8 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 robin.murphy@arm.com, julien.thierry.kdev@gmail.com, alex.popov@linux.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/8/20 1:56 PM, Mark Rutland wrote:
> In some cases, we want to call a function from C code, using an
> alternative stack. Add a helper that we can use in such cases.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>   arch/arm64/include/asm/exception.h |  2 ++
>   arch/arm64/kernel/entry.S          | 21 +++++++++++++++++++++
>   2 files changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index b87c6e276ab1..a49038fa4faf 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -31,6 +31,8 @@ static inline u32 disr_to_esr(u64 disr)
>   	return esr;
>   }
>   
> +asmlinkage void call_on_stack(struct pt_regs *, void (*)(struct pt_regs *),
> +			      unsigned long);
>   asmlinkage void enter_from_user_mode(void);
>   void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
>   void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 53ce1877a4aa..184313c773ea 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -901,6 +901,27 @@ ENTRY(ret_from_fork)
>   ENDPROC(ret_from_fork)
>   NOKPROBE(ret_from_fork)
>   
> +/*
> + * x0 = argument to function
> + * x1 = function to call
> + * x2 = new stack pointer
> + */
> +ENTRY(call_on_stack)
> +	/* Create a frame record to save our LR and SP (implicit in FP) */
> +	stp	x29, x30, [sp, #-16]!
> +	mov	x29, sp
> +
> +	/* Move to the new stack and call the function there */
> +	mov	sp, x2
> +	blr	x1
> +
> +	/* Restore SP from the FP, FP and LR from the record, and return */
> +	mov	sp, x29
> +	ldp	x29, x30, [sp], #16
> +	ret
> +ENDPROC(call_on_stack)
> +NOKPROBE(call_on_stack)
> +
>   #ifdef CONFIG_ARM_SDE_INTERFACE
>   
>   #include <asm/sdei.h>
> 

I'm a little worried this makes a very tempting gadget for
attackers to use. Maybe future security features will
make this less vulnerable?

Thanks,
Laura


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
