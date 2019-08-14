Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AA28D4B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wn1alkuugXTjBK7WzXiu3mCg16nA3kspfayqotmfoQ4=; b=Ks2
	YriUTCbxYw1pA1/iS1rkd4kkHtw4oT5Rgi+7OK2fm0/2dAwc12koy8jaKl/zN8LKlUB9yVAVjXi0U
	76fyJTcmrWoDUFUuxGDNaoCvBev5AND9u6D5bHmZoBKPiq/zLoEglwu0LJ+5LPVP0tIF09yblT4mW
	aQ6PhO5UdDC3wexYYoOgaD4DRLMhKrwP3jBS7rzxvThwnu5HNr0wCpa8j+xcAfIwPBW5dSLxdj1Xc
	U9TtSpi/e4I/Zr65HSoMXXeRiippbZr7/b4mKPjEbtBR943Eg+yiM0xzogmM7Pxn+Y1WpgZly1dsL
	ER3MqaiE/sXvJEgky0dkDGR06tkyCYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtLV-0004NA-8O; Wed, 14 Aug 2019 13:29:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtKx-0004C2-Tg
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81B9928;
 Wed, 14 Aug 2019 06:29:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AA7123F706;
 Wed, 14 Aug 2019 06:29:09 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: memory: VA_START fixups
Date: Wed, 14 Aug 2019 14:28:46 +0100
Message-Id: <20190814132848.24295-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_062912_076773_BB577DEF 
X-CRM114-Status: UNSURE (   9.09  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

These patches address my concerns with the new VA_START semantic as I
spotted while reviewing Will's 52-bit VA cleanup. The first patch
corrects the newly broken usage of VA_START, and the second renames
VA_START to PAGE_END to make the new semantic clearer.

Both patches are based on the arm64 for-next/52-bit-kva branch, and I've
given a 52-bit VA configuration a build+boot test (on HW without 52-bit
VA support).

Thanks,
Mark.

Mark Rutland (2):
  arm64: memory: fix flipped VA space fallout
  arm64: memory: rename VA_START to PAGE_END

 arch/arm64/include/asm/memory.h  | 20 ++++++++++----------
 arch/arm64/include/asm/pgtable.h |  4 ++--
 arch/arm64/kernel/hibernate.c    |  2 +-
 arch/arm64/mm/dump.c             |  8 ++++----
 arch/arm64/mm/fault.c            |  2 +-
 arch/arm64/mm/kasan_init.c       |  2 +-
 arch/arm64/mm/mmu.c              |  4 ++--
 7 files changed, 21 insertions(+), 21 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
