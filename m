Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E632D609A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Sa7/fgbXewBJ4nZgKU1hT6O98xFoC2QEPE/Czu1W2M=; b=jXO9SCU4Ml/Bwq
	Js6ta5JnG6Bb6ovVECIjfHCby+AyhkEgxFpqQ0zgKVQFu1OMHj/n7o57DDRGvdVcoPWd1iVoMlAdM
	fJzzLSOoUw91Voe+IkGo5EczZG94Lc5EzllZDhE1jvjeCrBWQY2I64XiSYauKPJfhS4YU7pXwJprl
	ddMnIyHBaCHSeOH9+WcZAnzZu6dXZzcz23Yii7twKJ866x43h0KXD4XO2tI3BcDWNscbJCmgSO1HS
	Zog6j5oVe4IGYpg7B9LgPi0Wk4vOo31hcwNKj2jXTsTYKva1k6vcbnLuILF1PC9NgoCBq/gIvU4y0
	30cfEpWXx/6g7UDuGtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQRg-0002UI-9Z; Fri, 05 Jul 2019 15:48:20 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNk-0005ul-44; Fri, 05 Jul 2019 15:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kmyuJLU/dXW7+nImn7rvRrGCgJTcvaxcN4OBseykhCk=; b=y4T5jXLVvDcAHweps7DRYGtuED
 kVco95/W+zQ+p95//u/YB0NhhxsBJWMR1lXIRtIbLJ+iziwSidbiYUzrWitBVxMn0EwkB48Znl68J
 0kMdmEGsIDkRaPjki+zr+Keck1gkgFZfv85dfw2sEP7lTSnWaOq9kanQFFI1Odxv//TQlm4097LIn
 54HKV8XxdRuPqTInUYrs2JDy+s9MjoRzYcIFBS7PZyI4iDPyBRsE4Awaxy7nalyiLtnbJkA9Fp8Sa
 N+f+lpeydTg158xw1sDXPBnvZlbE5p0BZuVlmPnvAN1QRP9eQ8BwtQQ+3j6MEU7weRNUlfkYDWg3B
 rpGHr6Lw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLUo-00018Q-Kx; Fri, 05 Jul 2019 10:31:16 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A56D620989;
 Fri,  5 Jul 2019 10:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562322641;
 bh=vdie7+J+Qf4GNlmeSDn4F1crcE1sfbOq0CuCbskf0vU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Kq4ViJhUXTwy17K6QtkI7Vgvv3oSdL+I0TLtGx+v8EUfeovLTzNfzVXLQgNLninxb
 qLlMDKh4k7qQItlyyCTgMVv4xap+V6ywI1evbHEnkc1K9O5rl74j9XCgX8/BPQ/gN3
 o754U8Rqt58OFPXq3KHQSJj8NWK6R4Yt4ZpRe8AE=
Date: Fri, 5 Jul 2019 19:30:28 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm/kprobes: Add generic kprobe_fault_handler() fallback
 definition
Message-Id: <20190705193028.f9e08fe9cf1ee86bc5c0bb82@kernel.org>
In-Reply-To: <1562304629-29376-1-git-send-email-anshuman.khandual@arm.com>
References: <1562304629-29376-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, Rich Felker <dalias@libc.org>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Tony Luck <tony.luck@intel.com>,
 Richard Fontana <rfontana@redhat.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Fri,  5 Jul 2019 11:00:29 +0530
Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> Architectures like parisc enable CONFIG_KROBES without having a definition
> for kprobe_fault_handler() which results in a build failure.

Hmm, as far as I can see, kprobe_fault_handler() is closed inside each arch
specific code. The reason why include/linux/kprobes.h defines
dummy inline function is only for !CONFIG_KPROBES case.

> Arch needs to
> provide kprobe_fault_handler() as it is platform specific and cannot have
> a generic working alternative. But in the event when platform lacks such a
> definition there needs to be a fallback.

Wait, indeed that each arch need to implement it, but that is for calling
kprobe->fault_handler() as user expected.
Hmm, why not fixing those architecture implementations?

> This adds a stub kprobe_fault_handler() definition which not only prevents
> a build failure but also makes sure that kprobe_page_fault() if called will
> always return negative in absence of a sane platform specific alternative.

I don't like introducing this complicated macro only for avoiding (not fixing)
build error. To fix that, kprobes on parisc should implement kprobe_fault_handler
correctly (and call kprobe->fault_handler).

BTW, even if you need such generic stub, please use a weak function instead
of macros for every arch headers.

> While here wrap kprobe_page_fault() in CONFIG_KPROBES. This enables stud
> definitions for generic kporbe_fault_handler() and kprobes_built_in() can
> just be dropped. Only on x86 it needs to be added back locally as it gets
> used in a !CONFIG_KPROBES function do_general_protection().

If you want to remove kprobes_built_in(), you should replace it with
IS_ENABLED(CONFIG_KPROBES), instead of this...

Thank you,

> 
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Tony Luck <tony.luck@intel.com>
> Cc: Fenghua Yu <fenghua.yu@intel.com>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: James Hogan <jhogan@kernel.org>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: Rich Felker <dalias@libc.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
> Cc: Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>
> Cc: Masami Hiramatsu <mhiramat@kernel.org>
> Cc: Allison Randal <allison@lohutok.net>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Enrico Weigelt <info@metux.net>
> Cc: Richard Fontana <rfontana@redhat.com>
> Cc: Kate Stewart <kstewart@linuxfoundation.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: x86@kernel.org
> Cc: linux-snps-arc@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-ia64@vger.kernel.org
> Cc: linux-mips@vger.kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-sh@vger.kernel.org
> Cc: sparclinux@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arc/include/asm/kprobes.h     |  1 +
>  arch/arm/include/asm/kprobes.h     |  1 +
>  arch/arm64/include/asm/kprobes.h   |  1 +
>  arch/ia64/include/asm/kprobes.h    |  1 +
>  arch/mips/include/asm/kprobes.h    |  1 +
>  arch/powerpc/include/asm/kprobes.h |  1 +
>  arch/s390/include/asm/kprobes.h    |  1 +
>  arch/sh/include/asm/kprobes.h      |  1 +
>  arch/sparc/include/asm/kprobes.h   |  1 +
>  arch/x86/include/asm/kprobes.h     |  6 ++++++
>  include/linux/kprobes.h            | 32 ++++++++++++++++++------------
>  11 files changed, 34 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arc/include/asm/kprobes.h b/arch/arc/include/asm/kprobes.h
> index 2134721dce44..ee8efe256675 100644
> --- a/arch/arc/include/asm/kprobes.h
> +++ b/arch/arc/include/asm/kprobes.h
> @@ -45,6 +45,7 @@ struct kprobe_ctlblk {
>  	struct prev_kprobe prev_kprobe;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  int kprobe_fault_handler(struct pt_regs *regs, unsigned long cause);
>  void kretprobe_trampoline(void);
>  void trap_is_kprobe(unsigned long address, struct pt_regs *regs);
> diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
> index 213607a1f45c..660f877b989f 100644
> --- a/arch/arm/include/asm/kprobes.h
> +++ b/arch/arm/include/asm/kprobes.h
> @@ -38,6 +38,7 @@ struct kprobe_ctlblk {
>  	struct prev_kprobe prev_kprobe;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  void arch_remove_kprobe(struct kprobe *);
>  int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
>  int kprobe_exceptions_notify(struct notifier_block *self,
> diff --git a/arch/arm64/include/asm/kprobes.h b/arch/arm64/include/asm/kprobes.h
> index 97e511d645a2..667773f75616 100644
> --- a/arch/arm64/include/asm/kprobes.h
> +++ b/arch/arm64/include/asm/kprobes.h
> @@ -42,6 +42,7 @@ struct kprobe_ctlblk {
>  	struct kprobe_step_ctx ss_ctx;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  void arch_remove_kprobe(struct kprobe *);
>  int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
>  int kprobe_exceptions_notify(struct notifier_block *self,
> diff --git a/arch/ia64/include/asm/kprobes.h b/arch/ia64/include/asm/kprobes.h
> index c5cf5e4fb338..c321e8585089 100644
> --- a/arch/ia64/include/asm/kprobes.h
> +++ b/arch/ia64/include/asm/kprobes.h
> @@ -106,6 +106,7 @@ struct arch_specific_insn {
>  	unsigned short slot;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
>  extern int kprobe_exceptions_notify(struct notifier_block *self,
>  				    unsigned long val, void *data);
> diff --git a/arch/mips/include/asm/kprobes.h b/arch/mips/include/asm/kprobes.h
> index 68b1e5d458cf..d1efe991ea22 100644
> --- a/arch/mips/include/asm/kprobes.h
> +++ b/arch/mips/include/asm/kprobes.h
> @@ -40,6 +40,7 @@ do {									\
>  
>  #define kretprobe_blacklist_size 0
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  void arch_remove_kprobe(struct kprobe *p);
>  int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
>  
> diff --git a/arch/powerpc/include/asm/kprobes.h b/arch/powerpc/include/asm/kprobes.h
> index 66b3f2983b22..c94f375ec957 100644
> --- a/arch/powerpc/include/asm/kprobes.h
> +++ b/arch/powerpc/include/asm/kprobes.h
> @@ -84,6 +84,7 @@ struct arch_optimized_insn {
>  	kprobe_opcode_t *insn;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  extern int kprobe_exceptions_notify(struct notifier_block *self,
>  					unsigned long val, void *data);
>  extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
> diff --git a/arch/s390/include/asm/kprobes.h b/arch/s390/include/asm/kprobes.h
> index b106aa29bf55..0ecaebb78092 100644
> --- a/arch/s390/include/asm/kprobes.h
> +++ b/arch/s390/include/asm/kprobes.h
> @@ -73,6 +73,7 @@ struct kprobe_ctlblk {
>  void arch_remove_kprobe(struct kprobe *p);
>  void kretprobe_trampoline(void);
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
>  int kprobe_exceptions_notify(struct notifier_block *self,
>  	unsigned long val, void *data);
> diff --git a/arch/sh/include/asm/kprobes.h b/arch/sh/include/asm/kprobes.h
> index 6171682f7798..637a698393c0 100644
> --- a/arch/sh/include/asm/kprobes.h
> +++ b/arch/sh/include/asm/kprobes.h
> @@ -45,6 +45,7 @@ struct kprobe_ctlblk {
>  	struct prev_kprobe prev_kprobe;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
>  extern int kprobe_exceptions_notify(struct notifier_block *self,
>  				    unsigned long val, void *data);
> diff --git a/arch/sparc/include/asm/kprobes.h b/arch/sparc/include/asm/kprobes.h
> index bfcaa6326c20..9aa4d25a45a8 100644
> --- a/arch/sparc/include/asm/kprobes.h
> +++ b/arch/sparc/include/asm/kprobes.h
> @@ -47,6 +47,7 @@ struct kprobe_ctlblk {
>  	struct prev_kprobe prev_kprobe;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  int kprobe_exceptions_notify(struct notifier_block *self,
>  			     unsigned long val, void *data);
>  int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
> diff --git a/arch/x86/include/asm/kprobes.h b/arch/x86/include/asm/kprobes.h
> index 5dc909d9ad81..1af2b6db13bd 100644
> --- a/arch/x86/include/asm/kprobes.h
> +++ b/arch/x86/include/asm/kprobes.h
> @@ -101,11 +101,17 @@ struct kprobe_ctlblk {
>  	struct prev_kprobe prev_kprobe;
>  };
>  
> +#define kprobe_fault_handler kprobe_fault_handler
>  extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
>  extern int kprobe_exceptions_notify(struct notifier_block *self,
>  				    unsigned long val, void *data);
>  extern int kprobe_int3_handler(struct pt_regs *regs);
>  extern int kprobe_debug_handler(struct pt_regs *regs);
> +#else
> +static inline int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
> +{
> +	return 0;
> +}
>  
>  #endif /* CONFIG_KPROBES */
>  #endif /* _ASM_X86_KPROBES_H */
> diff --git a/include/linux/kprobes.h b/include/linux/kprobes.h
> index 04bdaf01112c..e106f3018804 100644
> --- a/include/linux/kprobes.h
> +++ b/include/linux/kprobes.h
> @@ -182,11 +182,19 @@ DECLARE_PER_CPU(struct kprobe_ctlblk, kprobe_ctlblk);
>  /*
>   * For #ifdef avoidance:
>   */
> -static inline int kprobes_built_in(void)
> +
> +/*
> + * Architectures need to override this with their own implementation
> + * if they care to call kprobe_page_fault(). This will just ensure
> + * that kprobe_page_fault() returns false when called without having
> + * a proper platform specific definition for kprobe_fault_handler().
> + */
> +#ifndef kprobe_fault_handler
> +static inline int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
>  {
> -	return 1;
> +	return 0;
>  }
> -
> +#endif
>  #ifdef CONFIG_KRETPROBES
>  extern void arch_prepare_kretprobe(struct kretprobe_instance *ri,
>  				   struct pt_regs *regs);
> @@ -375,14 +383,6 @@ void free_insn_page(void *page);
>  
>  #else /* !CONFIG_KPROBES: */
>  
> -static inline int kprobes_built_in(void)
> -{
> -	return 0;
> -}
> -static inline int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
> -{
> -	return 0;
> -}
>  static inline struct kprobe *get_kprobe(void *addr)
>  {
>  	return NULL;
> @@ -458,12 +458,11 @@ static inline bool is_kprobe_optinsn_slot(unsigned long addr)
>  }
>  #endif
>  
> +#ifdef CONFIG_KPROBES
>  /* Returns true if kprobes handled the fault */
>  static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
>  					      unsigned int trap)
>  {
> -	if (!kprobes_built_in())
> -		return false;
>  	if (user_mode(regs))
>  		return false;
>  	/*
> @@ -476,5 +475,12 @@ static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
>  		return false;
>  	return kprobe_fault_handler(regs, trap);
>  }
> +#else
> +static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
> +					      unsigned int trap)
> +{
> +	return false;
> +}
> +#endif
>  
>  #endif /* _LINUX_KPROBES_H */
> -- 
> 2.20.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
