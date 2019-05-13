Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E0A1B490
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBI4zulzTovEkiek/wBQkEzMnmikqL1SniexOKzhENk=; b=i+2vg1NYnpjYpk
	76luDKZ/HjtE+ZiZpWOuilppUt8OZIlyrnJmzior57e5D9SKeCuad592xoyVcb30f9MaUpYKo23RH
	3g6ZS2V151BcmBGMWsdmjNqa9Qj8tOpIusa33/mftewH/zwgcRGJhdImntCOaePYpZq6a9U+q475J
	XGhktrtZ3Vqb4kErrcqYVeWyBesrBW4jYRul2X1AxAk6Wb4lJdAk5R9xgbx8PumPfAKZI8KH2M9o/
	Zmfvahk+8tlhGIR6ThNqyhW0YiZndTtL6A3mUlsFoly3Uj+dsZ/kXH4s7c+RBNp34I1hYZLCTN28i
	AOMof3FjmwvxLzhuuWog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8sa-0007tD-Pt; Mon, 13 May 2019 11:12:24 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8sS-0007rh-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:12:18 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2AE843B18879504E3740;
 Mon, 13 May 2019 19:12:06 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Mon, 13 May 2019
 19:11:57 +0800
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
To: Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will.deacon@arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
 <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
 <20190508165149.GB21553@e107155-lin> <20190509092810.GC2667@brain-police>
 <20190509103559.GB8239@e107155-lin>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <c70b242a-9c6c-aaee-d60a-1114d9bfb666@huawei.com>
Date: Mon, 13 May 2019 19:10:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190509103559.GB8239@e107155-lin>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041217_114932_BB128AAB 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>, catalin.marinas@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 Hongbo Yao <yaohongbo@huawei.com>, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/5/9 18:35, Sudeep Holla wrote:
> On Thu, May 09, 2019 at 10:28:11AM +0100, Will Deacon wrote:
>> On Wed, May 08, 2019 at 05:51:49PM +0100, Sudeep Holla wrote:
>>> On Wed, May 08, 2019 at 05:35:51PM +0800, Hanjun Guo wrote:
[...]
>>>>>>
>>>>>> Adding this patch set on top of latest mainline kernel,
>>>>>> and tested on D06 which has the SPE feature, in boot message
>>>>>> shows it was probed successfully:
>>>>>>
>>>>>> arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]
>>>>>>
>>>>>> but when I test it with spe events such as
>>>>>>
>>>>>> perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls
>>>>>>
>>>>>> it fails with:
>>>>>> failed to mmap with 12 (Cannot allocate memory),
>>>>>>
>>>>>> Confirmed that patch [0] is merged and other perf events are working
>>>>>> fine.
>>>>>
>>>>> Its pretty easy to get into the weeds with this driver, does it work with examples like:
>>>>>
>>>>> https://lkml.org/lkml/2018/1/14/122
>>>>
>>>> No, not work at all.
>>>>
>>>> SPE works on 5.0, but not work after 5.1-rc1, bisected to this commit:
>>>>
>>>> 5768402fd9c6 perf/ring_buffer: Use high order allocations for AUX buffers optimistically
>>>>
>>>
>>> Indeed this patch breaks SPE. As mentioned in the patch, it uses high
>>> order allocations for AUX buffers and SPE PMU setup_aux explicitly
>>> fails with the warning "unexpected high-order page for auxbuf!" if
>>> it encounters one.
>>>
>>> I don't know the intention of that check in SPE. Will ?
>>
>> Since SPE uses virtual addressing, we don't really care about the underlying
>> page layout so there's no need to use higher-order allocations. I suppose we
>> could theoretically map them at the pmd level in some cases, but ignoring
>> them should also be harmless and I suspect you can delete the check.
>>
> 
> Yes, I did a quick look to see if we can do that, but couldn't find a clue.
> Not sure if that's any optimisation, we can use order from page_private
> and set the values accordingly ?
> 
>> Does the patch below fix the problem?
>>
> 
> Yes it should help, I tried exactly the same thing yesterday and it does
> fix the issue.

Works for me too, thank you Sudeep and Will for looking into this issue.

Best Regards
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
