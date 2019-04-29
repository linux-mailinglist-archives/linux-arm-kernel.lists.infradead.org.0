Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F984E8E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2xRheiedNvHL6t6Eqf0ePVXfbMr2+q/mRYTMT+veusk=; b=nRBjJ+AF1kXjqM
	UGOsPQ3VLp47c0y7nC5jwCnltywHOyJPVlllBqRHei87ml1FEbG6pTSuz+OWma2NTrSeLqqdFDTz9
	z9KgQ7a6L6NJpZDjz77jkQ1OnYKoLO1DRUkReSP0abYbFEu9kTud7FHoEVLpa79bqXfdj9s2V5KEw
	hQm9g6IRBbnpCJD2LcSa+chGJgfNPsC9L+rP83HmLMUcFLUjL9JW9x0/zdVPfz6Qt2gVpVARb3/Uo
	Ui29vY1bBf09vi106Z9hd4mt1RwDEHZopNqwljTsG6A1VYWsqOvJe3iWZP9XZr9KNpsIcFO/b0Jd1
	v/qLcw58a5Czmrlxipvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA42-0007ZJ-NJ; Mon, 29 Apr 2019 17:27:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA3v-0007XF-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:27:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9D0080D;
 Mon, 29 Apr 2019 10:27:28 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 219F83F557;
 Mon, 29 Apr 2019 10:27:27 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: compat: Reduce address limit for 64K pages
Date: Mon, 29 Apr 2019 18:27:13 +0100
Message-Id: <20190429172713.11965-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_102731_146848_F66FD1CF 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of the config option that allows to enable kuser
helpers, it is now possible to reduce TASK_SIZE_32 when these are
disabled and 64K pages are enabled. This extends the compliance with
the section 6.5.8 of the C standard (C99).

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Reported-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
Depends on:
 - arm64: compat: Reduce address limit
 - arm64: compat: Add kuser helpers config option

 arch/arm64/include/asm/processor.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 228af56ece48..fcd0e691b1ea 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -57,7 +57,7 @@
 #define TASK_SIZE_64		(UL(1) << vabits_user)
 
 #ifdef CONFIG_COMPAT
-#ifdef CONFIG_ARM64_64K_PAGES
+#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
 /*
  * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
  * by the compat vectors page.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
