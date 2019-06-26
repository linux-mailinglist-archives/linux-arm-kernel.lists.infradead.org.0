Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E035F570F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UggnES53IKlisc5fN6vGUXoFIuB4Sp35aCL9p2HdnZI=; b=nBLdfA+3SgTf6n
	Au1hbtdYF6HOeDWNiVNhElAeGvy13OzJvDx5GczEtLAUWKu0MBqazW9RsyexMowWg3zcOuF41PCVy
	2lkXGxgg1z3tiLDpmmfyWQAi1ncV8gypnmvHn6URb8nCsA5k/wf42b2qvfk3mPhvr/NRcOgA19LNg
	tOrhOyxnsGn/pwLqSaIYz3o/5sAu7IkjV6qEdM5hZfywJmmnj0ZVdWPpBWBziR2fiqPtMcAX974ZN
	VCAsM0NflgAXRoqViRUQfGaVuqDJm8KX52QLnlWJ1Lxrn5rMU4bCZuojTZpPI9q8w3IG9Ucq+mX1I
	tmudfkuPesgOQxbeMIBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCv3-0000G7-3k; Wed, 26 Jun 2019 18:45:21 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCup-00086Z-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:45:08 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hgCui-0003Fi-W1; Wed, 26 Jun 2019 20:45:01 +0200
Date: Wed, 26 Jun 2019 20:45:00 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 2/4] x86/entry: Simplify _TIF_SYSCALL_EMU handling
In-Reply-To: <alpine.DEB.2.21.1906241936480.32342@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1906262044320.32342@nanos.tec.linutronix.de>
References: <20190523090618.13410-3-sudeep.holla@arm.com>
 <20190611145627.23229-1-sudeep.holla@arm.com>
 <20190624173008.GJ29120@arrakis.emea.arm.com>
 <alpine.DEB.2.21.1906241936480.32342@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_114507_319513_1219DC22 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019, Thomas Gleixner wrote:
> On Mon, 24 Jun 2019, Catalin Marinas wrote:
> > On Tue, Jun 11, 2019 at 03:56:27PM +0100, Sudeep Holla wrote:
> > > The usage of emulated and _TIF_SYSCALL_EMU flags in syscall_trace_enter
> > > is more complicated than required.
> > > 
> > > Cc: Andy Lutomirski <luto@kernel.org>
> > > Cc: Ingo Molnar <mingo@redhat.com>
> > > Cc: Borislav Petkov <bp@alien8.de>
> > > Acked-by: Oleg Nesterov <oleg@redhat.com>
> > > Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  arch/x86/entry/common.c | 17 ++++++-----------
> > >  1 file changed, 6 insertions(+), 11 deletions(-)
> > > 
> > > Hi Catalin,
> > > 
> > > I assume you can now pick up this patch.
> > 
> > I can, unless Thomas picks it up through the tip tree (there is no
> > dependency on the other patches in this series, which I already queued
> > via arm64).
> 
> Last time I checked I had no dependencies either. I'll recheck later
> tonight.

Forgot of course. But go ahead and route it with the others.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
