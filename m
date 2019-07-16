Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C336A65C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRhPAdMOayfY8ExFpvaLkE3GKeSEvtmNR6BPqPAzfLs=; b=nIPvt6CRtQ6QfJ
	KqZGOPLaJS1lvkYACqpfUjZedchLzLlIqNbzy3jXl8HUWXbVmjAsBMEoPzmAx0y1uaJUyw63ZinNk
	uuMuX5DLuK5YvK2Yo3Ozvuhld9ELelw9iBq/YqZWBTEmAknOBHtbh+TOyO3Ga76W2h6hDKvBgixF6
	Z1llTC2A7LIdKz6MgCYFvARNHHY5EpkZJZ8Q1X3rI+OBvxuxRQD45yXfZulDKpLOlwhliZYYsQB0K
	xMBuF9wos0XOeQG1z2z8cN1DTCRJNle+BqK+hWwh8k/hcr32QK+JvNVB+Madue9hE1qeFUEFXN8VF
	xI1A8AIjqsgXYXe22jkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKZw-0004pf-7o; Tue, 16 Jul 2019 10:21:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKZi-0004p2-KK
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jul 2019 10:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+jPmiLFoLFkErQnsFP18srbHMWPmmDSQUv0S0HNnLWo=; b=1FCCrHiw6wHWzTKNNLJJ628q3
 sfZxcu4lXp8UOSjklMM84EEttE7cH/rxMVbAXKhQFu/3gZ+10G+GnD+QOGbggR+a4ntTcNNLYXw6j
 HQwYBI7Ip3s3jo0xYu5aAhxsO3PdiOkRFEk7AC6tY7L756h2yeZid6XR7FOoEIDs4wrGIKWBypx6+
 29+ITIL/Aw/WCMapng0MkEzqtfJq2WfLPttOSGcTayXz12kmjfnqKQ1/O4cinbNjMouqSZ1YNkODG
 xCHWvcC8YQP8U9hwBoJRuKV0DN2nezJlsVl3CsaH//S3ws6GsMrkZoCA9+TfD1jPwDtslYWwL3NIq
 t5kPYIzrg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKZX-0005uN-La; Tue, 16 Jul 2019 10:20:36 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 58FB52021C301; Tue, 16 Jul 2019 12:20:34 +0200 (CEST)
Date: Tue, 16 Jul 2019 12:20:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 2/5] locking/qspinlock: Refactor the qspinlock slow path
Message-ID: <20190716102034.GN3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-3-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715192536.104548-3-alex.kogan@oracle.com>
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

On Mon, Jul 15, 2019 at 03:25:33PM -0400, Alex Kogan wrote:

> +/*
> + * set_locked_empty_mcs - Try to set the spinlock value to _Q_LOCKED_VAL,
> + * and by doing that unlock the MCS lock when its waiting queue is empty
> + * @lock: Pointer to queued spinlock structure
> + * @val: Current value of the lock
> + * @node: Pointer to the MCS node of the lock holder
> + *
> + * *,*,* -> 0,0,1
> + */
> +static __always_inline bool __set_locked_empty_mcs(struct qspinlock *lock,
> +						   u32 val,
> +						   struct mcs_spinlock *node)
> +{
> +	return atomic_try_cmpxchg_relaxed(&lock->val, &val, _Q_LOCKED_VAL);
> +}

That name is nonsense. It should be something like:

static __always_inline bool __try_clear_tail(...)


> +/*
> + * pass_mcs_lock - pass the MCS lock to the next waiter
> + * @node: Pointer to the MCS node of the lock holder
> + * @next: Pointer to the MCS node of the first waiter in the MCS queue
> + */
> +static __always_inline void __pass_mcs_lock(struct mcs_spinlock *node,
> +					    struct mcs_spinlock *next)
> +{
> +	arch_mcs_spin_unlock_contended(&next->locked, 1);
> +}

I'm not entirely happy with that name either; but it's not horrible like
the other one. Why not mcs_spin_unlock_contended() ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
