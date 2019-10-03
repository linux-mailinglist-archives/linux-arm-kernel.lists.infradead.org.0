Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894F7CAD94
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujlU4oRfC/3cMKRCgcdDtGWq/ob8Iemu2ph9NwLltaw=; b=YkKnFYAD9+7+HV
	+BNGfZNm6wOLlqHGg8kXR+jOgUGPATTEbMhODUHfIdpESHyDaO5POwd5itfjUQfj+Lap5VhU5yy88
	qBINICWkqTI1RmPVAiM29+vdKUlm/UHKOFt8BD19/vivDEaUrWXOwN0LKvVkFEX782s/qvVNULaFI
	CA2SYSwGw/60HXZb/4IQzY6sx1YKod1Q3ihRXEOBboNHBtGNg8XfXRnQyL9pywZXBVw1zFYHr9EIj
	Z0YBmglbqksgNo3YytPc4KoMiltmBDlmt4QmqWmgBhi6BdT1J6g/7o0Q8eyIrqXvHoJFyZVc/DFN5
	mgaZFP1jK/pgWETzJDrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5Dn-0007o1-Bg; Thu, 03 Oct 2019 17:48:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5Dd-0007nF-8D
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:48:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2E7E1000;
 Thu,  3 Oct 2019 10:48:48 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 79DDD3F739;
 Thu,  3 Oct 2019 10:48:47 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/6] arm64: vdso32: Address various issues
Date: Thu,  3 Oct 2019 18:48:32 +0100
Message-Id: <20191003174838.8872-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_104849_335842_7A5E85C9 
X-CRM114-Status: GOOD (  10.68  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is meant to address the various compilation issues
reported recently for arm64 vdso32 [1].

From v4, the series contains a cleanup of lib/vdso Kconfig as well since
CROSS_COMPILE_COMPAT_VDSO is not required anymore by any architecture.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Reported-by: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

[1] https://www.spinics.net/lists/kernel/msg3260702.html

---

v5:
  - Add a check on empty CROSS_COMPILE_COMPAT

v4:
  - Drop __arm64__ workaround
  - Remove COMPAT_CC_IS_GCC check
  - Remove unused configuration parameter from lib/vdso
  - Address Review Comments

v3:
  - Exposed COMPATCC
  - Addressed Review Comments
 
v2:
  - Fixed binutils detection
  - Addressed review comments

Vincenzo Frascino (6):
  arm64: vdso32: Fix syncconfig errors.
  arm64: vdso32: Detect binutils support for dmb ishld
  arm64: Remove gettimeofday.S
  arm64: vdso32: Remove jump label config option in Makefile
  arm64: Remove vdso_datapage.h
  lib: vdso: Remove CROSS_COMPILE_COMPAT_VDSO

 arch/arm64/Kconfig                           |  5 ++-
 arch/arm64/Makefile                          | 18 +++--------
 arch/arm64/include/asm/vdso/compat_barrier.h |  2 +-
 arch/arm64/include/asm/vdso_datapage.h       | 33 --------------------
 arch/arm64/kernel/vdso/gettimeofday.S        |  0
 arch/arm64/kernel/vdso32/Makefile            | 14 ++++++---
 lib/vdso/Kconfig                             |  9 ------
 7 files changed, 19 insertions(+), 62 deletions(-)
 delete mode 100644 arch/arm64/include/asm/vdso_datapage.h
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
