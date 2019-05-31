Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164B731427
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAdo1MEl+Pz7TfARidBhnbOFGpCEqCtveNs7VJaxGk4=; b=hf2jqlMaEfqZLW
	GptruJL20/zb4uJisPpJJTz5mN1G/SXiYUuCzgW3SYZGY1Pro6CkEmVa5y2W0j0wwycNoTWP8vGdY
	836fNUjOG5fXcXlAB0U9WpvEZzCpxLLuExdaP/mJeaXvUQ/ul8+ABZA+tG2eZxPKx8dB69Nqr1VaK
	7P1GcO0sBggcjnDqYf3pQPOeJLM3tPbbvW9Ni3YznaUL4wmiRPaKrwkGMlrko3g12bfzLX8fRW42s
	HkBnz7/jHF8DzGdgiph0xS1W7Ekjbd+uEfmTqACNl4awnjVYo+Gi6wvQ2npkEYRbeUH0BWQxCsN9Y
	GOTOBJ9mr0WiNj5GVjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWleJ-0002OH-EV; Fri, 31 May 2019 17:49:03 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWleA-0002Ni-V0; Fri, 31 May 2019 17:48:54 +0000
Date: Fri, 31 May 2019 10:48:54 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm: Generalize notify_page_fault()
Message-ID: <20190531174854.GA31852@bombadil.infradead.org>
References: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
 <20190530110639.GC23461@bombadil.infradead.org>
 <4f9a610d-e856-60f6-4467-09e9c3836771@arm.com>
 <20190530133954.GA2024@bombadil.infradead.org>
 <f1995445-d5ab-f292-d26c-809581002184@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1995445-d5ab-f292-d26c-809581002184@arm.com>
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

On Fri, May 31, 2019 at 02:17:43PM +0530, Anshuman Khandual wrote:
> On 05/30/2019 07:09 PM, Matthew Wilcox wrote:
> > On Thu, May 30, 2019 at 05:31:15PM +0530, Anshuman Khandual wrote:
> >> On 05/30/2019 04:36 PM, Matthew Wilcox wrote:
> >>> The two handle preemption differently.  Why is x86 wrong and this one
> >>> correct?
> >>
> >> Here it expects context to be already non-preemptible where as the proposed
> >> generic function makes it non-preemptible with a preempt_[disable|enable]()
> >> pair for the required code section, irrespective of it's present state. Is
> >> not this better ?
> > 
> > git log -p arch/x86/mm/fault.c
> > 
> > search for 'kprobes'.
> > 
> > tell me what you think.
> 
> Are you referring to these following commits
> 
> a980c0ef9f6d ("x86/kprobes: Refactor kprobes_fault() like kprobe_exceptions_notify()")
> b506a9d08bae ("x86: code clarification patch to Kprobes arch code")
> 
> In particular the later one (b506a9d08bae). It explains how the invoking context
> in itself should be non-preemptible for the kprobes processing context irrespective
> of whether kprobe_running() or perhaps smp_processor_id() is safe or not. Hence it
> does not make much sense to continue when original invoking context is preemptible.
> Instead just bail out earlier. This seems to be making more sense than preempt
> disable-enable pair. If there are no concerns about this change from other platforms,
> I will change the preemption behavior in proposed generic function next time around.

Exactly.

So, any of the arch maintainers know of a reason they behave differently
from x86 in this regard?  Or can Anshuman use the x86 implementation
for all the architectures supporting kprobes?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
