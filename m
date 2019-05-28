Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AB92C11F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/MOU3Bhuw/K6cLMIVG77L+Abr1rxK3Kgbf1UIYE3/nY=; b=YavvIrqv7gHZwUMC4Oa/wJd8C
	rnLlEaSKWZFv/GP0CgfctGyTRaXqzg8JBdoAe9ATnQ3v9gna/PzArF6aDfD7ZDIX/ecfMdGgCbWPL
	zJ3eV9RtzBnpvJb9/8xaH+B/fEBGSsALIv9STY1vvuM+EZeyj9ASt31X46I7xnoV4kOgCtIsNWq0b
	YXF26/CTbq+K0rY4t9PgNysVxSSN5ZarKiNN/YnbMQlHpMe8v7ffovj7F1DRP83EuYXOwaG3giOS/
	QnRod7aH1On3r06pBA3MiHYIIr3S1U2wvYyhw58/cSfJzMpTneACs6EcDCEG0PHBkXJi0nqbEwiUf
	TCUiBRYSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXOJ-0003GT-Oe; Tue, 28 May 2019 08:23:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXOB-0003Ei-A8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:23:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9959341;
 Tue, 28 May 2019 01:23:18 -0700 (PDT)
Received: from [192.168.1.27] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7F7303F59C; Tue, 28 May 2019 01:23:16 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe
 instruction pages
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190523102256.29168-4-ard.biesheuvel@arm.com>
 <e10f0e6c-2669-8e1e-1b28-ed7816e0b248@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
Message-ID: <7c5e1fea-c93e-fc5b-8c77-c9bd9ec41fb3@arm.com>
Date: Tue, 28 May 2019 10:23:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e10f0e6c-2669-8e1e-1b28-ed7816e0b248@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_012319_354214_27C221C1 
X-CRM114-Status: GOOD (  21.18  )
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/28/19 10:20 AM, Anshuman Khandual wrote:
> 
> 
> On 05/23/2019 03:52 PM, Ard Biesheuvel wrote:
>> In order to avoid transient inconsistencies where freed code pages
>> are remapped writable while stale TLB entries still exist on other
>> cores, mark the kprobes text pages with the VM_FLUSH_RESET_PERMS
>> attribute. This instructs the core vmalloc code not to defer the
>> TLB flush when this region is unmapped and returned to the page
>> allocator.
> 
> Makes sense.
> 
>>
>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
>> ---
>>   arch/arm64/kernel/probes/kprobes.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
>> index 2509fcb6d404..036cfbf9682a 100644
>> --- a/arch/arm64/kernel/probes/kprobes.c
>> +++ b/arch/arm64/kernel/probes/kprobes.c
>> @@ -131,8 +131,10 @@ void *alloc_insn_page(void)
>>   	void *page;
>>   
>>   	page = vmalloc_exec(PAGE_SIZE);
>> -	if (page)
>> +	if (page) {
>>   		set_memory_ro((unsigned long)page, 1);
>> +		set_vm_flush_reset_perms(page);
>> +	}
> 
> Looks good. It seems there might be more users who would like to set
> VM_FLUSH_RESET_PERMS right after their allocation for the same reason.
> Hence would not it help to have a variant like vmalloc_exec_reset() or
> such which will tag vm_struct->flags with VM_FLUSH_RESET_PERMS right
> after it's allocation without requiring the caller to do the same.
> 

If there is a sufficient number of similar users, then of course, it 
makes sense to factor this out. However, the kprobes code is slightly 
unusual in the sense that it allocates memory and immediately remaps it 
read-only, and relies on code patching to populate this allocation. I am 
not expecting to see this pattern in other places.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
