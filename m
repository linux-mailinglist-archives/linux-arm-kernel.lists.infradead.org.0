Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E381C8B89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BZeX9NUamuT/QnDIAQljO3OaQRb+pdurv9/H+o3mRmU=; b=bO1gkdz01qOBNt
	ORvf7B2P7JuJQMeOHe2KAjLdT5N9ptdtwfEeHaSW2ERi4jsVIZRiff87YDfbvwVShWaKvi/xTM9EG
	d4z1EVtaV2Gg46kmT+0nKdZrb+kRC++yTe/rdrHYlOIeN76EoM3lD56fQedNDXfeZrBD8MJGC40E3
	rS/i6oq6e1gV1S0mBA6xc13GH4y8eWMSNUFTm+UBHaFylZ8wbQPx/sFUzpbRsehr5NiVEZ6nNsIbg
	L9dsd3vJu1cnen+ZMXUnLEUOqLMkH4vnIFejG8joeCmuUcJldkN6SZC/ff3Xe5An6Bw7LlcNnWVl4
	nrtZ+QbqKv/BthaZ2EZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfpf-00038h-C1; Wed, 02 Oct 2019 14:42:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfpT-00036Z-Da
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:42:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5F5F28;
 Wed,  2 Oct 2019 07:42:07 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABD493F706;
 Wed,  2 Oct 2019 07:42:06 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/6] arm64: vdso32: Address various issues
Date: Wed,  2 Oct 2019 15:41:50 +0100
Message-Id: <20191002144156.2174-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_074211_502864_0669F294 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

v4 of the series contains a cleanup of lib/vdso Kconfig as well since
CROSS_COMPILE_COMPAT_VDSO is not required anymore by any architecture.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Reported-by: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

[1] https://www.spinics.net/lists/kernel/msg3260702.html

---

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

 arch/arm64/Makefile                          | 18 +++--------
 arch/arm64/include/asm/vdso/compat_barrier.h |  2 +-
 arch/arm64/include/asm/vdso_datapage.h       | 33 --------------------
 arch/arm64/kernel/vdso/gettimeofday.S        |  0
 arch/arm64/kernel/vdso32/Makefile            | 14 ++++++---
 lib/vdso/Kconfig                             |  9 ------
 6 files changed, 15 insertions(+), 61 deletions(-)
 delete mode 100644 arch/arm64/include/asm/vdso_datapage.h
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
