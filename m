Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C315C143E9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7aEgZz2LzZySfN4+AAPD1QmutiRrxjTuT/sWodooZs=; b=WIzXt/E+qO1h/f
	DUxiGDcHUTuzN2NBqzBGrlJghLWSHbQZOaJu+DFX1ISqkjR0UgUemPLvKGboCnGmRwZzBZMII8lxN
	UsNRRrLG/9Zbko/qoSEYgjNIz5Nn2NwxRr/BZrxf3TT8soPMAlYaKdzC+5I3iiZcC/bXiSZkIRtAI
	i0H5V+3krRFnTdJ8fLwWnzX6oy/+FPKAkaHp9qtKinbVR9Fqkgo5nC8YVQ4A4lcou0ywnZrMY9MzS
	3ycVKkpPzcL5gaLgP4cWg4sRVhOLbULqoNEYqC9bnofT6uGeKnGLkULisdYvQ1Sx73cCfdM1szWSG
	8GPT3S2uLBDeLZMM6pnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ittvj-0003vj-GR; Tue, 21 Jan 2020 13:50:56 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ittvR-0003vU-1M; Tue, 21 Jan 2020 13:50:37 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C7F8C305D3F;
 Tue, 21 Jan 2020 14:48:55 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E9BBA20983FC0; Tue, 21 Jan 2020 14:50:34 +0100 (CET)
Date: Tue, 21 Jan 2020 14:50:34 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200121135034.GA14946@hirez.programming.kicks-ass.net>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121132949.GL14914@hirez.programming.kicks-ass.net>
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 bristot@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 02:29:49PM +0100, Peter Zijlstra wrote:
> On Mon, Dec 30, 2019 at 02:40:41PM -0500, Alex Kogan wrote:
> 
> > +/*
> > + * Controls the threshold for the number of intra-node lock hand-offs before
> > + * the NUMA-aware variant of spinlock is forced to be passed to a thread on
> > + * another NUMA node. By default, the chosen value provides reasonable
> > + * long-term fairness without sacrificing performance compared to a lock
> > + * that does not have any fairness guarantees. The default setting can
> > + * be changed with the "numa_spinlock_threshold" boot option.
> > + */
> > +int intra_node_handoff_threshold __ro_after_init = 1 << 16;
> 
> There is a distinct lack of quantitative data to back up that
> 'reasonable' claim there.
> 
> Where is the table of inter-node latencies observed for the various
> values tested, and on what criteria is this number deemed reasonable?
> 
> To me, 64k lock hold times seems like a giant number, entirely outside
> of reasonable.

Daniel, IIRC you just did a paper on constructing worst case latencies
from measuring pieces. Do you have data on average lock hold times?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
