Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4051A3DCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 03:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z01IsTm4fy5BSwEE/gX7ZUsYMdVXdTj51GO9RHlWbc4=; b=gz3tD107FQ+bwofUfGuYm1Xxp
	RpVP1V93EZR2ViP/XGNUNUztx+YpToDPfbtpTacJeg9gTL4ipCg8eeLpcgcizb1lXOTUOSKIJ4QJ9
	GJRrtcn9cPMz+SgrjcpBnXH9AGR9jpb2pqv4P+yE4wx1eWlZWw62+iKE017u4hKbh34Oy/+G0iAkf
	l/IOJCz/cyX2DLkIDlzjRdF3BSWrqw2oaUo0Z0dn3KRZXMhH7NUQguu4WpeZLVnOdvYPp69krZqd3
	paNrxyUO2mvudje2J7/CG2cwByg4torWajfEIr8uGW9TgmzF3dM1mMl27RbqS1LzXjMi48vgpx/Sp
	9oh6PHr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMiiT-0001OP-9w; Fri, 10 Apr 2020 01:44:21 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMiiK-0001GA-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 01:44:15 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6B2A413EDA8019B845EB;
 Fri, 10 Apr 2020 09:43:56 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.190) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 10 Apr 2020 09:43:50 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
From: Hanjun Guo <guohanjun@huawei.com>
To: <catalin.marinas@arm.com>, Rob Herring <robh@kernel.org>,
 <Anna.Chen@arm.com>, 'Matteo Carlini' <Matteo.Carlini@arm.com>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck> <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
 <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
Message-ID: <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
Date: Fri, 10 Apr 2020 09:43:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.173.220.190]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_184413_813974_7B83704E 
X-CRM114-Status: GOOD (  12.12  )
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
Cc: mark.rutland@arm.com, wanghuiqiang <wanghuiqiang@huawei.com>,
 suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 Zhenyu Ye <yezhenyu2@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 xiexiangyou@huawei.com, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 tangnianyao@huawei.com, Will
 Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 qiuzhenfa@hisilicon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM folks,

On 2019/11/20 9:29, Hanjun Guo wrote:
>>
>> I also wonder if the ARMv8.4-TTL extension (which I have patches for in
>> the nested virt series) requires the same kind of treatment (after all,
>> it has an implicit range based on the base granule size and level).
>>
>> In any way, this requires careful specification, and I don't think
>> we can improvise this on the ML... ;-)
> 
> Sure :), the good news is that ARM officially announced will be
> working with Huawei again.
> 
> So if I understand your point correctly, we need steps to take:
>   - ARM spec needs to make TIBi by range crystal clear and being
>     written down in the spec;
>   - Firmware description of supporting TLBi by range in system level
>     for both FDT and ACPI;
>   - Then upstream the code.

Do we have update here? I noticed that the TLBI by rang for SMMU is
merged for upstream from Rob, any plan or progress for the CPU side?

Sorry to ping you on the mailling list, our upcoming new chip has
this feature and it's good to enable it, so it's a bit urgent for us.

Best regards,
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
