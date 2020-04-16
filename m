Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF461AC257
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdIktKQU27vDJVx/4FMMa4RM1M9wQ8DFPZ6Mbp665Gs=; b=hb66kLNgkk3IjS
	aBghHHUwSlPrFyyXBqDZBTJsJe12VhIXGZbE/JqXR/Ih1FTzB1s2xRbD2RpLO4W2I/XmkURtcRN0M
	nVXf7HLxtWQv0KwucW9IDZG2GdAO43F9QfxoA5u6U4b0mz//bKB5gaHvHNeb5fSYlmzgY0S052bei
	YDkdq97u/xXxq6HGd+rdXYIqUhQnu0aeSnjvavlcaMxlvgA4P8PuXSn+Y5NLWaL5OfWkZR7sOzccY
	t1BIcHai1OTPgV+z5WIYhgXKvp6n/7qFccAvk4md9tYTXic+CIZbeck7Advo03szFS7u7C65LZlNv
	NwNoqkgkmxTkNij7AwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4YE-000833-T6; Thu, 16 Apr 2020 13:27:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4Y3-00082g-Lz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:27:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBB421FB;
 Thu, 16 Apr 2020 06:27:18 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC5E53F68F;
 Thu, 16 Apr 2020 06:27:17 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com> <5E840F3B.6040803@huawei.com>
 <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com> <5E8EDFF6.4050903@huawei.com>
 <d3a56afc-ce1a-1561-a6bb-70399bb97c50@arm.com> <5E8FE021.1050900@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <5d00a4d4-9633-74a1-25f2-cf195e939290@arm.com>
Date: Thu, 16 Apr 2020 14:27:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E8FE021.1050900@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_062719_806275_C893B6EF 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaofei,

On 10/04/2020 03:55, Xiaofei Tan wrote:
> On 2020/4/9 22:28, James Morse wrote:
>> On 09/04/2020 09:42, Xiaofei Tan wrote:
>>> James Morse wrote:
>>>> Do you have patches to get linux to do something useful with the processor error nodes?
>>>>
>>>> We'd need it to handle uncorrected cache errors with a physical address, as if they were
>>>> memory errors...
>>
>>> Yes, we have some patches to do this thing inside. Then memory_failure() will be called for
>>> arm processor error section when physical address is available.
>>
>> I look forward to reading them!

> https://lkml.org/lkml/2018/1/26/197
> 
> Our guy tried to upstream it, but not accepted. :(

Wrong series?

https://lkml.org/lkml/2018/1/26/194 is not creating any handing for processor error nodes.

That series tried to to suck all the pending errors out of the core code, into an arch
specific queue:
| arch/arm64/kernel/ras.c              | 173 +++++++++++++++++++++++++++++++++++

As far as I understand it, that was to ensure the memory_failure() work was done before we
return to user-space.

My attempt to fix that got rolled up in the SDEI series. It was posted again here:
https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/


If you need processor errors handling, there should be code added to the
CPER_SEC_PROC_ARM else-if in ghes_do_proc() to do the handling.

You may end up duplicating bits of ghes_handle_memory_failure(), to report the memory
errors that happened in the cache.
If you want to count corrected errors, a device in ghes_edac is probably the way to do that.


>> [...]
>>
>>> I think this part is worth improving.
>>
>>> BTW, should ARM processor record physical address when consumed an memory poison error for SEA?
>>> It is helpful to do error recovery. Is this mandatory for arm spec?
>>
>> ERR<n>ADDR? Its not mandatory to be filled for any error. It can be some imp-def bus
>> address or a virtual address. 
> 
> virtual address ? but arm spec called it physical address.

That was my recollection too! But I checked again before writing this:

"4.4.5 ERR<n>ADDR, Error Record Address Register" in
https://static.docs.arm.com/ddi0587/cb/2019_07_05_DD_0587_C_b.pdf

has a VA bit for a virtual-address, and 'AI' for this imp-def bus address, more properly
described as on that "might not match the programmers' view of the physical address for
the recorded location."


[...]

>> Does your implementation always give a physical-address for a synchronous external abort?

> We hope so. But hardware guys say it is hard to record physical address for every situation.

Yeah ...

Hopefully the situations where its too-hard are also the rarest, we can class these as
fatal (because we can't handle them).


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
