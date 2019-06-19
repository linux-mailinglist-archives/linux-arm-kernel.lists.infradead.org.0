Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3944B4C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AgP1qzO7rTmKsRoFcHUcMN+2FtUNjjFjFzcq4BP4E14=; b=J9DYzNH3AckoIry8cuNHdYxqk
	5P1dMWFaiUhiSzW+d2ugyDSTsCmn8JK4+frfDag69t0x3pYyIwApEg+1UDKP/RXvwrzjEYgbXFDrz
	evgxPJB6jIfVM71tF4uISnVNOx0Ylb8n5fCPQnkUeTRI0a4x7vHQJ5P/BKYOkaYImdAqQpMVhQv80
	gvoN5u/JC2BVXUpJ0s7y6dhOgJCaSxBR3r0dU5GJTSnly9+ZiJub1MS5W1/omy5TzPmWITaqH7Glh
	R9IQzv9U3sNtQBy+0PYCVGRH8wZUDwEiqkHtTZjndST+pb00sEBiw8DOD+EHR/XCl6DAvDtJ+e1/h
	VByUq43LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWh5-0007SL-KA; Wed, 19 Jun 2019 09:15:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWgu-0007RP-5b
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:15:41 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 415A8A9C784478C4C47C;
 Wed, 19 Jun 2019 17:15:32 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 19 Jun 2019 17:15:30 +0800
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>, Valentin Schneider
 <valentin.schneider@arm.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
 <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
 <718438d0-8648-897a-83e8-801146a0af86@arm.com>
 <f6f7f9bb-547d-3fd3-f3f8-1d55181f63d7@huawei.com>
 <11fb712f-b3c2-5491-89ee-ea7efb18ddd8@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <63f6c6a8-9d79-ae75-3c15-96bded9b14e4@huawei.com>
Date: Wed, 19 Jun 2019 10:15:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <11fb712f-b3c2-5491-89ee-ea7efb18ddd8@arm.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_021540_439098_D6E8F0B7 
X-CRM114-Status: GOOD (  17.21  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 22:28, Jeremy Linton wrote:
> Hi,
>
> On 6/18/19 12:23 PM, John Garry wrote:
>> On 18/06/2019 15:40, Valentin Schneider wrote:
>>> On 18/06/2019 15:21, Jeremy Linton wrote:
>>> [...]
>>>>>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be
>>>>>> found or
>>>>>> + *       the table revision isn't new enough.
>>>>>> + * Otherwise returns flag value
>>>>>> + */
>>>>>
>>>>> Nit: strictly speaking we're not returning the flag value but its mask
>>>>> applied to the flags field. I don't think anyone will care about
>>>>> getting
>>>>> the actual flag value, but it should be made obvious in the doc:
>>>>
>>>> Or I clarify the code to actually do what the comments says. Maybe
>>>> that is what John G was also pointing out too?
>>>>
>>
>> No, I was just saying that the kernel topology can be broken without
>> this series.
>>
>>>
>>> Mmm I didn't find any reply from John regarding this in v1, but I
>>> wouldn't
>>> mind either way, as long as the doc & code are aligned.
>>>
>>
>> BTW, to me, function acpi_pptt_cpu_is_thread() seems to try to do too
>> much, i.e. check if the PPTT is new enough to support the thread flag
>> and also check if it is set for a specific cpu. I'd consider separate
>> functions here.
>

Hi,

> ? Your suggesting replacing the
>

I am not saying definitely that this should be changed, it's just that 
acpi_pptt_cpu_is_thread() returning false, true, or "no entry" is not a 
typical API format.

How about acpi_pptt_support_thread_info(cpu) and 
acpi_pptt_cpu_is_threaded(cpu), both returning false/true only?

None of this is ideal.

BTW, Have you audited which arm64 systems have MT bit set legitimately?

>
> if (table->revision >= rev)

I know that checking the table revision is not on the fast path, but it 
seems unnecessarily inefficient to always read it this way, I mean 
calling acpi_table_get().

Can you have a static value for the table revision? Or is this just how 
other table info is accessed in ACPI code?

>     cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>
> check with
>
> if (revision_check(table, rev))
>     cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>
>
> and a function like
>
> static int revision_check(acpixxxx *table, int rev)
> {
>     return (table->revision >= rev);
> }
>
> Although, frankly if one were to do this, it should probably be a macro
> with the table type, and used in the dozen or so other places I found
> doing similar checks (spcr, iort, etc).
>
> Or something else?
>
>
>
>

thanks,
John

>>
>>> [...]
>>>
>>> .
>>>
>>
>>
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
