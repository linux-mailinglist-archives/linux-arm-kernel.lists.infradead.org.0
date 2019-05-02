Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38AD115F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7Yl4Cqt4ZCSgBLwTXmOasOHAMvikbfpdRsY5fswbQc=; b=DCQ9PusFmn6m5e
	DVSPldp9VFFJcwFvRy/12BpwE4ebxmTGSGdU9qG7igWaDHn71VbJjOUaskf24pK8YyjZDTuN3Arie
	bc8yox3DBQ6WN7RiB+rKqGS9JUl1chc5n8zju4YbV1Oa9PQ+SnOeYWyDuiq1wuyU3r17kT3mtT0hm
	foL1h/h5Mi4TK+EUJvVXnbVcDuViNx0vGy10t+6SQgsLWh7ISt6SU89hU4YRZCKrF8Ko0jfh1xarD
	w2WGivf0is5wPrr7DvEbY2RJ064nQmNvD9PdGcjDJPiow3S1CG4MJxWFQfdWxHvKkovqETiUVp7V/
	Jq+BHeHcAxdWYNivul2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7ea-0007oc-IW; Thu, 02 May 2019 09:05:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7eU-0007nw-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:05:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32E5E374;
 Thu,  2 May 2019 02:05:12 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D5893F5AF;
 Thu,  2 May 2019 02:05:10 -0700 (PDT)
Date: Thu, 2 May 2019 10:05:08 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sodagudi Prasad <psodagud@codeaurora.org>
Subject: Re: PSCI version 1.1 and SYSTEM_RESET2
Message-ID: <20190502090507.GC12498@e107155-lin>
References: <24970f7101952f347bd4046c9a980473@codeaurora.org>
 <efee74624f986a358b8986ae3085fba2@codeaurora.org>
 <20190501094953.GA21851@e107155-lin>
 <3ceb06c36ecb745e2befaeaefe49be19@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ceb06c36ecb745e2befaeaefe49be19@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_020514_111899_2E303685 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 11:43:00AM -0700, Sodagudi Prasad wrote:
> On 2019-05-01 02:49, Sudeep Holla wrote:
> > On Tue, Apr 30, 2019 at 05:07:31PM -0700, Sodagudi Prasad wrote:
> > > On 2019-04-30 14:44, Sodagudi Prasad wrote:

[...]

> > >
> > > It would nice if there is a config option to reboot the device
> > > either in
> > > warm or cold in the case of kernel panic.
> >
> > I presume you prefer to do warm boot in case of panic to get a dump of
> > the memory to inspect ? If so, is kexec/kdump not the mechanism to
> > achieve that ?
>
> Hi Sudeep,
>
> Thanks for your response and sharing details about your patch.
>
> > If so, is kexec/kdump not the mechanism to achieve that?
> >
> Qualcomm is having vendor specific solution to capture ram contents and for
> offline analysis.
>

Ah OK.

> >
> > I am just trying to understand the use case. Xilinx asked for the same
> > but never got to understand their use case.
>
> Here is the background -
> Usually, power off drivers are overriding arm_pm_restart and pm_power_off
> callbacks and registering with reboot notifier with  some priority for the
> reboot operations.  Here is the Qualcomm poweroff driver for reference.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/power/reset/msm-poweroff.c
>
> Before vendor chip set specific power off driver is probed, arm_pm_restart
> functions pointer holds the psci_sys_reset function. Once vendor power off
> driver is probed,  vendor drivers can override the arm_pm_restart function
> pointer.
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/psci.c#n562
>
> Once vendor driver is probed, drivers can take care of devices warm or hard
> reset configuration part properly.  But there is a window from
> start_kernel() to vendor specific driver probed, devices are getting cold
> resets even if kernel crashed.  This is due to arm_pm_restart points to
> psci_sys_reset function by default.  Is this problem clear now?
>

Too specific use case IMO and I am not sure if we need a generic solution
to deal with this. Anyways, I don't see any check in arch/psci specific
code for what you want, just ensure reboot_mode is set appropriately.
Post a patch and see what people have to say.

> Qualcomm downstream kernel has a lot of use cases with respect device reset
> sequence and the downstream driver is much different from upstream drivers.
> I think, the above-mentioned problem is common for all the chipset vendors
> and it is not specific Qualcomm use cases.  I have one downstream solution
> to this problem but thought to bring up this problem to the upstream
> community for a common solution, so that all the vendors can use it.
>

May be or may be not, post the patch and let's see.

> I have modified below flow to avoid cold restart in the case of early kernel
> panic.
> panic() --> emergency_restart() --> machine_emergency_restart() -->
> machine_restart(NULL);
>
> -Thanks, Prasad
>
> >
> > --
> > Regards,
> > Sudeep
>
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
