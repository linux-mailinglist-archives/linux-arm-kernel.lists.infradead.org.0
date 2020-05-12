Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF2B1CF17A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qJoCs8GFCfujvajHOhWsm2cHxqbivmsYPIQPZSgaJpY=; b=d0biqRqVK5t8xz
	U7nvF1M04dh7P9Ad9UTrQdunrI+PeNpRPSJZ9Q59WlJZIU9WCUwJU549Pyx7P9KyUiJ7dyXq9YFD+
	ALXT6GqY5LFxpa8NMDZeEJ5Y46Fc/9d1daPsJgmrNjJKWA9l+hddeUtViSlmk7sSvifLWvHlQSzpJ
	JDLO0tiRvFNNANga7p2EMVIQESabQF2iPQqTlE0lOJsLzzjR8CPu/Yx/9LRjt9SsZYw/tR8N4y09O
	vXdNvInMx1aFlzdH8Lws86pXd5IrLenItyJk62YQg4Rhpowru1qx1SgvW9j5ttWvvrlbOgiyNbLTz
	TPjeqP6vy/6evt8sD+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR75-00081q-F0; Tue, 12 May 2020 09:22:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYR6x-00081Q-9D
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:22:04 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55CE320714;
 Tue, 12 May 2020 09:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589275322;
 bh=9ssLo9wzeqya8oOBIE8Gj0vHMP4Ufl6hFUWoX/UARAw=;
 h=From:To:Cc:Subject:Date:From;
 b=axhWyR0kluBnRuDpTJoG9lURKqPngAPgU1fPyKB9dKK9vz3UqGsXWtfBbdHUoCiho
 Q/8aOuUjeVb9YiHhPsOpMXYcJjF/ZvdU/Gt0JO+/yHgF0sPzVgqiISH3RKcKaIjrdy
 gq2316i1iLqsUgb5RhWqB+uovdq+dmWZgeiI1CRs=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: bti: Fix support for userspace only BTI
Date: Tue, 12 May 2020 10:21:55 +0100
Message-Id: <20200512092155.56931-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_022203_343640_AC3135E6 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When setting PTE_MAYBE_GP we check system_supports_bti() but this is
true for systems where only CONFIG_BTI is set causing us to enable BTI
on some kernel text. Add an extra check for the kernel mode option,
using an ifdef due to line length.

Fixes: c8027285e366 (arm64: Set GP bit in kernel page tables to enable BTI for the kernel)
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/pgtable-prot.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 310690332896..3f07a044bdfb 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -32,7 +32,11 @@ extern bool arm64_use_ng_mappings;
 #define PTE_MAYBE_NG		(arm64_use_ng_mappings ? PTE_NG : 0)
 #define PMD_MAYBE_NG		(arm64_use_ng_mappings ? PMD_SECT_NG : 0)
 
+#ifdef CONFIG_ARM64_BTI_KERNEL
 #define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
+#else
+#define PTE_MAYBE_GP		0
+#endif
 
 #define PROT_DEFAULT		(_PROT_DEFAULT | PTE_MAYBE_NG)
 #define PROT_SECT_DEFAULT	(_PROT_SECT_DEFAULT | PMD_MAYBE_NG)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
