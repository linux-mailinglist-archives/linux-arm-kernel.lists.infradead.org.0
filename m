Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F81A74B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pSH72+O+2gVxxvFutjIR7JfONEcRtO8wOb8+zn1kne4=; b=bbUND+e8cf/lDye0dhXXKcvSU
	QxxkXaR9c8wVVMFR6ULnYiSiSbzMtEvrou6AACfl0eX0eCCIxCac4PqGADAKgSfO+oHj3R1NeLKtD
	ZiEUcuPQ9POSSBYnFKluEArGxMR4km3xualppTOleMMSs7mY3c1tc+K6nCta9FIuvs9GddwmdfIVR
	/ylqNkY8kCsNdJ65VR2rUG/T0foCXS8XzBJ5VYAIHRLnIekYPMWVt4k9ATkL6crTAkQ8Kxfx080oc
	iHstG7e7hw5d9wMoL6Nh0pV1dT11gz1os9tiRoZlMecG1Pk7eIHAJHV6tUqgS0tOcyyrPhwETRPfX
	yYh2k5h0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFyw-0005H2-MJ; Tue, 14 Apr 2020 07:27:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFyk-0005Fz-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 07:27:35 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8042EF9801B3DEA02EE7;
 Tue, 14 Apr 2020 15:27:16 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.190) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 14 Apr 2020 15:27:08 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
To: Will Deacon <will@kernel.org>
References: <20191111132716.GA9394@willie-the-truck>
 <5DC96660.8040505@huawei.com> <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
 <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
 <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
 <20200410115446.GA24814@willie-the-truck>
 <20200410120235.GC24814@willie-the-truck>
 <5af3a54c-c058-78a8-eba2-9e2ef666beee@huawei.com>
 <20200414070809.GA24197@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <e9f59d03-4201-c6d8-7238-04eafd44f186@huawei.com>
Date: Tue, 14 Apr 2020 15:27:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414070809.GA24197@willie-the-truck>
Content-Language: en-GB
X-Originating-IP: [10.173.220.190]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_002734_294404_1CEF86A2 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, Anna.Chen@arm.com,
 Zhenyu Ye <yezhenyu2@huawei.com>, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, 'Matteo Carlini' <Matteo.Carlini@arm.com>,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, tangnianyao@huawei.com,
 Marc Zyngier <maz@kernel.org>, qiuzhenfa@hisilicon.com,
 wanghuiqiang <wanghuiqiang@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/14 15:08, Will Deacon wrote:
> On Sat, Apr 11, 2020 at 02:39:13PM +0800, Hanjun Guo wrote:
>> On 2020/4/10 20:02, Will Deacon wrote:
>>> On Fri, Apr 10, 2020 at 12:54:46PM +0100, Will Deacon wrote:
>>>> On Fri, Apr 10, 2020 at 09:43:49AM +0800, Hanjun Guo wrote:
>>>>> On 2019/11/20 9:29, Hanjun Guo wrote:
>>>>>>>
>>>>>>> I also wonder if the ARMv8.4-TTL extension (which I have patches for in
>>>>>>> the nested virt series) requires the same kind of treatment (after all,
>>>>>>> it has an implicit range based on the base granule size and level).
>>>>>>>
>>>>>>> In any way, this requires careful specification, and I don't think
>>>>>>> we can improvise this on the ML... ;-)
>>>>>>
>>>>>> Sure :), the good news is that ARM officially announced will be
>>>>>> working with Huawei again.
>>>>>>
>>>>>> So if I understand your point correctly, we need steps to take:
>>>>>>     - ARM spec needs to make TIBi by range crystal clear and being
>>>>>>       written down in the spec;
>>>>>>     - Firmware description of supporting TLBi by range in system level
>>>>>>       for both FDT and ACPI;
>>>>>>     - Then upstream the code.
>>>>>
>>>>> Do we have update here? I noticed that the TLBI by rang for SMMU is
>>>>> merged for upstream from Rob, any plan or progress for the CPU side?
>>>>>
>>>>> Sorry to ping you on the mailling list, our upcoming new chip has
>>>>> this feature and it's good to enable it, so it's a bit urgent for us.
>>>>
>>>> Have you tried look at the latest version of the patches rather than
>>>> "pinging" old history? We're also in the merge window at the moment, so
>>>> please cut us some slack.
>>>>
>>>> I also fail to see the urgency. This thing is a pure performance play, and a
>>>> fairly niche one at that. I'm not especially comfortable ripping up our TLBI
>>>> code without being able to test it.
>>>
>>> Argh, so while it *is* the middle of the merge window and I do fail to see
>>> the urgency of this, I also mixed it up with the TTL series, which is the one
>>> I'm really worried about.
>>>
>>> Please post a v3 at -rc1.
>>
>> A bit lost here, do you mean the TLBi by range patch or the TTL series?
> 
> I'm worried about the TTL series without being able to test it.
> Please post a v3 of the TLBI by range patch again when you get a chance.

Thanks, Zhenyu will do that as he is the author of this patch.

Regards,
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
