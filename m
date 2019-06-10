Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1F63ACED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thVLLYZOFQzCSMHi6TM4u2nTE8UlY0gbmUrtYJ3kML4=; b=oPJNMD6B4cKjY0
	FigmtSOqyU4VX9FK2ILdBpGmiC5a/Z8NzpWGb4h2Em+mNgrcBj1RfYTkX++Gtz5op/VEJ7o7Sa1UN
	UX9P5Qq0IxQUzGAtG8aUUKO2mHD2EkCFJMUlPxphVkb6D1g/vmH1uGpFq4nR6mcTcMO4C5x5fRL6e
	jmJo+3Hb/2ck4xdRJShXgBmumoKutKELdd+6vu0qRPCzV9uq6w/hbKSUxo1fEekNVza2k4S5YxtzL
	wFoCELHl2U0348RYBCS3o+LdmaQZq1pcDyIotJfvlC1cM3WDELQcQp1XimXAWvQr494zwHiZ6dDbG
	mPAitMa8VNEgbU3BPunQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9xs-0000Gh-Pf; Mon, 10 Jun 2019 02:23:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9xk-0000Fr-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 02:23:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7520A337;
 Sun,  9 Jun 2019 19:23:05 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 19D773F557; Sun,  9 Jun 2019 19:22:56 -0700 (PDT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Stephen Rothwell <sfr@canb.auug.org.au>
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <20190607220326.1e21fc9c@canb.auug.org.au>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <632eae55-92f5-1bfc-bfe4-24673558e1d8@arm.com>
Date: Mon, 10 Jun 2019 07:53:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190607220326.1e21fc9c@canb.auug.org.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_192308_892789_618F0334 
X-CRM114-Status: GOOD (  15.13  )
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
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
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



On 06/07/2019 05:33 PM, Stephen Rothwell wrote:
> Hi Anshuman,
> 
> On Fri,  7 Jun 2019 16:04:15 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>
>> +static nokprobe_inline bool kprobe_page_fault(struct pt_regs *regs,
>> +					      unsigned int trap)
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
> 
> Since this is now declared as "bool" (thanks for that), you should make
> "ret" be bool and use true and false;

Sure, done.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
