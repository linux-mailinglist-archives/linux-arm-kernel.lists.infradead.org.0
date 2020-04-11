Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BE61A4E5E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 08:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M29ZB+mEVopo7I/VNJXCY3CieEQvfjnyyeJkKbNGL1U=; b=E2yNbM1sV68I59mMDsS0syGGl
	L+8oitPrqKwzuI0f71alDx5DKnI5ZTQXPV2Ck0zZnJM5pb/zlXn6TuiKXscjBX8XwvkF10gqPR7Zw
	7Zs4T0lCX5QmlQIT47abv9POYz6NOinS6eL6nF4MXPIaEsY4lPjxOr3nk/B3x8OOf/lR1rUl7nuCo
	X0t8vNnDf2aCV9b2Ky/LaWE83+fKEmrdFK3jSYjPAHdhuprYxt2qf/MaetEtQ/5BkI+g8t7e8xGKw
	WsjfY/8iWQK4ZgE5vH234LDvYeqCIaQtcZusmw54SXKTtvfjN1qtXIbMUnJIYPJRnOzwfqQoVRisu
	DnSUAPAaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN9nk-0002zl-6L; Sat, 11 Apr 2020 06:39:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN9nc-0002yj-2f
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 06:39:29 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 58568B82195A2B3DC390;
 Sat, 11 Apr 2020 14:39:23 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.190) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0;
 Sat, 11 Apr 2020 14:39:15 +0800
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
 <20200410120235.GC24814@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <5af3a54c-c058-78a8-eba2-9e2ef666beee@huawei.com>
Date: Sat, 11 Apr 2020 14:39:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200410120235.GC24814@willie-the-truck>
Content-Language: en-GB
X-Originating-IP: [10.173.220.190]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_233928_287022_DA68CC6F 
X-CRM114-Status: GOOD (  15.24  )
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

On 2020/4/10 20:02, Will Deacon wrote:
> On Fri, Apr 10, 2020 at 12:54:46PM +0100, Will Deacon wrote:
>> On Fri, Apr 10, 2020 at 09:43:49AM +0800, Hanjun Guo wrote:
>>> On 2019/11/20 9:29, Hanjun Guo wrote:
>>>>>
>>>>> I also wonder if the ARMv8.4-TTL extension (which I have patches for in
>>>>> the nested virt series) requires the same kind of treatment (after all,
>>>>> it has an implicit range based on the base granule size and level).
>>>>>
>>>>> In any way, this requires careful specification, and I don't think
>>>>> we can improvise this on the ML... ;-)
>>>>
>>>> Sure :), the good news is that ARM officially announced will be
>>>> working with Huawei again.
>>>>
>>>> So if I understand your point correctly, we need steps to take:
>>>>    - ARM spec needs to make TIBi by range crystal clear and being
>>>>      written down in the spec;
>>>>    - Firmware description of supporting TLBi by range in system level
>>>>      for both FDT and ACPI;
>>>>    - Then upstream the code.
>>>
>>> Do we have update here? I noticed that the TLBI by rang for SMMU is
>>> merged for upstream from Rob, any plan or progress for the CPU side?
>>>
>>> Sorry to ping you on the mailling list, our upcoming new chip has
>>> this feature and it's good to enable it, so it's a bit urgent for us.
>>
>> Have you tried look at the latest version of the patches rather than
>> "pinging" old history? We're also in the merge window at the moment, so
>> please cut us some slack.
>>
>> I also fail to see the urgency. This thing is a pure performance play, and a
>> fairly niche one at that. I'm not especially comfortable ripping up our TLBI
>> code without being able to test it.
> 
> Argh, so while it *is* the middle of the merge window and I do fail to see
> the urgency of this, I also mixed it up with the TTL series, which is the one
> I'm really worried about.
> 
> Please post a v3 at -rc1.

A bit lost here, do you mean the TLBi by range patch or the TTL series?

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
