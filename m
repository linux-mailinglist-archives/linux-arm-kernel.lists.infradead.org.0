Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A813188467
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:38:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tY6D6HMwaD8Qt4eHaVbu4FMLOoBu6/TXYk0MOrJWZOc=; b=i6NjJprpRSH5pqz3qVF1RYrtW
	xghGzlIx0/YXj22KSriCwJBUnac3Z0hpbBBUyj4fhsc7VlbCAZxBXu9tGRyWFTtD3z1v2HQyCnLRp
	rcBRGEDNF/XribeFDTQshWiXt2nXAZPgBIrmmjS2cgFLyWAwsLGHJfWTqg7dhFAI4adVkayX0PoWH
	R1klAc3jgPMtIUl8Gjg5nk3oIbMZuPj4wRy5ogGTWZQfjThVrKoiefFuCpBVbrEAkiB6LiWg0Cnv8
	oyzmdknG+hK04GWn/J/Q2Xh9T0jlZGanIcXusfYI5QRjoE53DUwKogHUxOykC1rmHLbXvz37WGhgo
	KtSnpX0WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBUP-0002gW-8S; Tue, 17 Mar 2020 12:38:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBUE-0002fw-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:38:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4F5230E;
 Tue, 17 Mar 2020 05:38:17 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 833C53F534;
 Tue, 17 Mar 2020 05:38:16 -0700 (PDT)
Subject: Re: [PATCH] arm64: perf: Clean up enable/disable calls
To: Mark Rutland <mark.rutland@arm.com>
References: <037238a60de35a9f49058c0b062aaafc009badc4.1583769494.git.robin.murphy@arm.com>
 <20200317111340.GG8831@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8e962435-4b14-903e-32b3-6c45068944c4@arm.com>
Date: Tue, 17 Mar 2020 12:38:15 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200317111340.GG8831@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_053822_742129_948C4B11 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-17 11:13 am, Mark Rutland wrote:
> Hi Robin,
> 
> On Tue, Mar 10, 2020 at 05:15:57PM +0000, Robin Murphy wrote:
>> Reading this code bordered on painful, what with all the repetition and
>> pointless return values. More fundamentally, dribbling the hardware
>> enables and disables in one bit at a time incurs needless system
>> register overhead for chained events and on reset. We already use
>> bitmask values for the KVM hooks, so consolidate all the register
>> accesses to match, and make a reasonable saving in both source and
>> object code.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> This generally looks good to me; I have a couple of comments below.
> 
>> ---
>>
>> Note that the seemingly-superfluous "pmcr" changes in armv8pmu_reset()
>> are to minimise conflicts with the v8.5 64-bit counter patches; it was
>> debugging those which triggered me to do this.
> 
> If we take this patch first, can we drop that and rebase those patches?

Sure, if you think this is worth merging first and are happy to rebase 
then I'll do that.

>>
>>   arch/arm64/kernel/perf_event.c | 64 +++++++++++++---------------------
>>   1 file changed, 25 insertions(+), 39 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index e40b65645c86..89034720602a 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -450,11 +450,9 @@ static inline void armv8pmu_write_event_type(struct perf_event *event)
>>   	}
>>   }
>>   
>> -static inline int armv8pmu_enable_counter(int idx)
>> +static inline void armv8pmu_enable_counter(u32 mask)
>>   {
>> -	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
>> -	write_sysreg(BIT(counter), pmcntenset_el0);
>> -	return idx;
>> +	write_sysreg(mask, pmcntenset_el0);
>>   }
>>   
>>   static inline void armv8pmu_enable_event_counter(struct perf_event *event)
>> @@ -469,18 +467,13 @@ static inline void armv8pmu_enable_event_counter(struct perf_event *event)
>>   	kvm_set_pmu_events(counter_bits, attr);
> 
> For consistency, could we first rename the existing `counter_bits`
> instances to be `mask`? I think the latter is a better name.

Agreed.

> Also, if it won't haveto be undone by the ARMv8.5 patches, can we add a
> helper to generate the mask for an event:
> 
> | static u32 armv8pmu_event_counters_mask(struct perf_event *event)
> | {
> | 	u32 mask = BIT(ARMV8_IDX_TO_COUNTER(idx));
> | 	if (armv8pmu_event_is_chained(event))
> | 		mask |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));
> | 	
> | 	return mask;
> | }

It looks like there's only two places we would use this, so there's no 
code saving to be had, but the logical abstraction seems sound and I 
guess I *am* arguing to minimise repetition here, so I'll give it a go.

> Otherwise, this looks good to me. I assume you've tested it. ;)

I was running the v8.5 patches with this on top and nothing obviously 
regressed, but I'll make sure to explicitly test chained events as well 
when I spin v2.

Thanks,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
