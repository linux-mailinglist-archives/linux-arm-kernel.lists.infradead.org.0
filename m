Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EDBA3477
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJIhdpi6pkiEgMcuAouWGioQx9NFogln0IF2Wv38BtU=; b=jHDb6PeU6XZztP
	N6f3tabSfVo8s6L/fbneZdD6iouPN3cPXuRpeCQT56b2iG5gXdMJt78/dxwvN2gLEhyH27O6cp1za
	Nmfjg3qsnA6oDi59XdiCUgrKrjy2QcfxljslgabjinRC/xxFaz8VBILhTeMiHQLJCcYdMgZ9naRer
	swW18calzstuParv/9tvUiCQEPYXyLUZWcxbQ2a0ll9g5N05vur0vHsZWHvdcRfrtAmDf4v6KEQ63
	Kgr6SzZWrpo73cGSsjZlCy0dpsdwlCPHpbdAI+td6av+LeMd6w7eeywB3GvJmOwDCyKrQUXBGny8N
	UbDISU1aJAn7i6kQZexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dYB-0000TQ-Oh; Fri, 30 Aug 2019 09:50:35 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dXu-0000N3-W3
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:50:21 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E15B6E46AA2F3FA4175D;
 Fri, 30 Aug 2019 17:50:14 +0800 (CST)
Received: from [127.0.0.1] (10.74.191.121) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Fri, 30 Aug 2019
 17:50:07 +0800
Subject: Re: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
To: Michal Hocko <mhocko@kernel.org>
References: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
 <20190830055528.GO28313@dhcp22.suse.cz>
 <49b86da7-f114-27c2-463a-9bf5082ac197@huawei.com>
 <20190830064421.GS28313@dhcp22.suse.cz>
 <740cae36-f1a9-4d20-e4ea-3100076de533@huawei.com>
 <20190830083925.GV28313@dhcp22.suse.cz>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <20839f55-dc99-d2bf-7c60-c37f38232044@huawei.com>
Date: Fri, 30 Aug 2019 17:49:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20190830083925.GV28313@dhcp22.suse.cz>
Content-Language: en-US
X-Originating-IP: [10.74.191.121]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_025019_428478_250595C6 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: tglx@linutronix.de, anshuman.khandual@arm.com, robin.murphy@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 cai@lca.pw, akpm@linux-foundation.org, will@kernel.org, adobriyan@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/30 16:39, Michal Hocko wrote:
> On Fri 30-08-19 16:08:14, Yunsheng Lin wrote:
>> On 2019/8/30 14:44, Michal Hocko wrote:
>>> On Fri 30-08-19 14:35:26, Yunsheng Lin wrote:
>>>> On 2019/8/30 13:55, Michal Hocko wrote:
>>>>> On Fri 30-08-19 10:26:31, Yunsheng Lin wrote:
>>>>>> Some buggy bios may not set the device' numa id, and dev_to_node
>>>>>> will return -1, which may cause global-out-of-bounds error
>>>>>> detected by KASAN.
>>>>>
>>>>> Why should we workaround a buggy bios like that? Is it so widespread and
>>>>> no BIOS update available? Also, why is this arm64 specific?
>>>>
>>>> For our case, there is BIOS update available. I just thought it might
>>>> be better to protect from this case when BIOS has not implemented the
>>>> device' numa id setting feature or the feature from BIOS has some bug.
>>>>
>>>> It is not arm64 specific, right now I only have arm64 board. If it is
>>>> ok to protect this from the buggy BIOS, maybe all other arch can be
>>>> changed too.
>>>
>>> If we are to really care then this should be consistent among
>>> architectures IMHO. But I am not really sure this is really worth it.
>>> The code is quite old and I do not really remember any reports. 
>>
>> It is only detected by enabling KASAN, the system seems to run fine without
>> any visible error if KASAN is disabled. Maybe there is why no report has
>> been seen?
>>
>> Also according to Section 6.2.14 from ACPI spec 6.3 [1], the setting of proximity
>> domain is optional, as below:
>>
>> This optional object is used to describe proximity domain
>> associations within a machine. _PXM evaluates to an integer
>> that identifies a device as belonging to a Proximity Domain
>> defined in the System Resource Affinity Table (SRAT).
>>
>>
>> Do you think it is ok to resend the fix with above clarification and below
>> log:
> 
> OK, if the specification really allows to provide NUMA_NO_NODE (-1) then
> the code really has to be prepared for that. And ideally all arches
> should deal with that.
> 
>> [   42.970381] ==================================================================
>> [   42.977595] BUG: KASAN: global-out-of-bounds in __bitmap_weight+0x48/0xb0
>> [   42.984370] Read of size 8 at addr ffff20008cdf8790 by task kworker/0:1/13
>> [   42.991230]
>> [   42.992712] CPU: 0 PID: 13 Comm: kworker/0:1 Tainted: G           O      5.2.0-rc4-g8bde06a-dirty #3
>> [   43.001830] Hardware name: Huawei TaiShan 2280 V2/BC82AMDA, BIOS TA BIOS 2280-A CS V2.B050.01 08/08/2019
>> [   43.011298] Workqueue: events work_for_cpu_fn
>> [   43.015643] Call trace:
>> [   43.018078]  dump_backtrace+0x0/0x1e8
>> [   43.021727]  show_stack+0x14/0x20
>> [   43.025031]  dump_stack+0xc4/0xfc
>> [   43.028335]  print_address_description+0x178/0x270
>> [   43.033113]  __kasan_report+0x164/0x1b8
>> [   43.036936]  kasan_report+0xc/0x18
>> [   43.040325]  __asan_load8+0x84/0xa8
>> [   43.043801]  __bitmap_weight+0x48/0xb0
>> [   43.047552]  hclge_init_ae_dev+0x988/0x1e78 [hclge]
>> [   43.052418]  hnae3_register_ae_dev+0xcc/0x278 [hnae3]
>> [   43.057467]  hns3_probe+0xe0/0x120 [hns3]
>> [   43.061464]  local_pci_probe+0x74/0xf0
>> [   43.065200]  work_for_cpu_fn+0x2c/0x48
>> [   43.068937]  process_one_work+0x3c0/0x878
>> [   43.072934]  worker_thread+0x400/0x670
>> [   43.076670]  kthread+0x1b0/0x1b8
>> [   43.079885]  ret_from_fork+0x10/0x18
>> [   43.083446]
>> [   43.084925] The buggy address belongs to the variable:
>> [   43.090052]  numa_distance+0x30/0x40
>> [   43.093613]
>> [   43.095091] Memory state around the buggy address:
>> [   43.099870]  ffff20008cdf8680: fa fa fa fa 04 fa fa fa fa fa fa fa 00 00 fa fa
>> [   43.107078]  ffff20008cdf8700: fa fa fa fa 04 fa fa fa fa fa fa fa 00 fa fa fa
>> [   43.114286] >ffff20008cdf8780: fa fa fa fa 00 00 00 00 00 00 00 00 fa fa fa fa
>> [   43.121494]                          ^
>> [   43.125230]  ffff20008cdf8800: 01 fa fa fa fa fa fa fa 04 fa fa fa fa fa fa fa
>> [   43.132439]  ffff20008cdf8880: fa fa fa fa fa fa fa fa 00 00 fa fa fa fa fa fa
>> [   43.139646] ==================================================================
>>
>>
>>>
>>>>>> This patch changes cpumask_of_node to return cpu_none_mask if the
>>>>>> node is not valid, and sync the cpumask_of_node between the
>>>>>> cpumask_of_node function in numa.h and numa.c.
>>>>>
>>>>> Why?
>>>>
>>>> When CONFIG_DEBUG_PER_CPU_MAPS is defined, the cpumask_of_node() in
>>>> numa.c is used, if not, the cpumask_of_node() in numa.h is used.
>>>>
>>>> I am not sure why there is difference between them, and it is there
>>>> when since the below commit:
>>>> 1a2db300348b ("arm64, numa: Add NUMA support for arm64 platforms.")
>>>>
>>>> I synced them to keep them consistent whether CONFIG_DEBUG_PER_CPU_MAPS
>>>> is defined.
>>>
>>> Such a change should be made in a separate patch with a full
>>> clarification/justification. From the above it is still not clear why
>>> this is needed though.
>>
>> Ok.
>>
>> How about:
>>
>> Currently there are different implementations of cpumask_of_node() depend
>> on the arch, for example:
>>
>> ia64:
>> #define cpumask_of_node(node) ((node) == -1 ?				\
>> 			       cpu_all_mask :				\
>> 			       &node_to_cpu_mask[node])
>>
>>
>> alpha:
>> static const struct cpumask *cpumask_of_node(int node)
>> {
>> 	int cpu;
>>
>> 	if (node == NUMA_NO_NODE)
>> 		return cpu_all_mask;
>>
>> 	cpumask_clear(&node_to_cpumask_map[node]);
>>
>> 	for_each_online_cpu(cpu) {
>> 		if (cpu_to_node(cpu) == node)
>> 			cpumask_set_cpu(cpu, node_to_cpumask_map[node]);
>> 	}
>>
>> 	return &node_to_cpumask_map[node];
>> }
>>
>> Even for the same arch, there are two implementations depend on the
>> CONFIG_DEBUG_PER_CPU_MAPS configuration.
>>
>> arm64/x86 without CONFIG_DEBUG_PER_CPU_MAPS:
>> static inline const struct cpumask *cpumask_of_node(int node)
>> {
>> 	return node_to_cpumask_map[node];
>> }
>>
>> arm64/x86 with CONFIG_DEBUG_PER_CPU_MAPS:
>> const struct cpumask *cpumask_of_node(int node)
>> {
>> 	if (WARN_ON(node >= nr_node_ids))
>> 		return cpu_none_mask;
>>
>> 	if (WARN_ON(node_to_cpumask_map[node] == NULL))
>> 		return cpu_online_mask;
>>
>> 	return node_to_cpumask_map[node];
>> }
>>
>> It seems the cpumask_of_node with CONFIG_DEBUG_PER_CPU_MAPS is used
>> to catch the erorr case and give a warning to user when node id is not
>> valid.
> 
> Yeah the config help text
> config DEBUG_PER_CPU_MAPS
>         bool "Debug access to per_cpu maps"
>         depends on DEBUG_KERNEL
>         depends on SMP
>         help
>           Say Y to verify that the per_cpu map being accessed has
>           been set up. This adds a fair amount of code to kernel memory
>           and decreases performance.
> 
>           Say N if unsure.
> 
> suggests that this is intentionally hidden behind a config so a normal
> path shouldn't really duplicate it. If those checks make sense in
> general then the config option should be dropped I think.

It seems cpumask_of_node with CONFIG_DEBUG_PER_CPU_MAPS on may be used to
debug some early use of cpumask_of_node problem, see below:

/*
 * Allocate node_to_cpumask_map based on number of available nodes
 * Requires node_possible_map to be valid.
 *
 * Note: cpumask_of_node() is not valid until after this is done.
 * (Use CONFIG_DEBUG_PER_CPU_MAPS to check this.)
 */
static void __init setup_node_to_cpumask_map(void)
{
	int node;

	/* setup nr_node_ids if not done yet */
	if (nr_node_ids == MAX_NUMNODES)
		setup_nr_node_ids();

	/* allocate and clear the mapping */
	for (node = 0; node < nr_node_ids; node++) {
		alloc_bootmem_cpumask_var(&node_to_cpumask_map[node]);
		cpumask_clear(node_to_cpumask_map[node]);
	}

	/* cpumask_of_node() will now work */
	pr_debug("Node to cpumask map for %u nodes\n", nr_node_ids);
}

So I prefer to keep it as two implementations for arm64 and x86, but
ensure the two implementations be consistent. It can be cleaned up later
when there is no use at all.

Is it ok with you?

> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
