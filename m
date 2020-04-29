Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3BF1BE228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P42je5278I/aIiWFUSBxhs5a90yjzM4ZQKCE0tHT/D0=; b=fcw0IYCpyClqoq
	1rTxEpfIjXnOLI8OnfAbKCgu/xafYi+ZzILgErpeq8YuX7ty6vq0dxYPm2wIW7gaE/I3B2FmWJTqW
	fLGlwbOJRWFSPqiGppOCUzFRdu/dy38PaxVQkgprn6l5O0SSkY0NPZFTALFzqTHNdbctIGlvHvjC/
	tYWDo054gz/jbowD5sfQRmUfMaNw0XXZoFpzbTEieyneSpbaL4kLaIyiYZtRE2sxY2gkQRhKLdsRB
	yAySnOd7FycanBeRuSrJxs3fhSs+EWr9ODHboIadvi2pI2laDfz7p2WOKEWr78Z++vwKlV6v1Se1Y
	zQ3wiSwKhAS6JMvekeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToN3-0003vf-9G; Wed, 29 Apr 2020 15:11:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToMq-0003uo-5L
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:11:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C09A01045;
 Wed, 29 Apr 2020 08:11:19 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DADE03F68F;
 Wed, 29 Apr 2020 08:11:18 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: vdso: Add -fasynchronous-unwind-tables to cflags
Date: Wed, 29 Apr 2020 16:10:50 +0100
Message-Id: <20200429151050.31604-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_081120_265139_F56ABA80 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: tamas.zsoldos@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
by default since gcc-8, so now the de facto platform ABI is to allow
unwinding from async signal handlers.

However on bare metal targets (aarch64-none-elf), and on old gcc,
async and sync unwind tables are not enabled by default to avoid
runtime memory costs.

This means if linux is built with a baremetal toolchain the vdso.so
may not have unwind tables which breaks the gcc platform ABI guarantee
in userspace.

Add -fasynchronous-unwind-tables explicitly to the vgettimeofday.o
cflags to address the ABI change.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 77ee40f4c8b7..59555612fb1d 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -35,7 +35,7 @@ UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
 KCOV_INSTRUMENT			:= n
 
-CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny
+CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
 
 ifneq ($(c-gettimeofday-y),)
   CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
