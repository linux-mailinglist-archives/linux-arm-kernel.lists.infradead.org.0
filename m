Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888F1465C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvtUxQa3AEXWVE3frvkAJwzxEj4AcRGHc4/AxRO9i8s=; b=NT4YjTGOp0ma1w
	gqMKiyGPHLyvDcB9mpRvtPUl7W+9Ita0H4vLYCKzYYwBvbWMeevVritSWf13/9ZyhCUKdxolrHf8f
	dhZHEzDGzcoXYU9pRPHj+1XxLQjIJAl+6i7gCCYTWm7FdTI1slXNP8QgxwMz2K9hQwF2xAITh+K7T
	jZTNHYKN8BL+TOeOpWL2YO0x/9Se5zn54OEcsZQRkhCmB3UlR5TdYrbEQsqzs1qtdYnER+ArR3sLa
	R/kxI4T6wOdbTXEX+emoUgCwnsh2OiuszgTydXc0re24IHYaueGZVDUADZUdyYpE2ndzMnq0nKAnX
	805TUzre8JaUFjDLYZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZlI-000587-TN; Thu, 23 Jan 2020 10:30:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZl5-00055Y-7k
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:30:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3C1431B;
 Thu, 23 Jan 2020 02:30:40 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64F903F6C4;
 Thu, 23 Jan 2020 02:30:39 -0800 (PST)
Date: Thu, 23 Jan 2020 10:30:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200123103033.GA7511@bogus>
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <20200122121538.GA31240@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122121538.GA31240@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_023043_338710_7089D379 
X-CRM114-Status: GOOD (  12.72  )
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
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 12:15:38PM +0000, Sudeep Holla wrote:
> On Wed, Jan 22, 2020 at 08:06:23AM +0530, Viresh Kumar wrote:
>

[...]

> > Can you please help me getting this tested, now that I have rebased it
> > as well :) ?
> >
>
> Sure, I will give it a go on my Juno. Thanks for the rebase, makes it
> simpler.
>

Sorry for the delay. I gave this a spin on my Juno. I am seeing below
warning once on boot but it continues and everything seem to work fine.
Also the warning is not related to this change I believe and this patch
is just helping to hit some corner case with deferred probe and devres.
I need to spend some time to debug it.

Regards,
Sudeep

--->8

WARNING: CPU: 1 PID: 187 at drivers/base/dd.c:519 really_probe+0x11c/0x418
Modules linked in:
CPU: 1 PID: 187 Comm: kworker/1:2 Not tainted 5.5.0-rc7-00026-gf7231cd3108d-dirty #20
Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Jan 16 2020
Workqueue: events deferred_probe_work_func
pstate: 80000005 (Nzcv daif -PAN -UAO)
pc : really_probe+0x11c/0x418
lr : really_probe+0x10c/0x418
Call trace:
 really_probe+0x11c/0x418
 driver_probe_device+0xe4/0x138
 __device_attach_driver+0x90/0x110
 bus_for_each_drv+0x80/0xd0
 __device_attach+0xdc/0x160
 device_initial_probe+0x18/0x20
 bus_probe_device+0x98/0xa0
 deferred_probe_work_func+0x90/0xe0
 process_one_work+0x1ec/0x4a8
 worker_thread+0x210/0x490
 kthread+0x110/0x118
 ret_from_fork+0x10/0x18
---[ end trace 06f96d55ce6093a8 ]---


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
