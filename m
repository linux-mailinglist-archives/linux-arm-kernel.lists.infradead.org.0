Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACB078C12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcM22cUNxVnyvSy+VyLoY04D4V9Rq6CjfTd16xc6hZw=; b=VRiNW+DkGQ81Ph
	rCHPLRQSZj0lQYAPC+WAGMqn9DZGd+yCNZqiS0cfwZHSCtC2N3BWRFfuSLyAIIUxncf+6FZYk5ev2
	dLUuKur5LEzWzeYZc3DNI0KbkxO+LQ3PZmBXUFCxy2KQlI/gvLhIRHd43QbKxyU2VQbthJqXgJxuW
	Z88p9tZgWHeoc9VgK9g6dOjcZcmj0oiG5Hbhsh53XLlJuUO+GKOnRa8qgFD4vHOdkUygcIH5kdVMi
	H6wkxgBqLa6z2dS0t3GjLHIqJVE35ZFGmN7aJqapFASTR6mL4Mwbz+Pgwsj42D4Js1QsJI3IVlYqO
	5ygpiQq3kppiDKDUlIwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5Av-0003yn-2p; Mon, 29 Jul 2019 12:54:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5An-0003yK-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:54:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86D1A28;
 Mon, 29 Jul 2019 05:54:41 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9656B3F71F;
 Mon, 29 Jul 2019 05:54:39 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: vdso: Fix Makefile regression
Date: Mon, 29 Jul 2019 13:54:21 +0100
Message-Id: <20190729125421.32482-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <CAGnkfhyT=2kPsiUy-V=aCA_s-C4BXgD++hAZ9ii1h0p94mMVQA@mail.gmail.com>
References: <CAGnkfhyT=2kPsiUy-V=aCA_s-C4BXgD++hAZ9ii1h0p94mMVQA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_055442_049883_FF48E432 
X-CRM114-Status: GOOD (  11.46  )
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
Cc: arnd@arndb.de, will@kernel.org, catalin.marinas@arm.com,
 Matteo Croce <mcroce@redhat.com>, 0x7f454c46@gmail.com, salyzyn@android.com,
 andre.przywara@arm.com, luto@kernel.org, linux@rasmusvillemoes.dk,
 tglx@linutronix.de, sthotton@marvell.com, pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using an old .config in combination with "make oldconfig" can cause
an incorrect detection of the compat compiler:

$ grep CROSS_COMPILE_COMPAT .config
CONFIG_CROSS_COMPILE_COMPAT_VDSO=""

$ make oldconfig && make
arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.
Stop.

Accordingly to the section 7.2 of the GNU Make manual "Syntax of
Conditionals", "When the value results from complex expansions of
variables and functions, expansions you would consider empty may
actually contain whitespace characters and thus are not seen as
empty. However, you can use the strip function to avoid interpreting
whitespace as a non-empty value."

Fix the issue adding strip to the CROSS_COMPILE_COMPAT string
evaluation.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Matteo Croce <mcroce@redhat.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index bb1f1dbb34e8..61de992bbea3 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -52,7 +52,7 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
 
   ifeq ($(CONFIG_CC_IS_CLANG), y)
     $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
-  else ifeq ($(CROSS_COMPILE_COMPAT),)
+  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
     $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
   else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
     $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
