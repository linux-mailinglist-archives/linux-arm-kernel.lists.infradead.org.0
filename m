Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F277C96C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRhgWPZLnO6vCHAcNb9zZOt82L3Xbygh/zpjdfqCy5c=; b=nmoURDXr7coXLs
	zNZ02opOs+NdeVGhX9HA1lyiQ9MTuljRpX/eAT5xehcftHZRb+J8ayhDf/Z+ysgdlChblmxmTYWBO
	kGMyuZgA9FoUKCi04MoBOl1KfopJiTQxQExkM1QRt8cuPBqHEBbBj5rv9LUhbr1i1uXlpAqd/jErW
	uRGaLFBRyJW1NRj3Dl0dmxndw9SSg5yuLl/yTI0lv0o1TcMMYpo0Rg4FWaRZHaU5tZQ+YfaQGYNBJ
	LIisn4SDeM0YpjXp6/dQjA6teRF51QqpnA7GXRQbMConT6gvGwaBZoWCqYn9OVGhKCOGlsbTRKqoB
	IBMU9zNeDzNzuYmE+ioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrwU-0007pD-W6; Wed, 31 Jul 2019 16:59:11 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrvy-0007Zn-1A
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:58:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so26033264pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 09:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BbYGW1om6PC71p94etYGN3/okI4rSt3mD1Fla+dsCZI=;
 b=gcYhN/gR9O1Pe9ZLLVnRXrYNlqcViNsBD9U+GWnDzGiTqP8BVudlcK6mYTh5KrhO1w
 aPil5ZmAZyWrMboSY/Y4EWCOKqTrOByXbdolL7wrTtQQigNu3FCKkYHuY/f8LOCXZn1u
 ag8qe88aaYi4cK4Mfe8I/EeGUX2kgbjRo2JPexbLBAxz/4y8a14v3Vg1RNt/bIRzUwcG
 vcvAbuxpYD56GqmAnN1CoBopaj00u0e2dPBhLKzQ8gki7fyFmQ9T2Gf65RoFjifXYT5N
 ZJY+aIxyu6kEy2OB53kVekkt/E7IokVuCTGKJ1lXzFJ9A3wj7gq/JRJAFrWHV39z7cGm
 xIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BbYGW1om6PC71p94etYGN3/okI4rSt3mD1Fla+dsCZI=;
 b=oIvj0i06Umn4f8QCYsMERPBzdE248OT07BrFNkC5BEBbTXIzmCqwgScqoT8XO2ymBx
 I5Ib+Qf+j/JWNyou55Tw7Qgfjp52VUFWlVVxvZT+3itr35Wdm/N9uCqhYeWcfnTM0uXj
 Z7haq4QUMDdnVdQJheXrOyKsTwubyTA3VZTF9uUEXERApvLk1TIbJBlDXb7s24MSTcMp
 WWkA01eQ9xTV2ipMkk39gjWLIT2n2xlqtaJ9r0fliWhlAob8McyzSesq3XlPebupAg1H
 Eq8fTmmMW7IpA3L89RHZcT8SZXYCyZ1W2fSrWyh0WeUaBIhr5OfBC/LHoU5jr0SAwpSD
 OgPw==
X-Gm-Message-State: APjAAAWPyBboJtLfHZYWp0MI05x+72XJKeJXXXqCH/SAvzzwj30yORSz
 iVfmMZ30e4HPtSlGbWudyaKdygZI8Oe2ug==
X-Google-Smtp-Source: APXvYqyt4Vp+5qcTUWTv9ZC5LXoMgRwNq9/qEfHAcFZBWQDCFk9UuJV9yUPdKUQAFbAsce0aLp0V9Q==
X-Received: by 2002:a65:464d:: with SMTP id k13mr103144274pgr.99.1564592315501; 
 Wed, 31 Jul 2019 09:58:35 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id i124sm128217887pfe.61.2019.07.31.09.58.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 31 Jul 2019 09:58:34 -0700 (PDT)
Date: Thu, 1 Aug 2019 00:58:26 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2] arm64: Add support for function error injection
Message-ID: <20190731165826.GG16088@leoy-ThinkPad-X240s>
References: <20190716111301.1855-1-leo.yan@linaro.org>
 <20190716111301.1855-2-leo.yan@linaro.org>
 <20190731160836.qmzlk3ndbahwhfmu@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731160836.qmzlk3ndbahwhfmu@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095838_092911_F2DB43C3 
X-CRM114-Status: GOOD (  27.84  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org,
 Justin He <Justin.He@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks for reviewing.

On Wed, Jul 31, 2019 at 05:08:37PM +0100, Will Deacon wrote:
> On Tue, Jul 16, 2019 at 07:13:00PM +0800, Leo Yan wrote:
> > This patch implement regs_set_return_value() and
> > override_function_with_return() to support function error injection
> > for arm64.
> > 
> > In the exception flow, arm64's general register x30 contains the value
> > for the link register; so we can just update pt_regs::pc with it rather
> > than redirecting execution to a dummy function that returns.
> > 
> > This patch is heavily inspired by the commit 7cd01b08d35f ("powerpc:
> > Add support for function error injection").
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  arch/arm64/Kconfig                       |  1 +
> >  arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
> >  arch/arm64/include/asm/ptrace.h          |  5 +++++
> >  arch/arm64/lib/Makefile                  |  2 ++
> >  arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
> >  5 files changed, 40 insertions(+)
> >  create mode 100644 arch/arm64/include/asm/error-injection.h
> >  create mode 100644 arch/arm64/lib/error-inject.c
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 697ea0510729..a6d9e622977d 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -142,6 +142,7 @@ config ARM64
> >  	select HAVE_EFFICIENT_UNALIGNED_ACCESS
> >  	select HAVE_FTRACE_MCOUNT_RECORD
> >  	select HAVE_FUNCTION_TRACER
> > +	select HAVE_FUNCTION_ERROR_INJECTION
> >  	select HAVE_FUNCTION_GRAPH_TRACER
> >  	select HAVE_GCC_PLUGINS
> >  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
> > diff --git a/arch/arm64/include/asm/error-injection.h b/arch/arm64/include/asm/error-injection.h
> > new file mode 100644
> > index 000000000000..da057e8ed224
> > --- /dev/null
> > +++ b/arch/arm64/include/asm/error-injection.h
> > @@ -0,0 +1,13 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +
> > +#ifndef __ASM_ERROR_INJECTION_H_
> > +#define __ASM_ERROR_INJECTION_H_
> > +
> > +#include <linux/compiler.h>
> > +#include <linux/linkage.h>
> > +#include <asm/ptrace.h>
> > +#include <asm-generic/error-injection.h>
> > +
> > +void override_function_with_return(struct pt_regs *regs);
> > +
> > +#endif /* __ASM_ERROR_INJECTION_H_ */
> 
> Why isn't this prototype in the asm-generic header? Seems weird to have to
> duplicate it for each architecture.

Yeah.  When I spin for new version patches, will try to refactor in
the asm-generic header.

> > diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> > index dad858b6adc6..3aafbbe218a2 100644
> > --- a/arch/arm64/include/asm/ptrace.h
> > +++ b/arch/arm64/include/asm/ptrace.h
> > @@ -294,6 +294,11 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
> >  	return regs->regs[0];
> >  }
> >  
> > +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> > +{
> > +	regs->regs[0] = rc;
> > +}
> > +
> >  /**
> >   * regs_get_kernel_argument() - get Nth function argument in kernel
> >   * @regs:	pt_regs of that context
> > diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> > index 33c2a4abda04..f182ccb0438e 100644
> > --- a/arch/arm64/lib/Makefile
> > +++ b/arch/arm64/lib/Makefile
> > @@ -33,3 +33,5 @@ UBSAN_SANITIZE_atomic_ll_sc.o	:= n
> >  lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o
> >  
> >  obj-$(CONFIG_CRC32) += crc32.o
> > +
> > +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > diff --git a/arch/arm64/lib/error-inject.c b/arch/arm64/lib/error-inject.c
> > new file mode 100644
> > index 000000000000..35661c2de4b0
> > --- /dev/null
> > +++ b/arch/arm64/lib/error-inject.c
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <linux/error-injection.h>
> > +#include <linux/kprobes.h>
> > +
> > +void override_function_with_return(struct pt_regs *regs)
> > +{
> > +	/*
> > +	 * 'regs' represents the state on entry of a predefined function in
> > +	 * the kernel/module and which is captured on a kprobe.
> > +	 *
> > +	 * 'regs->regs[30]' contains the the link register for the probed
> 
> extra "the"

Will fix.

> > +	 * function and assign it to 'regs->pc', so when kprobe returns
> > +	 * back from exception it will override the end of probed function
> > +	 * and drirectly return to the predefined function's caller.
> 
> directly

Will fix.

> > +	 */
> > +	regs->pc = regs->regs[30];
> 
> I suppose we could be all fancy and do:
> 
> 	instruction_pointer_set(regs, procedure_link_pointer(regs));
> 
> How about that?

Ah, good point.  Will change to use the common APIs.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
