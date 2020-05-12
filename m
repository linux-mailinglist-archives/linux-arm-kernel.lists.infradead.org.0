Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EAC1CF4B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Subject:To:From
	:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=MT4UKDvpXI0oKQN33rt6Dcj0/6hinbD6Ar4ZXXCihX8=; b=rWnzToBDv6ea0W
	zUUM/xuXaxqBwLNFlNFHwD+N6bZrsGNo796SSWJ+uF6mIxNj3+PZ2R8be6Mu2xyeEsx/XcinsMDs5
	44at+WZRgmMVJ12CpzAo2J7/2pfradnGFLsgevlQkDrrNwhuXFVJ/gCyK70A66y03NEt7QUi9TzkK
	CU+vJGC679X3LETZOT+y4vpcjM2i0D0f2cbMs9VHGohHvkA4OpFP9IoOs0Yy8f5MraBursSoXSiBe
	jw9pKaZNKgzg2OhdtJwRBuV6sBVkTWhJ1WTpbMEqk0DtkSd8lcPtPOk3f4bZ8oj317On4PUXR1Qyj
	x0HEQtzOI6/F0djUhK2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUKD-0007r4-CT; Tue, 12 May 2020 12:47:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJK-0007EQ-3x
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 12:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=ngZs8drZ7QXRvmUeJGP4y1pSY454qouM1a6376s95vs=; b=ZXKExd2ZH/XmhPLQHFbAQkMSxn
 dtYYboA1nY3FF0+yBsWq4FobSf6GFGhLCUnrmPQKSwpiQXmIV3cV2L6rZcbI9u2qE3py6oq7zbcbs
 hk1tIwy76YSm8bbl/m3NhC+y3YCZNGRA/jO6FkHQ18bXcaNMQNxCkd2EDNP0UwD/tgvsXZEbcAs0B
 CXp1eX2wUz3BoeuMCPyAcyKmqoSNwbfC6FXLY6/zsfjiD3Y3IzSFTf2DixAOYpO/QPt8EVYqB93h8
 kKe1Y0411ra2oOuYlKZR5XuqE3bLWJIkCZL7Go7oBqH84dQmlS85SxJMUpI/kgZwb1+0CdRMW+dRK
 IxNP2Jow==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJF-0003GZ-ID; Tue, 12 May 2020 12:46:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 44CCC304DB2;
 Tue, 12 May 2020 14:46:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 2DA2820962E55; Tue, 12 May 2020 14:46:53 +0200 (CEST)
Message-ID: <20200512124450.903534446@infradead.org>
User-Agent: quilt/0.66
Date: Tue, 12 May 2020 14:41:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH 3/5] arm64: perf: Only advertise cap_user_time for arch_timer
References: <20200512124058.833263033@infradead.org>
MIME-Version: 1.0
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
Cc: alexander.shishkin@linux.intel.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>, mingo@redhat.com,
 john.stultz@linaro.org, tglx@linutronix.de, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When sched_clock is running on anything other than arch_timer, don't
advertise cap_user_time*.

Requested-by: Will Deacon <will@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/arm64/kernel/perf_event.c |   19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -13,6 +13,8 @@
 #include <asm/sysreg.h>
 #include <asm/virt.h>
 
+#include <clocksource/arm_arch_timer.h>
+
 #include <linux/acpi.h>
 #include <linux/clocksource.h>
 #include <linux/kvm_host.h>
@@ -1169,16 +1171,15 @@ void arch_perf_update_userpage(struct pe
 	struct clock_read_data *rd;
 	unsigned int seq;
 
-	/*
-	 * Internal timekeeping for enabled/running/stopped times
-	 * is always computed with the sched_clock.
-	 */
-	userpg->cap_user_time = 1;
-	userpg->cap_user_time_zero = 1;
+	userpg->cap_user_time = 0;
+	userpg->cap_user_time_zero = 0;
 
 	do {
 		rd = sched_clock_read_begin(&seq);
 
+		if (rd->read_sched_clock != arch_timer_read_counter)
+			return;
+
 		userpg->time_mult = rd->mult;
 		userpg->time_shift = rd->shift;
 		userpg->time_zero = rd->epoch_ns;
@@ -1207,4 +1208,10 @@ void arch_perf_update_userpage(struct pe
 		userpg->time_mult >>= 1;
 	}
 
+	/*
+	 * Internal timekeeping for enabled/running/stopped times
+	 * is always computed with the sched_clock.
+	 */
+	userpg->cap_user_time = 1;
+	userpg->cap_user_time_zero = 1;
 }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
