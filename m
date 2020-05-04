Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A041C3114
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 03:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gYSgCIS0C+Idefs/wiVJSpvFXoBqeTpTB8TWHaicyw=; b=XmeGVm9NqVVE7g
	uNKn3FvJ9Zu6SRSjKqF0dMmCWda7+3aDbMMcy5rDjwilH5d43ta10QvhBmSHGCARcukNbCU0IuFxo
	cK0s9PkjizRdD8Q+9T4a6K+kOp0nAsa8F4olRbWO5aOudst0CbBYRlH+pE/VkydJaQfxwG3QZf/b4
	a2eO+n7QYHHp2Ehg6Fa6gFQ5KKB029bzCjDffPErhP+57m/o3F824ZoEv7HAAoz5EWgnvBJk9Jkr0
	uml1BA7Z1h7UZVQ8oj0PpXoUTR3jodF/bHg9zMams3Nthqxxl26vpDpzV2n4AUldtKaElm3fp0zhN
	L7qPO4H15fKkrU7zhJNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPy3-00068r-1J; Mon, 04 May 2020 01:32:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPxv-00067A-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 01:32:17 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5B5679E67C9A7EDDE2C1;
 Mon,  4 May 2020 09:32:01 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 09:31:58 +0800
Subject: Re: [PATCH] arm64: perf: Expose some new events via sysfs
To: Will Deacon <will@kernel.org>
References: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200501171237.GA19048@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <b8c9189f-baf1-fe40-49be-1f74fb3ceb0c@hisilicon.com>
Date: Mon, 4 May 2020 09:31:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200501171237.GA19048@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_183216_034230_4DC3BCAE 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/5/2 1:12, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 02:31:53PM +0800, Shaokun Zhang wrote:
>> Some new PMU events can been detected by PMCEID1_EL0, but it can't
>> be listed, Let's expose these through sysfs.
>>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>> ---
>>  arch/arm64/include/asm/perf_event.h | 19 +++++++++++++++++++
>>  arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
>>  2 files changed, 38 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
>> index e7765b62c712..f1b93d7c4260 100644
>> --- a/arch/arm64/include/asm/perf_event.h
>> +++ b/arch/arm64/include/asm/perf_event.h
>> @@ -72,12 +72,31 @@
>>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_RD				0x36
>>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD			0x37
>>  #define ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD			0x38
>> +#define ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD			0x39
>> +#define ARMV8_PMUV3_PERFCTR_OP_RETIRED				0x3A
>> +#define ARMV8_PMUV3_PERFCTR_OP_SPEC				0x3B
>> +#define ARMV8_PMUV3_PERFCTR_STALL				0x3C
>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND			0x3D
>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND			0x3E
>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT				0x3F
> 
> Hmm, looks like the presence of this event implies the presence of the
> PMMIR_EL1 register. Should we be exposing the "SLOTS" field from that in
> sysfs? (obviously as a separate patch)
> 

Yes, Before doing this patch, I have considered the PMMIR_EL1 register, but
not sure what to do about it :-) . I will expose it in next version.

>>  
>>  /* Statistical profiling extension microarchitectural events */
>>  #define	ARMV8_SPE_PERFCTR_SAMPLE_POP				0x4000
>>  #define	ARMV8_SPE_PERFCTR_SAMPLE_FEED				0x4001
>>  #define	ARMV8_SPE_PERFCTR_SAMPLE_FILTRATE			0x4002
>>  #define	ARMV8_SPE_PERFCTR_SAMPLE_COLLISION			0x4003
>> +#define	ARMV8_SPE_PERFCTR_CNT_CYCLES				0x4004
>> +#define	ARMV8_SPE_PERFCTR_STALL_BACKEND_MEM			0x4005
>> +#define	ARMV8_SPE_PERFCTR_L1I_CACHE_LMISS			0x4006
>> +#define	ARMV8_SPE_PERFCTR_L2D_CACHE_LMISS_RD			0x4009
>> +#define	ARMV8_SPE_PERFCTR_L2I_CACHE_LMISS			0x400A
>> +#define	ARMV8_SPE_PERFCTR_L3D_CACHE_LMISS_RD			0x400B
>> +#define	ARMV8_SPE_PERFCTR_LDST_ALIGN_LAT			0x4020
>> +#define	ARMV8_SPE_PERFCTR_LD_ALIGN_LAT				0x4021
>> +#define	ARMV8_SPE_PERFCTR_ST_ALIGN_LAT				0x4022
>> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED			0x4024
>> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_RD			0x4025
>> +#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_WR			0x4026
> 
> I think the naming is off here, as these don't seem to have anything to do
> with SPE afaict.
> 

Right, some are about AMUv1 events and Memory Tagging Extensions, I will comment
them correspondingly in v2.

Thanks,
Shaokun

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
