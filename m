Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F0A1CF4BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Subject:To:From
	:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=66sDjYU2s2ZPDB2nhC7pdS3GGG3C09UMG3OLifb//0Q=; b=fElN83Vs6dM3DH
	JPofPsl2lCt0gYnABcN85GY2KQgrkU9WLCSiwZON4CK8huV49oJOQbCvvDx6NXgqBr7SgTFC4uKrO
	afXXHkIsewDxitL+qrgoreSNAvnGPk21P9REB5u9ydcB/zJeF+Utj2OG/G5g7QqhkSITC+IF1HXv4
	n67BtTHAc8IjUxtSOBjNMVRzO3f3QVZDUk1qQb61gm7k3q7CisFTRR+82vmo7aibQwu6seD2YqpPL
	NG8VBIoMN2qCs6q19W0Q2eG7XmdI6p/Ck4pprEpb3s0TU3vJS6ICjHNoufMiDofm9DCd6DWIQG9aq
	kwByt7eAQ/vhNdjnwJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUKb-0008LE-QE; Tue, 12 May 2020 12:48:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJK-0007ES-3v
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 12:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=2k0yrj8NN02Gxp4NWmpbZtnwVKPk5wX+ZXUDkjmgsRY=; b=3LROw93Wt9I9i4shqU3qi81Uvc
 OwOaIfDE38glFNfcDDrcRTk34OBkRFBv8ZQ1tSvBLpYNckED8YFu4IxRutb9si/HMsYSzA9WCK0mH
 gLahCc51jD0xDWmfDzr6MRLADdprHU1Aq3cQEG/xDUutc8rpXfYMGygPNQH8nsDHPFiJtryggSUpw
 HGfgFWq4zz0f5DYDIezB4eFdViBh19+qR/dWki7UBgbQ6dp2b2zlWKJBBPeMeGDQmvvnAYFz43tOp
 J1BVpvRNUBojMUISxLTxf5ib5Bdb+lpRnCH9ltMUTkTcnMSQhZFWg/8MkylPiesGfvqktTMlhXFGW
 oAGTPNFA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJI-0003Gu-0s; Tue, 12 May 2020 12:47:00 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D74F9301EFB;
 Tue, 12 May 2020 14:46:58 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 3616320962E56; Tue, 12 May 2020 14:46:53 +0200 (CEST)
Message-ID: <20200512124451.061059334@infradead.org>
User-Agent: quilt/0.66
Date: Tue, 12 May 2020 14:41:03 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH 5/5] arm64: perf: Add cap_user_time_short
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

This completes the ARM64 cap_user_time support.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/arm64/kernel/perf_event.c |   12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1173,6 +1173,7 @@ void arch_perf_update_userpage(struct pe
 
 	userpg->cap_user_time = 0;
 	userpg->cap_user_time_zero = 0;
+	userpg->cap_user_time_short = 0;
 
 	do {
 		rd = sched_clock_read_begin(&seq);
@@ -1183,13 +1184,13 @@ void arch_perf_update_userpage(struct pe
 		userpg->time_mult = rd->mult;
 		userpg->time_shift = rd->shift;
 		userpg->time_zero = rd->epoch_ns;
+		userpg->time_cycle = rd->epoch_cyc;
+		userpg->time_mask = rd->sched_clock_mask;
 
 		/*
-		 * This isn't strictly correct, the ARM64 counter can be
-		 * 'short' and then we get funnies when it wraps. The correct
-		 * thing would be to extend the perf ABI with a cycle and mask
-		 * value, but because wrapping on ARM64 is very rare in
-		 * practise this 'works'.
+		 * Subtract the cycle base, such that software that
+		 * doesn't know about cap_user_time_short still 'works'
+		 * assuming no wraps.
 		 */
 		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
 
@@ -1214,4 +1215,5 @@ void arch_perf_update_userpage(struct pe
 	 */
 	userpg->cap_user_time = 1;
 	userpg->cap_user_time_zero = 1;
+	userpg->cap_user_time_short = 1;
 }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
