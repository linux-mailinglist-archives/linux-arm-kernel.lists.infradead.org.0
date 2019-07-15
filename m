Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBD5686E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 12:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0W9pFAHrgadVwFpNeen3w6CxYeVPGi/Z6wCdeYUPlFc=; b=aRd34gFrZmstuM
	W4lGQ4SOqmwXs5T1KWcsFbc82F3P/Xkjo5lH8ej7UGSqpOsj6TCmibNsqWWbxfTycigUHSO0lyyky
	T9iW0hqXKgidKi5ri7MOWildwFarU398Qu4hcHHRj358IPXLjBf64+Rj42JjM4BcT5ry0cM0ilPF9
	q7ugZbiHfxddnqips2Mvm4R/ptO6T5bTHh3LJ8aebamLZFJsetZ3lAXp6pehuau8wOD1hz6FAXIDB
	k7WhppdAF/XTj51UedzXPr1+3/ISqXvHPjdDLDsZiiMioxXrP6tqaFXn17S5s3XXn6s3bVdTVb+A8
	ZKdTUxzinsi3LIGko7/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxyT-0006IH-If; Mon, 15 Jul 2019 10:12:49 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxyD-0006Hm-PE; Mon, 15 Jul 2019 10:12:33 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B542520B29100; Mon, 15 Jul 2019 12:12:31 +0200 (CEST)
Date: Mon, 15 Jul 2019 12:12:31 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] tracing/fgraph: support recording function return values
Message-ID: <20190715101231.GB3419@hirez.programming.kicks-ass.net>
References: <20190713121026.11030-1-changbin.du@gmail.com>
 <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 linux-doc@vger.kernel.org, linux@armlinux.org.uk, rostedt@goodmis.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 09:29:30AM +0100, Will Deacon wrote:
> On Sat, Jul 13, 2019 at 08:10:26PM +0800, Changbin Du wrote:
> > This patch adds a new trace option 'funcgraph-retval' and is disabled by
> > default. When this option is enabled, fgraph tracer will show the return
> > value of each function. This is useful to find/analyze a original error
> > source in a call graph.
> > 
> > One limitation is that the kernel doesn't know the prototype of functions.
> > So fgraph assumes all functions have a retvalue of type int. You must ignore
> > the value of *void* function. And if the retvalue looks like an error code
> > then both hexadecimal and decimal number are displayed.
> 
> This seems like quite a significant drawback and I think it could be pretty
> confusing if you have to filter out bogus return values from the trace.
> 
> For example, in your snippet:
> 
> >  3)               |  kvm_vm_ioctl() {
> >  3)               |    mutex_lock() {
> >  3)               |      _cond_resched() {
> >  3)   0.234 us    |        rcu_all_qs(); /* ret=0x80000000 */
> >  3)   0.704 us    |      } /* ret=0x0 */
> >  3)   1.226 us    |    } /* ret=0x0 */
> >  3)   0.247 us    |    mutex_unlock(); /* ret=0xffff8880738ed040 */
> 
> mutex_unlock() is wrongly listed as returning something.
> 
> How much of this could be achieved from userspace by placing kretprobes on
> non-void functions instead?

Alternatively, we can have recordmcount (or objtool) mark all functions
with a return value when the build has DEBUG_INFO on. The dwarves know
the function signature.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
