Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D6B55450
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5W/fBZFU4nxw4Alx6qgA85aJ37hYLR9Q5cagfFIm9A=; b=kuXhW3O3fIJqt6
	62j1eDLLektnj6tT7eBw/8ryhTDxLLYx0vvYxYr9jO/nc5I88F8T0ycUNJACA5C8Ak48gf+Fg2vWX
	BccE/Cgawf3JlAL97ku5AqGkE/pBiNAqS1Cf03ubYFn62tq83bNw5m8B/i17vZcpGtd0p9VCOXSZX
	zxvghXFOs91ody8e0Aqor7pJ7ApOAsTUC3I4lJlN/tXPUOFvrFlp0Mg3m6oDR+OUctwvmlVN0CJCL
	Lx+WOQ2gfmscwqHVK9PDaQxHqcjxegMp8BxCjIdyRgG5+WH5qKZ2RyHghMnkxHpOGFiZAOLZW23Vr
	3qKYL8/yAItFwaoYaL3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfo9f-0003s8-60; Tue, 25 Jun 2019 16:18:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfo9T-0003rh-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:18:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 916D1360;
 Tue, 25 Jun 2019 09:18:34 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F12313F718;
 Tue, 25 Jun 2019 09:18:31 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH 1/3] lib/vdso: Delay mask application in do_hres()
Date: Tue, 25 Jun 2019 17:18:02 +0100
Message-Id: <20190625161804.38713-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190624133607.GI29497@fuggles.cambridge.arm.com>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_091835_564039_F08D7477 
X-CRM114-Status: GOOD (  10.79  )
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
Cc: shuah@kernel.org, andre.przywara@arm.com, arnd@arndb.de,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux@armlinux.org.uk, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, 0x7f454c46@gmail.com,
 linux@rasmusvillemoes.dk, tglx@linutronix.de, sthotton@marvell.com,
 pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

do_hres() in the vDSO generic library masks the hw counter value
immediately after reading it.

Postpone the mask application after checking if the syscall fallback is
enabled, in order to be able to detect a possible fallback for the
architectures that have masks smaller than ULLONG_MAX.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 lib/vdso/gettimeofday.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index ef28cc5d7bff..ee1221ba1d32 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -35,12 +35,12 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
 
 	do {
 		seq = vdso_read_begin(vd);
-		cycles = __arch_get_hw_counter(vd->clock_mode) &
-			vd->mask;
+		cycles = __arch_get_hw_counter(vd->clock_mode);
 		ns = vdso_ts->nsec;
 		last = vd->cycle_last;
 		if (unlikely((s64)cycles < 0))
 			return clock_gettime_fallback(clk, ts);
+		cycles &= vd->mask;
 		if (cycles > last)
 			ns += (cycles - last) * vd->mult;
 		ns >>= vd->shift;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
