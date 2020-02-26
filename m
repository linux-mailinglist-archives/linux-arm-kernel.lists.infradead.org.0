Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B0517070E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:06:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaW6KPRjjwm+tpjNkEfArRKnhaCT8UQd4wDqv823XWo=; b=e9rR6S2II63wXA
	UaAdy8TP2ZdBqa+Jgu7sNj4cJekqXZnYrlRPI8hQ25OHsFXm96m9Zr6iH+jau4eGGMJ3CCQ34RvnA
	a768XcM1GHsKGH+bhMMEl8hTQxpquEqlpJxvSElIaKxh+3cvofVy7v5M0G4/ocQaEaaDK667WvAci
	M9zz8WFDweo/JetEh6WmFhq6EQLq8hjqhTOInHKzW8/AjQc+15PzH6h7IXWuYqyIuc/QiXXMp32tz
	SiEj7CkoB9qt6PTM+8QHSAnA3RaiHgy6w3LZXOqKoLwdx/wlrZgNZtc122zHPilsBcmkQEYir1s5Y
	0zVlTT4sKxRzpLt6lG9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j714a-0007Qd-T6; Wed, 26 Feb 2020 18:06:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j713z-0007Es-Ks
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:05:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C290031B;
 Wed, 26 Feb 2020 10:05:37 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 596F53F881;
 Wed, 26 Feb 2020 10:05:36 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/19] arm64: alternative: Allow alternative_insn to always
 issue the first instruction
Date: Wed, 26 Feb 2020 18:05:08 +0000
Message-Id: <20200226180526.3272848-2-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226180526.3272848-1-catalin.marinas@arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100539_735244_AEA9EA38 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are situations where we do not want to disable the whole block
based on a config option, only the alternative part while keeping the
first instruction. Improve the alternative_insn assembler macro to take
a 'first_insn' argument, default 0 to preserve the current behaviour.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/alternative.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index 324e7d5ab37e..44083424d7aa 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -111,7 +111,11 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	.byte \alt_len
 .endm
 
-.macro alternative_insn insn1, insn2, cap, enable = 1
+/*
+ * Disable the whole block if enable == 0, unless first_insn == 1 in which
+ * case insn1 will always be issued but without an alternative insn2.
+ */
+.macro alternative_insn insn1, insn2, cap, enable = 1, first_insn = 0
 	.if \enable
 661:	\insn1
 662:	.pushsection .altinstructions, "a"
@@ -122,6 +126,8 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 664:	.popsection
 	.org	. - (664b-663b) + (662b-661b)
 	.org	. - (662b-661b) + (664b-663b)
+	.elseif \first_insn
+	\insn1
 	.endif
 .endm
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
