Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9F0638C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdcMWO1qrkt/Yfyux4Ng4Jacrno8ytSR3zhCXlp2B0Y=; b=HNfh8kpx+0XxKe
	hPFoXR1xRBTGv9SVBStl91noqvwYy6RL+bRCjmXtU6VMGMjp3OY7NNXrgQox8wpgP8Ig++CIRylOI
	78aKPS/FUc6a7aSB29xUVzDNBnQ5NNEQ9yVygkb1GWNPNd5jCIUgsO+WYbtibsFUXpTvltx1W5X12
	TMXHcmOVISt1H3Tjxwg6YX9pruGEXcCPPV4wird2HfAlAvHyso2xlOct8RdxA+qGlIGDq6XfSmV9o
	N1ggIdWUqG8BwCnaf1Mz0RZ/iqhlNvA6aEfx/fXYYmAbP7UIutH0ubgM5mLyY+8D5HVKKiLwF/aJc
	hEhvhhwB0VIskjtM5B7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksC3-0007eW-RH; Tue, 09 Jul 2019 15:38:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hksBr-0007eB-O0
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:38:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E31E2B;
 Tue,  9 Jul 2019 08:37:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC2773F246;
 Tue,  9 Jul 2019 08:37:57 -0700 (PDT)
Date: Tue, 9 Jul 2019 16:37:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: kprobes sanity test fails on next-20190708
Message-ID: <20190709153755.GB10123@lakrids.cambridge.arm.com>
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
 <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
 <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
 <20190709112548.25edc9a7@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709112548.25edc9a7@gandalf.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_083800_224632_31450574 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.ibm.com>,
 Masami Hiramatsu <masami.hiramatsu@gmail.com>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 11:25:48AM -0400, Steven Rostedt wrote:
> On Tue, 9 Jul 2019 21:36:57 +0900
> Masami Hiramatsu <masami.hiramatsu@gmail.com> wrote:
> 
> > On Tue, 9 Jul 2019 12:19:15 +0200
> > Anders Roxell <anders.roxell@linaro.org> wrote:
> > 
> > > On Mon, 8 Jul 2019 at 17:56, James Morse <james.morse@arm.com> wrote:  
> > > >
> > > > Hi,
> > > >
> > > > On 08/07/2019 15:11, Anders Roxell wrote:  
> > > > > argh... resending, with plaintext... Sorry =/
> > > > >
> > > > > I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
> > > > > CONFIG_KPROBES_SANITY_TEST=y
> > > > >
> > > > > I get the following Call trace, any ideas?
> > > > > I've tried tags back to next-20190525 and they also failes... I haven't
> > > > > found a commit that works yet.
> > > > >
> > > > > [    0.098694] Kprobe smoke test: started
> > > > > [    0.102001] audit: type=2000 audit(0.088:1): state=initialized
> > > > > audit_enabled=0 res=1
> > > > > [    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP  
> > > >
> > > > This sounds like the issue Mark reported:
> > > > https://lore.kernel.org/r/20190702165008.GC34718@lakrids.cambridge.arm.com
> > > >
> > > > It doesn't look like Steve's patch has percolated into next yet:
> > > > https://lore.kernel.org/lkml/20190703103715.32579c25@gandalf.local.home/
> 
> I forgot to push it after sending it. :-(
> 
> > > >
> > > > Could you give that a try to see if this is a new issue?  
> > > 
> > > The patch didn't apply cleanly.
> > > However, when I resolved the issue it works.
> > > I'm a bit embarrassed since I now remembered that I reported it a while back.
> > > https://lore.kernel.org/lkml/20190625191545.245259106@goodmis.org/
> > > 
> > > Both patches resolved the issue.
> > > I've tested both.  
> > 
> > In that case, the later one (move postcore to subsys) seems good to me.
> > 
> > Delaying the test is just avoiding the issue that the selftest found,
> > since right after init_kprobes() are called, the kprobe is ready for use.
> > This means that the selftest must be run as the first user of the kprobes
> > and it must be run right after initialize kprobes.
> 
> I agree. I pushed to my repo in the for-next branch. Care to test that?
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git

I've just given that a spin with KPROBES and KPROBES_SANITY_TEST
selected, and it boots cleanly for me. FWIW:

Tested-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
