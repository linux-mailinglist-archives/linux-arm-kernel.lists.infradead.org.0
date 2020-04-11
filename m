Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E641A4E55
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 08:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2PLqYZLrbyflu/aO37Ucojveo/Ex20hdBTxRn4OwrX8=; b=JEGPo7tJO6BUk+Qb3zq01L1SQ
	/0wZNk5Umbx3eKk8EEkjoS2NxMFmj2j4qXaBCdrbU0R6Oozvdb+SZGSbSunK0ekQyrTBhgvst/5HY
	LLsMkCkTne8XB2lneCxlrQBWgRid6hw+fSy1VgYbwLDFdReor2CvXxuV5xHyoK9u2ngWpGG2j4gMa
	EAhs5hMtV9EhZ9S6HPPLyORWm1/gHk5/0lQ9GHdojcvOlXG749HN1LExCEd3H0Z9GQAUQaXt7kR6Z
	Rbds7wrv1rYWhFUWx5duuHaQVmNFUBZsCfN6ak78q/iGV5CGDqmFzAMobagDhS7tR37BSLklVXrEY
	fBJElXP2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN9Zt-0005PH-An; Sat, 11 Apr 2020 06:25:17 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN9Zl-0002xr-Vc
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 06:25:11 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AFD2687693DE0D11E971;
 Sat, 11 Apr 2020 14:24:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.190) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0;
 Sat, 11 Apr 2020 14:24:41 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
To: Will Deacon <will@kernel.org>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck> <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
 <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
 <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
 <20200410115446.GA24814@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <66e88366-770c-d3b7-2005-b6ba7045fea8@huawei.com>
Date: Sat, 11 Apr 2020 14:24:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200410115446.GA24814@willie-the-truck>
Content-Language: en-GB
X-Originating-IP: [10.173.220.190]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_232510_191054_6FD722B8 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Anna.Chen@arm.com,
 Zhenyu Ye <yezhenyu2@huawei.com>, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, 'Matteo Carlini' <Matteo.Carlini@arm.com>,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, tangnianyao@huawei.com,
 Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 qiuzhenfa@hisilicon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/4/10 19:54, Will Deacon wrote:
> On Fri, Apr 10, 2020 at 09:43:49AM +0800, Hanjun Guo wrote:
>> On 2019/11/20 9:29, Hanjun Guo wrote:
>>>>
>>>> I also wonder if the ARMv8.4-TTL extension (which I have patches for in
>>>> the nested virt series) requires the same kind of treatment (after all,
>>>> it has an implicit range based on the base granule size and level).
>>>>
>>>> In any way, this requires careful specification, and I don't think
>>>> we can improvise this on the ML... ;-)
>>>
>>> Sure :), the good news is that ARM officially announced will be
>>> working with Huawei again.
>>>
>>> So if I understand your point correctly, we need steps to take:
>>>    - ARM spec needs to make TIBi by range crystal clear and being
>>>      written down in the spec;
>>>    - Firmware description of supporting TLBi by range in system level
>>>      for both FDT and ACPI;
>>>    - Then upstream the code.
>>
>> Do we have update here? I noticed that the TLBI by rang for SMMU is
>> merged for upstream from Rob, any plan or progress for the CPU side?
>>
>> Sorry to ping you on the mailling list, our upcoming new chip has
>> this feature and it's good to enable it, so it's a bit urgent for us.
> 
> Have you tried look at the latest version of the patches rather than
> "pinging" old history? We're also in the merge window at the moment, so
> please cut us some slack.

Sorry, I think I missed something, do you mean the patch set for TTL
from Zhenyu?

> 
> I also fail to see the urgency. This thing is a pure performance play, and a
> fairly niche one at that. I'm not especially comfortable ripping up our TLBI
> code without being able to test it.

As discussed before, if it needs the ACPI spec update, it will take
much longer time to get it enabled in mainline kernel, that's the
"urgency", not to ask for merging this patch for this merge window.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
