Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A132FAAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Plb6RAykyGOsWKgxX05rAv9lP/JmxeVYeTEzF2wEN2Q=; b=DjF7IBnfQk3lY0
	4fgiXhw8qWiTbD48bIuMrRWdr9sdfWWXW0qXXAExPBL3ahI/GRK2Nq2E2fVLwnh+nKHhht2YERUJW
	qb9mQOLVA9odaAIJbHfx/fnoQCmqDJIVrdR8p/QMMrwJfMWD3qm3ylToqc30zWxGLlkx6T11P2tlh
	cW8ce2MkE03gT4d69GLY66HIFy8BXysv36sNKnUIPUyKUt26fgF84UKv5EJk7yzTILogc2gaP5Oub
	DNN3R7aPV6CRZoazyg4tR9/rjN+2skCwAUqFAOTpIq6bfqjG4Txd4lx0f1hpeTjqy8+Rwwhkm+RG4
	6PyEyUzVCKG2Qu6i6Q2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWItV-0006mG-9M; Thu, 30 May 2019 11:06:49 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWItL-0006m3-ND; Thu, 30 May 2019 11:06:39 +0000
Date: Thu, 30 May 2019 04:06:39 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm: Generalize notify_page_fault()
Message-ID: <20190530110639.GC23461@bombadil.infradead.org>
References: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 Fenghua Yu <fenghua.yu@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:25:13AM +0530, Anshuman Khandual wrote:
> Similar notify_page_fault() definitions are being used by architectures
> duplicating much of the same code. This attempts to unify them into a
> single implementation, generalize it and then move it to a common place.
> kprobes_built_in() can detect CONFIG_KPROBES, hence notify_page_fault()
> must not be wrapped again within CONFIG_KPROBES. Trap number argument can

This is a funny quirk of the English language.  "must not" means "is not
allowed to be", not "does not have to be".

> @@ -141,6 +142,19 @@ static int __init init_zero_pfn(void)
>  core_initcall(init_zero_pfn);
>  
>  
> +int __kprobes notify_page_fault(struct pt_regs *regs, unsigned int trap)
> +{
> +	int ret = 0;
> +
> +	if (kprobes_built_in() && !user_mode(regs)) {
> +		preempt_disable();
> +		if (kprobe_running() && kprobe_fault_handler(regs, trap))
> +			ret = 1;
> +		preempt_enable();
> +	}
> +	return ret;
> +}
> +
>  #if defined(SPLIT_RSS_COUNTING)

Comparing this to the canonical implementation (ie x86), it looks similar.

static nokprobe_inline int kprobes_fault(struct pt_regs *regs)
{
        if (!kprobes_built_in())
                return 0;
        if (user_mode(regs))
                return 0;
        /*
         * To be potentially processing a kprobe fault and to be allowed to call
         * kprobe_running(), we have to be non-preemptible.
         */
        if (preemptible())
                return 0;
        if (!kprobe_running())
                return 0;
        return kprobe_fault_handler(regs, X86_TRAP_PF);
}

The two handle preemption differently.  Why is x86 wrong and this one
correct?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
