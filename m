Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522A6EF69F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g89gXqGXeS5uDPxGYjFzWwDswXG9oEz0zRvnyUya970=; b=araj3GdYDH7ZPe
	zKJ5oHrkU9AkaL/dA/m2NP71vxqEmfHKVDMZfN62N9JU3pERes/PgSxAGNZCOuCJMmfJFYEtxu7ru
	lWjnJ7xRlk9VPOXwuwt7GTvMyTvgMbLPldKVcjHSa1j4/fVi43yY293dS3yXA5Xv4Z7At+nbjaYck
	sZq7lG59lWDWP67CCIkbKNwjSH1RlogkJTQCH4JEFP+zSxRAvBJxXBzbojT3mrQKrpRAwtk3vnIEM
	brR01TlN2u/9UAnq72fa7QkhNdaSikin8F3w4t64zSq/QiX+SEVRsOXaCOoX5StyKPqskuuuxbhd7
	5I/mb6Ar4V5TOpxPZ1yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtd6-0007El-Je; Tue, 05 Nov 2019 07:51:56 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtcz-0007DD-3E
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 07:51:51 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2FCA26BAC3E25437A584;
 Tue,  5 Nov 2019 15:51:38 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 5 Nov 2019
 15:51:29 +0800
Subject: Re: [RFC] About perf-mem command support on arm64 platform
To: Will Deacon <will@kernel.org>
References: <74f8ddb5-13cc-5dce-82a6-ca8bd02f8175@hisilicon.com>
 <20191104142654.GA24609@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <76664d1a-cc8f-cd27-bc04-ddc687880b1f@hisilicon.com>
Date: Tue, 5 Nov 2019 15:51:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191104142654.GA24609@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_235149_304879_2BEE64BC 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 liuqi115@hisilicon.com, huangdaode@hisilicon.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks your reply firstly.

On 2019/11/4 22:26, Will Deacon wrote:
> On Mon, Nov 04, 2019 at 05:18:00PM +0800, Shaokun Zhang wrote:
>> perf-mem is used to profile memory access which has been implemented on x86
>> platform. It needs mem-stores events and mem-loads/load-latency.
>> For mem-stores events, it is MEM_INST_RETIRED_ALL_STORES whose raw number
>> is r82d0, and mem-loads/load-latency is from PEBS if I follow its code.
>>
>> Now, for some arm64 cores, like HiSilicon's tsv110 and ARM's Neoverse N1,
>> has supported the SPE(Statistical Profiling Extensions), so is it a
>> possibility that perf-mem is supported on arm64?
>> https://developer.arm.com/ip-products/processors/neoverse/neoverse-n1
> 
> I don't understand the relationship you're trying to draw between mem-stores

There may be some misunderstanding if I don't describe it correctly. From
the implementation of perf-mem on x86, it needs:
a. mem-stores PMU events;
b. mem-loads/load-latency from PEBS;

If arm64 plans to support perf-mem, we need to support mem-stores and
mem-loads/load-latency, and we can derive the latter from SPE.

> and SPE. How does perf-mem work and what does it actually require from the
> CPU?

An excellent question, I don't check the perf-mem carefully. Just from my
understanding, it needs the mentioned events and PEBS sampled data that is
filtered by desired latency for loads event.

> 
> One thing that may be worth noting is that SPE isn't generally able to
> capture information about all instructions being executed by the CPU:

Got it and I have used SPE on Huawei Kunpeng 920 SoC.

> instead, it instructions (most likely micro-ops) are sampled based on
> some user-specified period. The CPU advertises a minimum recommended

Ok, If I follow it right, perf record -c XXX to define the period for SPE.

> period which we expose under /sys and enforce when programming events.
> 
>> For arm64 PMU, it has 'st_retired' event that the event number is 0x0007
>> which is equal to mem-stores on x86, if we want support perf-mem, it seems
>> that 'st_retired' shall be replaced by 'mem-stores'
>> in arch/arm64/kernel/perf_event.c file. Of course, the cpu core should
>> support st_retired event. I'm not sure Will/Mark are happy on this.;-)
>>
>> For mem-loads/load-latency, we can derive them from SPE sampled data which
>> supports by load_filter and min_latency in SPE driver. and we may do some
>> work on tools/perf/builtin-mem.c.
> 
> I don't see how you could reconcile the sampling nature of SPE with a
> CPU PMU counter, particularly as filtering in SPE happens /after/ sampling.
> 

Jiri, can you give some implementations of perf-mem on mem-stores and
PEBS please?

>> From the above conditions, it seems that we may have the opportunity to
>> support the perf-mem command on arm64.
>> I'm not very sure about it, so I send this RFC and any comments are welcome.
> 
> I don't think there's enough information here to comment meaningfully more
> than SPE != PEBS.

We can get load-latency from SPE now and want to throw the thoughts whether
we should do perf-mem on arm64.

Thanks,
Shaokun

> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
