Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAAB6B8B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8gbpkDs/2aH8vXMOjk4GgommrFNCkBFMbWUaUats1A=; b=m7MycgEorm9P0V
	Sz88sF/TsKSHifvb22xiSkbJYRjdx+T/iaNGFkGVz+WtsbBITESP7nD8Ln03Vm5ABKFCznOartB/4
	3Cc9+F2mUX2cFZJZhB/NBo6Oo8xG3FxkqZ5uNtq7eXU32STHyNhC8emoYcLJS95qAbp193rQnC48I
	2KMvdHKwPBwa0W4ic3iS1+CrZKVkbMCtIev91cbcw2oqdQNadczWJHxRwMunzexh7VoGi8zgO3OSh
	dBPHVKgqgcc8OtImDVKuZQ23gruxjHU/fpRq/GWGDSMP1qRQDiPTXM2NWIabUcd7ZII1BRV9auE0Y
	En3F1h4LogmlaTu/5N2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfmM-0001zu-7O; Wed, 17 Jul 2019 08:59:14 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfmA-0001zi-SN; Wed, 17 Jul 2019 08:59:03 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id D667720B51F57; Wed, 17 Jul 2019 10:59:00 +0200 (CEST)
Date: Wed, 17 Jul 2019 10:59:00 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190717085900.GS3463@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716155022.GR3419@hirez.programming.kicks-ass.net>
 <193BBB31-F376-451F-BDE1-D4807140EB51@oracle.com>
 <20190716184724.GH3402@hirez.programming.kicks-ass.net>
 <20190717083944.GR3463@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717083944.GR3463@hirez.programming.kicks-ass.net>
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
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 10:39:44AM +0200, Peter Zijlstra wrote:
> On Tue, Jul 16, 2019 at 08:47:24PM +0200, Peter Zijlstra wrote:

> > My primary concern was readability; I find the above suggestion much
> > more readable. Maybe it can be written differently; you'll have to play
> > around a bit.
> 
> static void cna_splice_tail(struct cna_node *cn, struct cna_node *head, struct cna_node *tail)
> {
> 	struct cna_node *list;
> 
> 	/* remove [head,tail] */
> 	WRITE_ONCE(cn->mcs.next, tail->mcs.next);
> 	tail->mcs.next = NULL;
> 
> 	/* stick [head,tail] on the secondary list tail */
> 	if (cn->mcs.locked <= 1) {
> 		/* create secondary list */
> 		head->tail = tail;
> 		cn->mcs.locked = head->encoded_tail;
> 	} else {
> 		/* add to tail */
> 		list = (struct cna_node *)decode_tail(cn->mcs.locked);
> 		list->tail->next = head;
> 		list->tail = tail;
> 	}
> }
> 
> static struct cna_node *cna_find_next(struct mcs_spinlock *node)
> {
> 	struct cna_node *cni, *cn = (struct cna_node *)node;
> 	struct cna_node *head, *tail = NULL;
> 
> 	/* find any next lock from 'our' node */
> 	for (head = cni = (struct cna_node *)READ_ONCE(cn->mcs.next);
> 	     cni && cni->node != cn->node;
> 	     tail = cni, cni = (struct cna_node *)READ_ONCE(cni->mcs.next))
> 		;

I think we can do away with those READ_ONCE()s, at this point those
pointers should be stable. But please double check.

> 	/* when found, splice any skipped locks onto the secondary list */
> 	if (cni && tail)
> 		cna_splice_tail(cn, head, tail);
> 
> 	return cni;
> }
> 
> How's that?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
