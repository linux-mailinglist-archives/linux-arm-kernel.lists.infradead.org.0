Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888C74F646
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 16:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JJqaxOO2pSY8R0k6sfN0Egk26izEekdC4ESSmM6y0k=; b=QrGVSd63oDDo1v
	/y9wXk6MQ1dN/Q8awkB5sft16jOWmBf3XnoE587i2XOfpPYVpdmfLvbheTV5rpn3UKChDb4W7M5v7
	TPhvegQlTDZtgqW6qU/mKYnntBxqg2/7cdPq2H4/TO92zxRRoDEawpjturWLi7IgTIhdc3NLp449p
	map61RBw9AxowgrvzivqhmKl+QuSCH/R5RvVtBuZnp1NmkMevLL7mhQqe9nc4epqqgtDuzv1mpeH8
	05cQUuwf92ZE+v7KfqrbLKgw83xNcB6Ah2TdokVOV0TCmzWO6FVahgMbbWTBuOOaTtAH5Tlz6i++T
	24TAMCMT4rhKEkmgC5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hehI3-00075F-PR; Sat, 22 Jun 2019 14:46:51 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hehHv-00074V-HW
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 14:46:45 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hehHh-00084j-Nz; Sat, 22 Jun 2019 16:46:30 +0200
Date: Sat, 22 Jun 2019 16:46:28 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
In-Reply-To: <20190614211710.GQ1513@sasha-vm>
Message-ID: <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_074643_729188_22FC2ED0 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019, Sasha Levin wrote:
> On Fri, Jun 14, 2019 at 01:15:23PM +0200, Thomas Gleixner wrote:
> > On Thu, 30 May 2019, Michael Kelley wrote:
> > > Vincenzo -- these changes for Hyper-V are a subset of a larger patch set
> > > I have that moves all of the Hyper-V clock/timer code into a separate
> > > clocksource driver in drivers/clocksource, with an include file in
> > > includes/clocksource.  That new include file should be able to work
> > > instead of your new mshyperv-tsc.h.  It also has the benefit of being
> > > ISA neutral, so it will work with my in-progress patch set to support
> > > Linux on Hyper-V on ARM64.  See https://lkml.org/lkml/2019/5/27/231
> > > for the new clocksource driver patch set.
> > 
> > Grrr. That's queued in hyperv-next for whatever reasons.
> 
> I queue up our future pull requests there to give them some soaking in
> -next.

What? You queue completely unreviewed stuff which touches two other
subsystems to let it soak in next?

> > Sasha, can you please provide me the branch to pull from so I can have a
> > common base for all the various changes floating around?
> 
> I'll send you a unified pull request for these changes.

Which has not materialized yet.

TBH, I'm pretty grumpy about those clocksource changes. Here is the
diffstat:

 MAINTAINERS                          |    2 
 arch/x86/entry/vdso/vclock_gettime.c |    1 
 arch/x86/entry/vdso/vma.c            |    2 
 arch/x86/hyperv/hv_init.c            |   91 ---------
 arch/x86/include/asm/hyperv-tlfs.h   |    6 
 arch/x86/include/asm/mshyperv.h      |   81 +-------
 arch/x86/kernel/cpu/mshyperv.c       |    2 
 arch/x86/kvm/x86.c                   |    1 
 drivers/clocksource/Makefile         |    1 
 drivers/clocksource/hyperv_timer.c   |  322 +++++++++++++++++++++++++++++++++++
 drivers/hv/Kconfig                   |    3 
 drivers/hv/hv.c                      |  156 ----------------
 drivers/hv/hv_util.c                 |    1 
 drivers/hv/hyperv_vmbus.h            |    3 
 drivers/hv/vmbus_drv.c               |   42 ++--
 include/clocksource/hyperv_timer.h   |  105 +++++++++++

While the world and some more people have been CC'ed on those patches,
neither the clocksource nor the x86 maintainer have been.

When I gave Vincenzo the advise to base his code on that hyper-v branch, I
expected that I find the related patches in my mail backlog. No, they have
not been there because I was not on CC.

Folks, please stop chosing Cc lists as you like. We have well established
rules for that. And please stop queueing random unreviewed patches in
next. Next is not a playground for not ready and unreviewed stuff. No, the
hyper-v inbreed Reviewed-by is not sufficient for anything x86 and
clocksource related.

After chasing and looking at those patches, which have horrible subject
lines and changelogs btw, I was not able to judge quickly whether that
stuff is self contained or not. So no, I fixed up the fallout and rebased
Vincenzos VDSO stuff on mainline w/o those hyperv changes simply because if
they are not self contained they will break bisection badly.

I'm going to push out the VDSO series later today. That will nicely break
in combination with the hyper-next branch. Stephen, please drop that and do
not try to handle the fallout. That stuff needs to go through the proper
channels or at least be acked/reviewed by the relevant maintainers. So the
hyper-v folks can rebase themself and post it proper.

Yours grumpy,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
