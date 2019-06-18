Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F774A83A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hjblhnXPxJeEjYB9PPPFk6iw1FvtYeLVJdGd1KvLIgM=; b=i+bK1xQz6xsjFVbx4FSgUvlmw
	XutryvZjQN2zBzKi4PtC/Q6JvmfWC+5t9QyK7MXrY0RkvYIBWhweYA5+z0ATCrXmTvnheP0otiqF8
	4ECb/n5b02zdpgTBeEK2QYMEIGwmEr4bPtGeHaMWT98EByXayMckqNnjnTYgPm9u+1LZp0WHN4pD6
	JQmJU8mR8+6mYV9KzNRam0CJhFExLffE9giY2weJlBNyQgF1M9ruh0yHCj+Rkd9e/5ENiwuzOOrt4
	9f0N3NIpRK05LSQYQEoT+E1WMKKV3MvaHSk8HXvLx/AFLwZRineHJZmNNzTWxTw4Qj6xcyvex9lVv
	eUjR4324Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHqK-0007e9-Qe; Tue, 18 Jun 2019 17:24:24 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHpk-0006fS-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:23:49 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BB44A547BFFE83A7EBBF;
 Wed, 19 Jun 2019 01:23:34 +0800 (CST)
Received: from [127.0.0.1] (10.210.170.177) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 19 Jun 2019 01:23:32 +0800
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Valentin Schneider <valentin.schneider@arm.com>, Jeremy Linton
 <jeremy.linton@arm.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
 <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
 <718438d0-8648-897a-83e8-801146a0af86@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <f6f7f9bb-547d-3fd3-f3f8-1d55181f63d7@huawei.com>
Date: Tue, 18 Jun 2019 18:23:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <718438d0-8648-897a-83e8-801146a0af86@arm.com>
X-Originating-IP: [10.210.170.177]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_102348_359279_3B793172 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 15:40, Valentin Schneider wrote:
> On 18/06/2019 15:21, Jeremy Linton wrote:
> [...]
>>>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
>>>> + *       the table revision isn't new enough.
>>>> + * Otherwise returns flag value
>>>> + */
>>>
>>> Nit: strictly speaking we're not returning the flag value but its mask
>>> applied to the flags field. I don't think anyone will care about getting
>>> the actual flag value, but it should be made obvious in the doc:
>>
>> Or I clarify the code to actually do what the comments says. Maybe that is what John G was also pointing out too?
>>

No, I was just saying that the kernel topology can be broken without 
this series.

>
> Mmm I didn't find any reply from John regarding this in v1, but I wouldn't
> mind either way, as long as the doc & code are aligned.
>

BTW, to me, function acpi_pptt_cpu_is_thread() seems to try to do too 
much, i.e. check if the PPTT is new enough to support the thread flag 
and also check if it is set for a specific cpu. I'd consider separate 
functions here.

thanks,
John

> [...]
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
