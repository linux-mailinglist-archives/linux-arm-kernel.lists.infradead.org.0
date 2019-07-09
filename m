Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD9D63897
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTJVSQiDyiWg9GkOa68zNhUSDnJLn61jnbjMNRbam54=; b=TId6Ys5a6d1b1M
	GgfPC41mI1W4Am8S4+Paect4WvA6z9qv1iWXFuZL8gtJ0O8u2+jm9uV14aUnqmx3d9GQZVdA2tsM/
	PjB8ChPhvIqdN2EC9tsPO70LpURZEhTqKTxziij6S8X0hGG+qXzeaT2qgaXCnm3p+IHpcBeUCWB4f
	Au9fJfz5w9PgTtL/gDxXIKGSTrfbGU0TrbVu/BtYm/qt0Npd0siNAxG1LT7/nXXwVmo9nG1Qbu9SX
	LAmoj670mjH6pNRjmLg1HmIOvH8qK6BM36yN6PWZVAGh8U4xeqaj0uSESueWhqvlV2f78chIiWsNL
	em627NpUIQsQvSyTLF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hks0K-0002jT-1g; Tue, 09 Jul 2019 15:26:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hks07-0002iV-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:25:53 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F397621537;
 Tue,  9 Jul 2019 15:25:49 +0000 (UTC)
Date: Tue, 9 Jul 2019 11:25:48 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masami Hiramatsu <masami.hiramatsu@gmail.com>
Subject: Re: kprobes sanity test fails on next-20190708
Message-ID: <20190709112548.25edc9a7@gandalf.local.home>
In-Reply-To: <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
References: <20190708141136.GA3239@localhost.localdomain>
 <a19faa89-d318-fe21-9952-b0f842240ba5@arm.com>
 <CADYN=9LBQ4NYFe8BPguJmxJFMiAJ405AZNU7W6gHXLSrZOSgTA@mail.gmail.com>
 <20190709213657.1447f508bd6b72495ec225d9@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_082551_649239_71E9D2E1 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019 21:36:57 +0900
Masami Hiramatsu <masami.hiramatsu@gmail.com> wrote:

> On Tue, 9 Jul 2019 12:19:15 +0200
> Anders Roxell <anders.roxell@linaro.org> wrote:
> 
> > On Mon, 8 Jul 2019 at 17:56, James Morse <james.morse@arm.com> wrote:  
> > >
> > > Hi,
> > >
> > > On 08/07/2019 15:11, Anders Roxell wrote:  
> > > > argh... resending, with plaintext... Sorry =/
> > > >
> > > > I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
> > > > CONFIG_KPROBES_SANITY_TEST=y
> > > >
> > > > I get the following Call trace, any ideas?
> > > > I've tried tags back to next-20190525 and they also failes... I haven't
> > > > found a commit that works yet.
> > > >
> > > > [    0.098694] Kprobe smoke test: started
> > > > [    0.102001] audit: type=2000 audit(0.088:1): state=initialized
> > > > audit_enabled=0 res=1
> > > > [    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP  
> > >
> > > This sounds like the issue Mark reported:
> > > https://lore.kernel.org/r/20190702165008.GC34718@lakrids.cambridge.arm.com
> > >
> > > It doesn't look like Steve's patch has percolated into next yet:
> > > https://lore.kernel.org/lkml/20190703103715.32579c25@gandalf.local.home/

I forgot to push it after sending it. :-(

> > >
> > > Could you give that a try to see if this is a new issue?  
> > 
> > The patch didn't apply cleanly.
> > However, when I resolved the issue it works.
> > I'm a bit embarrassed since I now remembered that I reported it a while back.
> > https://lore.kernel.org/lkml/20190625191545.245259106@goodmis.org/
> > 
> > Both patches resolved the issue.
> > I've tested both.  
> 
> In that case, the later one (move postcore to subsys) seems good to me.
> 
> Delaying the test is just avoiding the issue that the selftest found,
> since right after init_kprobes() are called, the kprobe is ready for use.
> This means that the selftest must be run as the first user of the kprobes
> and it must be run right after initialize kprobes.

I agree. I pushed to my repo in the for-next branch. Care to test that?

  git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git

-- Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
