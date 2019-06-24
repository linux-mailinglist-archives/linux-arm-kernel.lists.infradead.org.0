Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E9A50CE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orH6YcO1Ild3Q9S0gF2yruxzfaQmoooGCgnxgSBBxe4=; b=CffF88jHlJNwVI
	qtO+lLHrr4W8cNc6CXcSmvAssWFhhIz/T9U0YR2mp9vMuuN5vMdCfVdYAlC9+DQMisGT6R2vbnf3N
	twpyrXn9MoxRi3wFxxP/myfpI2Es+a43pOJ3cbo0CUa5wZqHB+7l6KP06wCGkzGUtcK54f10KF9+8
	3p/2/UP+E1atKv34GIiUHVqjUo8kYkH1JTMsYmQTC37H1TbI2t0/uFXlqilTCIgYnykQ2sIbAl3YT
	4pJRQ4TeL7nPTvyKnnyyAwSgJFmkx5leQUSA+KgSQDB+794az8MUrTfqRbdv0XU2H2C2lnXj1DNqj
	GG+SMqOjIMxSzwEl4klQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPSh-0005d2-CS; Mon, 24 Jun 2019 13:56:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPSQ-0005cP-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:56:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E6DF344;
 Mon, 24 Jun 2019 06:56:29 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D58ED3F71E; Mon, 24 Jun 2019 06:56:26 -0700 (PDT)
Date: Mon, 24 Jun 2019 14:56:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 01/25] kernel: Standardize vdso_datapage
Message-ID: <20190624135624.GB29120@arrakis.emea.arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621095252.32307-2-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_065630_460968_FBD6534F 
X-CRM114-Status: GOOD (  14.94  )
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
Cc: linux-arch@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Shuah Khan <shuah@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:52:28AM +0100, Vincenzo Frascino wrote:
> In an effort to unify the common code for managing the vdso library in
> between all the architectures that support it, this patch tries to
> provide a common format for the vdso datapage.
> 
> As a result of this, this patch generalized the data structures in vgtod.h
> from x86 private includes to general includes (include/vdso).
> 
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Tested-by: Shijith Thotton <sthotton@marvell.com>
> Tested-by: Andre Przywara <andre.przywara@arm.com>

Minor clean-up patch (on top of the tip timers/vdso branch):

------------8<------------------------------
From 2e09fa6fca341b3ec7ecaf0b67a313a167bb4ff2 Mon Sep 17 00:00:00 2001
From: Catalin Marinas <catalin.marinas@arm.com>
Date: Mon, 24 Jun 2019 12:19:23 +0100
Subject: [PATCH] vdso: Remove superfluous #ifdef __KERNEL__ in
 vdso/datapage.h

With the move to UAPI headers, such #ifdefs are no longer necessary.

Fixes: 361f8aee9b09 ("vdso: Define standardized vdso_datapage")
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 include/vdso/datapage.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
index e6eb36c3d54f..2e302c0f41f7 100644
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -2,8 +2,6 @@
 #ifndef __VDSO_DATAPAGE_H
 #define __VDSO_DATAPAGE_H
 
-#ifdef __KERNEL__
-
 #ifndef __ASSEMBLY__
 
 #include <linux/bits.h>
@@ -88,6 +86,4 @@ extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")
 
 #endif /* !__ASSEMBLY__ */
 
-#endif /* __KERNEL__ */
-
 #endif /* __VDSO_DATAPAGE_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
