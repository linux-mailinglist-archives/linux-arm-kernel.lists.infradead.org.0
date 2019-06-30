Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A365AE57
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 06:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aT4WUSBWFfSuD8bcA8bJQx0JnES7kXYAmzG1zYNTlTg=; b=aO/jWq/Mq5KR93
	DIiXHq6vtrgQ+xmQmx18OGaNCnR26J0pAcyz9TN4BA0hWVsy8DM77OjxUOdYCY1QIU2PtHY3wIRsp
	8LuiTUxTqthfyMw9v6k+Ke/Fjkyma8Ol+WHQ7hvVTN9zy/PhCpNIpgzIkWHLbBOJmqqAujrUjUJVi
	N2/Sh5ZnHyyYlHFN68PdwYcXgvzQNJ31twfVVFyUOWDUpe2MDF/gbEG8wkIbNVx9TTqj8a6bfIJbD
	x2rA9VYpDCAGFTdOdZJ1XPuzCUBwPXc6WOKg99ok6OmqGs8OZsWnBlHmExX4CCCfKOwVMf8mVW637
	FfFMSr+5H6nuLOeYKlVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhReC-0006CL-Fc; Sun, 30 Jun 2019 04:41:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhRdy-0006Bo-E0; Sun, 30 Jun 2019 04:40:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A8E728;
 Sat, 29 Jun 2019 21:40:47 -0700 (PDT)
Received: from [192.168.0.129] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5ECD73F706;
 Sat, 29 Jun 2019 21:40:37 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Guenter Roeck <linux@roeck-us.net>
References: <1560420444-25737-1-git-send-email-anshuman.khandual@arm.com>
 <20190629145009.GA28613@roeck-us.net>
Message-ID: <78863cd0-8cb5-c4fd-ed06-b1136bdbb6ef@arm.com>
Date: Sun, 30 Jun 2019 10:11:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190629145009.GA28613@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_214050_566196_43AFE3C4 
X-CRM114-Status: GOOD (  16.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, James Hogan <jhogan@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-snps-arc@lists.infradead.org, Fenghua Yu <fenghua.yu@intel.com>,
 linux-s390@vger.kernel.org, Andrey Konovalov <andreyknvl@google.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Guenter,

On 06/29/2019 08:20 PM, Guenter Roeck wrote:
> Hi,
> 
> On Thu, Jun 13, 2019 at 03:37:24PM +0530, Anshuman Khandual wrote:
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
> 
> With this patch applied, parisc:allmodconfig images no longer build.
> 
> In file included from arch/parisc/mm/fixmap.c:8:
> include/linux/kprobes.h: In function 'kprobe_page_fault':
> include/linux/kprobes.h:477:9: error:
> 	implicit declaration of function 'kprobe_fault_handler'; did you mean 'kprobe_page_fault'?

Yikes.. Arch parisc does not even define (unlike mips which did but never exported)
now required function kprobe_fault_handler() when CONFIG_KPROBES is enabled.

I believe rather than defining one stub version only for parsic it would be better
to have an weak symbol generic stub definition for kprobe_fault_handler() in file
include/linux/kprobes.h when CONFIG_KPROBES is enabled along side the other stub
definition when !CONFIG_KPROBES. But arch which wants to use kprobe_page_fault()
cannot use stub kprobe_fault_handler() definition and will have to provide one.
I will probably add a comment regarding this.

> 
> Reverting the patch fixes the problem.
> 
> Guenter
> 

Thanks for reporting the problem.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
