Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3FBFB0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+e6xONEnJRoQXDbg8pQbUQoQQnBfpid3Ys6/bNLehk=; b=VOwj34+HOXJ0Jk
	uCQtFgktN3TMwV9WNPncqZ5e3U5tWWKECFMR8LuxA34Gytmr2ufp+XyXdF4uRCxRqPw5agHKa2qnA
	wYIAGjHbBhO7n2mQ4j0ueczkzo7x2rNAjfpoXpT50aw28JzO7C+TZaWaoztVfgUIEP5rzKoHsEY3w
	8AEj9ZlNHSlvO+ennmk8k/QorxlI96xEO/A1BZhL3qps+F4m7OtNIWQO6QuA6nXL0RiRw3y+3Dms6
	79Auby5Pw/vjseBgG198l2YjaEoC+xA/Vs0NHW26RCThqzxgBjYO5BsxuJ7YS+mC7dEzO/CmkPiun
	kOsbqSFbvCLQ+0rbxu3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbYX-0006sS-9b; Thu, 26 Sep 2019 21:44:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbYJ-0006rT-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:43:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F21AA337;
 Thu, 26 Sep 2019 14:43:54 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D28023F739;
 Thu, 26 Sep 2019 14:43:53 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5]arm64: vdso32: Address various issues
Date: Thu, 26 Sep 2019 22:43:37 +0100
Message-Id: <20190926214342.34608-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_144355_738903_C4780792 
X-CRM114-Status: GOOD (  10.14  )
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
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

this patch series is meant to address the various compilation issues you
reported about arm64 vdso32.

Please let me know if there is still something missing.

Thanks,
Vincenzo

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>

---

v3:
   - Exposed COMPATCC
   - Addressed Review Comments

v2:
   - Fixed binutils detection
   - Addressed review comments

Vincenzo Frascino (5):
  arm64: vdso32: Introduce COMPAT_CC_IS_GCC
  arm64: vdso32: Detect binutils support for dmb ishld
  arm64: vdso32: Fix compilation warning
  arm64: Remove gettimeofday.S
  arm64: vdso32: Remove jump label config option in Makefile

 arch/arm64/Kconfig                           |  5 ++++-
 arch/arm64/Makefile                          | 18 +++++-------------
 arch/arm64/include/asm/memory.h              |  3 +++
 arch/arm64/include/asm/vdso/compat_barrier.h |  2 +-
 arch/arm64/kernel/vdso/gettimeofday.S        |  0
 arch/arm64/kernel/vdso32/Makefile            | 14 +++++++++-----
 6 files changed, 22 insertions(+), 20 deletions(-)
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
