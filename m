Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 966731B4735
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bR4qEEIVWOSEo6wvAYicGzc5SmdwezTox1tCt6hqGhs=; b=iWPj95GwnujTGT
	9szFBUs8YMUaWlkgC/7ERgi1svAsTRUo8W0/B022M6D6xRdFFoU7XjUEH1Qm07yId6QHjc7pdSAev
	Su614oMT26PpGHpYdYu4SZE5EZsw7fT9zG3xEtQ8sgoqn9L4Un1pX+363oABLxxnv2wvlShfe87UU
	HSWUeKuZqp1EDLTpbAm3II041xJnIZqw1xICQvvSKD7e+4SF0DmGAg/4yR9wyaNjY0w2rO075uBIa
	rEcPxDmIRHpW64PDpVbXeIh7rALLWPHNN8Jd/s33h0cVZw4jGtzZNEuf1X6NDEommhDGg/hMcST8r
	JpX5wzp3W8RXlVSyGLCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGK2-0000dX-JE; Wed, 22 Apr 2020 14:25:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGJq-0000bu-53
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 14:25:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5028E30E;
 Wed, 22 Apr 2020 07:25:41 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D8D333F68F;
 Wed, 22 Apr 2020 07:25:39 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-mm@kvack.org
Subject: [PATCH 0/4] arm64: MTE swap and hibernation support
Date: Wed, 22 Apr 2020 15:25:26 +0100
Message-Id: <20200422142530.32619-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_072543_023886_7E1DC241 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Hugh Dickins <hughd@google.com>,
 Steven Price <steven.price@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for swapping and hibernation with MTE tagged memory.
It's based on Catalin's v3 series[1].

To support swap, a new page flag is added which tracks whether a page
has been mapped into user space with MTE enabled (and therefore may have
valid data in the tags). Arch hooks are added to enable the
saving/restoring of these tags (in memory) when the pages are swapped
out.

Hibernation builds on the swap support by simply copying the tags out of
hardware tag storage into normal memory before the hibernation image is
created. On restore the tags are returned to the hardware tag storage.

Feedback on the approach is welcomed.

[1] https://lore.kernel.org/linux-arm-kernel/20200421142603.3894-1-catalin.marinas@arm.com/

Steven Price (4):
  mm: Add PG_ARCH_2 page flag
  mm: Add arch hooks for saving/restoring tags
  arm64: mte: Enable swap of tagged pages
  arm64: mte: Save tags when hibernating

 arch/arm64/Kconfig                |   2 +-
 arch/arm64/include/asm/mte.h      |   6 ++
 arch/arm64/include/asm/pgtable.h  |  44 ++++++++++++
 arch/arm64/kernel/hibernate.c     | 116 ++++++++++++++++++++++++++++++
 arch/arm64/lib/mte.S              |  50 +++++++++++++
 arch/arm64/mm/Makefile            |   2 +-
 arch/arm64/mm/mteswap.c           |  98 +++++++++++++++++++++++++
 fs/proc/page.c                    |   3 +
 include/asm-generic/pgtable.h     |  23 ++++++
 include/linux/kernel-page-flags.h |   1 +
 include/linux/page-flags.h        |   3 +
 include/trace/events/mmflags.h    |   9 ++-
 mm/Kconfig                        |   3 +
 mm/page_io.c                      |   6 ++
 mm/shmem.c                        |   6 ++
 mm/swapfile.c                     |   2 +
 tools/vm/page-types.c             |   2 +
 17 files changed, 373 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/mm/mteswap.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
