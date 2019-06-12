Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2AA42D83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7azl5XiP3qJIBAm8K1/r8M6ejLOZXS973R6rrfCOnxU=; b=GnTBeQHFOVxyx6
	Q29y6dibgAyWJBH97qgYAEalvslDYzemsihu3VEfYgwFSVFcAC+fa5d3kUeAAOxG7s6WXM5aQDK08
	38cCisAz/+U6iqBK6dh8DW51RgoFu2fgBdCROW7jMCK/JXdN4qtTyJZZ9od6YEHig/iwoTtK8sXE2
	Vyau6tYxBrA5tq8KIqDlUmSFJpt4+O/vUBNi9E6OmJ2MMa7vWISGLppgK1qZb4QQYvsFCIMSYBu/n
	56/QcoaoG2KWSLij9WZW2RdbZnnVXHHecXE7L/wsG04AipjgVfJHx/pdSXKMZTQDS6fH88I0xT5IV
	4iEP7nQWgz70uDZaK88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb74y-0001XF-P9; Wed, 12 Jun 2019 17:30:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb721-0006DI-TT
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32816C86;
 Wed, 12 Jun 2019 10:27:29 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DDC233F246;
 Wed, 12 Jun 2019 10:27:27 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 09/10] arm64: mm: Tweak PAGE_OFFSET logic
Date: Wed, 12 Jun 2019 18:26:57 +0100
Message-Id: <20190612172658.28522-10-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102730_372429_C811A68E 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces _PAGE_OFFSET(va) to allow for computing the
largest possible direct linear map for use with 48/52-bit selectable
kernel VAs.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/memory.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d0fe2fa9169d..d3932463822c 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -55,8 +55,9 @@
  * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
-#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
-	(UL(1) << VA_BITS) + 1)
+#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
+					(UL(1) << (va)) + 1)
+#define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
