Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF61897AA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CbdjH0Cpfxm7uk73WvgWEzIzvLhLF+1DVJCGROZlY6Y=; b=njeMCN4PXUQlRao6D6Rqr4bxB
	dLl3zTcx9BaG33OsswCa0vywQuOloCrScJ8tEvjwtF84xR9Qkeb9+uMsPAGAvlgoAc9doP6CZWR9t
	w2y6+TxaL+AKo/puxOAKAkHvUin0/0XJ9adDa4Dsple7+Z55fzRcT380UyCZ+6wbfedpSHfE9XPgv
	B9iZFDAiQfWCPBSQaGJAR4/cupEy8L6FypAZoR1w9XRercvUmuPcwzQrkulncDAkMSLlngYl+3/mq
	nCcJH/w6zrQeJo0l/1LQHFiHYqGTvGgd2j7IiTc8oFJK0foCjFL4GGIKpnNSn/331ujKpZtCXA6mb
	qVTCLVOtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Qch-0000a2-Pf; Wed, 21 Aug 2019 13:25:59 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QcQ-0000ZS-13
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:25:43 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DCD092B94FEB0D757D6D;
 Wed, 21 Aug 2019 21:25:38 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 21 Aug 2019 21:25:30 +0800
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>, Will Deacon <will@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-2-jeremy.linton@arm.com>
 <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
 <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
 <20190812115907.kugk57jvv3g2r66a@willie-the-truck>
 <a2960c68-d422-3cdb-4354-6f357433ad6c@huawei.com>
 <72ee16ea-1038-37a1-25b1-f28b5c6b6edb@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <896bb13c-c2fc-ab17-6a98-bddfb041b36e@huawei.com>
Date: Wed, 21 Aug 2019 14:25:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <72ee16ea-1038-37a1-25b1-f28b5c6b6edb@arm.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_062542_243749_75638D1B 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "rric@kernel.org" <rric@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, wanghuiqiang <wanghuiqiang@huawei.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/08/2019 14:20, Jeremy Linton wrote:
> Hi,
>
> On 8/20/19 4:01 AM, John Garry wrote:
>> On 12/08/2019 12:59, Will Deacon wrote:
>>> On Mon, Aug 12, 2019 at 11:06:07AM +0200, Rafael J. Wysocki wrote:
>>>> On Fri, Aug 9, 2019 at 12:25 AM Robert Richter
>>>> <rrichter@marvell.com> wrote:
>>>>>
>>>>> On 08.08.19 15:40:06, Jeremy Linton wrote:
>>>>>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>>>>>> the given PE is a thread. Add a function to return that
>>>>>> information for a given linux logical CPU.
>>>>>>
>>>>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>>>> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
>>>>>> ---
>>>>>>  drivers/acpi/pptt.c  | 53
>>>>>> +++++++++++++++++++++++++++++++++++++++++++-
>>>>>>  include/linux/acpi.h |  5 +++++
>>>>>>  2 files changed, 57 insertions(+), 1 deletion(-)
>>>>>
>>>>> Reviewed-by: Robert Richter <rrichter@marvell.com>
>>>>
>>>> Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>>>>
>>>> and please push it through ARM64 along with the second patch.
>>>
>>> Thanks. I'll push these into -next shortly.
>>
>>
>> Hi Jeremy,
>>
>> We're considering requesting this support is backported to stable. We
>> have a platform which incorrectly sets the MT bit. To update our
>> firmware to PPTT v2, we need the kernel to support PPTT v2 also.
>>
>> Please let me know if you anticipate an issue in this.
>
> No I don't see any issues with that once it lands.
>
> I believe the ball is rolling in the case of some older distro kernel's
> as well.

Cool.

Cheers,
John

>
> Thanks,
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
