Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421A56AA54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4GFsiYAxEoTFSJgq3JRKk9pAXEwCJXVxU/jIYO7HRY=; b=Hfuvm5HYP/ts0h
	akVzPCMCfvCgP6k1/pn8rTUXg13/IzKQPm1b+juCXraj8w+kEqKGp2AtOCU4BeRX3Dt33D+IqB11i
	r8CtrJszEvJ8I8fbEXsdk0s1dUeCT3sZo86PN54y1eP4dHKtMITmeUi5CD+BBTDAsMX8DQeCbtYDq
	eQh02ERIvXF9ZQnzZ8zzmpSeJn5h/cfIQ/RKl5cEk0wZReEpa93F/waWOJUKH0OPOe5ZvrpeyGcrd
	ESOTPFhbbvmqzeWcPWmI25dILS6qYwXciLyZmcIYcSM5RtQAxx2n2XtSPuNuRgla7JaA8FNmkaEHw
	OVSKv1z76EhtRtuCKGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnO8M-00089w-DF; Tue, 16 Jul 2019 14:08:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnO87-00088x-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:08:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so9509313pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 07:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2p5yNB9Fr54gFlTDgHP10Sy9vEwRFeMQvHFiEZuA438=;
 b=aKYEDpBl++j6Z+a9BhBDhIxY5CbfJ/+EEYObi3h17m/9O4CKQZBGVFubw4N5lG0O1q
 YRKAVpnuVHVl4o95IGdObu2WBSNTcoW2M2H1F1oRO/OT9ToPmMmyUQ/Pu8b+wTK/T1Xx
 q10qAI+DCgCA47SjxmPdZv3fPlxlB/0W0gTWV88XNWZ5TVAFnuNyaZ1ZegYV67jN4nLQ
 3kczgUENKTNic5f1Kjatpmozpj1co8jj2E5aHO3ohTNA4/hOzP/zCoozh93Z7utHVV8h
 NFX9QG6Vz7fNu9tRmV2sjcGlZEdwaSQolcJ0IuqI+EWNmwrk9RsTvpPybUo7KfbVIypY
 GJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2p5yNB9Fr54gFlTDgHP10Sy9vEwRFeMQvHFiEZuA438=;
 b=pEoqdV4I8t7H9KV7mN+UuG0Tq2Y3sJGQvULQELqoIr2lLUL2l3A3Owov23EhtcixVv
 M5hHZ21rXq0NAAwJF0gWILFj9BJwHUMiz9AW/UrQtLwqTqZ0eqK7bj0Eug00NHcYDQ6G
 9cRTCSCt1BiYZJ5NGnb8MnYrU/ul/uuOBexiYlJpNDe/1raFz0BC4uVBOhByNMrSZrM0
 xQmb1/IhHPLYJSU4Pp6Ut5lsflRjLDsgWAeNdX8RNFaKgQ5iuWj0IddlGgpTJIEyjmB1
 0NB0OlF4QWBc2K5xq7oSzC79mdBUm3ACqQ2SQ9Kn6zunKA90Envltsp23q30fOfaf7uv
 04pA==
X-Gm-Message-State: APjAAAUsH4gzHMBu+GGuZ7P/GP0rqV8mre/5MkQCOMOTEGC2la87iLuv
 UkSDR3ZgCDYKmothWx93HMJVnH90uDPOpA==
X-Google-Smtp-Source: APXvYqzXpC63Aq383Ig6mtxbu2pKS8pBKp355OE6zLLHJi/TnGO3GwbhnVGRoMB+h1scO6W8iCKeXA==
X-Received: by 2002:a17:90a:9a83:: with SMTP id
 e3mr36023349pjp.105.1563286109956; 
 Tue, 16 Jul 2019 07:08:29 -0700 (PDT)
Received: from mail.google.com ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id c23sm12665035pgj.62.2019.07.16.07.08.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 07:08:29 -0700 (PDT)
Date: Tue, 16 Jul 2019 22:08:18 +0800
From: Changbin Du <changbin.du@gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] tracing/fgraph: support recording function return values
Message-ID: <20190716140817.za4rad3hx76efqgp@mail.google.com>
References: <20190713121026.11030-1-changbin.du@gmail.com>
 <20190715082930.uyxn2kklgw4yri5l@willie-the-truck>
 <20190715101231.GB3419@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715101231.GB3419@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_070831_982109_CBA7DFCE 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 12:12:31PM +0200, Peter Zijlstra wrote:
> On Mon, Jul 15, 2019 at 09:29:30AM +0100, Will Deacon wrote:
> > On Sat, Jul 13, 2019 at 08:10:26PM +0800, Changbin Du wrote:
> > > This patch adds a new trace option 'funcgraph-retval' and is disabled by
> > > default. When this option is enabled, fgraph tracer will show the return
> > > value of each function. This is useful to find/analyze a original error
> > > source in a call graph.
> > > 
> > > One limitation is that the kernel doesn't know the prototype of functions.
> > > So fgraph assumes all functions have a retvalue of type int. You must ignore
> > > the value of *void* function. And if the retvalue looks like an error code
> > > then both hexadecimal and decimal number are displayed.
> > 
> > This seems like quite a significant drawback and I think it could be pretty
> > confusing if you have to filter out bogus return values from the trace.
> > 
> > For example, in your snippet:
> > 
> > >  3)               |  kvm_vm_ioctl() {
> > >  3)               |    mutex_lock() {
> > >  3)               |      _cond_resched() {
> > >  3)   0.234 us    |        rcu_all_qs(); /* ret=0x80000000 */
> > >  3)   0.704 us    |      } /* ret=0x0 */
> > >  3)   1.226 us    |    } /* ret=0x0 */
> > >  3)   0.247 us    |    mutex_unlock(); /* ret=0xffff8880738ed040 */
> > 
> > mutex_unlock() is wrongly listed as returning something.
> > 
> > How much of this could be achieved from userspace by placing kretprobes on
> > non-void functions instead?
> 
> Alternatively, we can have recordmcount (or objtool) mark all functions
> with a return value when the build has DEBUG_INFO on. The dwarves know
> the function signature.
>
We can extend the recordmcount tool to search 'subprogram' tag in the DIE tree.
In below example, the 'DW_AT_type' is the type of function pidfd_create().

$ readelf -w kernel/pid.o
 [...]
 <1><1b914>: Abbrev Number: 232 (DW_TAG_subprogram)
    <1b916>   DW_AT_name        : (indirect string, offset: 0x415e): pidfd_create
    <1b91a>   DW_AT_decl_file   : 1
    <1b91b>   DW_AT_decl_line   : 471
    <1b91d>   DW_AT_decl_column : 12
    <1b91e>   DW_AT_prototyped  : 1
    <1b91e>   DW_AT_type        : <0xcc>
    <1b922>   DW_AT_low_pc      : 0x450
    <1b92a>   DW_AT_high_pc     : 0x50
    <1b932>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <1b934>   DW_AT_GNU_all_call_sites: 1
    <1b934>   DW_AT_sibling     : <0x1b9d9>
 [...]

To that end, we need to introduce libdw library for recordmcount. I will have a
try this week.

And probably, we can also record the parameters?

-- 
Cheers,
Changbin Du

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
