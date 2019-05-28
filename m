Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D172BF6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bm+fVX99LEkPSRsy0Y7PDNd90lEotZGsgy5Vctc2LrA=; b=X1nRc7i3ee11MouEB92a54naX
	DWGn4CDxLLQhUPMHJTqmU4p/+dcLFuAvrJ0xSimS15fE1kZympolaVRsMWOapFjvcNLDycTnh8oz/
	b8DZUFgwBLLkqwAF6V4NmD6ySgQuU5YxKPGaox4/1phFCCyWF8er8RHtLkFNyRnkKu8ddw9ZRXHPj
	rk7Kv/wqU5m6wDb+Fwkg+2/6CgdqWJ/6eaYtsc1pqBzJCR8m74/sKoFQzJKHpHwPmNon85AXjVNP0
	wH4/opdWZrHieMnWx+OT69zGu6FDorW78MwDgZo9BkJd7E475chGjpW3PF0EgkZJd1po1/iJZnaLW
	jKaI8+Xlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVaX-0002BP-Ps; Tue, 28 May 2019 06:27:57 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVXh-0006Yl-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:25:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CF1AA78;
 Mon, 27 May 2019 23:24:59 -0700 (PDT)
Received: from [192.168.1.27] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EDF5D3F690; Mon, 27 May 2019 23:24:56 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: module: create module allocations without exec
 permissions
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190523102256.29168-2-ard.biesheuvel@arm.com>
 <d82eb4fe-8113-3f8e-f465-26679ebae2df@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
Message-ID: <f67efae5-1565-5459-2877-31bdd1a40c0f@arm.com>
Date: Tue, 28 May 2019 08:24:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d82eb4fe-8113-3f8e-f465-26679ebae2df@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_232502_599690_75435507 
X-CRM114-Status: GOOD (  19.09  )
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

On 5/28/19 7:35 AM, Anshuman Khandual wrote:
> 
> 
> On 05/23/2019 03:52 PM, Ard Biesheuvel wrote:
>> Now that the core code manages the executable permissions of code
>> regions of modules explicitly, it is no longer necessary to create
> 
> I guess the permission transition for various module sections happen
> through module_enable_[ro|nx]() after allocating via module_alloc().
> 

Indeed.

>> the module vmalloc regions with RWX permissions, and we can create
>> them with RW- permissions instead, which is preferred from a
>> security perspective.
> 
> Makes sense. Will this be followed in all architectures now ?
> 

I am not sure if every architecture implements module_enable_[ro|nx](), 
but if they do, they should probably apply this change as well.

>>
>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
>> ---
>>   arch/arm64/kernel/module.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
>> index 2e4e3915b4d0..88f0ed31d9aa 100644
>> --- a/arch/arm64/kernel/module.c
>> +++ b/arch/arm64/kernel/module.c
>> @@ -41,7 +41,7 @@ void *module_alloc(unsigned long size)
>>   
>>   	p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
>>   				module_alloc_base + MODULES_VSIZE,
>> -				gfp_mask, PAGE_KERNEL_EXEC, 0,
>> +				gfp_mask, PAGE_KERNEL, 0,
>>   				NUMA_NO_NODE, __builtin_return_address(0));
>>   
>>   	if (!p && IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&
>> @@ -57,7 +57,7 @@ void *module_alloc(unsigned long size)
>>   		 */
>>   		p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
>>   				module_alloc_base + SZ_4G, GFP_KERNEL,
>> -				PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
>> +				PAGE_KERNEL, 0, NUMA_NO_NODE,
>>   				__builtin_return_address(0));
>>   
>>   	if (p && (kasan_module_alloc(p, size) < 0)) {
>>
> 
> Which just makes sure that PTE_PXN never gets dropped while creating
> these mappings.
> 

Not sure what you mean. Is there a question here?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
