Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D2F453E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 07:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrvY1Z6WQ6ihIT3bYATapsCaPWGewSFVDSUJIv3eGUA=; b=Jd9SLYttbuCopP
	JXK2zQR1wn2qlVF85p3VMPgP3s8H6kl7O/G4f0YzomNgJDZjyBPrQpMhAS5Ogw7wvNpUKlHQB7hR+
	JCuC4pBKaNcAPSmg84bNWXvGZx7YZEK9Zh7HE4ASVwZztv9DKIv9MnIPrukt1WVcrXG0K0BrkJoFD
	mrQsbDvOQWoFoF3BghkjugeWZy8Q3I19ZAScIqUpDe5bxLZy0VWaD2Erv4SfORXKINFp0zf8mRHEF
	0wxg2PMX9b4RADpVFFZWNJW5LN3kYTd1hQifBlhS4fNahDX+gKO7K4k/0KiDn16pKDp+wBYNuVtX3
	k+FhaQJeQ1ZZ9JiVMvrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbeZ4-0005GH-2L; Fri, 14 Jun 2019 05:15:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbeYt-0005E9-3Z; Fri, 14 Jun 2019 05:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29721367;
 Thu, 13 Jun 2019 22:15:37 -0700 (PDT)
Received: from [10.162.41.168] (p8cg001049571a15.blr.arm.com [10.162.41.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B446E3F246; Thu, 13 Jun 2019 22:15:25 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Andrew Morton <akpm@linux-foundation.org>
References: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
 <20190613130408.3091869d8e50d0524157523f@linux-foundation.org>
Message-ID: <c3316aca-2005-e092-80f6-ebd7652bd04f@arm.com>
Date: Fri, 14 Jun 2019 10:45:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190613130408.3091869d8e50d0524157523f@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_221539_239769_E1F1C6F0 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Fenghua Yu <fenghua.yu@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06/14/2019 01:34 AM, Andrew Morton wrote:
> On Thu, 13 Jun 2019 15:37:24 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> Architectures which support kprobes have very similar boilerplate around
>> calling kprobe_fault_handler(). Use a helper function in kprobes.h to unify
>> them, based on the x86 code.
>>
>> This changes the behaviour for other architectures when preemption is
>> enabled. Previously, they would have disabled preemption while calling the
>> kprobe handler. However, preemption would be disabled if this fault was
>> due to a kprobe, so we know the fault was not due to a kprobe handler and
>> can simply return failure.
>>
>> This behaviour was introduced in the commit a980c0ef9f6d ("x86/kprobes:
>> Refactor kprobes_fault() like kprobe_exceptions_notify()")
>>
>> ...
>>
>> --- a/arch/arm/mm/fault.c
>> +++ b/arch/arm/mm/fault.c
>> @@ -30,28 +30,6 @@
>>  
>>  #ifdef CONFIG_MMU
>>  
>> -#ifdef CONFIG_KPROBES
>> -static inline int notify_page_fault(struct pt_regs *regs, unsigned int fsr)
> 
> Some architectures make this `static inline'.  Others make it
> `nokprobes_inline', others make it `static inline __kprobes'.  The
> latter seems weird - why try to put an inline function into
> .kprobes.text?
> 
> So..  what's the best thing to do here?  You chose `static
> nokprobe_inline' - is that the best approach, if so why?  Does
> kprobe_page_fault() actually need to be inlined?

Matthew had suggested that (nokprobe_-inline) based on current x86
implementation. But every architecture already had an inlined definition
which I did not want to deviate from.

> 
> Also, some architectures had notify_page_fault returning int, others
> bool.  You chose bool and that seems appropriate and all callers are OK
> with that.

I would believe so. No one has complained yet :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
