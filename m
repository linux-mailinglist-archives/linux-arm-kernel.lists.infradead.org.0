Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E32D8FC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PM98tV9zXMSM1koGzHwLQj62aDfz3GbN3H+Jsv+qZE=; b=g84H8PxCOFjob1
	E6tjdXJoS4N/dbcGZWcOCHjg4ui+fEu+XbgCJq35O5gQJzF1fddfleMK/81kyqp67v3IWFdcyEljj
	0ZpQP171WhvK0SqgOxlTTmOus2lLyM4+FsrZx/S+WKBfLGs57CKbbwEUECTTB3L2UwlrAC3mgcltS
	rxTplf/QMiFr1u/lukb4lC6CN/6WcdTgWcqD0ErdSpu/6geAdFl4xQyAovPvK1nwzPYAEj/KNyMp9
	Lk+MM5KXCdJjDiLWUudenzIa4C3k8fxP2gQHSpHHNZDcjU2qsvP+thfAG8FqikkmesKvsHeNVxp+Z
	oQhT1EMJY4+rfUY7hdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhi1-0003wF-D6; Wed, 16 Oct 2019 11:43:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhhp-0003vq-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:43:07 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14CC221848;
 Wed, 16 Oct 2019 11:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571226185;
 bh=PmYKqxbOOvz8BV7rulnSKvx5ub0QO0AeeOamne1eykg=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=i1w1YZlGDYWLysQYdPGSEO8ia3QEop5kFW1QZeyZiycshs41S1t8NKKBqUzCxCeUh
 RFXrccRyr7r/WmYMKN7k2gMXNJyd2Jn6n4Z6b8zYbd3lnr/IqfAuSP7p0H7Lt4DIds
 lul6X0aPFKBqKJXEydY3BFN5TalV6VZM4AltHPTU=
Date: Wed, 16 Oct 2019 13:42:59 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
In-Reply-To: <20190724161500.GG2624@lakrids.cambridge.arm.com>
Message-ID: <nycvar.YFH.7.76.1910161341520.13160@cbobk.fhfr.pm>
References: <20190208150826.44EBC68DD2@newverein.lst.de>
 <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com> <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
 <20190724161500.GG2624@lakrids.cambridge.arm.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_044305_840146_ACBBD2F9 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Torsten Duwe <duwe@lst.de>, Ruslan Bilovol <ruslan.bilovol@gmail.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Jul 2019, Mark Rutland wrote:

> > > > > So what's the status now? Besides debatable minor style
> > > > > issues there were no more objections to v8. Would this
> > > > > go through the ARM repo or via the ftrace repo?
> > > >
> > > > Sorry agains for the delay on this. I'm now back in the office and in
> > > > front of a computer daily, so I can spend a bit more time on this.
> > > >
> > > > Regardless of anything else, I think that we should queue the first
> > > > three patches now. I've poked the relevant maintainers for their acks so
> > > > that those can be taken via the arm64 tree.
> > > >
> > > > I'm happy to do the trivial cleanups on the last couple of patches (e.g.
> > > > s/lr/x30), and I'm actively looking at the API rework I requested.
> > >
> > > Ok, I've picked up patches 1-3 and I'll wait for you to spin updates to the
> > > last two.
> > 
> > Ok, I see that patches 1-3 are picked up and are already present in recent
> > kernels.
> > 
> > Is there any progress on remaining two patches?
> 
> I'm afraid that I've been distracted on other fronts, so I haven't made
> progress there.
> 
> > Any help required?
> 
> If you'd be happy to look at the cleanup I previously suggested for the
> core, that would be great. When I last looked, it was simple to rework
> things so that arch code doesn't have to define MCOUNT_ADDR, but I
> hadn't figured out exactly how to split the core mcount assumptions from
> the important state machine bits.
> 
> I'll take another look and see if I can provide more detail. :)

Hi Mark,

has any progress been made on any front? Feels like this got stuck a bit.

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
