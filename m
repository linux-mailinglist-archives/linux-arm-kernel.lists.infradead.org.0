Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E817C6A6EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6ZMK6n7LyERbYp24IicwVa/OVRDdyPi2bFR6cwNt2Q=; b=GJPeSLgK/FEGW7
	t2minh1UGLsMiOSrMP89Q34DtV4pO7DGz3EDnIhQlZGmWZ38Tpsf++rAH9qLSGNUvNrlWhk7HthCW
	Ws8npJbc+f12s90T/rLjDt9H5CaOoidglnwpVZ2Xi1wexn9zK7AeU6i9b4/HrgrBtSOxKDVahOqa4
	V2AdM51A06PlddTulhHmb59Q7blw+Iqb4ZJ+cWnRNkOgyr482Z3N01vvBjqB//qCf6E2M/fLmpBtR
	bW99xLDv6YaqEKH9iKZWkrpleeKWqyLaYFH5d87jZI9duN64zIu8BjJy4SpYgbUEzV++tjKtqgpyY
	sOj1HKheri/5Pmc0WShA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLGF-0004da-HS; Tue, 16 Jul 2019 11:04:43 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLG1-0004dN-Ta; Tue, 16 Jul 2019 11:04:30 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 9DEA0201D171F; Tue, 16 Jul 2019 13:04:27 +0200 (CEST)
Date: Tue, 16 Jul 2019 13:04:27 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190716110427.GP3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <77bba626-f3e6-45a8-aae8-43b945d0fab9@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77bba626-f3e6-45a8-aae8-43b945d0fab9@redhat.com>
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
 rahul.x.yadav@oracle.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:30:01PM -0400, Waiman Long wrote:
> On 7/15/19 3:25 PM, Alex Kogan wrote:
> >  /*
> > - * On 64-bit architectures, the mcs_spinlock structure will be 16 bytes in
> > - * size and four of them will fit nicely in one 64-byte cacheline. For
> > - * pvqspinlock, however, we need more space for extra data. To accommodate
> > - * that, we insert two more long words to pad it up to 32 bytes. IOW, only
> > - * two of them can fit in a cacheline in this case. That is OK as it is rare
> > - * to have more than 2 levels of slowpath nesting in actual use. We don't
> > - * want to penalize pvqspinlocks to optimize for a rare case in native
> > - * qspinlocks.
> > + * On 64-bit architectures, the mcs_spinlock structure will be 20 bytes in
> > + * size. For pvqspinlock or the NUMA-aware variant, however, we need more
> > + * space for extra data. To accommodate that, we insert two more long words
> > + * to pad it up to 36 bytes.
> >   */

> The 20 bytes figure is wrong. It is actually 24 bytes for 64-bit as the
> mcs_spinlock structure is 8-byte aligned. For better cacheline
> alignment, I will like to keep mcs_spinlock to 16 bytes as before.
> Instead, you can use encode_tail() to store the CNA node pointer in
> "locked". For instance, use (encode_tail() << 1) in locked to
> distinguish it from the regular locked=1 value.

Yes, please don't bloat this. I already don't like what Waiman did for
the paravirt case, but this is horrible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
