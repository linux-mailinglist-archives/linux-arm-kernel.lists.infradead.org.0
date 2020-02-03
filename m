Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00131509CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+g0R0RZfVhq8PxjpOsAD/N0KaOwejOg+KGbyMmOjQc=; b=X9IOlL+dpMpQEe
	R1Wbo8dWMs6qOj76wPfe+EX6w8eoY/AvWrpMgDtBPAs4hmdP+Z9eXxx5DYbI4f3VCb7723yR900yO
	AniEaG3Yn8OzQLfBEfWxoGgjh6wJbijHkwo+hwxXqnjiUqSAdybZ9c3TliqXHFUyX5HZTRedNxqbo
	g39Rq42bSWuefteV5kJQgjaOqc2w1SNhnelhRG8iI7ovM49zi4LEFSMHdNcbMrcLwSzYciY9Cjxuk
	rGEiLZb+c4yCZSZ13tRj2CLQbu2xWzQ7uLg7k6Ly+t/DLID8lfVCQpd4YbTH7JAaZSxrLP6AhE1tX
	uT3mnJ4Ww9Dz9kaUU7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydeB-0002p9-HO; Mon, 03 Feb 2020 15:28:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyde5-0002p3-8I
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Feb 2020 15:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3iiJ/JICrF5NTxzn7wuT2IsOPnz4+UqOFdlWvNO3Zf0=; b=Zn/mb1y/gxBCrOjQU5XbMBdH7K
 sg9zPoWmdgz5bfyJTJQ3kuTg6J0Q+ZDJ9PG1Z1+nPInR+ImVYKmDOgR6XAvWkcjt5EEO1FuK6WKwo
 tKEM/LAcge1kaNz5o+cCB3cMgFrArlxCmHJeAvR6aD3arfH/cJ96wBctqGpKG1JmAGEETundU3yXB
 JU8m+Jc1MSNMszL8s0Pq65IfXUBSmQsSet6JBzvMY9yoPOCJetbODoSnfmOUEUVFMpCe62k8KnJKl
 CXG0huLwJb0TKfjxJpLpuMJ+4URsDxnrE+fZbOkU2pO24olcalb1ehEZA0ALcGl99QNyN9q3RQsq3
 wHx3OFSw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyddy-0006hm-VW; Mon, 03 Feb 2020 15:28:11 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AC6913011E0;
 Mon,  3 Feb 2020 16:26:22 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C4BA22B662F00; Mon,  3 Feb 2020 16:28:07 +0100 (CET)
Date: Mon, 3 Feb 2020 16:28:07 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200203152807.GK14914@hirez.programming.kicks-ass.net>
References: <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
 <20200203134540.GA14879@hirez.programming.kicks-ass.net>
 <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 03, 2020 at 09:59:12AM -0500, Waiman Long wrote:
> On 2/3/20 8:45 AM, Peter Zijlstra wrote:

> > Presumably you have a workload where CNA is actually a win? That is,
> > what inspired you to go down this road? Which actual kernel lock is so
> > contended on NUMA machines that we need to do this?
> 
> Today, a 2-socket Rome server can have 128 cores and 256 threads. If we
> scale up more, we could easily have more than 1000 threads in a system.
> With that many logical cpus available, it is easy to envision some heavy
> spinlock contention can happen fairly regularly. This patch can
> alleviate the congestion and improve performance under that
> circumstance. Of course, the specific locks that are contended will
> depend on the workloads.

Not the point. If there isn't an issue today, we don't have anything to
fix.

Furthermore, we've always adressed specific issues by looking at the
locking granularity, first.

So again, what specific lock inspired all these patches?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
