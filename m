Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59487146CD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+im8Lg0GJu/EXxxVs8wlSN8rsEaJFCyQJLPsBgakx9w=; b=B967mZn9Ta7ZPl
	AM/3vB4Izb5Ea60bbmTc8CPjczhiBNiJwWz/3oZ+0fgR/JcqLWODC63S9uFO3uuBkcTqQKM6Tz+NA
	F6kHyk3Wbs5VDEYQsjJZ7JAXAnH0TEjMkNWo9riWTyYFKz/5E4bPPPPvjXy6I+ksmSWtcvFEthrCQ
	IO5/TY2oQ01o3638lHZIEcsEVPGBs1DxomZQtwZSGKWlffuH7h5L71C4ctPSMjfEyx08stSymHJPB
	/Pt02ofFBxkS2GO0JtPYG7gPkLx220QUSROtyG0LFvJwD78j9l3VMJ96axMWfClnF68I48Ymb/1DG
	vm4bjUdDaLU4lz68SZCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iueQV-0000W0-7D; Thu, 23 Jan 2020 15:29:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueQF-0000VH-Mc
 for linux-arm-kernel@bombadil.infradead.org; Thu, 23 Jan 2020 15:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B/n7W4E7uJv5pAkHx8ZqbqbrQSUi/FNUw9Ppcu+la6k=; b=j1j6sCnf43FehruEfnqskrYLt
 Nn8vL0JG757sO7HS9jy/OW4qN7Xix2ztFpJGjhG0QLLNLKrSVprKwN1Sm3w4t2G1KuTivtLxuDNow
 srmx8d4BRDA1cZVtL6pPeoES1PflMknut7Qo5+xQo4tgayMAJo90FilPtFtGDWghaDrVt4qeBqnX/
 jkQYNsbBaH8pe2tklc/irJIS4pachSjxnlh9EF7llzHd7lOWKQaqSi5iO5UGtwVpOK2z8O/H++xNM
 IUmNO6YlaNgdwixRiYPWm027TpZwMb8tRhf1G4ApegWcUN+G3gVCW7J+VmdIQ/F6/Es0/QM44NRFi
 gDzwJ0FxA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueQ6-0007ex-8F; Thu, 23 Jan 2020 15:29:22 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2261E300693;
 Thu, 23 Jan 2020 16:27:38 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 42C712B63FCAF; Thu, 23 Jan 2020 16:29:18 +0100 (CET)
Date: Thu, 23 Jan 2020 16:29:18 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v9 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200123152918.GD14879@hirez.programming.kicks-ass.net>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-4-alex.kogan@oracle.com>
 <d751a8ef-aae8-ca70-6a28-79dd8bee2324@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d751a8ef-aae8-ca70-6a28-79dd8bee2324@redhat.com>
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
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 09:15:55AM -0500, Waiman Long wrote:
> On 1/14/20 10:59 PM, Alex Kogan wrote:
> > +static int __init cna_init_nodes(void)
> > +{
> > +	unsigned int cpu;
> > +
> > +	/*
> > +	 * this will break on 32bit architectures, so we restrict
> > +	 * the use of CNA to 64bit only (see arch/x86/Kconfig)
> > +	 */
> > +	BUILD_BUG_ON(sizeof(struct cna_node) > sizeof(struct qnode));
> > +	/* we store an ecoded tail word in the node's @locked field */
> > +	BUILD_BUG_ON(sizeof(u32) > sizeof(unsigned int));
> > +
> > +	for_each_possible_cpu(cpu)
> > +		cna_init_nodes_per_cpu(cpu);
> > +
> > +	return 0;
> > +}
> > +early_initcall(cna_init_nodes);
> > +
> 
> I just realized that you shouldn't call cna_init_nodes as an
> early_initcall. Instead,
> 
> > +/*
> > + * Switch to the NUMA-friendly slow path for spinlocks when we have
> > + * multiple NUMA nodes in native environment, unless the user has
> > + * overridden this default behavior by setting the numa_spinlock flag.
> > + */
> > +void __init cna_configure_spin_lock_slowpath(void)
> > +{
> > +	if ((numa_spinlock_flag == 1) ||
> > +	    (numa_spinlock_flag == 0 && nr_node_ids > 1 &&
> > +		    pv_ops.lock.queued_spin_lock_slowpath ==
> > +			native_queued_spin_lock_slowpath)) {
> > +		pv_ops.lock.queued_spin_lock_slowpath =
> > +		    __cna_queued_spin_lock_slowpath;
> > +
> > +		pr_info("Enabling CNA spinlock\n");
> > +	}
> > +}
> 
> call it when it is sure that CNA spinlock is going to be used. At this
> point, the system is still in UP mode and the slowpath will not be called.

Indeed, let me go fix that!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
