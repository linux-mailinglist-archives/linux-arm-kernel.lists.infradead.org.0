Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CAC147912
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 08:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5mbTE+VuASJB0nXz8Q6gUAog6gfus8dwbS0wI3I0QU=; b=NAPtUMVUCjtFXz
	FU0Z9CbRRbMpP4eDRtkX81InQlwTGK5dP/8GqW0YTgAUjPdIpKcZa+mZo8tWV1p24JXFC25c7BgyR
	Ju+zpr+Za+9bhf3FlkghRjqbGVr2J9Wjm93G4pQnqccxPCBh99F4ZGkmkX5ZT9PLAo92SFZGEhqrC
	0yl0NJ4BPcGMar7Cr22+t919pIsX6d67PDwU8NSrKIZRwt6EUyArOZ2thTGNsXGn6MbIzOP9DNUS7
	3Srzl4D0K7FJlzCq8Wxa0sNEYq8LcQ+4WlH7LlIngKpCFRZZ05wJDD7OwLXohE0tAYkDyibOD6cTh
	1/caV1mXU9Xj1Ak2LJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iutlt-0005cD-96; Fri, 24 Jan 2020 07:52:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iutlp-0005c5-3U
 for linux-arm-kernel@bombadil.infradead.org; Fri, 24 Jan 2020 07:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yuA59Cq86QbpEr2GrOS1my19i2Wm0DAniBfPEadru+E=; b=WE2DXd5VdOovwJVSYxSxfE6QZ
 n8413ndR5tjBKdTrfkMnM1yGlzr/9L1/JgTH7UQVY4LLbgWeYruwww37tzvLPwLtIE9vPisE2Yv4c
 DANqteyAoXxYNXLvTzGTavbTIzem6CUyASrfJ9n6t86d4eSHxE3WmmxVxMsHoHnSjzareP2xR3Qn9
 fiLecZ8TgJvMBrimrxxWmNfEUXgpFK3FtGPOUR8zXXCleY8JD+iISEOLUgOw7pOdZa+01SK07b0oP
 VzZUunaCiW0otMSA818I140pkS8tKQVFzYpHEwLZ3ydHTofSySmjR0BuAwoxWFtszk4/eJZWVe1z5
 X0FXVJN3w==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iutlf-0001Zl-48; Fri, 24 Jan 2020 07:52:39 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4165F300677;
 Fri, 24 Jan 2020 08:50:55 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id AC2352B716B08; Fri, 24 Jan 2020 08:52:35 +0100 (CET)
Date: Fri, 24 Jan 2020 08:52:35 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200124075235.GX14914@hirez.programming.kicks-ass.net>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
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
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 04:33:54PM -0500, Alex Kogan wrote:
> Let me put this question to you. What do you think the number should be?

I think it would be very good to keep the inter-node latency below 1ms.

But to realize that we need data on the lock hold times. Specifically
for the heavily contended locks that make CNA worth it in the first
place.

I don't see that data, so I don't see how we can argue about this let
alone call something reasonable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
