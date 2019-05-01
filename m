Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0E210CCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l1JLYhF3R51QewqEfOiUXpeld3yCH3H5jRMlq0iJBXo=; b=eDkPZzA2PCyYmPJ1uPaU6MNrV
	C+MYJmk/hlYsSpaq6YtHr9V4WAs3qe7PN73VNCKh/ti6sJaLWWq4lOWJrTYyGrA9T6J1sgvMR5zqK
	pMhXdiFFm/07DSNVa6bTTvMeifYbZKX2tYn//bowA95EF/LgP8SXZBATQsdQ6tq5CHtNejStgS1Nn
	LY/gixWqodVlh3GIV5quzzj/vtg/z/ahlhftfaHD7TP+nyaMl96sIPHgktT1CakScdCkPdiDr7UqJ
	7RKTShWWAYb0Tym9PDP86OjtBlZlMFuoADsd/laV6XJAvu/o3CbWitSqYbr05tW5CR+3i8z/E0bP8
	H+ehRHqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuCC-0004qo-8L; Wed, 01 May 2019 18:43:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuC5-0004qT-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:43:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D4E226044E; Wed,  1 May 2019 18:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556736180;
 bh=yzlxHbc9Bvt+Q3uG2Hf7NalbgMIKbFyBV0j0pUBHNKg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oVjexLeT41ojgDbZQP8x+mW2fEauvKXJBmzcIAHBKRjREx9UQQgjJ3KJ313cyshJq
 7pkOD+k0F2KIgqIqCz487i2CJQPlnFz0nV6vYMP14X2oSuCd5WEM8/MF//AYu+ORYY
 1/t8sG5gisvBe5dv2pqUz+HScCIlMwj2V+jcx0/M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 44CA56013C;
 Wed,  1 May 2019 18:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556736180;
 bh=yzlxHbc9Bvt+Q3uG2Hf7NalbgMIKbFyBV0j0pUBHNKg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oVjexLeT41ojgDbZQP8x+mW2fEauvKXJBmzcIAHBKRjREx9UQQgjJ3KJ313cyshJq
 7pkOD+k0F2KIgqIqCz487i2CJQPlnFz0nV6vYMP14X2oSuCd5WEM8/MF//AYu+ORYY
 1/t8sG5gisvBe5dv2pqUz+HScCIlMwj2V+jcx0/M=
MIME-Version: 1.0
Date: Wed, 01 May 2019 11:43:00 -0700
From: Sodagudi Prasad <psodagud@codeaurora.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: PSCI version 1.1 and SYSTEM_RESET2
In-Reply-To: <20190501094953.GA21851@e107155-lin>
References: <24970f7101952f347bd4046c9a980473@codeaurora.org>
 <efee74624f986a358b8986ae3085fba2@codeaurora.org>
 <20190501094953.GA21851@e107155-lin>
Message-ID: <3ceb06c36ecb745e2befaeaefe49be19@codeaurora.org>
X-Sender: psodagud@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_114301_463373_602DE4E5 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-01 02:49, Sudeep Holla wrote:
> On Tue, Apr 30, 2019 at 05:07:31PM -0700, Sodagudi Prasad wrote:
>> On 2019-04-30 14:44, Sodagudi Prasad wrote:
>> +Sudeep
>> 
>> > Hi Mark/Will,
>> >
>> > I would like to understand whether ARM linux community have plans to
>> > support PSCI version 1.1 or not.
>> > PSCI_1_1 specification introduced support for SYSTEM_RESET2 command
>> > and this new command helps mobile devices to SYSTEM_WARM_RESET
>> > support. Rebooting devices with warm reboot helps to capture the
>> > snapshot of the ram contents for post-mortem analysis.
>> 
>> I think, there is a recent discussion from Sudeep for the 
>> SYSTEM_RESET2
>> support.
>> https://patchwork.kernel.org/patch/10884345/
>> 
> 
> This has landed in -next, and hopefully must appear in v5.2
> 
>> 
>> Hi Sudeep,
>> 
>> I was going through your discussion in the below list -
>> https://lore.kernel.org/lkml/d73d3580-4ec1-a281-4585-5c776fc08c79@xilinx.com/
>> 
>> There is no provision to set up reboot mode dynamically instead kernel
>> command line parameter.
>> Looking for options to reboot device with warm reboot option when 
>> kernel
>> crashed.
>> 
>> panic() --> emergency_restart() --> machine_emergency_restart() -->
>> machine_restart(NULL);
>> 
>> It would nice if there is a config option to reboot the device either 
>> in
>> warm or cold in the case of kernel panic.
> 
> I presume you prefer to do warm boot in case of panic to get a dump of
> the memory to inspect ? If so, is kexec/kdump not the mechanism to
> achieve that ?

Hi Sudeep,

Thanks for your response and sharing details about your patch.
<Sudeep>  If so, is kexec/kdump not the mechanism to achieve that?
Qualcomm is having vendor specific solution to capture ram contents and 
for offline analysis.

> 
> I am just trying to understand the use case. Xilinx asked for the same
> but never got to understand their use case.

Here is the background -
Usually, power off drivers are overriding arm_pm_restart and 
pm_power_off callbacks and registering with reboot notifier with  some 
priority for the reboot operations.  Here is the Qualcomm poweroff 
driver for reference.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/power/reset/msm-poweroff.c

Before vendor chip set specific power off driver is probed, 
arm_pm_restart functions pointer holds the psci_sys_reset function. Once 
vendor power off driver is probed,  vendor drivers can override the 
arm_pm_restart function pointer.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/psci.c#n562

Once vendor driver is probed, drivers can take care of devices warm or 
hard reset configuration part properly.  But there is a window from 
start_kernel() to vendor specific driver probed, devices are getting 
cold resets even if kernel crashed.  This is due to arm_pm_restart 
points to psci_sys_reset function by default.  Is this problem clear 
now?

Qualcomm downstream kernel has a lot of use cases with respect device 
reset sequence and the downstream driver is much different from upstream 
drivers. I think, the above-mentioned problem is common for all the 
chipset vendors and it is not specific Qualcomm use cases.  I have one 
downstream solution to this problem but thought to bring up this problem 
to the upstream community for a common solution, so that all the vendors 
can use it.

I have modified below flow to avoid cold restart in the case of early 
kernel panic.
panic() --> emergency_restart() --> machine_emergency_restart() --> 
machine_restart(NULL);

-Thanks, Prasad

> 
> --
> Regards,
> Sudeep

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
