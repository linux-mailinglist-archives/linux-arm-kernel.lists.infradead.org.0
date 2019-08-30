Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B7DA38AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a7eElnHki96xEik2unJPtd2E07c2ffsRUFEZhBKt5U=; b=GlU+vxjk12p0b9
	Gh+lfUuvc2nmvhWM8jI/UlvPsKyTY6OInkMeYTzHmN6xMEGpS2apOyYo1UGM6TdDI20pWJ3AkrXDv
	p8yCAVUe7FXKKD8iKJd7Oyi/XsIf0E4OoRRKNVbeGh6A03vMgB50WpkZmKpLzG//om0qXkY/1QaZx
	ZwxXct1/QnyJ9Y/JIwhcVPfM+OJMs/F4wBWAwh2LJxRFnZX87xLcMb3nudlEnhNwMQeAQgJVW2yOr
	/HIOzODR20+Lenyw//N2REkNmgWh9U5BNfF5GxZMpmhtLDq4DZyZHk2cvEUeKXLA6sz/fwgdQ1hvK
	5xBVnyfXgCAWvyPk24sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hSh-00072A-FN; Fri, 30 Aug 2019 14:01:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hQy-0004dH-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:59:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 633E215A2;
 Fri, 30 Aug 2019 06:59:23 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDEA93F703;
 Fri, 30 Aug 2019 06:59:21 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v2 5/8] lib: vdso: Remove checks on return value for 32 bit
 vDSO
Date: Fri, 30 Aug 2019 14:58:59 +0100
Message-Id: <20190830135902.20861-6-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830135902.20861-1-vincenzo.frascino@arm.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_065924_473058_9D8BCB09 
X-CRM114-Status: GOOD (  11.23  )
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

Since all the architectures that support the generic vDSO library have
been converted to support the 32 bit fallbacks it is not required
anymore to check the return value of __cvdso_clock_get*time32_common()
before updating the old_timespec fields.

Remove the related checks from the generic vdso library.

Cc: Thomas Gleixner <tglx@linutronix.de>
CC: Andy Lutomirski <luto@kernel.org>
References: c60a32ea4f45 ("lib/vdso/32: Provide legacy syscall fallbacks")
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 lib/vdso/gettimeofday.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 2c4b311c226d..d5bc16748f81 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -129,10 +129,10 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 	if (unlikely(ret))
 		return clock_gettime32_fallback(clock, res);
 
-	if (likely(!ret)) {
-		res->tv_sec = ts.tv_sec;
-		res->tv_nsec = ts.tv_nsec;
-	}
+	/* For ret == 0 */
+	res->tv_sec = ts.tv_sec;
+	res->tv_nsec = ts.tv_nsec;
+
 	return ret;
 }
 #endif /* BUILD_VDSO32 */
@@ -238,10 +238,10 @@ __cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
 	if (unlikely(ret))
 		return clock_getres32_fallback(clock, res);
 
-	if (likely(!ret)) {
-		res->tv_sec = ts.tv_sec;
-		res->tv_nsec = ts.tv_nsec;
-	}
+	/* For ret == 0 */
+	res->tv_sec = ts.tv_sec;
+	res->tv_nsec = ts.tv_nsec;
+
 	return ret;
 }
 #endif /* BUILD_VDSO32 */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
