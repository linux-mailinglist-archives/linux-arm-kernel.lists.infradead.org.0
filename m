Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929D1761F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 11:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=itInsxLNzwnRvA5vTq6ethN82yxqrHHoxXc+HF9/KIM=; b=cb7Q8+B9730jul5lpZO0jyl3P
	Yjq71eTUy2kC/4WHZ7AVuWqTVaFxM42F14dFMmFlzhaWLPAi4BC14dyTI8ERY9kLGgdaHqo98FJrg
	5S37yO5R5J+0ijylqOZ0leyDDCXJrWqWxBGy4jm3g6NXefMOfTprXQMQyrROu5fwJMh7uNndkDGOC
	aiOL6KPgFdmoQYeV+hsshjrS8/5wQQYhM3+3Ch9YDa93VMRQ0I9BVAAw6dZAjpb1rGKvno0T0Y2De
	YITfaJnauBxc9guMetnOoFkWeXI7ZnjZrclVOaNwuhdajZpwZpkNOGyZ/x2N+3z8gs7kt7Cfs+fag
	5xm50mM1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwUB-00067I-IQ; Fri, 26 Jul 2019 09:25:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwTs-000661-Vm
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:25:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0630344;
 Fri, 26 Jul 2019 02:25:38 -0700 (PDT)
Received: from [192.168.0.21] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B4C23F71A;
 Fri, 26 Jul 2019 02:25:37 -0700 (PDT)
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
To: gregkh@linuxfoundation.org, saiprakash.ranjan@codeaurora.org
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f72f2fa1-7b1b-d7de-c9b4-cd574400d8e5@arm.com>
Date: Fri, 26 Jul 2019 10:28:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190726084127.GA28470@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_022541_110473_45826A5F 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: geert+renesas@glider.be, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/26/2019 09:41 AM, Greg Kroah-Hartman wrote:
> On Fri, Jul 26, 2019 at 01:50:27PM +0530, Sai Prakash Ranjan wrote:
>> On 7/26/2019 12:34 PM, Greg Kroah-Hartman wrote:
>>> On Fri, Jul 26, 2019 at 11:49:19AM +0530, Sai Prakash Ranjan wrote:
>>>> Hi,
>>>>
>>>> When trying to test my coresight patches, I found that etr,etf and stm
>>>> device nodes are missing from /dev.
>>>
>>> I have no idea what those device nodes are.
>>>
>>>> Bisection gives this as the bad commit.
>>>>
>>>> 1be01d4a57142ded23bdb9e0c8d9369e693b26cc is the first bad commit
>>>> commit 1be01d4a57142ded23bdb9e0c8d9369e693b26cc
>>>> Author: Geert Uytterhoeven <geert+renesas@glider.be>
>>>> Date:   Thu Mar 14 12:13:50 2019 +0100
>>>>
>>>>       driver: base: Disable CONFIG_UEVENT_HELPER by default
>>>>
>>>>       Since commit 7934779a69f1184f ("Driver-Core: disable /sbin/hotplug by
>>>>       default"), the help text for the /sbin/hotplug fork-bomb says
>>>>       "This should not be used today [...] creates a high system load, or
>>>>       [...] out-of-memory situations during bootup".  The rationale for this
>>>>       was that no recent mainstream system used this anymore (in 2010!).
>>>>
>>>>       A few years later, the complete uevent helper support was made optional
>>>>       in commit 86d56134f1b67d0c ("kobject: Make support for uevent_helper
>>>>       optional.").  However, if was still left enabled by default, to support
>>>>       ancient userland.
>>>>
>>>>       Time passed by, and nothing should use this anymore, so it can be
>>>>       disabled by default.
>>>>
>>>>       Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>       Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>
>>>>    drivers/base/Kconfig | 1 -
>>>>    1 file changed, 1 deletion(-)
>>>>
>>>>
>>>> Any idea on this?
>>>
>>> That means that who ever created those device nodes is relying on udev
>>> to do this, and is not doing the correct thing within the kernel and
>>> using devtmpfs.
>>>
>>> Any pointers to where in the kernel those devices are trying to be
>>> created?
>>>
>>
>> Somewhere in drivers/hwtracing/coresight/* probably. I am not sure,
>> Mathieu/Suzuki would be able to point you to the exact code.
>>
>> Also just to add on some more details, I am using *initramfs*

> 
> Are you using devtmpfs for your /dev/ mount?

I think that should solve the issue ^^

> 
> If you enable this option, what does:
> 	ls -l /dev/etr
> 	ls -l /dev/etf
> 	ls -l /dev/stm
> result in?
> 
> What are these device nodes for?  Are they symlinks?  Real devices that
> show up in /sys/dev/char/ as a real value?  Or something else?

Greg, those are registered as miscellaneous devices to export the trace 
collected (for etfs and etrs) in sysfs mode and for user-space access to
allow STM tracing. So they are real devices.


Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
