Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9A978BDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zq3qia4VjtUEE8Xy39ExceHXLpGGhl+9buWgN6+lHsM=; b=JS3LrXrq4ptLUu
	SvLv60ZMSZf0Up36r1nF63LMT7fLDngK4CyTtkrUY3JiwIPw+ihiQr7IBde2lh+dBvv+plahPQ/v2
	BObHdnDPFNyXY+GZWD63K9k2zXrAI4Ra6vzXNt8JVAldxHQKt74VaqYqU8i5ciMleStS1eZam9xwo
	e8f0Glp1JoH2VjeGuND1KBOMTjat28iNnNvzBKkY2USIqXKZ3FEyaoX53bV0svOqeGCwJESK4odBY
	c/7Qve/AYeW+477kJ6ByEvaRp/TR7Y9USmfQoFVdM0HEpWIUjHYuSoh0nptS3b0hDXeNQp3kkspjY
	GZfWxrLQn8dTUrCgxm5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4rx-0004GU-0A; Mon, 29 Jul 2019 12:35:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4re-0004Fl-3r
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:34:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83BF228;
 Mon, 29 Jul 2019 05:34:52 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 117973F575;
 Mon, 29 Jul 2019 05:34:49 -0700 (PDT)
Subject: Re: [PATCH v9 13/21] mm: pagewalk: Add test_p?d callbacks
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-14-steven.price@arm.com>
 <b74e545f-cbe0-9dd0-004c-5919e5cabb6f@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <df6f5233-6630-2d21-ad38-2520644c0c87@arm.com>
Date: Mon, 29 Jul 2019 13:34:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b74e545f-cbe0-9dd0-004c-5919e5cabb6f@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_053454_245353_BB427DBD 
X-CRM114-Status: GOOD (  20.61  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/07/2019 14:41, Anshuman Khandual wrote:
> 
> 
> On 07/22/2019 09:12 PM, Steven Price wrote:
>> It is useful to be able to skip parts of the page table tree even when
>> walking without VMAs. Add test_p?d callbacks similar to test_walk but
>> which are called just before a table at that level is walked. If the
>> callback returns non-zero then the entire table is skipped.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  include/linux/mm.h | 11 +++++++++++
>>  mm/pagewalk.c      | 24 ++++++++++++++++++++++++
>>  2 files changed, 35 insertions(+)
>>
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index b22799129128..325a1ca6f820 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -1447,6 +1447,11 @@ void unmap_vmas(struct mmu_gather *tlb, struct vm_area_struct *start_vma,
>>   *             value means "do page table walk over the current vma,"
>>   *             and a negative one means "abort current page table walk
>>   *             right now." 1 means "skip the current vma."
>> + * @test_pmd:  similar to test_walk(), but called for every pmd.
>> + * @test_pud:  similar to test_walk(), but called for every pud.
>> + * @test_p4d:  similar to test_walk(), but called for every p4d.
>> + *             Returning 0 means walk this part of the page tables,
>> + *             returning 1 means to skip this range.
>>   * @mm:        mm_struct representing the target process of page table walk
>>   * @vma:       vma currently walked (NULL if walking outside vmas)
>>   * @private:   private data for callbacks' usage
>> @@ -1471,6 +1476,12 @@ struct mm_walk {
>>  			     struct mm_walk *walk);
>>  	int (*test_walk)(unsigned long addr, unsigned long next,
>>  			struct mm_walk *walk);
>> +	int (*test_pmd)(unsigned long addr, unsigned long next,
>> +			pmd_t *pmd_start, struct mm_walk *walk);
>> +	int (*test_pud)(unsigned long addr, unsigned long next,
>> +			pud_t *pud_start, struct mm_walk *walk);
>> +	int (*test_p4d)(unsigned long addr, unsigned long next,
>> +			p4d_t *p4d_start, struct mm_walk *walk);
>>  	struct mm_struct *mm;
>>  	struct vm_area_struct *vma;
>>  	void *private;
>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>> index 1cbef99e9258..6bea79b95be3 100644
>> --- a/mm/pagewalk.c
>> +++ b/mm/pagewalk.c
>> @@ -32,6 +32,14 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>  	unsigned long next;
>>  	int err = 0;
>>  
>> +	if (walk->test_pmd) {
>> +		err = walk->test_pmd(addr, end, pmd_offset(pud, 0UL), walk);
>> +		if (err < 0)
>> +			return err;
>> +		if (err > 0)
>> +			return 0;
>> +	}
> 
> Though this attempts to match semantics with test_walk() and be comprehensive
> just wondering what are the real world situations when page walking need to be
> aborted based on error condition at a given page table level.

I'm not aware of a situation yet where aborting early is necessary - but
as you say this matches the semantics of test_walk() and was easy to
implement.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
