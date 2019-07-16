Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590F6A6EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Lr2o/cLjoF47Glk+Uo97MPRlWXP71qUy2mSJh09jfo=; b=W1GVuTRIh0M0cq
	7cTyH8RnoTAD8E3Eag4FHKysbL99kANpgc/w87yDiLvgTRzHhyq/b8YcvcQ0LV3FGEYMLk7dq0VYg
	/2mIHpbfcB91WPcLXy75tPoxRgaUGcpDzHHJgKTEzJapppRa+Ykr7HiVYm3s0juWA+DCx7xOjvg+M
	nLWfxHQ1mT0ivU1ykzkoYktANvAKgj+8bdqhYhEv0Mi3mPr1m0II/JpsCBtyP580EbDZCnC6oFm+n
	1hKy27akBS3Z1zuGGy49u6M7I8hQLOflYtvlkcFftBmporXEEbtuvEROs3+071j+Vjf6KHXyjXbiC
	UlWpMbBWJF2XOMghZMuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLH4-000665-DN; Tue, 16 Jul 2019 11:05:34 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLGq-00065u-06; Tue, 16 Jul 2019 11:05:20 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6D4D520A4C82D; Tue, 16 Jul 2019 13:05:18 +0200 (CEST)
Date: Tue, 16 Jul 2019 13:05:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190716110518.GQ3419@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715192536.104548-4-alex.kogan@oracle.com>
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

On Mon, Jul 15, 2019 at 03:25:34PM -0400, Alex Kogan wrote:
> +/**
> + * find_successor - Scan the main waiting queue looking for the first
> + * thread running on the same node as the lock holder. If found (call it
> + * thread T), move all threads in the main queue between the lock holder
> + * and T to the end of the secondary queue and return T; otherwise, return NULL.
> + */
> +static struct cna_node *find_successor(struct mcs_spinlock *me)

Either don't use a kernel doc comment, but if you must, you have to
stick to their format, otherwise we'll get endless stupid patches fixing
up the stupid comment.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
