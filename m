Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905BBA300F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuhPSSES8196JS1VhfGLxHsqFQ7ACEOsC9C4PZ8c4Os=; b=SjwIKxHFVb2jKp
	B6fsFBRWj18TKXp3h04qZpExzCd2Jbjad9C11R/ExKj9tUgzhiOWdFzHnowRJXTexuubhZ/9IHzI8
	ZtQsHk+SY5zN7OtjKyRSHyk2tzwiMcCVm9FvYWvuaAcVTAsfsiiqGLYkMzpB9pnGnRq1+VUquhOWg
	6R2pxEKU2dgxnNiLB5nXCkYEaCjW9XSVMxaemVBPL7Gj1ld75Yx1wKJQu/qkVxCQAwtEi/0f2y6vh
	6Nk4G6yoF/cc50j5Lw9gCxWriCCasH0Ije9bp6ZpDOIZyqKjt1xjbuwM6q31HRVQgoS9MS2yqy2p8
	5XipxTOdrdBh1b8Xugmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aW4-0007ym-PI; Fri, 30 Aug 2019 06:36:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aVq-0007yM-E8
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:36:00 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 02AEE32FDCC591199C7F;
 Fri, 30 Aug 2019 14:35:56 +0800 (CST)
Received: from [127.0.0.1] (10.74.191.121) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 30 Aug 2019
 14:35:46 +0800
Subject: Re: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
To: Michal Hocko <mhocko@kernel.org>
References: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
 <20190830055528.GO28313@dhcp22.suse.cz>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <49b86da7-f114-27c2-463a-9bf5082ac197@huawei.com>
Date: Fri, 30 Aug 2019 14:35:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20190830055528.GO28313@dhcp22.suse.cz>
Content-Language: en-US
X-Originating-IP: [10.74.191.121]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233558_658715_2EAE366F 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: tglx@linutronix.de, anshuman.khandual@arm.com, robin.murphy@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 cai@lca.pw, akpm@linux-foundation.org, will@kernel.org, adobriyan@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/30 13:55, Michal Hocko wrote:
> On Fri 30-08-19 10:26:31, Yunsheng Lin wrote:
>> Some buggy bios may not set the device' numa id, and dev_to_node
>> will return -1, which may cause global-out-of-bounds error
>> detected by KASAN.
> 
> Why should we workaround a buggy bios like that? Is it so widespread and
> no BIOS update available? Also, why is this arm64 specific?

For our case, there is BIOS update available. I just thought it might
be better to protect from this case when BIOS has not implemented the
device' numa id setting feature or the feature from BIOS has some bug.

It is not arm64 specific, right now I only have arm64 board. If it is
ok to protect this from the buggy BIOS, maybe all other arch can be
changed too.

> 
>> This patch changes cpumask_of_node to return cpu_none_mask if the
>> node is not valid, and sync the cpumask_of_node between the
>> cpumask_of_node function in numa.h and numa.c.
> 
> Why?

When CONFIG_DEBUG_PER_CPU_MAPS is defined, the cpumask_of_node() in
numa.c is used, if not, the cpumask_of_node() in numa.h is used.

I am not sure why there is difference between them, and it is there
when since the below commit:
1a2db300348b ("arm64, numa: Add NUMA support for arm64 platforms.")

I synced them to keep them consistent whether CONFIG_DEBUG_PER_CPU_MAPS
is defined.

> 
>> Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
>> ---
>>  arch/arm64/include/asm/numa.h | 6 ++++++
>>  arch/arm64/mm/numa.c          | 2 +-
>>  2 files changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/numa.h b/arch/arm64/include/asm/numa.h
>> index 626ad01..da891ed 100644
>> --- a/arch/arm64/include/asm/numa.h
>> +++ b/arch/arm64/include/asm/numa.h
>> @@ -25,6 +25,12 @@ const struct cpumask *cpumask_of_node(int node);
>>  /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
>>  static inline const struct cpumask *cpumask_of_node(int node)
>>  {
>> +	if (node >= nr_node_ids || node < 0)
>> +		return cpu_none_mask;
>> +
>> +	if (!node_to_cpumask_map[node])
>> +		return cpu_online_mask;
>> +
>>  	return node_to_cpumask_map[node];
>>  }
>>  #endif
>> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
>> index 4f241cc..3846313 100644
>> --- a/arch/arm64/mm/numa.c
>> +++ b/arch/arm64/mm/numa.c
>> @@ -46,7 +46,7 @@ EXPORT_SYMBOL(node_to_cpumask_map);
>>   */
>>  const struct cpumask *cpumask_of_node(int node)
>>  {
>> -	if (WARN_ON(node >= nr_node_ids))
>> +	if (WARN_ON(node >= nr_node_ids || node < 0))
>>  		return cpu_none_mask;
>>  
>>  	if (WARN_ON(node_to_cpumask_map[node] == NULL))
>> -- 
>> 2.8.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
