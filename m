Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D76C1999D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9SOFRHM30jiNSGi6CCjlDsaBwE40+qROwr9C/cIRxc=; b=h90V4x15OW8XNv
	0esHRgwodGgZHHoVcDz9sylHlPHYh8LXiMik/4Ougq78PprLlSr5EXF1yaBcHJb4pClUuKZRmXp6O
	nI6Jijbay4Gy7MhlBErv0nIO0loSCOvHc4JJazcDI2vLgIjqQMvQOA6IuA8DPsBVsI7otqVAciZi2
	Mdq5/bvmiK9kDfj+5CvKjldo6rurJTn1ZGnry05HRBBNeD/tm+fupZxfYVfaqwmK6t0AECpH8Lb3o
	4/kGIP8skgSNZKMlg9tpXjKWElsKFpq7LTcu6Iohk7wWLzshkGIYpXKII+jbBQm0iJHIJ6dsFInuy
	i1n86CG6mm5TjY/ooMcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIwA-0002IH-6b; Tue, 31 Mar 2020 15:36:22 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIvH-0001rn-Hs
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:35:29 +0000
Received: by mail-vs1-xe41.google.com with SMTP id e138so13678338vsc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zFezxGPsyLpYhR0ox7KaSCSsmOf9Nv4P7a8TQy3AEWA=;
 b=kui63y9FrsIxlmLnNNmwJXRNc4d5KtuCI1cHY11sSFYq2KfwtdcIa936YyorHFthi2
 u51IRjzHkfjRWkdg1nOlfPmBiFRpfWsRggkVi8wPGm7uCexv7iA+C+qluXeiGIDUXryq
 k1YhMeoXHScS5YyYxvg51WLdW+V/wYDY0fkl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zFezxGPsyLpYhR0ox7KaSCSsmOf9Nv4P7a8TQy3AEWA=;
 b=EzEXVc0Dr7qJcmLCA1g2hZA0IEQx8m2MxUF4keWnJpi0cEBd7V3HZbHlNS0Bbm06Yw
 CS7xRxjesNX5xz4Ql+Y+7TiNcqpQETcqoPmY/W+vCdJ/2cUFjwKC3JPm+Y5pWP08yg0K
 ChHlqPl5+oyMcr6pt4pe83QKjtBpJ42xzxBR2DlVmXSFD/JA94wM9B0FRI5TaumngV9V
 qRRkW67xwwn2iHspNFVfasqC+JRTISl4OzqLqFvwndIFM2z6kavWYHpBrXRMj6alGSU+
 u6qvHEDdD/E4ZSI6+aFOyKZ+Ur/rjcs3vR6wv5veh6gSL0JmiXWKi3EdmC1dvAy6BFbS
 jkqg==
X-Gm-Message-State: AGi0Pub444noRGulSsiaBbgQpW+SZ30HAKggpVW6mw4z6bj0O15NEE5p
 GydXknCrL5NWjY+vG5QSM+vndWHaHCk=
X-Google-Smtp-Source: ADFU+vtkTDKkSRJvhWJLA7hYxbwYlTJ0X4a7SDipA3reIPvc6zMuV2c0VM5b15ltd1k0YTjdeBT8eQ==
X-Received: by 2002:a62:8f0c:: with SMTP id n12mr18284422pfd.226.1585664721989; 
 Tue, 31 Mar 2020 07:25:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v42sm11945357pgn.6.2020.03.31.07.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 07:25:21 -0700 (PDT)
Date: Mon, 30 Mar 2020 11:27:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 3/5] stack: Optionally randomize kernel stack offset
 each syscall
Message-ID: <202003301122.354B722@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-4-keescook@chromium.org>
 <20200330112536.GD1309@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330112536.GD1309@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083527_617913_69A52A58 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 12:25:36PM +0100, Mark Rutland wrote:
> On Tue, Mar 24, 2020 at 01:32:29PM -0700, Kees Cook wrote:
> > +/*
> > + * Do not use this anywhere else in the kernel. This is used here because
> > + * it provides an arch-agnostic way to grow the stack with correct
> > + * alignment. Also, since this use is being explicitly masked to a max of
> > + * 10 bits, stack-clash style attacks are unlikely. For more details see
> > + * "VLAs" in Documentation/process/deprecated.rst
> > + */
> > +void *__builtin_alloca(size_t size);
> > +
> > +#define add_random_kstack_offset() do {					\
> > +	if (static_branch_maybe(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,	\
> > +				&randomize_kstack_offset)) {		\
> > +		u32 offset = this_cpu_read(kstack_offset);		\
> > +		char *ptr = __builtin_alloca(offset & 0x3FF);		\
> > +		asm volatile("" : "=m"(*ptr));				\
> 
> Is this asm() a homebrew OPTIMIZER_HIDE_VAR(*ptr)? If the asm
> constraints generate metter code, could we add those as alternative
> constraints in OPTIMIZER_HIDE_VAR() ?

Er, no, sorry, not the same. I disassembled the wrong binary. :)

With     asm volatile("" : "=m"(*ptr))

ffffffff810038bc:       48 8d 44 24 0f          lea    0xf(%rsp),%rax
ffffffff810038c1:       48 83 e0 f0             and    $0xfffffffffffffff0,%rax


With   __asm__ ("" : "=r" (var) : "0" (var))

ffffffff810038bc:       48 8d 54 24 0f          lea    0xf(%rsp),%rdx
ffffffff810038c1:       48 83 e2 f0             and    $0xfffffffffffffff0,%rdx
ffffffff810038c5:       0f b6 02                movzbl (%rdx),%eax
ffffffff810038c8:       88 02                   mov    %al,(%rdx)


It looks like OPTIMIZER_HIDE_VAR() is basically just:

	var = var;

In the former case, we avoid the write and retain the allocation. So I
think don't think OPTIMIZER_HIDE_VAR() should be used here, nor should
OPTIMIZER_HIDE_VAR() be changed to remove the "0" (var) bit.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
