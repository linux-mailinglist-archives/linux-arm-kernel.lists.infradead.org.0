Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42B8EB143
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEYDWDfslMo+P1e2WkgLGaeqCs2u21A9kDkrkdjXL/Q=; b=Vgimd5J4TINy6Y
	WiOP9NFynLIUhetVf62hX+AMtn9jwb+vHwEOjq2mjXxgPbwY0aPAapNin8DVLdERIAYr6NyS4PJlV
	64RQiV5EGt5llhcAxm/tvo/yJsDEi9wdo7/qFDFZ6klFXSdQ4e2M/ijhaEkHoHAGoPEOvb8RWxMAA
	KRqvM1c0QHUy8J8UxPlCXWkwmo7gPGmq+lvFmKNff+Vm+Brm6n0b1MnrhuaikW+en0Bv1JjBb/ghf
	H2Me9aAD+JkYcawC4slMEpg592DtaLHoqIIBK++j6U13eVWMQS+PGsTkMCv+r3jmXl2FUWDn3H9EQ
	5v7HZsPKNh/CXMWNLN2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAZf-0002rI-UJ; Thu, 31 Oct 2019 13:33:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAZW-0002q4-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:33:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10D831FB;
 Thu, 31 Oct 2019 06:33:00 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEF543F71E;
 Thu, 31 Oct 2019 06:32:57 -0700 (PDT)
Subject: Re: [PATCH v14 21/22] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
 <20191028135910.33253-22-steven.price@arm.com>
 <20191030164535.GC13309@arrakis.emea.arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <40956d62-241c-6685-72f1-bfc01183141e@arm.com>
Date: Thu, 31 Oct 2019 13:32:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030164535.GC13309@arrakis.emea.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_063306_721376_E471D5E4 
X-CRM114-Status: GOOD (  22.75  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
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

On 30/10/2019 16:45, Catalin Marinas wrote:
> On Mon, Oct 28, 2019 at 01:59:09PM +0000, Steven Price wrote:
>> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
>> index 93f9f77582ae..9d9b740a86d2 100644
>> --- a/arch/arm64/mm/dump.c
>> +++ b/arch/arm64/mm/dump.c
>> @@ -15,6 +15,7 @@
>>  #include <linux/io.h>
>>  #include <linux/init.h>
>>  #include <linux/mm.h>
>> +#include <linux/ptdump.h>
>>  #include <linux/sched.h>
>>  #include <linux/seq_file.h>
>>  
>> @@ -75,10 +76,11 @@ static struct addr_marker address_markers[] = {
>>   * dumps out a description of the range.
>>   */
>>  struct pg_state {
>> +	struct ptdump_state ptdump;
>>  	struct seq_file *seq;
>>  	const struct addr_marker *marker;
>>  	unsigned long start_address;
>> -	unsigned level;
>> +	int level;
>>  	u64 current_prot;
>>  	bool check_wx;
>>  	unsigned long wx_pages;
>> @@ -178,6 +180,10 @@ static struct pg_level pg_level[] = {
>>  		.name	= "PGD",
>>  		.bits	= pte_bits,
>>  		.num	= ARRAY_SIZE(pte_bits),
>> +	}, { /* p4d */
>> +		.name	= "P4D",
>> +		.bits	= pte_bits,
>> +		.num	= ARRAY_SIZE(pte_bits),
>>  	}, { /* pud */
>>  		.name	= (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
>>  		.bits	= pte_bits,
> 
> We could use "PGD" for the p4d entry since we don't have five levels.
> This patches the "PGD" name used for pud/pmd when these levels are
> folded.

Good point, although I'd actually be more tempted to do the opposite -
remove the special casing for PUD/PMD as the generic code should now
never provide those levels if they are folded. What do you think?

>> @@ -240,11 +246,15 @@ static void note_prot_wx(struct pg_state *st, unsigned long addr)
>>  	st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
>>  }
>>  
>> -static void note_page(struct pg_state *st, unsigned long addr, unsigned level,
>> -				u64 val)
>> +static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
>> +		      unsigned long val)
>>  {
>> +	struct pg_state *st = container_of(pt_st, struct pg_state, ptdump);
>>  	static const char units[] = "KMGTPE";
>> -	u64 prot = val & pg_level[level].mask;
>> +	u64 prot = 0;
>> +
>> +	if (level >= 0)
>> +		prot = val & pg_level[level].mask;
> 
> I think this test is not needed as we never have level < 0. The only
> call with a level 0 is from ptdump_hole() where the level passed is
> depth+1 while depth is -1 or higher.

Yes, sorry - that was needed in a previous version of the series, but I
apparently forgot to remove it.

> Anyway, we can keep this test _if_ we shift the levels down. I find it
> quite confusing that ptdump_hole() takes a 'depth' argument where 0 is
> PGD and 4 is PTE while for note_page() 1 is PGD and 5 PTE.
> 

Yes - I'll send a follow up patch which shifts the levels down. I
originally picked the levels to match the existing dump implementations
on x86/arm64. But it appears that x86 has had its levels artificially
inflated in the past, so actually moving it back down and matching
'depth' should make the code slightly more simple.

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
