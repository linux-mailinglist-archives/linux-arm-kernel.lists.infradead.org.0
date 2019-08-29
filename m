Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DDDA1229
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 08:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpnj4wwQmY2aV1ETwqEiPyuoYIkzISY8KxUm6l9SJdc=; b=KcDTiqF7eD2fYJ
	NFEGuYqHMJE0lsmFhCg3zPd4w7vSbHQK1jleG1YAzeruwLiGgS70DcEwMCtLBoevKHiDHjc0YegCu
	hjcET93bR+9JfPin1uqnVzyWGPldgzjyN6VVUETf9RBggl3IISv85lkbbmUYCUBFeHBi/PtqLvk5p
	U03VdJv+2nWLF1UPZz8vF918rq3wQ8JswqIqgUV4YRMQroJyq+T1P4foBAZ2MO4+/c/+NgAQY2cVh
	tFpHLaUrPhJjxfTdYdkCDv7u5SIPFF/BoIaPwLa8Nqqawoe4eJQMKsdapvMwf/vFIWkf/nfjPqhbt
	WVC3/GB8Cgpc2/jSRCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3EOM-00051m-Du; Thu, 29 Aug 2019 06:58:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3EOD-00050y-44
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 06:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gD1AMkI8FpRbArgAWS2NSX6iE7kz1rPPHG4idT8fdBw=; b=xZX4jG1YMmq087sHk0zLDOE4A
 2vh6QhH5yMkwjsM9Kp11ycPtWMPsStMqPB1gsYmPeQdU38/CrelMbY3AY5qXGh7tbpAdjCZ5KHE9/
 NmqwyVPivxGrlgR4xRYn/lBEzt1XreknQwkBCd86UmMXaL8QSc1ODlJX4myltGfVg4M2B5CVqY38z
 pc/rLqCT7mUNevoTr9erFmiC8W79S+0INBApxqn5Zk0xTuH2xN+DZo1BXELzkj+YUQa9XvNKFtlIO
 kQUMZ2cg1Rvls+xM+2ms7dtOLb7ist29TMzT3KiqClUBUwKBE+MQhKWB/UVb/SCAkH+k2lga92QD6
 K+kDl6+Jw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39344)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3ENH-0007HG-J3; Thu, 29 Aug 2019 07:57:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3EN7-0007UX-9P; Thu, 29 Aug 2019 07:57:29 +0100
Date: Thu, 29 Aug 2019 07:57:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 3/3] arm: Add support for function error injection
Message-ID: <20190829065729.GU13294@shell.armlinux.org.uk>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
 <20190819091808.GB5599@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819091808.GB5599@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_235837_326666_84E64F67 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

I'm sorry, I can't apply this, it produces loads of:

include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory

Since your patch 1 has been merged by the ARM64 people, I can't take
it until next cycle.

On Mon, Aug 19, 2019 at 05:18:08PM +0800, Leo Yan wrote:
> Hi Russell,
> 
> On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> > This patch implements arm specific functions regs_set_return_value() and
> > override_function_with_return() to support function error injection.
> > 
> > In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> > so can override the probed function return.
> 
> Gentle ping ...  Could you review this patch?
> 
> Thanks,
> Leo.
> 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  arch/arm/Kconfig              |  1 +
> >  arch/arm/include/asm/ptrace.h |  5 +++++
> >  arch/arm/lib/Makefile         |  2 ++
> >  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
> >  4 files changed, 27 insertions(+)
> >  create mode 100644 arch/arm/lib/error-inject.c
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 33b00579beff..2d3d44a037f6 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -77,6 +77,7 @@ config ARM
> >  	select HAVE_EXIT_THREAD
> >  	select HAVE_FAST_GUP if ARM_LPAE
> >  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> > +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
> >  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> >  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> >  	select HAVE_GCC_PLUGINS
> > diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> > index 91d6b7856be4..3b41f37b361a 100644
> > --- a/arch/arm/include/asm/ptrace.h
> > +++ b/arch/arm/include/asm/ptrace.h
> > @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
> >  	return regs->ARM_r0;
> >  }
> >  
> > +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> > +{
> > +	regs->ARM_r0 = rc;
> > +}
> > +
> >  #define instruction_pointer(regs)	(regs)->ARM_pc
> >  
> >  #ifdef CONFIG_THUMB2_KERNEL
> > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > index b25c54585048..8f56484a7156 100644
> > --- a/arch/arm/lib/Makefile
> > +++ b/arch/arm/lib/Makefile
> > @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> >    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> >    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> >  endif
> > +
> > +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> > new file mode 100644
> > index 000000000000..2d696dc94893
> > --- /dev/null
> > +++ b/arch/arm/lib/error-inject.c
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
> > +	 * 'regs->ARM_lr' contains the the link register for the probed
> > +	 * function, when kprobe returns back from exception it will override
> > +	 * the end of probed function and directly return to the predefined
> > +	 * function's caller.
> > +	 */
> > +	instruction_pointer_set(regs, regs->ARM_lr);
> > +}
> > +NOKPROBE_SYMBOL(override_function_with_return);
> > -- 
> > 2.17.1
> > 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
