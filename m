Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B9A84E37
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2nUdK7riMjMn+rsUAJ9w9DDmWwn8z04reK0gH8OACos=; b=fPFyZf2h+lX1Ap9yW6nSKA8pP
	6Vyk3c6ho3Qf+NNUIcqbAIbhXm4LymwJpeG9wpLcUn/WDrl0IeeY14I+1zUU7LZSRrJ/Uh3+yew1s
	bQf2MWKCwtNBVlccTTTf5uqYb5fxfuUfCkrYviZCJk4hJj44QFrlZE/TXBmTjetf/+19BgMnJo8p/
	9yaK5hu5eWPl7m3VzE4zfDDKzX8dCL9YqztlX0VH6+W9Fj6vOQJ5m1IBSTGm5M5Pur83ECOPLCJeM
	VUC0bJPfypFm+hWvA+sdf1KdTZWR3AhtBDuR86xyEQno/bzlnbasiInfsseSf2JDcKUafsitkaup+
	nCqiFVE0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMbf-0004zI-Aw; Wed, 07 Aug 2019 14:07:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMbQ-0004ye-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:07:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 731E428;
 Wed,  7 Aug 2019 07:07:41 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D259A3F706;
 Wed,  7 Aug 2019 07:07:40 -0700 (PDT)
Subject: Re: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
To: Sudeep Holla <sudeep.holla@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
 <1565184971.5048.8.camel@pengutronix.de> <20190807135757.GA27278@e107155-lin>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4e6de98c-833b-a80b-acef-6e88391e80f2@arm.com>
Date: Wed, 7 Aug 2019 15:07:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807135757.GA27278@e107155-lin>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_070744_165605_05AF2825 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 14:57, Sudeep Holla wrote:
> On Wed, Aug 07, 2019 at 03:36:11PM +0200, Philipp Zabel wrote:
>> Hi Sudeep,
>>
>> On Wed, 2019-08-07 at 14:00 +0100, Sudeep Holla wrote:
>>> Instead of type-casting the {tx,rx}.buf all over the place while
>>> accessing them to read/write __le32 from/to the firmware, let's use
>>> the nice existing {get,put}_unaligned_le32 accessors to hide all the
>>> type cast ugliness.
>>>
>>> Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
>>> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>>> ---
>>>   drivers/firmware/arm_scmi/base.c    |  2 +-
>>>   drivers/firmware/arm_scmi/clock.c   | 10 ++++------
>>>   drivers/firmware/arm_scmi/common.h  |  2 ++
>>>   drivers/firmware/arm_scmi/perf.c    |  8 ++++----
>>>   drivers/firmware/arm_scmi/power.c   |  6 +++---
>>>   drivers/firmware/arm_scmi/reset.c   |  2 +-
>>>   drivers/firmware/arm_scmi/sensors.c | 12 +++++-------
>>>   7 files changed, 20 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
>>> index 204390297f4b..f804e8af6521 100644
>>> --- a/drivers/firmware/arm_scmi/base.c
>>> +++ b/drivers/firmware/arm_scmi/base.c
>> [...]
>>> @@ -204,14 +204,12 @@ scmi_clock_rate_get(const struct scmi_handle *handle, u32 clk_id, u64 *value)
>>>   	if (ret)
>>>   		return ret;
>>>
>>> -	*(__le32 *)t->tx.buf = cpu_to_le32(clk_id);
>>> +	put_unaligned_le32(clk_id, t->tx.buf);
>>>
>>>   	ret = scmi_do_xfer(handle, t);
>>>   	if (!ret) {
>>> -		__le32 *pval = t->rx.buf;
>>> -
>>> -		*value = le32_to_cpu(*pval);
>>> -		*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
>>> +		*value = get_unaligned_le32(t->rx.buf);
>>> +		*value |= (u64)get_unaligned_le32(t->rx.buf + 1) << 32;
>>
>> Isn't t->rx.buf a void pointer? If I am not mistaken, you'd either have
>> to keep the pval local variables, or cast to (__le32 *) before doing
>> pointer arithmetic.
>>
> 
> Ah right, that's the reason I added it at the first place. I will fix that.

Couldn't you just use get_unaligned_le64() here anyway?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
