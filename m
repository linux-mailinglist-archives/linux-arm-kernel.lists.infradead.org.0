Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67736A1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KARIhbeOEed/onCiDvVAsyU9MI/usQxw+ThD6KfPns=; b=gvGfYh19fAUzeJ
	q3YsfYvB2hbfs++l9Fb2efQpqFIuB51hyGrIoI2htz5Zfa48sM7LfNAosXkK2ScX7PRojGBHTYhzs
	l2hEi8JK8cFRpSbaJO4zMtLcyfUt91ROQZdNiXVxEjaTU8wJwwLEgygjK6Kimyo4oJNTh1V65vnTY
	7VGIZiuAL/Oum21tFKNCYh8KHOMaTwDDxsZyY5Qs//XM51W8/gXJHcx7eXh55xLIN4xmL2BSi/CgL
	BGp94o+jeNCKP2oAWqEqecMnnc7/JggZAlXS6tMmqpDfzQF/5t1PkHODbj000S9+xQQHprXijjEBu
	MepLWTeu6sGTqzfKaSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiKM-0002rr-CJ; Thu, 06 Jun 2019 02:40:30 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiKF-0002rT-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:40:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B927480D;
 Wed,  5 Jun 2019 19:40:22 -0700 (PDT)
Received: from [10.162.43.122] (p8cg001049571a15.blr.arm.com [10.162.43.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 881D23F690; Wed,  5 Jun 2019 19:40:12 -0700 (PDT)
Subject: Re: [RFC V2] mm: Generalize notify_page_fault()
To: Matthew Wilcox <willy@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <1559630046-12940-1-git-send-email-anshuman.khandual@arm.com>
 <87sgsomg91.fsf@concordia.ellerman.id.au>
 <20190605112328.GB2025@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bc89341a-a2b6-bd34-d342-b46f6e902a7c@arm.com>
Date: Thu, 6 Jun 2019 08:10:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190605112328.GB2025@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_194023_437528_2B1D4AD3 
X-CRM114-Status: GOOD (  17.39  )
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, x86@kernel.org,
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



On 06/05/2019 04:53 PM, Matthew Wilcox wrote:
> On Wed, Jun 05, 2019 at 09:19:22PM +1000, Michael Ellerman wrote:
>> Anshuman Khandual <anshuman.khandual@arm.com> writes:
>>> Similar notify_page_fault() definitions are being used by architectures
>>> duplicating much of the same code. This attempts to unify them into a
>>> single implementation, generalize it and then move it to a common place.
>>> kprobes_built_in() can detect CONFIG_KPROBES, hence notify_page_fault()
>>> need not be wrapped again within CONFIG_KPROBES. Trap number argument can
>>> now contain upto an 'unsigned int' accommodating all possible platforms.
>> ...
>>
>> You've changed several of the architectures from something like above,
>> where it disables preemption around the call into the below:
>>
>>
>> Which skips everything if we're preemptible. Is that an equivalent
>> change? If so can you please explain why in more detail.
> 
> See the discussion in v1 of this patch, which you were cc'd on.
> 
> I agree the description here completely fails to mention why the change.
> It should mention commit a980c0ef9f6d8c.

I will update the commit message to include an explanation for this new
preempt behavior in the generic definition.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
