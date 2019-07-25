Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FF574789
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 08:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SG+LjaDHuJJLDob3csCLhw9h51NTOnJ5BO4EmGRoEa4=; b=Xvp
	ra7xHjwTOi/pXxy0b+gR1UcBLu/AyOmfNy0HsqxkMCalqr4fPiEiQR78QyL0OrNRTVbrqB/YYWfiM
	OHV5rP5bCvbYz6bYh4A7Hk+kgSRJJzW584fcNf7784VGV10Kkwn30YW3DXVZYBOv1Izo29ez15z2u
	Z4zmLYkjIt62CEXJJT+RsOHR2Mw5QFCfTjBdAMQnKFWqmvZ9BkglHFauYF9nbtwcl6Ntn9Ka8cQnE
	RZC1sjkXd0fQ84rpl1mT0Csi8erN0DNmXk/NkILbE5xv3q+55rCQAFLjhuf0/qq/sjN2OMPzZIi8D
	68J4QbmDfnwYEmplAXyHDMdzX3r8thQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqXg3-0000bW-Na; Thu, 25 Jul 2019 06:56:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqXfo-0000aM-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 06:56:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1CCBE344;
 Wed, 24 Jul 2019 23:56:18 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.109])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4FEA03F71F;
 Wed, 24 Jul 2019 23:58:17 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC] mm/debug: Add tests for architecture exported page table helpers
Date: Thu, 25 Jul 2019 12:25:22 +0530
Message-Id: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_235620_524398_8A04B545 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Kees Cook <keescook@chromium.org>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Michal Hocko <mhocko@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Price <Steven.Price@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds a test validation for architecture exported page table
helpers. Patch in the series add basic transformation tests at various
level of the page table.

This test was originally suggested by Catalin during arm64 THP migration
RFC discussion earlier. Going forward it can include more specific tests
with respect to various generic MM functions like THP, HugeTLB etc and
platform specific tests.

https://lore.kernel.org/linux-mm/20190628102003.GA56463@arrakis.emea.arm.com/

Issues:

Does not build on arm64 as a module and fails with following errors. This
is primarily caused by set_pgd() called from pgd_clear() and pgd_populate().

ERROR: "set_swapper_pgd" [lib/test_arch_pgtable.ko] undefined!
ERROR: "swapper_pg_dir" [lib/test_arch_pgtable.ko] undefined!

These symbols need to be visible for driver usage or will have to disable
loadable module option for this test on arm64 platform.

Testing:

Build and boot tested on arm64 and x86 platforms. While arm64 clears all
these tests, following errors were reported on x86.

1. WARN_ON(pud_bad(pud)) in pud_populate_tests()
2. WARN_ON(p4d_bad(p4d)) in p4d_populate_tests()

I would really appreciate if folks can help validate this test in other
platforms and report back problems if any. Suggestions, comments and
inputs welcome. Thank you.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <Mark.Brown@arm.com>
Cc: Steven Price <Steven.Price@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sri Krishna chowdary <schowdary@nvidia.com>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (1):
  mm/pgtable/debug: Add test validating architecture page table helpers

 lib/Kconfig.debug       |  14 +++
 lib/Makefile            |   1 +
 lib/test_arch_pgtable.c | 290 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 305 insertions(+)
 create mode 100644 lib/test_arch_pgtable.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
