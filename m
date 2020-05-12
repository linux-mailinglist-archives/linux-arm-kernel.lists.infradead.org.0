Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9E41CF381
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GAWdfbl9hT57Uiy7PWohdFpABq0uzOcF47v5OwU9fpc=; b=jqnGzjAVc3xMlP
	jAswQFpzoHL1WAwW2asGBmWFB4uuPW1sr5mZNzjS6AvpNz40gi4RX72g0KfuKVFZye7KyoNbE7N9z
	ZA3pUWfYOkupgNDrbRErVbXMpl4YsyuDyz4Wz+u1lpn7DDoGzjF+KTeXHhRQJpn9IM6IK+PZXla/K
	oxHKXxgbPbv7Ka9BCXHms0kn7C5cx+bPlPe9AHvZ7AywFY48xma3i4AZM3PPHgXTXMbKV9tx3ACFX
	wMkTDg4FxfmdGLK49cO2hUFGNsUYKfZ64EB7ovP6m8lFIVCShlqladfotnbPtZArFMrc4PggPZ4pY
	3FKMATNfBOGyFBgrMHPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTGW-0000e9-4k; Tue, 12 May 2020 11:40:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTGM-0000dn-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:39:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 865F720674;
 Tue, 12 May 2020 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589283594;
 bh=0RcGFc6GSsO4EVnFZXiVOcDoMo+g1C4u2yJnOoC5+Yw=;
 h=From:To:Cc:Subject:Date:From;
 b=Vg+VA7NG+lK3UeTPEsWKA2L2w31nYO7cbBCe9q8SuSKkmcK5GWuVjs86pTC3TqIdm
 wSc4oF2wxxxKP/LtS+pZYDI7mRagbWc3wJgwj0ax4ZZnvEt+rRoMqOxr7f+FmKfeBG
 gZl8lOALcNjfIzZzmufn4hCOCSVndjZRn/qra3bc=
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: bti: Fix support for userspace only BTI
Date: Tue, 12 May 2020 12:39:50 +0100
Message-Id: <20200512113950.29996-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_043954_987055_38C66177 
X-CRM114-Status: GOOD (  10.73  )
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
 arch/arm64/include/asm/pgtable-prot.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 310690332896..2e7e0f452301 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -32,7 +32,15 @@ extern bool arm64_use_ng_mappings;
 #define PTE_MAYBE_NG		(arm64_use_ng_mappings ? PTE_NG : 0)
 #define PMD_MAYBE_NG		(arm64_use_ng_mappings ? PMD_SECT_NG : 0)
 
+/*
+ * If we have userspace only BTI we don't want to mark kernel pages
+ * guarded even if the system does support BTI.
+ */
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
