Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E3310108B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 02:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ax6J1rwZS8oohvqzsFL5O5GH/28RgSrise8ZJBw2QKc=; b=nmJLyua/Hzd+Vm
	4wg9D3skYzZWRifF5Em51V+IGxa0oi9DQ4D3VO4jGkT6/tL+ul72RxIevgIt6VTHzMNv6twaZHQ+3
	9yrylAEqnwFThN0pze30lRLdzQMAgraYDBtsf0STFM7yOuYVMjglf8FL9I0sTJjgYNfiVSP1aZuCn
	eQN7KhBYsgBVG2GD4HgGWK8cF9Czznhez1wH9WG7BOxsYS3mcMHXjYK7VmO+g8/WFsXIr+aj+leJr
	d1prw+EDGAfK7AapXq1LHnm/h74drc3EurIHVFtbALuAWin30j1BuV7MG1i38/Qu2927XIzICbK5l
	NTRVmKdMA2m8vfwwq97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWs5o-0001Eh-I8; Tue, 19 Nov 2019 01:14:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWs5g-0001Dc-0S
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 01:14:01 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F23E3FCA1D89BD2D1402;
 Tue, 19 Nov 2019 09:13:52 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 19 Nov 2019
 09:13:46 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
To: Marc Zyngier <maz@kernel.org>, Zhenyu Ye <yezhenyu2@huawei.com>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck> <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
Date: Tue, 19 Nov 2019 09:13:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_171400_217926_A23F3A1E 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
 suzuki.poulose@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, arm@kernel.org,
 tangnianyao@huawei.com, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc linux-arm-kernel mailing list and Shaokun.

Hi Marc,

On 2019/11/11 22:04, Marc Zyngier wrote:
> On 2019-11-11 14:56, Zhenyu Ye wrote:
>> On 2019/11/11 21:27, Will Deacon wrote:
>>> On Mon, Nov 11, 2019 at 09:23:55PM +0800, Zhenyu Ye wrote:
[...]
>>>
>>> How does this address my concerns here:
>>>
>>>
>>> https://lore.kernel.org/linux-arm-kernel/20191031131649.GB27196@willie-the-truck/
>>>
>>> ?
>>>
>>> Will
>>
>> I think your concern is more about the hardware level, and we can do
>> nothing about
>> this at all. The interconnect/DVM implementation is not exposed to
>> software layer
>> (and no need), and may should be constrained at hardware level.
> 
> You're missing the point here: the instruction may be implemented
> and perfectly working at the CPU level, and yet not carried over
> the interconnect. In this situation, other CPUs may not observe
> the DVM messages instructing them of such invalidation, and you'll end
> up with memory corruption.
> 
> So, in the absence of an architectural guarantee that range invalidation
> is supported and observed by all the DVM agents in the system, there must
> be a firmware description for it on which the kernel can rely.

I'm thinking of how to add a firmware description for it, how about this:

Adding a system level flag to indicate the supporting of TIBi by range,
which means adding a binding name for example "tlbi-by-range" at system
level in the dts file, or a tlbi by range flag in ACPI FADT table, then
we use the ID register per-cpu and the system level flag as

if (cpus_have_const_cap(ARM64_HAS_TLBI_BY_RANGE) && system_level_tlbi_by_range)
	flush_tlb_by_range()
else
	flush_tlb_range()

And this seems work for heterogeneous system (olny parts of the CPU support
TLBi by range) as well, correct me if anything wrong.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
