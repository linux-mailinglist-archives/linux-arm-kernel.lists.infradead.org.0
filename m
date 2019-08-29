Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E76A128F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKwZzilLVJiLJJepjPrUAV6jOo4f/o+2JaP0EsQc6xk=; b=CbXHKG1LgvU0qp
	riFRDNPWfo5hr6ZJsi1VR+a6vCcTaZrcdx11HSuenoSMj7jJ725emgdEixjN7gkQ2yQzn0ug6IoFv
	y0v9tk9nSiOjaD4ahr5Y40VmOGDdllrC8X+E6I9gt93ZQE3PAxtaDKpmf8/kJ3WU3cGZHhZaRuJ7g
	baKiSrp0xZW0bJmcMvyyHtBDHXXfyYUDfNKfeJtV3rN7gVeF10B1PwpKoDKDq+wU7BdSNF1qBhqpP
	P/DxsLeejgNf5BEwlWSB4jPo5ZQpY4mjN+AgRTa2RWqlZ2ij+Vw8BTNeYvU+VjfFC5kjD1ZuYg/Rp
	Kus+IrfeJxOWZCAgFDNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3En9-0008Lc-3w; Thu, 29 Aug 2019 07:24:23 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Eml-0008Jt-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:24:02 +0000
Received: by mail-yb1-xb44.google.com with SMTP id t5so876451ybt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R8EgEva/nN+dxw6+a+tbX87JZIlVuBuzMvhuJDwRRR4=;
 b=NXuypbmTaSrUawn6dK0eZNoFKLnVaJ7BIWZVqgFlG76S+ATA+MCe8+XdoZm8vDLJll
 /m3vEwRSe+Kw1sjV9VP135ZrO6XKTdN0l6/Ms6+4BYLRrB2sx1KUJxFe6rlLSCIGtqcZ
 IwJd7XYNmKPOK1HhNsnVYN6AZ+qv+S74/q2q9wy1NjlXR2CYn5g6TxtO05dnCP5BETa+
 1vOMw+KOdRogsxcBS/7sQrwFhQZrTKwVPiaVgp2r1n4+eY02INrAGYUNv+5BF3G/XmqL
 AnmdCj3TZWtviGy97p0vejfvFXY+jqzuRVKNwO0TDskQHHrxTEUTVxPpbqrB6PI/oeX9
 2u9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R8EgEva/nN+dxw6+a+tbX87JZIlVuBuzMvhuJDwRRR4=;
 b=QsLil7km7NCXa0G5U9sItsGEzUciwG3CMvEzB5GxO4add+QT2QzrCdQPJEXIpIfjf3
 sYIBFJLFoJBAVCZP/Ep7RAqs0dZmTFNepvgdL3yXZDXWwNgNfLTi8Z8c2k5/Z9mZUZDJ
 nXoiMr9to6riWCiKtPqqYtVXvNI+RXylQzhJCUHslQKHEPHMssDcH8RWXO4paKUlmV39
 aLSJPh6B6ynGkFOucZh3W+QdexTLz6yjmIWx9fVWEjj2RBH3uw6InLkzGEA8Rppcse9E
 jrJgvMT7A0tLhZ/zoS1ZejbwSNmw/Mvb1Mp0WrloLGPJ8I5j0DnxOuMk/ONu85Bs56Xx
 piRg==
X-Gm-Message-State: APjAAAVrCjfPWm9hTdqzw+rLwth54UtYu17/1WgO0kIJveoCTzmO2B3P
 JHT6xQCW4aJreSRB+oRmRVSMpQ==
X-Google-Smtp-Source: APXvYqzl8gabGH4zPMEJYFXPgGvZMdADKlGX5Q1XpXlgRWqc5yCW4GiS1Az0+E7aIXUyCD1kagvFBQ==
X-Received: by 2002:a25:e70b:: with SMTP id e11mr5618813ybh.127.1567063437479; 
 Thu, 29 Aug 2019 00:23:57 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id e3sm320863ywc.91.2019.08.29.00.23.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 00:23:56 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:23:43 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 3/3] arm: Add support for function error injection
Message-ID: <20190829072343.GD10583@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
 <20190819091808.GB5599@leoy-ThinkPad-X240s>
 <20190829065729.GU13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829065729.GU13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_002400_290225_39CBC0C8 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Yonghong Song <yhs@fb.com>, "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, Aug 29, 2019 at 07:57:29AM +0100, Russell King - ARM Linux admin wrote:
> I'm sorry, I can't apply this, it produces loads of:
> 
> include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory
> 
> Since your patch 1 has been merged by the ARM64 people, I can't take
> it until next cycle.

For this case, do you want me to resend this patch in next merge
window?  Or you have picked up this patch but will send PR in next
cycle?

Thanks,
Leo Yan

> On Mon, Aug 19, 2019 at 05:18:08PM +0800, Leo Yan wrote:
> > Hi Russell,
> > 
> > On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> > > This patch implements arm specific functions regs_set_return_value() and
> > > override_function_with_return() to support function error injection.
> > > 
> > > In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> > > so can override the probed function return.
> > 
> > Gentle ping ...  Could you review this patch?
> > 
> > Thanks,
> > Leo.
> > 
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  arch/arm/Kconfig              |  1 +
> > >  arch/arm/include/asm/ptrace.h |  5 +++++
> > >  arch/arm/lib/Makefile         |  2 ++
> > >  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
> > >  4 files changed, 27 insertions(+)
> > >  create mode 100644 arch/arm/lib/error-inject.c
> > > 
> > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > index 33b00579beff..2d3d44a037f6 100644
> > > --- a/arch/arm/Kconfig
> > > +++ b/arch/arm/Kconfig
> > > @@ -77,6 +77,7 @@ config ARM
> > >  	select HAVE_EXIT_THREAD
> > >  	select HAVE_FAST_GUP if ARM_LPAE
> > >  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> > > +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
> > >  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> > >  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> > >  	select HAVE_GCC_PLUGINS
> > > diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> > > index 91d6b7856be4..3b41f37b361a 100644
> > > --- a/arch/arm/include/asm/ptrace.h
> > > +++ b/arch/arm/include/asm/ptrace.h
> > > @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
> > >  	return regs->ARM_r0;
> > >  }
> > >  
> > > +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> > > +{
> > > +	regs->ARM_r0 = rc;
> > > +}
> > > +
> > >  #define instruction_pointer(regs)	(regs)->ARM_pc
> > >  
> > >  #ifdef CONFIG_THUMB2_KERNEL
> > > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > > index b25c54585048..8f56484a7156 100644
> > > --- a/arch/arm/lib/Makefile
> > > +++ b/arch/arm/lib/Makefile
> > > @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> > >    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> > >    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> > >  endif
> > > +
> > > +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > > diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> > > new file mode 100644
> > > index 000000000000..2d696dc94893
> > > --- /dev/null
> > > +++ b/arch/arm/lib/error-inject.c
> > > @@ -0,0 +1,19 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +#include <linux/error-injection.h>
> > > +#include <linux/kprobes.h>
> > > +
> > > +void override_function_with_return(struct pt_regs *regs)
> > > +{
> > > +	/*
> > > +	 * 'regs' represents the state on entry of a predefined function in
> > > +	 * the kernel/module and which is captured on a kprobe.
> > > +	 *
> > > +	 * 'regs->ARM_lr' contains the the link register for the probed
> > > +	 * function, when kprobe returns back from exception it will override
> > > +	 * the end of probed function and directly return to the predefined
> > > +	 * function's caller.
> > > +	 */
> > > +	instruction_pointer_set(regs, regs->ARM_lr);
> > > +}
> > > +NOKPROBE_SYMBOL(override_function_with_return);
> > > -- 
> > > 2.17.1
> > > 
> > 
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
