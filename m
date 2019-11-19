Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DB0102188
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 11:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MD/E2tP928lRBS5Fqx48q9axa3Jn+Dz03ys01G7WanQ=; b=QlcmUqBJ+JrpyDP+GVcSJkNrt
	3sbCQf9iSxR1tWd6cU8S4VmMp8y74PC8UABZ2Rjbf1P9DdXm6OM9Bsxkch1779lTxQC7UPgnG3P0h
	l6krJmhdR5iYIdnN9lPYwCgiIq17lNCget9YhXON7sRlLT9IkIqr7ujSSwBMXqdauATV5NvWMykSs
	Kw3I1K+pnTVj7z6syD/lNz/uupvVSjNGNAJdgHkFi87GMN82Pd5SsjHBYr1bsMNmCstUKeezfLflS
	5HR+hiNWISbd/L6GLZ1ZRIMeoAxNgu+Kyj1UwlPfYzWjry7qYBGCk7ytuCX9sBE2dxE0QU17+7+7l
	E3LFWSkew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX0MN-0005et-Qv; Tue, 19 Nov 2019 10:03:47 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0ME-0005e4-6Q
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 10:03:39 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iX0MA-0001a9-8z; Tue, 19 Nov 2019 11:03:34 +0100
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 19 Nov 2019 10:03:34 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck> <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
Message-ID: <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: guohanjun@huawei.com, yezhenyu2@huawei.com, will@kernel.org,
 catalin.marinas@arm.com, suzuki.poulose@arm.com, mark.rutland@arm.com,
 tangnianyao@huawei.com, xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, wanghuiqiang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_020338_383482_52AE758F 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Zhenyu Ye <yezhenyu2@huawei.com>, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, arm@kernel.org,
 tangnianyao@huawei.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjun,

On 2019-11-19 01:13, Hanjun Guo wrote:
> +Cc linux-arm-kernel mailing list and Shaokun.
>
> Hi Marc,
>
> On 2019/11/11 22:04, Marc Zyngier wrote:
>> On 2019-11-11 14:56, Zhenyu Ye wrote:
>>> On 2019/11/11 21:27, Will Deacon wrote:
>>>> On Mon, Nov 11, 2019 at 09:23:55PM +0800, Zhenyu Ye wrote:
> [...]
>>>>
>>>> How does this address my concerns here:
>>>>
>>>>
>>>> 
>>>> https://lore.kernel.org/linux-arm-kernel/20191031131649.GB27196@willie-the-truck/
>>>>
>>>> ?
>>>>
>>>> Will
>>>
>>> I think your concern is more about the hardware level, and we can 
>>> do
>>> nothing about
>>> this at all. The interconnect/DVM implementation is not exposed to
>>> software layer
>>> (and no need), and may should be constrained at hardware level.
>>
>> You're missing the point here: the instruction may be implemented
>> and perfectly working at the CPU level, and yet not carried over
>> the interconnect. In this situation, other CPUs may not observe
>> the DVM messages instructing them of such invalidation, and you'll 
>> end
>> up with memory corruption.
>>
>> So, in the absence of an architectural guarantee that range 
>> invalidation
>> is supported and observed by all the DVM agents in the system, there 
>> must
>> be a firmware description for it on which the kernel can rely.
>
> I'm thinking of how to add a firmware description for it, how about 
> this:
>
> Adding a system level flag to indicate the supporting of TIBi by 
> range,
> which means adding a binding name for example "tlbi-by-range" at 
> system
> level in the dts file, or a tlbi by range flag in ACPI FADT table, 
> then
> we use the ID register per-cpu and the system level flag as
>
> if (cpus_have_const_cap(ARM64_HAS_TLBI_BY_RANGE) &&
> system_level_tlbi_by_range)
> 	flush_tlb_by_range()
> else
> 	flush_tlb_range()
>
> And this seems work for heterogeneous system (olny parts of the CPU 
> support
> TLBi by range) as well, correct me if anything wrong.

It could work, but it needs to come with the strongest guarantees that
all the DVM agents in the system understand this type of invalidation,
specially as we move into the SVM territory. It may also need to cope
with non-compliant agents being hot-plugged, or at least discovered 
late.

I also wonder if the ARMv8.4-TTL extension (which I have patches for in
the nested virt series) requires the same kind of treatment (after all,
it has an implicit range based on the base granule size and level).

In any way, this requires careful specification, and I don't think
we can improvise this on the ML... ;-)

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
