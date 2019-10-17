Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB3ADA717
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ts0lz2jEGqAbgLyp42gPyA5vGywXKufr65xhOMy/KQ=; b=CgVQgvYpv5MWbl2is2OCpe1H/l
	nkHtdB0jxawF/6gMWvNJtooti5etkKYO7bMYK7Cb/vtmooMcudTOj0cRgjPQoyxkJHns0/qPBWwrS
	culWsl5wmxFsXtgAe0GRN0coCyo+0AcHTl7d/FGDBUgdW+pBYi5hFVVMj5fKcPZFkDru3uOXoWxHo
	jsQ5ZdTak5JAHQzbq73eRb3QTQ3/ouoUHc+6qmq91Ol8hTcBtDTqKs7+g9TkJ0nCZHbd0o/bUMj5c
	itC+dBfDXsBFEJ8VXbKOcSXSNKGhq5U8NYJ++s+gM4m6koCHbqZz0t08Jr0GkOZMDcFaOrYi7yAwS
	2PEuKnPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0yw-0004kD-Le; Thu, 17 Oct 2019 08:18:02 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0wS-0001N6-3b
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:15:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F99B165C;
 Thu, 17 Oct 2019 01:15:17 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D06553F6C4;
 Thu, 17 Oct 2019 01:15:13 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 09/11] arm64: suspend: restore the kernel ptrauth keys
Date: Thu, 17 Oct 2019 13:44:23 +0530
Message-Id: <1571300065-10236-10-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011528_248991_206D0894 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch restores the kernel keys from current task during
cpu resume after the mmu is turned on and ptrauth is enabled.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since RFC v2:
 - New patch to support cpu suspend/resume.

 arch/arm64/kernel/sleep.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index f5b04dd..476e110 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -2,6 +2,7 @@
 #include <linux/errno.h>
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
+#include <asm/asm_pointer_auth.h>
 #include <asm/assembler.h>
 
 	.text
@@ -137,6 +138,11 @@ ENTRY(_cpu_resume)
 	bl	kasan_unpoison_task_stack_below
 #endif
 
+#ifdef CONFIG_ARM64_PTR_AUTH
+	get_current_task x1
+	ptrauth_keys_install_kernel x1, x2, x3, x4
+#endif
+
 	ldp	x19, x20, [x29, #16]
 	ldp	x21, x22, [x29, #32]
 	ldp	x23, x24, [x29, #48]
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
