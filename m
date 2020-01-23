Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70651466E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=St1ejChpFu3tmU3l0qt/mjQ0bS2SKgrg9DZ9g65gFC4=; b=Hs138foaUI5gfW
	1e3UfEVY0urxzz8HVi+HVFrNgtfzEVNblqtR/JeBXSPaVMrxWMxm+ei7cwalE67MjxYXtzQ6lB9/3
	r5ypx91Aw4ObM67TfERJjGoQn9UukbqcYJ2oxzs+z1WynHCJ10hSgHuedtjEAcqcwdO+JlYvqEWUQ
	7A+D2NLTqXlh4XQzs2tLk6C69896Ez0GLJ6qKUzrQGpUmbJElGt3qukNsEfQeWK46SSpdy5X/d/74
	EAk6UoidJq0EkCp+Es3HJpWIYuNaprU79eEwiXf0oSDVUVebq2oYB31XTSyi9d2MAdUkQ25WMbkN3
	0vxw1XBjVr1Uw46Pq8cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaoJ-0006RX-N4; Thu, 23 Jan 2020 11:38:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaoA-0006RC-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:38:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E13B1328;
 Thu, 23 Jan 2020 03:37:57 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA3513F6C4;
 Thu, 23 Jan 2020 03:37:56 -0800 (PST)
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <20200122121538.GA31240@bogus> <20200123103033.GA7511@bogus>
 <20200123112711.mggm7ayxcqnr54yf@vireshk-i7>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <6b614d90-6326-db81-12dc-a0b4a467400f@arm.com>
Date: Thu, 23 Jan 2020 11:37:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123112711.mggm7ayxcqnr54yf@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_033758_926703_8C344261 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/01/2020 11:27, Viresh Kumar wrote:
> On 23-01-20, 10:30, Sudeep Holla wrote:
>> On Wed, Jan 22, 2020 at 12:15:38PM +0000, Sudeep Holla wrote:
>>> On Wed, Jan 22, 2020 at 08:06:23AM +0530, Viresh Kumar wrote:
>>>
>>
>> [...]
>>
>>>> Can you please help me getting this tested, now that I have rebased it
>>>> as well :) ?
>>>>
>>>
>>> Sure, I will give it a go on my Juno. Thanks for the rebase, makes it
>>> simpler.
>>>
>>
>> Sorry for the delay. I gave this a spin on my Juno. I am seeing below
>> warning once on boot but it continues and everything seem to work fine.
>> Also the warning is not related to this change I believe and this patch
>> is just helping to hit some corner case with deferred probe and devres.
>> I need to spend some time to debug it.
>>
>> Regards,
>> Sudeep
>>
>> --->8
>>
>> WARNING: CPU: 1 PID: 187 at drivers/base/dd.c:519 really_probe+0x11c/0x418
>> Modules linked in:
>> CPU: 1 PID: 187 Comm: kworker/1:2 Not tainted 5.5.0-rc7-00026-gf7231cd3108d-dirty #20
>> Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Jan 16 2020
>> Workqueue: events deferred_probe_work_func
>> pstate: 80000005 (Nzcv daif -PAN -UAO)
>> pc : really_probe+0x11c/0x418
>> lr : really_probe+0x10c/0x418
>> Call trace:
>>  really_probe+0x11c/0x418
>>  driver_probe_device+0xe4/0x138
>>  __device_attach_driver+0x90/0x110
>>  bus_for_each_drv+0x80/0xd0
>>  __device_attach+0xdc/0x160
>>  device_initial_probe+0x18/0x20
>>  bus_probe_device+0x98/0xa0
>>  deferred_probe_work_func+0x90/0xe0
>>  process_one_work+0x1ec/0x4a8
>>  worker_thread+0x210/0x490
>>  kthread+0x110/0x118
>>  ret_from_fork+0x10/0x18
>> ---[ end trace 06f96d55ce6093a8 ]---
> 
> Still it looks strange that the warning comes only after my patch :)

In fact, got the same warning while testing your patch on JUNO at top of SCMI for-next.
But then everything worked fine as Sudeep said.

Thanks

Cristian

> 
> Should I send V5 (fixed few comments after reviews) now ?
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
