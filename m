Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9491AAE5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE7bX+P6VmH+EdCW5XnGZUgFL1slzCzOkRqDVAbdSVU=; b=sDwyio/4P8Iult
	aztdzPprtESsbwH8fPhX+5ZJyt5ypU4qOjnJuEhPBMR7y60lJcprZlDJ9b8qMcxf6l3Hiuq0E90Ij
	At1dzeqWU9eDpuka6PWeKFJ4epNagODZYKVQFSL537nYeSxi4sj5uIwmJf0XKtDZ20yPB0pbB4w1z
	DACEVFrk9aoC7N30cvwRo2Gl5XbVunGZ5AvCU0rCNtPkwb3xpF2pVMIwJu9H6kahRgyg2QWub/L8e
	prbMQPidvkwhuWMcyH8VYowbfmoXAVHhGjrhzIM+Wn1oyF5/8mrqg3CjRuQzHTGHHpK67Ir02Ey/F
	38/Y9sITyVogHlEhYfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOl0Y-0003Lw-33; Wed, 15 Apr 2020 16:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOl0C-0002XF-Oq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:35:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 725901FB;
 Wed, 15 Apr 2020 09:35:03 -0700 (PDT)
Received: from [10.37.9.9] (unknown [10.37.9.9])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 430EC3F6C4;
 Wed, 15 Apr 2020 09:35:02 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
 <CANaxB-xUYOrVnfLPRYVBiASzCH89sZkD6vTdy8EFjT16ZJhLfg@mail.gmail.com>
 <1d9c4c56-af16-e54f-08ca-76c6570b2d53@arm.com>
 <CANaxB-w+_4BUOYb-5+w1xBPoZGOzBh-LYOFCY-WSysgbAAcn_w@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <5f60bff9-0fe1-7f1f-2dcc-2a7363801897@arm.com>
Date: Wed, 15 Apr 2020 17:35:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANaxB-w+_4BUOYb-5+w1xBPoZGOzBh-LYOFCY-WSysgbAAcn_w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_093504_885393_B2273E42 
X-CRM114-Status: GOOD (  17.22  )
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
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 4/15/20 5:14 PM, Andrei Vagin wrote:
> On Tue, Apr 14, 2020 at 2:02 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
>>
>> Hi Andrei,
>>
>> On 4/11/20 8:33 AM, Andrei Vagin wrote:
>>> On Thu, Apr 9, 2020 at 6:23 AM Vincenzo Frascino
>>> <vincenzo.frascino@arm.com> wrote:
>>>>
>>>> I have though a question on something I encountered during the testing of the
>>>> patches: I noticed that all the tests related to CLOCK_BOOTTIME_ALARM fail on
>>>> arm64 (please find the results below the scissors). Is this expected?
>>>
>>> static int alarm_clock_get_timespec(clockid_t which_clock, struct
>>> timespec64 *tp)
>>> {
>>>         struct alarm_base *base = &alarm_bases[clock2alarm(which_clock)];
>>>
>>>         if (!alarmtimer_get_rtcdev())
>>>                 return -EINVAL;
>>>
>>> It is probably that you get EINVAL from here ^^^. I will send a
>>> separate patch to handle this case in tests properly.
>>>
>>
>> This makes sense :) Please let me know when you post the fix so I can test it again.
> 
> I have sent this fix: https://lkml.org/lkml/2020/4/15/72
>

That's good, I will try it by the end of this week or beginning of next and let
you know the results.

>>
>> Are you planning as well to rebase this set?>
> What is the right tree to rebase on?
> 

I guess master, I was asking because it would make easier my testing :)

> Thanks,
> Andrei
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
