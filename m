Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC59C6ABB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gC/hJhG+qGChk52+BkdrdYTKusnNKi+Os2JhCnYVY4=; b=GPMjIhn+jMry7/
	0s7AJWhVmFmFBswdfPGPqqICcITAvHGfraRmsprUFb3oAhUSFTQ9/jiC1BN76S6sVHCi/jeL1Jg2I
	Q9JVhoRmdzQ6PkiW3b0GN9OQZG1gp0x43xZnvvPT/dOvwp1oHOHiw0e7iXGOgKompmR20jo0cTWUC
	D29xa5nITTuVy+XqeREqO72xe9vtYTCE/hr9FUYuc4Upy/it7rdnf4kHuxzyul5sCqLqDd7g/Y6S5
	C6TBxZKu3mx/dQI/yHU9oXMt+FDSkxfO3DaZYNbeuiFuEQhRhVJaQZbXVo2T3cZZC2JtUugjZtfU7
	wlBhm3fDnbCdLg/+kLYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPMH-0000rZ-3V; Tue, 16 Jul 2019 15:27:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPJl-00069N-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:24:39 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86DE1217D9;
 Tue, 16 Jul 2019 15:24:35 +0000 (UTC)
Date: Tue, 16 Jul 2019 11:24:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] tracing/fgraph: support recording function return values
Message-ID: <20190716112433.5936c60f@gandalf.local.home>
In-Reply-To: <20190716142005.GE3402@hirez.programming.kicks-ass.net>
References: <20190713121026.11030-1-changbin.du@gmail.com>
 <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
 <20190715101231.GB3419@hirez.programming.kicks-ass.net>
 <20190716140817.za4rad3hx76efqgp@mail.google.com>
 <20190716142005.GE3402@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_082437_760000_322B517D 
X-CRM114-Status: GOOD (  18.25  )
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
Cc: corbet@lwn.net, catalin.marinas@arm.com, x86@kernel.org,
 linux-doc@vger.kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 16:20:05 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

> On Tue, Jul 16, 2019 at 10:08:18PM +0800, Changbin Du wrote:
> > On Mon, Jul 15, 2019 at 12:12:31PM +0200, Peter Zijlstra wrote:  
> 
> > > Alternatively, we can have recordmcount (or objtool) mark all functions
> > > with a return value when the build has DEBUG_INFO on. The dwarves know
> > > the function signature.
> > >  
> > We can extend the recordmcount tool to search 'subprogram' tag in the DIE tree.
> > In below example, the 'DW_AT_type' is the type of function pidfd_create().
> > 
> > $ readelf -w kernel/pid.o
> >  [...]
> >  <1><1b914>: Abbrev Number: 232 (DW_TAG_subprogram)
> >     <1b916>   DW_AT_name        : (indirect string, offset: 0x415e): pidfd_create
> >     <1b91a>   DW_AT_decl_file   : 1
> >     <1b91b>   DW_AT_decl_line   : 471
> >     <1b91d>   DW_AT_decl_column : 12
> >     <1b91e>   DW_AT_prototyped  : 1
> >     <1b91e>   DW_AT_type        : <0xcc>
> >     <1b922>   DW_AT_low_pc      : 0x450
> >     <1b92a>   DW_AT_high_pc     : 0x50
> >     <1b932>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
> >     <1b934>   DW_AT_GNU_all_call_sites: 1
> >     <1b934>   DW_AT_sibling     : <0x1b9d9>
> >  [...]
> > 
> > To that end, we need to introduce libdw library for recordmcount. I will have a
> > try this week.  
> 
> Right; but only when this config option is set.

Sure, and we can have fgraph support of return values depend on that
option ;-)

> 
> > And probably, we can also record the parameters?  
> 
> The 'fun' part is where to store all this information in the kernel and
> how fast you can find it while tracing.

This has been on my TODO list for a long time (I'm really happy if
someone else would do it!). My thought is that this information would
need to be able to be a module and loaded (like config.gz can be). And
then you can load the info, do the tracing, and then unload it.

For the speed part, we can add a way to hook the function with the
parameters, which shouldn't be an issue, as we already do that when
filtering for function graph. There's a function hash table that fgraph
users have that is tested to see if it should trace the function or
not. And the functions themselves are recorded in a mostly binary array
that can be looked up via a binary search from the ip address.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
