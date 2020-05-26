Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BFA1E195B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 04:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blaHCrTOgZypBcG9zOwkJJ6/6ZhvOK53gBl2KGIjK/8=; b=W5IIm+xo/AKWnU
	h0ZoX2mkAyQqAgOgm6l2U2L9riiMSzSNhJlTm8vEIvk9pM8mB0lk610p1dRJDWu03BQI6tJRdTDZC
	u+qM3dILEZ+ruy4MboLCeG+Lo5Rw6wkl7rjsV125UlGmfzrhSOiqr+8sB00cRiwor/KQfDj26QHUe
	gkxYSTSOPsLqqNdhc6Ll35MN9AokINGX23gAgDB/H8VeXS0RJnjpuermL0k+v4KZGsSZ+0CAMa79L
	OboYzSskbeB8TGZt0E8zjlddO+FjeJYQmsZa4GSYTzcyyHdBoyN2Gn4frQa1c1y/B/sY4qsnPsqnJ
	jJK67ajxvk/knLsVNP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdPKr-0008VK-6b; Tue, 26 May 2020 02:28:57 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdPKd-0008Tj-PZ; Tue, 26 May 2020 02:28:45 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E1699FB94B3AC18B0138;
 Tue, 26 May 2020 10:28:28 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.90) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Tue, 26 May 2020
 10:28:19 +0800
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: Baoquan He <bhe@redhat.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200526014242.GF20045@MiWiFi-R3L-srv>
From: chenzhou <chenzhou10@huawei.com>
Message-ID: <7b17448f-ab1d-1849-3302-2446f4eb8710@huawei.com>
Date: Tue, 26 May 2020 10:28:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200526014242.GF20045@MiWiFi-R3L-srv>
X-Originating-IP: [10.166.213.90]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_192843_991366_B7FD958E 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: horms@verge.net.au, John.p.donnelly@oracle.com, arnd@arndb.de,
 will@kernel.org, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mingo@redhat.com,
 guohanjun@huawei.com, tglx@linutronix.de, pkushwaha@marvell.com,
 dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baoquan,


Thanks for your suggestions.

You are right, some details should be made in the commit log.


Thanks,

Chen Zhou


On 2020/5/26 9:42, Baoquan He wrote:
> On 05/21/20 at 05:38pm, Chen Zhou wrote:
>> This patch series enable reserving crashkernel above 4G in arm64.
>>
>> There are following issues in arm64 kdump:
>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>> when there is no enough low memory.
>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>> will boot failure because there is no low memory available for allocation.
>>
>> To solve these issues, introduce crashkernel=X,low to reserve specified
>> size low memory.
>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
>> size low memory for crash kdump kernel devices firstly and then reserve
>> memory above 4G.
>>
>> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
>> is specified simultaneously, kernel should reserve specified size low memory
>> for crash dump kernel devices. So there may be two crash kernel regions, one
>> is below 4G, the other is above 4G.
>> In order to distinct from the high region and make no effect to the use of
>> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
>> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
>>
>> Besides, we need to modify kexec-tools:
>> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
>>
>> The previous changes and discussions can be retrieved from:
>>
>> Changes since [v7]
>> - Move x86 CRASH_ALIGN to 2M
>> Suggested by Dave and do some test, move x86 CRASH_ALIGN to 2M.
> OK, moving x86 CRASH_ALIGN to 2M is suggested by Dave. Because
> CONFIG_PHYSICAL_ALIGN can be selected from 2M to 16M. So 2M seems good.
> But, anyway, we should tell the reason why it need be changed in commit
> log.
>
>
> arch/x86/Kconfig:
> config PHYSICAL_ALIGN
>         hex "Alignment value to which kernel should be aligned"
>         default "0x200000"
>         range 0x2000 0x1000000 if X86_32
>         range 0x200000 0x1000000 if X86_64
>
>> - Update Documentation/devicetree/bindings/chosen.txt 
>> Add corresponding documentation to Documentation/devicetree/bindings/chosen.txt suggested by Arnd.
>> - Add Tested-by from Jhon and pk
>>
>> Changes since [v6]
>> - Fix build errors reported by kbuild test robot.
>>
>> Changes since [v5]
>> - Move reserve_crashkernel_low() into kernel/crash_core.c.
>> - Delete crashkernel=X,high.
> And the crashkernel=X,high being deleted need be told too. Otherwise
> people reading the commit have to check why themselves. I didn't follow
> the old version, can't see why ,high can't be specified explicitly.
>
>> - Modify crashkernel=X,low.
>> If crashkernel=X,low is specified simultaneously, reserve spcified size low
>> memory for crash kdump kernel devices firstly and then reserve memory above 4G.
>> In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, and then
>> pass to crash dump kernel by DT property "linux,low-memory-range".
>> - Update Documentation/admin-guide/kdump/kdump.rst.
>>
>> Changes since [v4]
>> - Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
>>
>> Changes since [v3]
>> - Add memblock_cap_memory_ranges back for multiple ranges.
>> - Fix some compiling warnings.
>>
>> Changes since [v2]
>> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
>> two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
>> patch.
>>
>> Changes since [v1]:
>> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
>> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
>> in fdt_enforce_memory_region().
>> There are at most two crash kernel regions, for two crash kernel regions
>> case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
>> and then remove the memory range in the middle.
>>
>> [1]: http://lists.infradead.org/pipermail/kexec/2020-May/025128.html
>> [v1]: https://lkml.org/lkml/2019/4/2/1174
>> [v2]: https://lkml.org/lkml/2019/4/9/86
>> [v3]: https://lkml.org/lkml/2019/4/9/306
>> [v4]: https://lkml.org/lkml/2019/4/15/273
>> [v5]: https://lkml.org/lkml/2019/5/6/1360
>> [v6]: https://lkml.org/lkml/2019/8/30/142
>> [v7]: https://lkml.org/lkml/2019/12/23/411
>>
>> Chen Zhou (5):
>>   x86: kdump: move reserve_crashkernel_low() into crash_core.c
>>   arm64: kdump: reserve crashkenel above 4G for crash dump kernel
>>   arm64: kdump: add memory for devices by DT property, low-memory-range
>>   kdump: update Documentation about crashkernel on arm64
>>   dt-bindings: chosen: Document linux,low-memory-range for arm64 kdump
>>
>>  Documentation/admin-guide/kdump/kdump.rst     | 13 ++-
>>  .../admin-guide/kernel-parameters.txt         | 12 ++-
>>  Documentation/devicetree/bindings/chosen.txt  | 25 ++++++
>>  arch/arm64/kernel/setup.c                     |  8 +-
>>  arch/arm64/mm/init.c                          | 61 ++++++++++++-
>>  arch/x86/kernel/setup.c                       | 66 ++------------
>>  include/linux/crash_core.h                    |  3 +
>>  include/linux/kexec.h                         |  2 -
>>  kernel/crash_core.c                           | 85 +++++++++++++++++++
>>  kernel/kexec_core.c                           | 17 ----
>>  10 files changed, 208 insertions(+), 84 deletions(-)
>>
>> -- 
>> 2.20.1
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/kexec
>>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
