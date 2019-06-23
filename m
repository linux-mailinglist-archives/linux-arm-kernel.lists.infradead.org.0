Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386A14FE3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 00:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKm2ARavyK00js3XCBJanjXQ1qQgLZMWSMrgtzvGaxQ=; b=DYORSbnKG7dkPq
	hJ7MIPlaL4eQSWQHEX8gby+vHJnafQBrk3P7iVoszxfCU9HeOieKCvVxyJpPluXs5DAxr7hA0YSXj
	bBLwhfO9LN0jCPweGROJ69hYmcFHWqgEjasYABbRIEpoM6yN1hhYC0tNGWioiSEb+B476SKBOW9cB
	1d+TMLkXfnrAyCWZD97fGuNNpVbFna8n0RkozWAVibIiyqcBv7se783bapHxefXqLtK+ilc0TGmGT
	eje7I6+w6kxD+JHkhV3plhCKglBEtUkX8y0mIahw4teOYzMu0C5iGeiVXOVLed1R36vUbGGVb+0Wd
	us+QBoMsHoyXtJ7LUj/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfAjb-0000XN-2Y; Sun, 23 Jun 2019 22:13:15 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfAjI-0000Wq-BP
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 22:12:57 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfAj1-0007Ex-1q; Mon, 24 Jun 2019 00:12:40 +0200
Date: Mon, 24 Jun 2019 00:12:37 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
In-Reply-To: <20190623190929.GL2226@sasha-vm>
Message-ID: <alpine.DEB.2.21.1906240006090.32342@nanos.tec.linutronix.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
 <20190623190929.GL2226@sasha-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_151256_532812_9F38979D 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Sasha,

On Sun, 23 Jun 2019, Sasha Levin wrote:
> On Sat, Jun 22, 2019 at 04:46:28PM +0200, Thomas Gleixner wrote:
> > Folks, please stop chosing Cc lists as you like. We have well established
> > rules for that. And please stop queueing random unreviewed patches in
> > next. Next is not a playground for not ready and unreviewed stuff. No, the
> > hyper-v inbreed Reviewed-by is not sufficient for anything x86 and
> > clocksource related.
> 
> I'm sorry for this, you were supposed to be Cc'ed on these patches and I
> see that you were not.

All good. I've vented steam and am back to normal pressure :)

> > After chasing and looking at those patches, which have horrible subject
> > lines and changelogs btw, I was not able to judge quickly whether that
> > stuff is self contained or not. So no, I fixed up the fallout and rebased
> > Vincenzos VDSO stuff on mainline w/o those hyperv changes simply because if
> > they are not self contained they will break bisection badly.
> > 
> > I'm going to push out the VDSO series later today. That will nicely break

Not yet, but soon :)

> > in combination with the hyper-next branch. Stephen, please drop that and do
> > not try to handle the fallout. That stuff needs to go through the proper
> > channels or at least be acked/reviewed by the relevant maintainers. So the
> > hyper-v folks can rebase themself and post it proper.
> 
> Okay, thank you. We'll rebase and resend.

I have no objections if you collect hyper-v stuff, quite the contrary, but
changes which touch other subsystems need to be coordinated upfront. That's
all I'm asking for.

Btw, that clocksource stuff looks good code wise, just the change logs need
some care and after the VDSO stuff hits next we need to sort out the
logistics. I hope these changes are completely self contained. If not we'll
find a solution.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
