Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3571F3D68
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 02:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYXPPyi0aaOGJMQnrpQ1domvjmeS/DnLmutjo/G6s2w=; b=IG1GKlhGrcfrwS
	mszD3dvRjmikgXJ8TO9UfAXVthf3gTIPr/wz5GJWgNofop1/u5IyUapxC8pO9yRIM9dzTaJyLogOS
	k0Xx+K7/ZVfIIvg+I2NrM0o7brK0X7lcEwZMXo2y19IjZ0fvu6L5yieXC4Mue/cnl+AyOrhb9NTB9
	hraladn/C3lUcbv1M+J0bGbEl8W7/NyOkhtXsqEiWqKzs/P/72fJMXuPcbUXTF+nLVnUbynBVEnS0
	OrqWD56wQnwoFySLLwBsfsPE30FBXNxe7G/QUxtPqBOLc6DvandYZlD/6/h1qmECG0BJX12SbxM6/
	XDujd0ZeLejYHKtB58eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSt24-0002iJ-2K; Fri, 08 Nov 2019 01:25:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSt1w-0002hd-VO
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 01:25:42 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 601A78248D0AC5CED946;
 Fri,  8 Nov 2019 09:25:39 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 8 Nov 2019
 09:25:29 +0800
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
To: Will Deacon <will@kernel.org>, John Garry <john.garry@huawei.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
 <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
 <20191107121151.GB4948@lakrids.cambridge.arm.com>
 <0ae3e891-87aa-a9ed-05aa-ef96960615b9@huawei.com>
 <20191107130957.GA12929@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <7b588bde-f835-4ead-dff9-1847ea111697@hisilicon.com>
Date: Fri, 8 Nov 2019 09:25:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191107130957.GA12929@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_172541_663553_E05C6D6A 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2019/11/7 21:09, Will Deacon wrote:
> On Thu, Nov 07, 2019 at 01:04:34PM +0000, John Garry wrote:
>>>>>>> On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
>>>>>>> [I prefer Mark's version, so please reply to indicate whether or not it
>>>>>>>     works for you]
>>>>>>
>>>>>> Replying on Shaokun's behalf as he appears offline now.
>>>>>>
>>>>>> In response to "> If TSV110 is always MT, ":
>>>>>>
>>>>>> It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
>>>>>> TaishanV110 aka TSV110: one has the MT bit set and the other without.
>>>>>
>>>>> Just to check, for the non-MT variant is the SCCL/CCL assignment
>>>>> Aff2/Aff1 as with other non-MT parts?
>>>>
>>>> We don't support any other non-MT parts for this driver.
>>>
>>> The driver claimed to support non-MT parts before TSV110 came around, so that
>>> statement confuses me.
>>
>> A couple of points on this:
>>
>> - We gave up on upstreaming support in this driver for the predecessor SoC,
>> which included an A72. You may remember the infamous djtag bus.
>>
>> - The wording in the comment "If multi-threading is supported, On Huawei
>> Kunpeng 920 SoC " is misleading, as it implies that the part found in Huawei
>> Kunpeng 920 is MT, which it isn't always.
>>
>>>
>>> For a non-MT TSV110, is Aff2 the SCCL and Aff1 the CCL?
>>
>> Yes,
>>
>> That's what the
>>> existing code (and Shaokun's patch) assumed.
>>
>> well I'm going with that as well. Shaokun can confirm the layout.
> 
> I'll queue Shaokun's patch for now, since I want to get this to Catalin

Thanks Will.

> tomorrow for 5.5 after spending the night in -next. We can always simplify
> the logic later if Mark's patch ends up working out.

I have checked that it has been in your for-next/perf branch. I will simplify
it later as Mark's suggestion.
Or if it is permitted, I can post v2 and simplify this.

Thanks,
Shaokun

> 
> Thanks,
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
