Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DAA1C4BE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 04:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdwh0LdPBx6zty05GGlU3KkzWQYlvtUUih7UGklh9HA=; b=TAr4d/gaDzPP4b
	GIYj8Q4Ev0wn090V4TnQuO7O1ERzHxP9vXeDrr8QsaGYBEisV69U4ujzFqd7/EgqWJCH/q04LXBeu
	WTdjbg1yR5+9qBBfdM+i/zBwVy/lL5MgW1yuMMJbRbHym5CFI9irT4CrD+p9VFkSrcenQSshbJNpf
	y9HsfhZn6DZ38ec97y6yaFPv9QLp6+CXkAL5Yw97cYgHGiFrWD/47yJO+hikAv5udOWODVA5p4N01
	svEnowiwuhvqWdRvXSrNsH1aWUYNFOurys0bBxOqcJJ7Q7GLsXQLy3X2N8oMk7DsuNb0WMJWlUgfz
	uJd7cp/W7PJDN+ro7S/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVnDt-0003Mg-T0; Tue, 05 May 2020 02:22:17 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVnDm-0003Kn-Fk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 02:22:12 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2746F1C450F457EED3C6;
 Tue,  5 May 2020 10:21:55 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Tue, 5 May 2020
 10:21:52 +0800
Subject: Re: [PATCH] arm64: perf: Expose some new events via sysfs
To: Will Deacon <will@kernel.org>
References: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200501171237.GA19048@willie-the-truck>
 <970b8ae4-fd9a-d5d1-0066-92152ff07fd5@hisilicon.com>
 <20200504070624.GB2183@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <21e52d92-1cff-bf62-3d98-cd1150e56373@hisilicon.com>
Date: Tue, 5 May 2020 10:21:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200504070624.GB2183@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_192210_692063_38A9659E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/5/4 15:06, Will Deacon wrote:
> On Mon, May 04, 2020 at 11:46:14AM +0800, Shaokun Zhang wrote:
>> Hi Will,
>>
>> One more question;-)
>>
>> On 2020/5/2 1:12, Will Deacon wrote:
>>> On Tue, Apr 21, 2020 at 02:31:53PM +0800, Shaokun Zhang wrote:
>>>> Some new PMU events can been detected by PMCEID1_EL0, but it can't
>>>> be listed, Let's expose these through sysfs.
>>>>
>>>> Cc: Will Deacon <will@kernel.org>
>>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>>>> ---
>>>>  arch/arm64/include/asm/perf_event.h | 19 +++++++++++++++++++
>>>>  arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
>>>>  2 files changed, 38 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
>>>> index e7765b62c712..f1b93d7c4260 100644
>>>> --- a/arch/arm64/include/asm/perf_event.h
>>>> +++ b/arch/arm64/include/asm/perf_event.h
>>>> @@ -72,12 +72,31 @@
>>>>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_RD				0x36
>>>>  #define ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD			0x37
>>>>  #define ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD			0x38
>>>> +#define ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD			0x39
>>>> +#define ARMV8_PMUV3_PERFCTR_OP_RETIRED				0x3A
>>>> +#define ARMV8_PMUV3_PERFCTR_OP_SPEC				0x3B
>>>> +#define ARMV8_PMUV3_PERFCTR_STALL				0x3C
>>>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND			0x3D
>>>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND			0x3E
>>>> +#define ARMV8_PMUV3_PERFCTR_STALL_SLOT				0x3F
>>>
>>> Hmm, looks like the presence of this event implies the presence of the
>>> PMMIR_EL1 register. Should we be exposing the "SLOTS" field from that in
>>> sysfs? (obviously as a separate patch)
>>>
>>
>> Shall I expose it in /sys/devices/system/cpu/cpuX/regs/, right?
> 
> No; if we need to expose it (do we?) then it should be alongside the other

It seems that we need it if the PMU version is equal or greater than ARMv8.4-PMU.

> PMU files. e.g. /sys/bus/event_source/$pmu_name/caps/slots
> 

Got it, I did it as /sys/bus/event_source/devices/armv8_pmuv3_0/caps/slots or
/sys/devices/armv8_pmuv3_0/caps/slots.

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
