Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEF2A38AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ti3WE93yhMMuREgzu+HrZcuJ9SYfhW/nYVAJEmlgOpY=; b=ZPpcqZ6zQG8XhP
	/kxgYPBDqDLj3Bq/mNkZ/8/uBGTb83YNSRrm6CH3tbl5OHLQXAxH0RMU5U4ATMWnI+In+r7YWM2Ix
	nkouGenzr5g6MyFNlhaqNNP4+HOikJnmgdBro5Z45+sGRLmN6uWE6q5OGgoOQ5O9ihK/FjfGAk/O9
	Ah945SZhUsxLHteXAOT2+x4pOMZueWEkAORJGZGtIYy0u5pwHXqGFknsB6KgkdNNQ82skzZvQVRG7
	CFq4JTqSvz2oLN3F9xF8Pvz5C/eOYiA5d+UsIFRJzo0njhgriq/68fzno3kTaU97r1rcPcEzeqmKm
	tQ2MbXBsjrGg4ADIWXpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hSU-0006kp-20; Fri, 30 Aug 2019 14:00:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hQw-0004bm-PN
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:59:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9905E1597;
 Fri, 30 Aug 2019 06:59:21 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FAAB3F703;
 Fri, 30 Aug 2019 06:59:19 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v2 4/8] lib: vdso: Remove VDSO_HAS_32BIT_FALLBACK
Date: Fri, 30 Aug 2019 14:58:58 +0100
Message-Id: <20190830135902.20861-5-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830135902.20861-1-vincenzo.frascino@arm.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_065922_875691_AC7B2D25 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, salyzyn@android.com,
 paul.burton@mips.com, luto@kernel.org, tglx@linutronix.de, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VDSO_HAS_32BIT_FALLBACK was introduced to address a regression which
caused seccomp to deny access to the applications to clock_gettime64()
and clock_getres64() because they are not enabled in the existing
filters.

The purpose of VDSO_HAS_32BIT_FALLBACK was to simplify the conditional
implementation of __cvdso_clock_get*time32() variants.

Now that all the architectures that support the generic vDSO library
have been converted to support the 32 bit fallbacks the conditional
can be removed.

Cc: Thomas Gleixner <tglx@linutronix.de>
CC: Andy Lutomirski <luto@kernel.org>
References: c60a32ea4f45 ("lib/vdso/32: Provide legacy syscall fallbacks")
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 lib/vdso/gettimeofday.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index a86e89e6dedc..2c4b311c226d 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -126,13 +126,8 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 
 	ret = __cvdso_clock_gettime_common(clock, &ts);
 
-#ifdef VDSO_HAS_32BIT_FALLBACK
 	if (unlikely(ret))
 		return clock_gettime32_fallback(clock, res);
-#else
-	if (unlikely(ret))
-		ret = clock_gettime_fallback(clock, &ts);
-#endif
 
 	if (likely(!ret)) {
 		res->tv_sec = ts.tv_sec;
@@ -240,13 +235,8 @@ __cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
 
 	ret = __cvdso_clock_getres_common(clock, &ts);
 
-#ifdef VDSO_HAS_32BIT_FALLBACK
 	if (unlikely(ret))
 		return clock_getres32_fallback(clock, res);
-#else
-	if (unlikely(ret))
-		ret = clock_getres_fallback(clock, &ts);
-#endif
 
 	if (likely(!ret)) {
 		res->tv_sec = ts.tv_sec;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
