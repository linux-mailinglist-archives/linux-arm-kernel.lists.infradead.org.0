Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADF42FB58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG9ngCkI1gIbqXafei0pqKzkfv0nvjdl27yh09xfqYw=; b=WHosG8fMQqqhY2
	h7l7r5/iYU4yf+Dyzud4S1D0tVTHgRNGfMN2wsFJ+jb8juNRXqfAk4w1MMWecd1+vDCYGkM3Pjba8
	gJyiNwBkCXVGwXe8pFuMoZg/E6FU/MdBTFrL7uuJ9rl8W8biTu7YLHrwKN+TdS2bMH/ywkZnLI/tO
	OjbR9XBq/pyZ6LUVXLUuW3ogjNms3AEzTtyV60Sfa3Hq4rLf+XyFV9LHT3tlgo1MdkkoekPW+CiOA
	e6cd+KD+sAiNz6VNOqcMxzqH30JwW1ddXMmBaLtOirKSB+O9hBvphQNYfTWVILp/hPUUVMP5UaZ9m
	QAnJo2gzj83oOACSWIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJkG-00012O-KI; Thu, 30 May 2019 12:01:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJk9-00011L-5N
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 12:01:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3F10374;
 Thu, 30 May 2019 05:01:09 -0700 (PDT)
Received: from [10.162.40.143] (p8cg001049571a15.blr.arm.com [10.162.40.143])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B2F953F5AF; Thu, 30 May 2019 05:01:02 -0700 (PDT)
Subject: Re: [RFC] mm: Generalize notify_page_fault()
To: Matthew Wilcox <willy@infradead.org>
References: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
 <20190530110639.GC23461@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4f9a610d-e856-60f6-4467-09e9c3836771@arm.com>
Date: Thu, 30 May 2019 17:31:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190530110639.GC23461@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_050113_215457_A414E6D8 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 05/30/2019 04:36 PM, Matthew Wilcox wrote:
> On Thu, May 30, 2019 at 11:25:13AM +0530, Anshuman Khandual wrote:
>> Similar notify_page_fault() definitions are being used by architectures
>> duplicating much of the same code. This attempts to unify them into a
>> single implementation, generalize it and then move it to a common place.
>> kprobes_built_in() can detect CONFIG_KPROBES, hence notify_page_fault()
>> must not be wrapped again within CONFIG_KPROBES. Trap number argument can
> 
> This is a funny quirk of the English language.  "must not" means "is not
> allowed to be", not "does not have to be".

You are right. Noted for future. Thanks !

> 
>> @@ -141,6 +142,19 @@ static int __init init_zero_pfn(void)
>>  core_initcall(init_zero_pfn);
>>  
>>  
>> +int __kprobes notify_page_fault(struct pt_regs *regs, unsigned int trap)
>> +{
>> +	int ret = 0;
>> +
>> +	if (kprobes_built_in() && !user_mode(regs)) {
>> +		preempt_disable();
>> +		if (kprobe_running() && kprobe_fault_handler(regs, trap))
>> +			ret = 1;
>> +		preempt_enable();
>> +	}
>> +	return ret;
>> +}
>> +
>>  #if defined(SPLIT_RSS_COUNTING)
> 
> Comparing this to the canonical implementation (ie x86), it looks similar.
> 
> static nokprobe_inline int kprobes_fault(struct pt_regs *regs)
> {
>         if (!kprobes_built_in())
>                 return 0;
>         if (user_mode(regs))
>                 return 0;
>         /*
>          * To be potentially processing a kprobe fault and to be allowed to call
>          * kprobe_running(), we have to be non-preemptible.
>          */
>         if (preemptible())
>                 return 0;
>         if (!kprobe_running())
>                 return 0;
>         return kprobe_fault_handler(regs, X86_TRAP_PF);
> }
> 
> The two handle preemption differently.  Why is x86 wrong and this one
> correct?

Here it expects context to be already non-preemptible where as the proposed
generic function makes it non-preemptible with a preempt_[disable|enable]()
pair for the required code section, irrespective of it's present state. Is
not this better ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
