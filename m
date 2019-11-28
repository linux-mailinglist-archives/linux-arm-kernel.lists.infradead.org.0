Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4382610C7D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:17:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QdrovSY8nGqcpKsyjiz0LGeuK5DX5nAtx7PGjrTHHhs=; b=fN7d4zmrjQfqAS
	UG5u1loabQfEaxy1zH3aRGu7U0iHm3l2YN56BRfCJGtZvBII7JAnHPStyM79jVunyzwc+f3uEbYQu
	EhpjFoIPJ6kQ3BlU1MJMC2acz+0koL3q+xLxV78GP7l1burpBDNoAeXx9c+mOExU15lU0bTCoaCYT
	uMLw18jwfox0hVMNklUreOP0oh4/Tbslh+4kCtAcR2CkHwv5f4TNp+yIKUSW2eBTN205o+64o6GKA
	7o1RueYAeyUMdqpFyvcIp7ctEseQPGhEVAn+ez2pRtYbgETTgsXG1JgkU22oEDeKqbC/opmhcWGgN
	aBKvPt4FqYXyorQwGzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaHnw-00043N-2K; Thu, 28 Nov 2019 11:17:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaHne-00041r-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:17:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC34E1FB;
 Thu, 28 Nov 2019 03:17:29 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBCE73F6C4;
 Thu, 28 Nov 2019 03:17:28 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: tglx@linutronix.de,
	luto@kernel.org,
	marc.w.gonzalez@free.fr
Subject: [PATCH] lib: vdso: Fix sparse warning
Date: Thu, 28 Nov 2019 11:17:19 +0000
Message-Id: <20191128111719.8282-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_031730_677231_A322801D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning in the generic vDSO library:

linux/lib/vdso/gettimeofday.c:224:5: warning: symbol
'__cvdso_clock_getres' was
not declared. Should it be static?

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andrew Lutomirski <luto@kernel.org>
Reported-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
Link: https://www.spinics.net/lists/arm-kernel/msg770849.html
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 lib/vdso/gettimeofday.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index 45f57fd2db64..1d47b34a8ad9 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -221,6 +221,7 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 	return 0;
 }
 
+static __maybe_unused
 int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
 {
 	int ret = __cvdso_clock_getres_common(clock, res);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
