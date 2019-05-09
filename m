Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2C71833A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TPwGOpCTSeAnXTY+o31rf8AOjlKkHhjWpOaWeFDPSH4=; b=MFQ81n/z8249ftEtTCGKIKest
	CzblADFk24PU9LBDD+4HCFCMaArVW3t5m9fKF4qcGwgXKmsn97oucj9S6sSWHHgNaE6Ul0amPWrk0
	2kY42rpGHUdmHrY23ByLtu1u5WRsfZz4c3gJgpDVyJaM6Aawed3Zn+mo09ei+vmdH8VMtvUFRKE0T
	8d5HJcG5eIxaomvt6SVneU7rOCfs6ZfGsWYci4dky70j/SXm9ldLHWIBNiwuwxUD2Q4La9b0XJabV
	jrIAoQO7EIZkgQAksdfxX2Y+nlBhq7B3Ne+INKSZKxRredsGWvJCXcDZ1zn4dV8iH80F9VRRLK2TG
	EW1KSipiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY1K-0005f4-P9; Thu, 09 May 2019 01:38:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY1D-0005eI-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:38:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 38E5C609EF; Thu,  9 May 2019 01:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557365920;
 bh=4Ht87dHBqAzcwQ0kRXGlxzlr4w5kuIJqcWk5Du00ZJA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=D6AcNdPbUOkqgiT9cjhJb2kQCS3mko0gIkXla4MQ7lubKIW0trHoM3efJ8gl2O7Xn
 jhMsRXvITvfdjiAZLGoeCR/Ld6z7nUVsM+VYsRneCoJd/WhcviwtBdBWnoE0J6ZqD8
 CRvxJPYumVEq1bgxcoHf6bXrOGpNLNsQIMZxqJEM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id C09AB6016D;
 Thu,  9 May 2019 01:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557365919;
 bh=4Ht87dHBqAzcwQ0kRXGlxzlr4w5kuIJqcWk5Du00ZJA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NX8//c4nlLdgspVnETddzTr74XRcwdiyl+1hK275wEEhZaxhsEvvfXOAaBsOdn2HW
 7K/dQC755WzACbOmYOk1etkJIfhVzuFUp16BTLVMv1qAyaFX/POOhhzvUP9gVGeH2R
 Q0AdWDEgtaF2uaKl8YfQ+6h52ZKw6shRznisoIVo=
MIME-Version: 1.0
Date: Wed, 08 May 2019 18:38:39 -0700
From: Sodagudi Prasad <psodagud@codeaurora.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: PSCI version 1.1 and SYSTEM_RESET2
In-Reply-To: <20190502090507.GC12498@e107155-lin>
References: <24970f7101952f347bd4046c9a980473@codeaurora.org>
 <efee74624f986a358b8986ae3085fba2@codeaurora.org>
 <20190501094953.GA21851@e107155-lin>
 <3ceb06c36ecb745e2befaeaefe49be19@codeaurora.org>
 <20190502090507.GC12498@e107155-lin>
Message-ID: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
X-Sender: psodagud@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_183843_289654_FF58D3D4 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 2019-05-02 02:05, Sudeep Holla wrote:
> On Wed, May 01, 2019 at 11:43:00AM -0700, Sodagudi Prasad wrote:
>> On 2019-05-01 02:49, Sudeep Holla wrote:
>> > On Tue, Apr 30, 2019 at 05:07:31PM -0700, Sodagudi Prasad wrote:
>> > > On 2019-04-30 14:44, Sodagudi Prasad wrote:
> 
> [...]
> 
>> > >
>> > > It would nice if there is a config option to reboot the device
>> > > either in
>> > > warm or cold in the case of kernel panic.
>> >
>> > I presume you prefer to do warm boot in case of panic to get a dump of
>> > the memory to inspect ? If so, is kexec/kdump not the mechanism to
>> > achieve that ?
>> 
>> Hi Sudeep,
>> 
>> Thanks for your response and sharing details about your patch.
>> 
>> > If so, is kexec/kdump not the mechanism to achieve that?
>> >
>> Qualcomm is having vendor specific solution to capture ram contents 
>> and for
>> offline analysis.
>> 
> 
> Ah OK.
> 
>> >
>> > I am just trying to understand the use case. Xilinx asked for the same
>> > but never got to understand their use case.
>> 
>> Here is the background -
>> Usually, power off drivers are overriding arm_pm_restart and 
>> pm_power_off
>> callbacks and registering with reboot notifier with  some priority for 
>> the
>> reboot operations.  Here is the Qualcomm poweroff driver for 
>> reference.
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/power/reset/msm-poweroff.c
>> 
>> Before vendor chip set specific power off driver is probed, 
>> arm_pm_restart
>> functions pointer holds the psci_sys_reset function. Once vendor power 
>> off
>> driver is probed,  vendor drivers can override the arm_pm_restart 
>> function
>> pointer.
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/psci.c#n562
>> 
>> Once vendor driver is probed, drivers can take care of devices warm or 
>> hard
>> reset configuration part properly.  But there is a window from
>> start_kernel() to vendor specific driver probed, devices are getting 
>> cold
>> resets even if kernel crashed.  This is due to arm_pm_restart points 
>> to
>> psci_sys_reset function by default.  Is this problem clear now?
>> 
> 
> Too specific use case IMO and I am not sure if we need a generic 
> solution
> to deal with this. Anyways, I don't see any check in arch/psci specific
> code for what you want, just ensure reboot_mode is set appropriately.
> Post a patch and see what people have to say.

Hi Sudeep,

Yes. With your system_reset2 command support addition, just configuring 
the reboot_mode is good enough.

-Thanks, Prasad

> 
>> Qualcomm downstream kernel has a lot of use cases with respect device 
>> reset
>> sequence and the downstream driver is much different from upstream 
>> drivers.
>> I think, the above-mentioned problem is common for all the chipset 
>> vendors
>> and it is not specific Qualcomm use cases.  I have one downstream 
>> solution
>> to this problem but thought to bring up this problem to the upstream
>> community for a common solution, so that all the vendors can use it.
>> 
> 
> May be or may be not, post the patch and let's see.
> 
>> I have modified below flow to avoid cold restart in the case of early 
>> kernel
>> panic.
>> panic() --> emergency_restart() --> machine_emergency_restart() -->
>> machine_restart(NULL);
>> 
>> -Thanks, Prasad
>> 
>> >
>> > --
>> > Regards,
>> > Sudeep
>> 
>> --
>> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
>> Forum,
>> Linux Foundation Collaborative Project

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora 
Forum,
Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
