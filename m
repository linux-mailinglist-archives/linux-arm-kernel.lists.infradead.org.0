Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C326AA83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiizfJyd6N+QwL4mslKd4Fpgafv566VvrXGDz5Ixk6w=; b=KMMwMW0N+uOrvH
	163dbMiqEDTXq+FIxuktqoMkyrN/l33IsUxW6t7rr6UdLk3EbStu7qsOqGfbEd9UzFOTQAStLtMfX
	rCRKAYJ9Fq/5TXzhakry2vn4rBoBuWaRmR8yqxpGRSvm1U3AAHNVaZimCbdf0wF4A1JgE7ID0z+5o
	hIGYM2gZose0K018nINUUhVcfCp5hQi3/yzvevoWsXrmxUs8DbrFCo/qdbpkrEncrvB7lS3RAXTtO
	fAUn+0bpumO4S+g2pudVOFH4Y5gFmrx22OklrT8knxliXdHxXuCEgHCYibJ6ZvMlfX4/frw1DmYZM
	9Nm36Q/uN3EzSQixFaVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOJZ-00052X-F9; Tue, 16 Jul 2019 14:20:21 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOJL-0004b6-Bh; Tue, 16 Jul 2019 14:20:07 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BF744202167B8; Tue, 16 Jul 2019 16:20:05 +0200 (CEST)
Date: Tue, 16 Jul 2019 16:20:05 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: [PATCH] tracing/fgraph: support recording function return values
Message-ID: <20190716142005.GE3402@hirez.programming.kicks-ass.net>
References: <20190713121026.11030-1-changbin.du@gmail.com>
 <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
 <20190715101231.GB3419@hirez.programming.kicks-ass.net>
 <20190716140817.za4rad3hx76efqgp@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716140817.za4rad3hx76efqgp@mail.google.com>
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
 tglx@linutronix.de, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:08:18PM +0800, Changbin Du wrote:
> On Mon, Jul 15, 2019 at 12:12:31PM +0200, Peter Zijlstra wrote:

> > Alternatively, we can have recordmcount (or objtool) mark all functions
> > with a return value when the build has DEBUG_INFO on. The dwarves know
> > the function signature.
> >
> We can extend the recordmcount tool to search 'subprogram' tag in the DIE tree.
> In below example, the 'DW_AT_type' is the type of function pidfd_create().
> 
> $ readelf -w kernel/pid.o
>  [...]
>  <1><1b914>: Abbrev Number: 232 (DW_TAG_subprogram)
>     <1b916>   DW_AT_name        : (indirect string, offset: 0x415e): pidfd_create
>     <1b91a>   DW_AT_decl_file   : 1
>     <1b91b>   DW_AT_decl_line   : 471
>     <1b91d>   DW_AT_decl_column : 12
>     <1b91e>   DW_AT_prototyped  : 1
>     <1b91e>   DW_AT_type        : <0xcc>
>     <1b922>   DW_AT_low_pc      : 0x450
>     <1b92a>   DW_AT_high_pc     : 0x50
>     <1b932>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
>     <1b934>   DW_AT_GNU_all_call_sites: 1
>     <1b934>   DW_AT_sibling     : <0x1b9d9>
>  [...]
> 
> To that end, we need to introduce libdw library for recordmcount. I will have a
> try this week.

Right; but only when this config option is set.

> And probably, we can also record the parameters?

The 'fun' part is where to store all this information in the kernel and
how fast you can find it while tracing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
