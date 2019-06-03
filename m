Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB665327D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 06:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afKVNp82+jUCY0+R4UKP4O7ktOiJRhP0YagKB3BbYds=; b=mAjohUIEUdP2Ms
	zKFrykSrFxDPhTAv1AKgNWxwHjsiUaD5lYQIBxkgOf9Psxtq5AHfAche2nc3l4rbH4R1W0qS5KqeX
	XcIjymaHLw7DL+u+FKGlY0ctssHBzBn2fgvvslqfuTYmmspqPxXDm6w8VmIGNTxT7x7m4zPfodwnA
	ixLYE0IKddHxz/ChaOoVnS+MwEGT1u+2LHygUQaWjKiHWZAWzrYvMG+oWewzKgH4lqeMcxJQmkQdn
	28fjzTANVHRx7Q91WebC9EZI6MZRV+vgEWdFh/mF0g5BSuaNBfxHUynpHCfbQlAAZrQL1ZPe2ie4r
	6nm56PBXd2UkIoQT42uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXeyP-0002Vm-QW; Mon, 03 Jun 2019 04:53:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXeyH-0002Uk-Pa
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 04:53:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A87D1341;
 Sun,  2 Jun 2019 21:53:18 -0700 (PDT)
Received: from [10.162.40.144] (p8cg001049571a15.blr.arm.com [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CC0BB3F5AF; Sun,  2 Jun 2019 21:53:11 -0700 (PDT)
Subject: Re: [RFC] mm: Generalize notify_page_fault()
To: Matthew Wilcox <willy@infradead.org>
References: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
 <20190530110639.GC23461@bombadil.infradead.org>
 <4f9a610d-e856-60f6-4467-09e9c3836771@arm.com>
 <20190530133954.GA2024@bombadil.infradead.org>
 <f1995445-d5ab-f292-d26c-809581002184@arm.com>
 <20190531174854.GA31852@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6338fef8-e097-a76e-5c07-455d0d9b6e24@arm.com>
Date: Mon, 3 Jun 2019 10:23:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190531174854.GA31852@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_215321_843620_EF47F65B 
X-CRM114-Status: GOOD (  17.64  )
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



On 05/31/2019 11:18 PM, Matthew Wilcox wrote:
> On Fri, May 31, 2019 at 02:17:43PM +0530, Anshuman Khandual wrote:
>> On 05/30/2019 07:09 PM, Matthew Wilcox wrote:
>>> On Thu, May 30, 2019 at 05:31:15PM +0530, Anshuman Khandual wrote:
>>>> On 05/30/2019 04:36 PM, Matthew Wilcox wrote:
>>>>> The two handle preemption differently.  Why is x86 wrong and this one
>>>>> correct?
>>>>
>>>> Here it expects context to be already non-preemptible where as the proposed
>>>> generic function makes it non-preemptible with a preempt_[disable|enable]()
>>>> pair for the required code section, irrespective of it's present state. Is
>>>> not this better ?
>>>
>>> git log -p arch/x86/mm/fault.c
>>>
>>> search for 'kprobes'.
>>>
>>> tell me what you think.
>>
>> Are you referring to these following commits
>>
>> a980c0ef9f6d ("x86/kprobes: Refactor kprobes_fault() like kprobe_exceptions_notify()")
>> b506a9d08bae ("x86: code clarification patch to Kprobes arch code")
>>
>> In particular the later one (b506a9d08bae). It explains how the invoking context
>> in itself should be non-preemptible for the kprobes processing context irrespective
>> of whether kprobe_running() or perhaps smp_processor_id() is safe or not. Hence it
>> does not make much sense to continue when original invoking context is preemptible.
>> Instead just bail out earlier. This seems to be making more sense than preempt
>> disable-enable pair. If there are no concerns about this change from other platforms,
>> I will change the preemption behavior in proposed generic function next time around.
> 
> Exactly.
> 
> So, any of the arch maintainers know of a reason they behave differently
> from x86 in this regard?  Or can Anshuman use the x86 implementation
> for all the architectures supporting kprobes?

So the generic notify_page_fault() will be like this.

int __kprobes notify_page_fault(struct pt_regs *regs, unsigned int trap)
{
        int ret = 0;

        /*
         * To be potentially processing a kprobe fault and to be allowed
         * to call kprobe_running(), we have to be non-preemptible.
         */
        if (kprobes_built_in() && !preemptible() && !user_mode(regs)) {
                if (kprobe_running() && kprobe_fault_handler(regs, trap))
                        ret = 1;
        }
        return ret;
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
