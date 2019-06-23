Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A854FDC9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 21:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=STpsCg50BrA1HpqTfEAWEdHhihCvPfVAgDt74750ApQ=; b=qTs6cQZK5o2HzPTiadHRTvUOw
	ES/h4uUTHeFlgF1t6zTugAO7onLqsHmAukZVXxjgNQdoYWkQLTiCdn3h5pKUUxPzYXFi7rBEoFAR7
	rGo69J8z4yFqc4cbTW5hXTyuzmvTsyz7v2DiuNVCc0NZY6rbnVXt1nJd7w57UilMcBwMAPxySA51t
	HG3Td6nq0xQQYDcYpRJNt4Yyhb+vpe6AGwWtCDSRTh0qNEr50kIIyM0FF+/k6sfdxNLucl+/OTRFY
	NxCSIKFDdkPd3qRvCrd1iRz6lz+c1nbhoVmu7/E9T8Mi8rgXH+lHkrk6LXF7o8DxKppCYMxS+YeWF
	eMTeKfvMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf7sD-0002fu-Gh; Sun, 23 Jun 2019 19:09:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf7rt-0002fQ-Pe
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 19:09:39 +0000
Received: from localhost (unknown [107.242.116.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E2BD20656;
 Sun, 23 Jun 2019 19:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561316975;
 bh=mlvFSvzkR+cCMmE9uWWqrJrJQDHurcL5lzCZSBcXqeM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WIlojUbYbhbPxgmncsctvio3d5Mn73rmmLk0d4dqSMx5J9aWVK+Ch0Ktgq95tupOF
 i/eIm1MdKNrRPM0pwIU0Hj6wp7UJ/S2I6lj8po0jYtHxFAVuuZjhJZzLWxBsbcQRlO
 iRp5ngtuuFHBff8VqAdtHzZ2JfD+gVpQNfhvhlGw=
Date: Sun, 23 Jun 2019 15:09:29 -0400
From: Sasha Levin <sashal@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
Message-ID: <20190623190929.GL2226@sasha-vm>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_120937_876393_CC0CF897 
X-CRM114-Status: GOOD (  26.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-hyperv@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Michael Kelley <mikelley@microsoft.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 04:46:28PM +0200, Thomas Gleixner wrote:
>On Fri, 14 Jun 2019, Sasha Levin wrote:
>> On Fri, Jun 14, 2019 at 01:15:23PM +0200, Thomas Gleixner wrote:
>> > On Thu, 30 May 2019, Michael Kelley wrote:
>> > > Vincenzo -- these changes for Hyper-V are a subset of a larger patch set
>> > > I have that moves all of the Hyper-V clock/timer code into a separate
>> > > clocksource driver in drivers/clocksource, with an include file in
>> > > includes/clocksource.  That new include file should be able to work
>> > > instead of your new mshyperv-tsc.h.  It also has the benefit of being
>> > > ISA neutral, so it will work with my in-progress patch set to support
>> > > Linux on Hyper-V on ARM64.  See https://lkml.org/lkml/2019/5/27/231
>> > > for the new clocksource driver patch set.
>> >
>> > Grrr. That's queued in hyperv-next for whatever reasons.
>>
>> I queue up our future pull requests there to give them some soaking in
>> -next.
>
>What? You queue completely unreviewed stuff which touches two other
>subsystems to let it soak in next?

It was out on LKML for 2+ weeks before I've pulled it in. As it mostly
touches hyperv bits I felt comfortable to give it time in -next (but not
actually to try and merge it until it gets a few acks).

>> > Sasha, can you please provide me the branch to pull from so I can have a
>> > common base for all the various changes floating around?
>>
>> I'll send you a unified pull request for these changes.
>
>Which has not materialized yet.

Appologies about this. I ended up with way more travel than I would have
liked (writing this from an airport). I've reset our hyperv-next branch
to remove these 3 commits until we figure this out.

>TBH, I'm pretty grumpy about those clocksource changes. Here is the
>diffstat:
>
> MAINTAINERS                          |    2
> arch/x86/entry/vdso/vclock_gettime.c |    1
> arch/x86/entry/vdso/vma.c            |    2
> arch/x86/hyperv/hv_init.c            |   91 ---------
> arch/x86/include/asm/hyperv-tlfs.h   |    6
> arch/x86/include/asm/mshyperv.h      |   81 +-------
> arch/x86/kernel/cpu/mshyperv.c       |    2
> arch/x86/kvm/x86.c                   |    1
> drivers/clocksource/Makefile         |    1
> drivers/clocksource/hyperv_timer.c   |  322 +++++++++++++++++++++++++++++++++++
> drivers/hv/Kconfig                   |    3
> drivers/hv/hv.c                      |  156 ----------------
> drivers/hv/hv_util.c                 |    1
> drivers/hv/hyperv_vmbus.h            |    3
> drivers/hv/vmbus_drv.c               |   42 ++--
> include/clocksource/hyperv_timer.h   |  105 +++++++++++
>
>While the world and some more people have been CC'ed on those patches,
>neither the clocksource nor the x86 maintainer have been.
>
>When I gave Vincenzo the advise to base his code on that hyper-v branch, I
>expected that I find the related patches in my mail backlog. No, they have
>not been there because I was not on CC.
>
>Folks, please stop chosing Cc lists as you like. We have well established
>rules for that. And please stop queueing random unreviewed patches in
>next. Next is not a playground for not ready and unreviewed stuff. No, the
>hyper-v inbreed Reviewed-by is not sufficient for anything x86 and
>clocksource related.

I'm sorry for this, you were supposed to be Cc'ed on these patches and I
see that you were not.

>After chasing and looking at those patches, which have horrible subject
>lines and changelogs btw, I was not able to judge quickly whether that
>stuff is self contained or not. So no, I fixed up the fallout and rebased
>Vincenzos VDSO stuff on mainline w/o those hyperv changes simply because if
>they are not self contained they will break bisection badly.
>
>I'm going to push out the VDSO series later today. That will nicely break
>in combination with the hyper-next branch. Stephen, please drop that and do
>not try to handle the fallout. That stuff needs to go through the proper
>channels or at least be acked/reviewed by the relevant maintainers. So the
>hyper-v folks can rebase themself and post it proper.

Okay, thank you. We'll rebase and resend.

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
