Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0598BF21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h6I7Ez+meqRhEg1uPuho2kCsgQauDxxMFVoLqfZ6LWY=; b=bVp
	VuU3VmXc97EQwJ81TmODPoBkejMUXLJuNgQchzKQs26AOhQj89sMzy8JiiW+xXIT2uodymrg4DtEh
	PffTG+4x7PEVTlBGJ+9c9GWc6WbuvL9gsC3FdPe/2ndyd+grtPw2+3kmu3eBXLYPVw6KNOxdZ91s/
	FJbHtLgaKex+K6uVki0X34hPLbP7YWIyV9Sld1EkZUFwI7EFp87M6agg2pS0WmbdGpRfBcNXX+q3D
	tNcN4sVViZ2P1b7dE1Ll/Z8L+0OvCO0h1B9NJXp8sLmchC9mLNCrcLrf1U1GjtywQ+Ja2b4q9JQYd
	mgvnLH/XzKj3aa+jENVN38z5x4KLXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaBa-0008OA-7G; Tue, 13 Aug 2019 17:02:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaBG-0008JF-R4
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:01:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 454B0337;
 Tue, 13 Aug 2019 10:01:54 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 244F53F706;
 Tue, 13 Aug 2019 10:01:53 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] Fix issues with 52-bit kernel virtual addressing
Date: Tue, 13 Aug 2019 18:01:41 +0100
Message-Id: <20190813170149.26037-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100154_944287_E3A97C91 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series addresses some issues with 52-bit kernel VAs reported
by Qian Cai and Geert. It's all confined to asm/memory.h and I got a bit
carried away cleaning that thing up so the patches get more worthless
as you go through the series. Still, I'd like to queue this on top of
the 52-bit VA stuff currently sitting in -next.

Although Geert and Steve tested my initial hacks, I dropped the tags
because I've split things up and could've easily broken things again.

Cheers,

Will

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Qian Cai <cai@lca.pw>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>

--->8

Will Deacon (8):
  arm64: memory: Fix virt_addr_valid() using __is_lm_address()
  arm64: memory: Ensure address tag is masked in conversion macros
  arm64: memory: Rewrite default page_to_virt()/virt_to_page()
  arm64: memory: Simplify virt_to_page() implementation
  arm64: memory: Simplify _VA_START and _PAGE_OFFSET definitions
  arm64: memory: Implement __tag_set() as common function
  arm64: memory: Add comments to end of non-trivial #ifdef blocks
  arm64: memory: Cosmetic cleanups

 arch/arm64/include/asm/memory.h | 89 ++++++++++++++++++++---------------------
 1 file changed, 44 insertions(+), 45 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
