Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E085DA1FAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YxMjt8TzVX8l/FUjHVtidu7UegBdfi4LXXyPid6JSHs=; b=qSNmnrcX8RRWIBkMAd00H/F9tN
	ttgUc6lSEbCyIuz8bz5sQUO1WLUhTF6uDcFXfQIBkFmHiifi63XTG7YYChxF1ABLl9EEgdNnXXb0j
	N99ubXQ6HRBHHgU0GwJjQClqi9bDSBSKY8PYhvl1WDMyfHFpshEjNdNM2Mejz4p1mEomfvk+e+b4o
	enivLIb1QyX4T2swpng/0XNMqfFxrIPA1RELXxI5VBw+FnAIMH7H4DxwxoOgu2RBFcxUiEF8ofR8C
	TJRBzJ5riGhF8mMq3B+qfTmRlakSl3BGtR/sJ71VkY3tbrtbrNTb980Y9saDkV6WboockvKV/dEPG
	PQpel2fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mg0-0001tn-9X; Thu, 29 Aug 2019 15:49:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfD-0001Y1-GE
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40EF0337;
 Thu, 29 Aug 2019 08:48:43 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E137D3F718;
 Thu, 29 Aug 2019 08:48:41 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 01/10] jump_label: Don't warn on __exit jump entries
Date: Thu, 29 Aug 2019 16:48:25 +0100
Message-Id: <20190829154834.26547-2-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084843_586742_A59DA86F 
X-CRM114-Status: GOOD (  11.09  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

On architectures that discard .exit.* sections at runtime, a
warning is printed for each jump label that is used within an
in-kernel __exit annotated function:

can't patch jump_label at ehci_hcd_cleanup+0x8/0x3c
WARNING: CPU: 0 PID: 1 at kernel/jump_label.c:410 __jump_label_update+0x12c/0x138

As these functions will never get executed (they are free'd along
with the rest of initmem) - we do not need to patch them and should
not display any warnings.

The warning is displayed because the test required to satisfy
jump_entry_is_init is based on init_section_contains (__init_begin to
__init_end) whereas the test in __jump_label_update is based on
init_kernel_text (_sinittext to _einittext) via kernel_text_address).

Fixes: 19483677684b ("jump_label: Annotate entries that operate on __init code earlier")
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 kernel/jump_label.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/jump_label.c b/kernel/jump_label.c
index df3008419a1d..cdb3ffab128b 100644
--- a/kernel/jump_label.c
+++ b/kernel/jump_label.c
@@ -407,7 +407,9 @@ static bool jump_label_can_update(struct jump_entry *entry, bool init)
 		return false;
 
 	if (!kernel_text_address(jump_entry_code(entry))) {
-		WARN_ONCE(1, "can't patch jump_label at %pS", (void *)jump_entry_code(entry));
+		WARN_ONCE(!jump_entry_is_init(entry),
+			  "can't patch jump_label at %pS",
+			  (void *)jump_entry_code(entry));
 		return false;
 	}
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
