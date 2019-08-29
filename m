Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF14FA1FA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QkL+BvYuurOfMH0yfwLLUwVRkSClyo3nfz0EkrrtEgs=; b=TCnLJ8buYdVaJW
	EPAdxbpbPYkTxLDyTJ6no49n7IwtUMAvSy5pw4uredwjlZ7+kfDzTDiwrlv3RN68FOaVJflWdo/2P
	/FFLJRhnDgdLIlKUm0dkTPcgHnDkyYrvoT/Vstzi8+1aDkdqeG+swRAzsf8fmwuHwGl5eyYTXxDqF
	0XnY/YsrFHpwUZbLjjBPgOTGfxBoQVvlCXTh/V8KQRgWUAjmSe6Hrz3QmXEjBeZW1yvu4Irseg4rw
	5G1OZqG9fyj44M4LcYGtdhJon6EM3uQJNttINjKzzH0YYshSDeet3/MQpMcOHXSzYU74auyPfcauZ
	4SjS2nsP2+Rbi5QTzaiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MfY-0001YT-Ti; Thu, 29 Aug 2019 15:49:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfC-0001Xl-HA
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE9EF28;
 Thu, 29 Aug 2019 08:48:41 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 582AE3F718;
 Thu, 29 Aug 2019 08:48:40 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 00/10] arm64: avoid out-of-line ll/sc atomics
Date: Thu, 29 Aug 2019 16:48:24 +0100
Message-Id: <20190829154834.26547-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084842_618825_79073D22 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, natechancellor@gmail.com, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a version five of the patches previously posted by Andrew here:

  v4: http://lkml.kernel.org/r/20190828175009.15457-1-andrew.murray@arm.com

The reason I'm posting this is because I spotted an issue with the above
when queuing it for 5.4 and fixing it ended up with me spinning a few
patches on top.

The basic problem is that by implementing our atomic routines using a
static key to select between the LL/SC and LSE variant, we rely on
CONFIG_JUMP_LABEL and therefore CC_HAS_ASM_GOTO because otherwise the
static key implementation itself is implementing using atomic routines,
which leads to complete disaster.

This patch series builds on top of Andrew's patches, with the following
changes:

  * Tidying up the header files in preparation for...
  * ...making LSE depend on JUMP_LABEL
  * Support for the 'K' constraint when it looks like it works
  * Minor massaging of commit logs

This means that LSE atomics are not available for in-kernel use when
building with a version of clang without 'asm goto' support. I really
don't see a way around this, but I've been told that clang-9 should
have this support so that's at least something.

Will

Cc: Ard.Biesheuvel@arm.com
Cc: peterz@infradead.org
Cc: andrew.murray@arm.com
Cc: mark.rutland@arm.com
Cc: catalin.marinas@arm.com
Cc: robin.murphy@arm.com
Cc: ndesaulniers@google.com
Cc: natechancellor@gmail.com

--->8

Andrew Murray (5):
  jump_label: Don't warn on __exit jump entries
  arm64: Use correct ll/sc atomic constraints
  arm64: atomics: avoid out-of-line ll/sc atomics
  arm64: avoid using hard-coded registers for LSE atomics
  arm64: atomics: Remove atomic_ll_sc compilation unit

Will Deacon (5):
  arm64: lse: Remove unused 'alt_lse' assembly macro
  arm64: asm: Kill 'asm/atomic_arch.h'
  arm64: lse: Make ARM64_LSE_ATOMICS depend on JUMP_LABEL
  arm64: atomics: Undefine internal macros after use
  arm64: atomics: Use K constraint when toolchain appears to support it

 arch/arm64/Kconfig                    |   1 +
 arch/arm64/Makefile                   |   9 +-
 arch/arm64/include/asm/atomic.h       |  93 +++++++-
 arch/arm64/include/asm/atomic_ll_sc.h | 215 +++++++++---------
 arch/arm64/include/asm/atomic_lse.h   | 395 ++++++++++++----------------------
 arch/arm64/include/asm/cmpxchg.h      |  45 +++-
 arch/arm64/include/asm/lse.h          |  49 ++---
 arch/arm64/lib/Makefile               |  19 --
 arch/arm64/lib/atomic_ll_sc.c         |   3 -
 kernel/jump_label.c                   |   4 +-
 10 files changed, 413 insertions(+), 420 deletions(-)
 delete mode 100644 arch/arm64/lib/atomic_ll_sc.c

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
