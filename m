Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C88369BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5yV1oSlO2bJDUZWVJd1ExrvwHLpDU5JVPe82Zsggf4=; b=dsn79nHN7fLTZL
	IEI6hpepHZyitz4EZ5N6pBBzgt7kXOtttyoVTPXH+dqtve5CE3dHfdK7LpaPLDSD5rN2g2wI+GjLk
	vVRc6I0cYdwBeDODxbOeuXTvJdIsql16z8HoxyZRGY2fY6zmHAKlnvCpCkvPCSPnGkxcPBriNCbFF
	PYIDECORPRzv5s1tDC8Z+AtRnFCaTh5Rc5m+nczxYVuxlevSYoxAXntNYLozlQrpiyv187Gywqgn8
	dD5uxX/EkdpGv5sPyBFy8uChloYWinqhQW1RSZ2B3liay9Vd0rWKhfGbj61pUpmoxjJcFzZ9vLx/G
	MlXfZRUQfFaeDRzd6dkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhky-0005vC-Bh; Thu, 06 Jun 2019 02:03:56 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhkr-0005uA-4N
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:03:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1A9D80D;
 Wed,  5 Jun 2019 19:03:45 -0700 (PDT)
Received: from [10.162.43.122] (p8cg001049571a15.blr.arm.com [10.162.43.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 519F83F246; Wed,  5 Jun 2019 19:03:37 -0700 (PDT)
Subject: Re: [RFC V2] mm: Generalize notify_page_fault()
To: Matthew Wilcox <willy@infradead.org>
References: <1559630046-12940-1-git-send-email-anshuman.khandual@arm.com>
 <20190604215325.GA2025@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <016a4808-527d-7164-b8a0-3173a4ecfa25@arm.com>
Date: Thu, 6 Jun 2019 07:33:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190604215325.GA2025@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_190349_181220_CC671CA4 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/05/2019 03:23 AM, Matthew Wilcox wrote:
> On Tue, Jun 04, 2019 at 12:04:06PM +0530, Anshuman Khandual wrote:
>> +++ b/arch/x86/mm/fault.c
>> @@ -46,23 +46,6 @@ kmmio_fault(struct pt_regs *regs, unsigned long addr)
>>  	return 0;
>>  }
>>  
>> -static nokprobe_inline int kprobes_fault(struct pt_regs *regs)
>> -{
> ...
>> -}
> 
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index 0e8834a..c5a8dcf 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -1778,6 +1778,7 @@ static inline int pte_devmap(pte_t pte)
>>  }
>>  #endif
>>  
>> +int notify_page_fault(struct pt_regs *regs, unsigned int trap);
> 
> Why is it now out-of-line?  

Did not get it. AFAICS it is the same from last version and does not cross
80 characters limit on that line.

> 
>> +++ b/mm/memory.c
>> +int __kprobes notify_page_fault(struct pt_regs *regs, unsigned int trap)
>> +{
>> +	int ret = 0;
>> +
>> +	/*
>> +	 * To be potentially processing a kprobe fault and to be allowed
>> +	 * to call kprobe_running(), we have to be non-preemptible.
>> +	 */
>> +	if (kprobes_built_in() && !preemptible() && !user_mode(regs)) {
>> +		if (kprobe_running() && kprobe_fault_handler(regs, trap))
>> +			ret = 1;
>> +	}
>> +	return ret;
>> +}
>> +
> 
> I would argue this should be in kprobes.h as a static nokprobe_inline.

We can do that. Though it will be a stand alone (not inside #ifdef) as it
already takes care of CONFIG_KPROBES via kprobes_built_in(). Will change
it and in which case the above declaration in mm.h would not be required.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
