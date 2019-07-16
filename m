Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B556A668
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao4MXOG3xaTYBWgHOTHIsW0Cp8c+Las9esLDReF9wtc=; b=hY5nR5L5x4NC5p
	+pfSLjYD7jW0xa2w/sqExUiUOpifF8ogH33aD5K/B0o0udJ7PX9F1hx+zQMQdp6QFfbOuzIy8fwHZ
	bo6EgCHIXtMiw89NVk/Eiat3rRdIRm3PObHQUrxcDmBqgpN8Yt7UW7MWZdSTaJB6IOX4FFsp6egwu
	CnLzxmsu/6nVWoxGdmOxGQC89UeQq63oP5W08ES3w2dif651W5Z2uy4vSN1l6jOEuHbrj8i3WnamI
	wqOVkHJ1JZJEbpFZTJfgg4jVNL+lEiqJ4b3UP4meERMSZtE5ZAKRg96jFZDGvOQqepBybqZbgoKIh
	DEwtzqFsLcXb/rRky+KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKcG-0005MJ-IP; Tue, 16 Jul 2019 10:23:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKcA-0005M4-4q
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jul 2019 10:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=geQnomQajzgBsSVYw/PnnftxW7/f0nnaIsebEDQXuNY=; b=FlbJkTtZ1IvTsDccm1VJQt3rW
 Sz3zJvkV3o6EPdjxAtfFv31Hzjdlj+DaBzBwzryDBFV1Zn/+QedDxmC4oXNnqDdfbYI1aG/sWFOE2
 rimoVRhsG8M6UQUyM0Pi4KQutoGRIjXOge4jf4t9PrYkUxn9KLoOxVdBhQo4bXfJwDf5nD05TmpPE
 V9QaY97exZg9urrNVaNC8vJuoYi3RPlhIRrvftlxB5yRDkqFtdRY0RjKec0lDRsgijTdTgVm4CRVf
 WZKxzyPlRgtYOYfVL1J+3JC42sdy+wIIVZK6y3a6OkgSESsjhzDDpbQAGGjJuMJozuJ0/CiEasfxQ
 H9cZc/zXg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKc7-0005wF-Lm; Tue, 16 Jul 2019 10:23:15 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 36F982021C301; Tue, 16 Jul 2019 12:23:14 +0200 (CEST)
Date: Tue, 16 Jul 2019 12:23:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 1/5] locking/qspinlock: Make
 arch_mcs_spin_unlock_contended more generic
Message-ID: <20190716102314.GO3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-2-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715192536.104548-2-alex.kogan@oracle.com>
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

On Mon, Jul 15, 2019 at 03:25:32PM -0400, Alex Kogan wrote:

> diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
> index e14b32c69639..961781624638 100644
> --- a/kernel/locking/qspinlock.c
> +++ b/kernel/locking/qspinlock.c
> @@ -558,7 +558,7 @@ void queued_spin_lock_slowpath(struct qspinlock *lock, u32 val)
>  	if (!next)
>  		next = smp_cond_load_relaxed(&node->next, (VAL));
>  
> -	arch_mcs_spin_unlock_contended(&next->locked);
> +	arch_mcs_spin_unlock_contended(&next->locked, 1);
>  	pv_kick_node(lock, next);

My problem with this patch is that the above reads really daft. Should
we rename the whole function? arch_mcs_pass_lock() perhaps?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
