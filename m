Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1232CD9D89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 23:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZnuJKQ1ncafFdoLDXqgntlVX54im1TyRRjo6X+ZUx0=; b=tyjSTavPWHloXj
	SeuLSsJxFnc0jDLlVIJQvgl6WLx4wU2lf+Ttzyxl5Tz18PGvS7Vnv3q0a+Rty0VDPEOFhSeXk0wec
	TglSRnfhI27VFqQbS3C/3lsAd32YixxTgpl7LpaPWsj5/ekgS4yYulcMVaCBRAGKkuewkTYLUwQWT
	mFyzWA2tbI0x+bia59FBXYE7rblNjpvZOy5q9Y4vqaoYQq6OHaj4KE0Zrc/bjSr6vbca6OQyVYKnX
	9joOQjspRaW41jCqcfHfYfYcSZzFigRNPckSZ7wZ+ZrETEE+uyX2zxJ3c20+bU5So4NCuQZak43Eu
	8Pk537eJVG+dl89e0Q5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqxH-00019i-Gi; Wed, 16 Oct 2019 21:35:39 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqx8-00019G-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 21:35:32 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iKqx5-0007HS-GZ; Wed, 16 Oct 2019 23:35:27 +0200
Date: Wed, 16 Oct 2019 23:35:27 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Waiman Long <longman@redhat.com>
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
Message-ID: <20191016213527.fnxuxvhr6mgeeoqq@flow>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191016155755.66ges3ybn3awx45l@willie-the-truck>
 <a14cbac0-3eab-c136-ad2d-9b4d8b95a098@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a14cbac0-3eab-c136-ad2d-9b4d8b95a098@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_143530_954783_336A10CF 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-16 13:45:13 [-0400], Waiman Long wrote:
> My own testing on qspinlocks in the past, at least on x86-64, is that it
> is comparable to ticket lock with one or 2 contending tasks if not
> better. When there are 3 contending tasks, qspinlock will then be a bit
> slower than ticket lock because the overhead of using the MCS node for
> queuing is showing up. Starting with 4 and more contending tasks,
> qspinlock starts to show its strength and performing better and better
> with more contending tasks.
> 
> So if the target is 4 cores or less, there isn't too much to gain from
> using qspinlock. Lock function inlining probably has a bigger
> performance benefit here than switching to qspinlock. Just food for thought.

from my initial numbers:
|IMX6q
|~~~~~
|HZ_100  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
|Ticket  | 52.103        | 52.284		| 60.5681
|Q-locks | 54.1804	 | 53.267		| 56.1914
|Q-locksI| 52.2985       | 49.398		| 56.7441
|
|AM572x
|~~~~~~
|HZ_100  | PREEMPT_NONE  | PREEMPT_VOLUNTARY 	| PREEMPT
|Ticket  | 42.3819       | 42.4821     		| 43.2671
|Q-locks | 40.9141	 | 40.0269	        | 42.65  
|Q-locksI| 40.0763       | 39.9101     		| 40.7811

AM572x (Cortex-A15) has two CPUs, IMX6q (Cortex-A9) has four. Here on
AM572x q-locks gain ~3.5% (PREEMPT_NONE) without inlining. IMX6q
performs worse in the same category. However it performs better on
HZ_250 which I wouldn't expect.

> Cheers,
> Longman

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
