Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4819144E98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AL1QudnsQe1LwzdgvL/4YIqTAIdiKQ5fmjuIAXgeJLY=; b=pclO/Ei7NaEvQH
	gCKngoTvTZt2DGMpi/GnN3a+CLFZF4NsxiuHlkMwLtPYXHQD+WBtkpVgL8g0ghH+s2UOXgj1k4SD6
	0RXO+FSSDdFH8kDjAS0zBXoGsPoBujhcdKYzYwIRFH+IdzJTaqR/JgAJt7kfCk734B7nAsHJBgRVY
	3KtT9ZiNyRdF+AdXA4h+WYUNuNcJsp45k7v/JUwLzXLZjun8aApaJTAI7VnyO7dtN5dlek0HRQICP
	H/m6eoqL5HweG9Fsoaa4S9yThSVsq52l2/TyoHpHeySx71arjULiZZGWk7j3BF+CK2dvhdj0vIDFe
	2p8gbO4kHGaeE7ODC7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCE2-0004so-9y; Wed, 22 Jan 2020 09:23:02 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCDj-0004nF-Hg; Wed, 22 Jan 2020 09:22:43 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 78B463011F9;
 Wed, 22 Jan 2020 10:20:59 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 043BB20983E34; Wed, 22 Jan 2020 10:22:38 +0100 (CET)
Date: Wed, 22 Jan 2020 10:22:38 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v7 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200122092238.GV14879@hirez.programming.kicks-ass.net>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-4-alex.kogan@oracle.com>
 <20200121202919.GM11457@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121202919.GM11457@worktop.programming.kicks-ass.net>
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

On Tue, Jan 21, 2020 at 09:29:19PM +0100, Peter Zijlstra wrote:
> @@ -92,8 +92,8 @@ static int __init cna_init_nodes(void)
>  }
>  early_initcall(cna_init_nodes);
>  
> -static inline bool cna_try_change_tail(struct qspinlock *lock, u32 val,
> -				       struct mcs_spinlock *node)
> +static inline bool cna_try_clear_tail(struct qspinlock *lock, u32 val,
> +				      struct mcs_spinlock *node)
>  {
>  	struct mcs_spinlock *head_2nd, *tail_2nd;
>  	u32 new;

Also, that whole function is placed wrong; it should be between
cna_wait_head_or_lock() and cna_pass_lock(), then it's in the order they
appear in the slow path, ie. the order they actually run.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
