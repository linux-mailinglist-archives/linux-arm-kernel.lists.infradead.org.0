Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BF861989
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzA9JOlAfg0ppMHgucsMvRcRL63xf2gmEzLBbKvmQK4=; b=FExqOAyf0R/rs2
	rtjL2GyMPJrLZTxax+jBqdkFxco4xYks5TvJjj6ZJe36KoalxAFx4tFJbKlqClqqxYkQ3QKVDPGXB
	8TwTrlPIKctd7DymWsaPVzzrfCpQ7saS1FD+rHPzXRr+1cJvTvFNfk/yNEilRTv7np40Vtjwn87gB
	NNR0h6Q80le+c+hEaQELHabxUcXYVcZ/t1Q1oVnlc64xqT5beEvdWAdVD5pgcWjN54WtBQ6FbY8IB
	yTq0K7urx2bYHxR4YjKcDmUY3jVjx+7C7v60zLocOQ7aDwlKuPAdUupJYlMq+lnbGao3XPwbUj5LH
	ZLiVi2CN3iv3IB7lGxRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKOy-00020y-Q5; Mon, 08 Jul 2019 03:33:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKOk-0001zc-AF; Mon, 08 Jul 2019 03:33:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B57842B;
 Sun,  7 Jul 2019 20:32:56 -0700 (PDT)
Received: from [10.162.43.130] (p8cg001049571a15.blr.arm.com [10.162.43.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A45B13F738; Sun,  7 Jul 2019 20:32:43 -0700 (PDT)
Subject: Re: [PATCH] mm/kprobes: Add generic kprobe_fault_handler() fallback
 definition
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <1562304629-29376-1-git-send-email-anshuman.khandual@arm.com>
 <20190705193028.f9e08fe9cf1ee86bc5c0bb82@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <3aee1f30-241c-d1c2-2ff5-ff521db47755@arm.com>
Date: Mon, 8 Jul 2019 09:03:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190705193028.f9e08fe9cf1ee86bc5c0bb82@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_203302_451293_E1005E34 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Paul Burton <paul.burton@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/05/2019 04:00 PM, Masami Hiramatsu wrote:
> Hi Anshuman,


Hello Masami,

> 
> On Fri,  5 Jul 2019 11:00:29 +0530
> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> Architectures like parisc enable CONFIG_KROBES without having a definition
>> for kprobe_fault_handler() which results in a build failure.
> 
> Hmm, as far as I can see, kprobe_fault_handler() is closed inside each arch
> specific code. The reason why include/linux/kprobes.h defines
> dummy inline function is only for !CONFIG_KPROBES case.

IIRC Andrew mentioned [1] that we should remove this stub from the generic kprobes
header because this is very much architecture specific. As we see in this proposed
patch, except x86 there is no other current user which actually calls this from
some where when CONFIG_KPROBES is not enabled.

[1] https://www.spinics.net/lists/linux-mm/msg182649.html
> 
>> Arch needs to
>> provide kprobe_fault_handler() as it is platform specific and cannot have
>> a generic working alternative. But in the event when platform lacks such a
>> definition there needs to be a fallback.
> 
> Wait, indeed that each arch need to implement it, but that is for calling
> kprobe->fault_handler() as user expected.
> Hmm, why not fixing those architecture implementations?

After the recent change which introduced a generic kprobe_page_fault() every
architecture enabling CONFIG_KPROBES must have a kprobe_fault_handler() which
was not the case earlier. Architectures like parisc which does enable KPROBES but
never used (kprobe_page_fault or kprobe->fault_handler) kprobe_fault_handler() now
needs one as well. I am not sure and will probably require inputs from arch parsic
folks whether it at all needs one. We dont have a stub or fallback definition for
kprobe_fault_handler() when CONFIG_KPROBES is enabled just to prevent a build
failure in such cases.

In such a situation it might be better defining a stub symbol fallback than to try
to implement one definition which the architecture previously never needed or used.
AFAICS there is no generic MM callers for kprobe_fault_handler() as well which would
have made it mandatory for parisc to define a real one.

> 
>> This adds a stub kprobe_fault_handler() definition which not only prevents
>> a build failure but also makes sure that kprobe_page_fault() if called will
>> always return negative in absence of a sane platform specific alternative.
> 
> I don't like introducing this complicated macro only for avoiding (not fixing)
> build error. To fix that, kprobes on parisc should implement kprobe_fault_handler
> correctly (and call kprobe->fault_handler).

As I mentioned before parsic might not need a real one. But you are right this
complicated (if perceived as such) change can be just avoided at least for the
build failure problem by just defining a stub definition kprobe_fault_handler()
for arch parsic when CONFIG_KPROBES is enabled. But this patch does some more
and solves the kprobe_fault_handler() symbol dependency in a more generic way and
forces kprobe_page_fault() to fail in absence a real arch kprobe_fault_handler().
Is not it worth solving in this way ?

> 
> BTW, even if you need such generic stub, please use a weak function instead
> of macros for every arch headers.

There is a bit problem with that. The existing definitions are with different
signatures and an weak function will need them to be exact same for override
requiring more code changes. Hence choose to go with a macro in each header.

arch/arc/include/asm/kprobes.h:int kprobe_fault_handler(struct pt_regs *regs, unsigned long cause);
arch/arm/include/asm/kprobes.h:int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
arch/arm64/include/asm/kprobes.h:int kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr);
arch/ia64/include/asm/kprobes.h:extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
arch/powerpc/include/asm/kprobes.h:extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
arch/s390/include/asm/kprobes.h:int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
arch/sh/include/asm/kprobes.h:extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
arch/sparc/include/asm/kprobes.h:int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
arch/x86/include/asm/kprobes.h:extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);

> 
>> While here wrap kprobe_page_fault() in CONFIG_KPROBES. This enables stud
>> definitions for generic kporbe_fault_handler() and kprobes_built_in() can
>> just be dropped. Only on x86 it needs to be added back locally as it gets
>> used in a !CONFIG_KPROBES function do_general_protection().
> 
> If you want to remove kprobes_built_in(), you should replace it with
> IS_ENABLED(CONFIG_KPROBES), instead of this...

Apart from kprobes_built_in() the intent was to remove !CONFIG_KPROBES
stub for kprobe_fault_handler() as well which required making generic
kprobe_page_fault() to be empty in such case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
