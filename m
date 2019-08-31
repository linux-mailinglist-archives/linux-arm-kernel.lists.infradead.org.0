Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF61A43E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 12:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK1shRXB3QuwMIPUamI9WKTHRJ6n1issZz5LpziOYqg=; b=mHHQSiOLl8vpo0
	ESX/0kPdUfNLAuIKV2UPTANMeipoNLtmkyJ3t3v6DmjQzhgNfkqfcKhSHkHJTqVd6oO4h7AX9pZ8I
	Y0I30kMKzGjIpSZdBFCfuq5NciloAMHOS3NFjgFL4a8NFjC5G/KcIDz0uVyOycdnt2oe+fzQ73LmF
	cNsWSkH9dEYHZWd8aH7uQ1QWHWnhqBEyJwGqoR2CtWtTH3UodFWLVU30Wa5ya1opn32a5++UJ06NU
	5vTEdZs3JKgnztNGJ0ZL2pgH3OL9IMb2oppo+k/mF+WIjRBE8m9hMXFk/r91FSKe6Z6zpERsl4UBr
	ipKq3dKxoJF0fES4ibUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i40L1-0001If-7A; Sat, 31 Aug 2019 10:10:31 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i40Kn-0001G5-Cc
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 10:10:19 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1A9E488D2CD023DF4C0A;
 Sat, 31 Aug 2019 18:10:11 +0800 (CST)
Received: from [127.0.0.1] (10.74.191.121) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 31 Aug 2019
 18:10:04 +0800
Subject: Re: [PATCH v2 2/9] x86: numa: check the node id consistently for x86
To: Peter Zijlstra <peterz@infradead.org>
References: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
 <1567231103-13237-3-git-send-email-linyunsheng@huawei.com>
 <20190831085539.GG2369@hirez.programming.kicks-ass.net>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <4d89c688-49e4-a2aa-32ee-65e36edcd913@huawei.com>
Date: Sat, 31 Aug 2019 18:09:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20190831085539.GG2369@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Originating-IP: [10.74.191.121]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_031017_588780_377F65AE 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dalias@libc.org, linux-sh@vger.kernel.org, catalin.marinas@arm.com,
 dave.hansen@linux.intel.com, heiko.carstens@de.ibm.com, linuxarm@huawei.com,
 jiaxun.yang@flygoat.com, linux-mips@vger.kernel.org, mwb@linux.vnet.ibm.com,
 paulus@samba.org, hpa@zytor.com, sparclinux@vger.kernel.org, chenhc@lemote.com,
 will@kernel.org, cai@lca.pw, linux-s390@vger.kernel.org,
 ysato@users.sourceforge.jp, mpe@ellerman.id.au, x86@kernel.org,
 rppt@linux.ibm.com, borntraeger@de.ibm.com, dledford@redhat.com,
 mingo@redhat.com, jeffrey.t.kirsher@intel.com, benh@kernel.crashing.org,
 jhogan@kernel.org, nfont@linux.vnet.ibm.com, mattst88@gmail.com,
 len.brown@intel.com, gor@linux.ibm.com, anshuman.khandual@arm.com,
 bp@alien8.de, luto@kernel.org, tglx@linutronix.de,
 naveen.n.rao@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 rth@twiddle.net, axboe@kernel.dk, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, tbogendoerfer@suse.de,
 paul.burton@mips.com, linux-alpha@vger.kernel.org, ink@jurassic.park.msu.ru,
 akpm@linux-foundation.org, robin.murphy@arm.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/31 16:55, Peter Zijlstra wrote:
> On Sat, Aug 31, 2019 at 01:58:16PM +0800, Yunsheng Lin wrote:
>> According to Section 6.2.14 from ACPI spec 6.3 [1], the setting
>> of proximity domain is optional, as below:
>>
>> This optional object is used to describe proximity domain
>> associations within a machine. _PXM evaluates to an integer
>> that identifies a device as belonging to a Proximity Domain
>> defined in the System Resource Affinity Table (SRAT).
> 
> That's just words.. what does it actually mean?

It means the dev_to_node(dev) may return -1 if the bios does not
implement the proximity domain feature, user may use that value
to call cpumask_of_node and cpumask_of_node does not protect itself
from node id being -1, which causes out of bound access.

> 
>> This patch checks node id with the below case before returning
>> node_to_cpumask_map[node]:
>> 1. if node_id >= nr_node_ids, return cpu_none_mask
>> 2. if node_id < 0, return cpu_online_mask
>> 3. if node_to_cpumask_map[node_id] is NULL, return cpu_online_mask
>>
>> [1] https://uefi.org/sites/default/files/resources/ACPI_6_3_final_Jan30.pdf
>>
>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
>> ---
>>  arch/x86/include/asm/topology.h | 6 ++++++
>>  arch/x86/mm/numa.c              | 2 +-
>>  2 files changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/x86/include/asm/topology.h b/arch/x86/include/asm/topology.h
>> index 4b14d23..f36e9c8 100644
>> --- a/arch/x86/include/asm/topology.h
>> +++ b/arch/x86/include/asm/topology.h
>> @@ -69,6 +69,12 @@ extern const struct cpumask *cpumask_of_node(int node);
>>  /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
>>  static inline const struct cpumask *cpumask_of_node(int node)
>>  {
>> +	if (node >= nr_node_ids)
>> +		return cpu_none_mask;
>> +
>> +	if (node < 0 || !node_to_cpumask_map[node])
>> +		return cpu_online_mask;
>> +
>>  	return node_to_cpumask_map[node];
>>  }
>>  #endif
> 
> I _reallly_ hate this. Users are expected to use valid numa ids. Now
> we're adding all this checking to all users. Why do we want to do that?

As above, the dev_to_node(dev) may return -1.

> 
> Using '(unsigned)node >= nr_nods_ids' is an error.

'node >= nr_node_ids' can be dropped if all user is expected to not call
cpumask_of_node with node id greater or equal to nr_nods_ids.

From what I can see, the problem can be fixed in three place:
1. Make user dev_to_node return a valid node id even when proximity
   domain is not set by bios(or node id set by buggy bios is not valid),
   which may need info from the numa system to make sure it will return
   a valid node.

2. User that call cpumask_of_node should ensure the node id is valid
   before calling cpumask_of_node, and user also need some info to
   make ensure node id is valid.

3. Make sure cpumask_of_node deal with invalid node id as this patchset.

Which one do you prefer to make sure node id is valid, or do you
have any better idea?

Any detail advice and suggestion will be very helpful, thanks.

> 
>> diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
>> index e6dad60..5e393d2 100644
>> --- a/arch/x86/mm/numa.c
>> +++ b/arch/x86/mm/numa.c
>> @@ -868,7 +868,7 @@ const struct cpumask *cpumask_of_node(int node)
>>  		dump_stack();
>>  		return cpu_none_mask;
>>  	}
>> -	if (node_to_cpumask_map[node] == NULL) {
>> +	if (node < 0 || !node_to_cpumask_map[node]) {
>>  		printk(KERN_WARNING
>>  			"cpumask_of_node(%d): no node_to_cpumask_map!\n",
>>  			node);
>> -- 
>> 2.8.1
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
