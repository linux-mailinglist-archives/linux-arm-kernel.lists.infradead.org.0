Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D8F6B9BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMF1y9KGh1SXtNMnGpc9k5FvRzCgV4gMiPhmswLk1fw=; b=uP4AWUYZfPQWlq
	fC92JPPrbdZlnYT7VoE9FOMlQ4PvD0xz+2vLXjJmX+DL0KPR1H/Y5nZBVzL9Sri3mQG2VwKl3h3rC
	rxmVkFiMccL/h+2FJyIS3MTxJcaczvIog846RwFNR+4a0munVZypEV6LBDKIiBft1pF52Ka26GV+9
	j94DUXPR+UZsPgtzHnF2pqp9OIofonIq+HfiZK4rDHh6yYDEZyJlngsF5tgv0Fxe0FCkvEhbwulFs
	V9P+lb+yjB82Lz7f07qhBcVvh9wwvtgw7Uh1fYYCwYlIo3NzzLXzgpo4854Mhz/UMOEnWgsBMHPZi
	hzsFzl+bcbNg51c9ijlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngop-00071P-3z; Wed, 17 Jul 2019 10:05:51 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngo1-0005JI-8k
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:05:02 +0000
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hngnw-0002Pa-HU; Wed, 17 Jul 2019 12:04:56 +0200
Date: Wed, 17 Jul 2019 12:04:55 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] arm64: Avoid pointless schedule_preempt_irq() invocations
In-Reply-To: <e47e8298-af21-64fa-eac3-6fdfbf11c502@arm.com>
Message-ID: <alpine.DEB.2.21.1907171203280.1767@nanos.tec.linutronix.de>
References: <alpine.DEB.2.21.1907171036490.1767@nanos.tec.linutronix.de>
 <e47e8298-af21-64fa-eac3-6fdfbf11c502@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_030501_553670_4E48D294 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019, Valentin Schneider wrote:

> On 17/07/2019 09:43, Thomas Gleixner wrote:
> > When preempt_count is zero on return from interrupt then
> > schedule_preempt_irq() is invoked even if TIF_NEED_RESCHED is not set.
> > 
> > That does not make sense because schedule_preempt_irq() has to go through a
> > full __schedule() for nothing in that case.
> > 
> > Check TIF_NEED_RESCHED and invoke schedule_preempt_irq() only if set.
> > 
> > Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> 
> Don't we have NEED_RESCHED squashed into preempt count?
> 
>   396244692232 ("arm64: preempt: Provide our own implementation of asm/preempt.h")
> 
> So the existing check should cover that, unless I'm missing something?

Right. Ignore me.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
