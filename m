Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C87BF07B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UeGlO8GemSMKRjA6armQDOZz1F9KVPdcKmo8er05I9U=; b=tlKsDspEqN3pja53LPz8LLbC1Q
	6KiTyNoDmNWu6zO4OhIieppaI5yCUW9a7YI/CIRI6hg3etYlmCdgfaXmu4rYAX4f/DLJQlfNPp+lX
	iqtiGQrzEeN1fYjXKbv7XTyzU0VYbgK2aiBCGNT9HsziAMLM80IAHs/vOEDrGFBQiPrmQ+LkzAYqq
	R06zOy+OwR3+JQixBpizwDCjKzTgwauabS67dfzCk+N+3DG2nm+p+c7wUAqD9dWnZHCDu8jNvuH6p
	kLNHEvWX3mkcoEfZc23lTcLtGn3jn/zt2QBsgRjsqFgFU9tzSeZRPJWz9YM7oxZzofIxFqVn3Bkh5
	k/yRlfSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS63O-0007EC-MY; Tue, 05 Nov 2019 21:07:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5wB-0007fU-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:29 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C32EB21D6C;
 Tue,  5 Nov 2019 21:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987627;
 bh=HZUHLYdRGJUrgy226Rwadpm2bQuFrlaAit8XjlBcYu0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mls0iUz0r7fkkT/MStZ3Y20s1m64DxAeRn1c8TpZmUpBeZfsG2cXe6/oBrUbipAph
 Rsm7Qa/R8cDw8+8XoTdDjc1RAAC3SkAzvpQhEPCiiq9pV5y4qavA4bvEO6wnTz+GvM
 oNf7M8De3YnPAzpFS0w70rfy2s/+2jqzu8ElpeL8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 31/53] ARM: spectre-v1: add
 array_index_mask_nospec() implementation
Date: Tue,  5 Nov 2019 21:58:24 +0100
Message-Id: <20191105205846.1394-32-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130027_955324_F739DE70 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 1d4238c56f9816ce0f9c8dbe42d7f2ad81cb6613 upstream.

Add an implementation of the array_index_mask_nospec() function for
mitigating Spectre variant 1 throughout the kernel.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/barrier.h | 21 ++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
index edd9e633a84b..8514b70704de 100644
--- a/arch/arm/include/asm/barrier.h
+++ b/arch/arm/include/asm/barrier.h
@@ -108,5 +108,26 @@ do {									\
 #define smp_mb__before_atomic()	smp_mb()
 #define smp_mb__after_atomic()	smp_mb()
 
+#ifdef CONFIG_CPU_SPECTRE
+static inline unsigned long array_index_mask_nospec(unsigned long idx,
+						    unsigned long sz)
+{
+	unsigned long mask;
+
+	asm volatile(
+		"cmp	%1, %2\n"
+	"	sbc	%0, %1, %1\n"
+	CSDB
+	: "=r" (mask)
+	: "r" (idx), "Ir" (sz)
+	: "cc");
+
+	return mask;
+}
+#define array_index_mask_nospec array_index_mask_nospec
+#endif
+
+#include <asm-generic/barrier.h>
+
 #endif /* !__ASSEMBLY__ */
 #endif /* __ASM_BARRIER_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
