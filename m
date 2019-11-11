Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88AF7D95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYqCwlZOiIWQQ7KXyCplXQTEYqFwqxkUthDXx+5x1+E=; b=ebS1dg4ti305Dy
	hfpCs/6UzIDCGNW3jIw7fyb7OpLfOHVCf/UKsqnwAtqe5+wHI5Q3Bf1xzBMia6FiBA1vmvO8VrMwp
	s84jYlVTXmCDXVXnO9/MrjG8+BTzqZd8MtU+KWz0KfWaVAsqAAuFxDTo2WI5RlNIktSv+PLk/b1YT
	LdP7uJ2/g+4QUxu7rIWOlOTYbopF+BWqL1Xi3fo3RLsRv3gpm4yL+y0Bwtpupx/kydatDwwIVln9C
	RrVm8TnSiTovl2zAdPb0EyitcQO8LSzLvauYy3e4ey9QEP2bYUYPNHeLFPz83nQNm/IyiGst/wh0S
	cgKOuXlK6D3qMS2+RRXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEtK-0004gU-WA; Mon, 11 Nov 2019 18:58:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEtC-0004fc-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:58:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AA3521655;
 Mon, 11 Nov 2019 18:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573498693;
 bh=c73pM0vMfB+nZzLpqXcyf8WgkHue4kWXssjUlDgME5o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pyWXGoqv917xMNMv9FPxldo8lUrIwkUUBU8lwct6VhjC3sAidO54rBIghe+1P95bq
 8xab4n12FSl2aI/gDoHEwVr6Buk+NPxoIhh1qpX/Ag7Nv3Wr1WGQV1tzM0CC+RbmP7
 7+MSiHS8e/HPZGe9sGhego8IevAdwmj5IqqfDmlM=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.3 191/193] timekeeping/vsyscall: Update VDSO data
 unconditionally
Date: Mon, 11 Nov 2019 19:29:33 +0100
Message-Id: <20191111181515.176484931@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111181459.850623879@linuxfoundation.org>
References: <20191111181459.850623879@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105814_838947_3BF38E30 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 stable@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andy Lutomirski <luto@kernel.org>, Huacai Chen <chenhc@lemote.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Huacai Chen <chenhc@lemote.com>

[ Upstream commit 52338415cf4d4064ae6b8dd972dadbda841da4fa ]

The update of the VDSO data is depending on __arch_use_vsyscall() returning
True. This is a leftover from the attempt to map the features of various
architectures 1:1 into generic code.

The usage of __arch_use_vsyscall() in the actual vsyscall implementations
got dropped and replaced by the requirement for the architecture code to
return U64_MAX if the global clocksource is not usable in the VDSO.

But the __arch_use_vsyscall() check in the update code stayed which causes
the VDSO data to be stale or invalid when an architecture actually
implements that function and returns False when the current clocksource is
not usable in the VDSO.

As a consequence the VDSO implementations of clock_getres(), time(),
clock_gettime(CLOCK_.*_COARSE) operate on invalid data and return bogus
information.

Remove the __arch_use_vsyscall() check from the VDSO update function and
update the VDSO data unconditionally.

[ tglx: Massaged changelog and removed the now useless implementations in
  	asm-generic/ARM64/MIPS ]

Fixes: 44f57d788e7deecb50 ("timekeeping: Provide a generic update_vsyscall() implementation")
Signed-off-by: Huacai Chen <chenhc@lemote.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Paul Burton <paul.burton@mips.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org
Link: https://lkml.kernel.org/r/1571887709-11447-1-git-send-email-chenhc@lemote.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/vdso/vsyscall.h | 7 -------
 include/asm-generic/vdso/vsyscall.h    | 7 -------
 kernel/time/vsyscall.c                 | 9 +++------
 3 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/vsyscall.h b/arch/arm64/include/asm/vdso/vsyscall.h
index 0c731bfc7c8c7..0c20a7c1bee50 100644
--- a/arch/arm64/include/asm/vdso/vsyscall.h
+++ b/arch/arm64/include/asm/vdso/vsyscall.h
@@ -30,13 +30,6 @@ int __arm64_get_clock_mode(struct timekeeper *tk)
 }
 #define __arch_get_clock_mode __arm64_get_clock_mode
 
-static __always_inline
-int __arm64_use_vsyscall(struct vdso_data *vdata)
-{
-	return !vdata[CS_HRES_COARSE].clock_mode;
-}
-#define __arch_use_vsyscall __arm64_use_vsyscall
-
 static __always_inline
 void __arm64_update_vsyscall(struct vdso_data *vdata, struct timekeeper *tk)
 {
diff --git a/include/asm-generic/vdso/vsyscall.h b/include/asm-generic/vdso/vsyscall.h
index e94b19782c92f..ce41032086193 100644
--- a/include/asm-generic/vdso/vsyscall.h
+++ b/include/asm-generic/vdso/vsyscall.h
@@ -25,13 +25,6 @@ static __always_inline int __arch_get_clock_mode(struct timekeeper *tk)
 }
 #endif /* __arch_get_clock_mode */
 
-#ifndef __arch_use_vsyscall
-static __always_inline int __arch_use_vsyscall(struct vdso_data *vdata)
-{
-	return 1;
-}
-#endif /* __arch_use_vsyscall */
-
 #ifndef __arch_update_vsyscall
 static __always_inline void __arch_update_vsyscall(struct vdso_data *vdata,
 						   struct timekeeper *tk)
diff --git a/kernel/time/vsyscall.c b/kernel/time/vsyscall.c
index 4bc37ac3bb052..5ee0f77094107 100644
--- a/kernel/time/vsyscall.c
+++ b/kernel/time/vsyscall.c
@@ -110,8 +110,7 @@ void update_vsyscall(struct timekeeper *tk)
 	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
 	vdso_ts->sec	+= __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);
 
-	if (__arch_use_vsyscall(vdata))
-		update_vdso_data(vdata, tk);
+	update_vdso_data(vdata, tk);
 
 	__arch_update_vsyscall(vdata, tk);
 
@@ -124,10 +123,8 @@ void update_vsyscall_tz(void)
 {
 	struct vdso_data *vdata = __arch_get_k_vdso_data();
 
-	if (__arch_use_vsyscall(vdata)) {
-		vdata[CS_HRES_COARSE].tz_minuteswest = sys_tz.tz_minuteswest;
-		vdata[CS_HRES_COARSE].tz_dsttime = sys_tz.tz_dsttime;
-	}
+	vdata[CS_HRES_COARSE].tz_minuteswest = sys_tz.tz_minuteswest;
+	vdata[CS_HRES_COARSE].tz_dsttime = sys_tz.tz_dsttime;
 
 	__arch_sync_vdso_data(vdata);
 }
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
