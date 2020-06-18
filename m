Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E111FEDC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RB5xMgQq7MOci94dIotn8B/7u8rI+qUUEJQwrtbaG1Y=; b=r6xypbAG6XXTgbtYRgYubKmjA
	aMZm/Lp2GA/izs3SXgHTnrFvU+Xh9lI6bor6X4FeOdTYjSXQ2UXBQ1beuNNy6S9+pGCyjFwjueeHJ
	ksVMfZnnIQ9Lb4tWu7CqdKCyp9SGukar8oqyFIc4znRP9HG2JwPprX7M8HIUS+9n9iHKNbk77i44i
	qHQs7Qus29C1oJVp8WOa5RlFHD4dAmex4OqF5jiWwIzmerS3C2KZjSsQvm8O1r2H4uzgSLCK/r7OJ
	GqIwFAGsxD3/5/elKKjYTHOd+C1DHONNmc/qWQmaHCRxZtD4pnKbBn5Fl1HBTyap8BCy2Uc0mZj9s
	I4nrYExJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlq33-0001z4-0u; Thu, 18 Jun 2020 08:37:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlq2q-0001xs-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:37:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 818F431B;
 Thu, 18 Jun 2020 01:37:11 -0700 (PDT)
Received: from [10.37.12.69] (unknown [10.37.12.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEF343F6CF;
 Thu, 18 Jun 2020 01:37:09 -0700 (PDT)
Subject: Re: [PATCH v8 3/9] firmware: arm_scmi: Add notification dispatch and
 delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
 <20200520081118.54897-4-cristian.marussi@arm.com>
 <20200608170346.GD13622@bogus>
 <20200617233105.GB9236@e119603-lin.cambridge.arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <20bf2b0b-c6bc-1010-0512-e970982f9e79@arm.com>
Date: Thu, 18 Jun 2020 09:37:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200617233105.GB9236@e119603-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_013712_736689_B6C4ABC2 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: james.quinlan@broadcom.com, dave.martin@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonathan.Cameron@Huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/18/20 12:31 AM, Cristian Marussi wrote:
> On Mon, Jun 08, 2020 at 06:03:46PM +0100, Sudeep Holla wrote:
>> On Wed, May 20, 2020 at 09:11:12AM +0100, Cristian Marussi wrote:
>>> Add core SCMI Notifications dispatch and delivery support logic which is
>>> able, at first, to dispatch well-known received events from the RX ISR to
>>> the dedicated deferred worker, and then, from there, to final deliver the
>>> events to the registered users' callbacks.
>>>
>>> Dispatch and delivery is just added here, still not enabled.
>>>
>>> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>>   drivers/firmware/arm_scmi/notify.c | 354 ++++++++++++++++++++++++++++-
>>>   drivers/firmware/arm_scmi/notify.h |  10 +
>>>   2 files changed, 362 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
>>> index 7cf61dbe2a8e..d582f71fde5b 100644
>>> --- a/drivers/firmware/arm_scmi/notify.c
>>> +++ b/drivers/firmware/arm_scmi/notify.c
>>
>> [...]
>>
>>> @@ -1085,6 +1422,12 @@ int scmi_notification_init(struct scmi_handle *handle)
>>>   	ni->gid = gid;
>>>   	ni->handle = handle;
>>>   
>>> +	ni->notify_wq = alloc_workqueue("scmi_notify",
>>> +					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
>>> +					0);
>>
>> What's the use of WQ_SYSFS for SCMI notifications ? Do we need it ?
>>
> 
> Lukasz asked for it, when we were talking about workqueues' priorities configurability.
> (not implemented in this series)

I confirm, I've asked if we can have a mechanism to control these
workqueues. They will be running concurrently with other CFS
tasks which could cause delays for them. They could also be scheduled
on a random core: big or little (depends on its utilization) but maybe
we would like to pin them explicitly to some cores, i.e
little only. We have also discussed a possible mechanism based on RT
threads (which could avoid CFS delays), but that would require a lot of
changes, so this flag here gives us some control.
But if you decide to remove this flag, we would probably find a solution
using uclamp or similar when needed.

Regards,
Lukasz

> 
> Thanks
> 
> Cristian
>> -- 
>> Regards,
>> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
