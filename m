Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D92A78E87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gn4mYjgXwq9b7pwSMNjRRFF/yc5gOLNB7eTOz0gxMQc=; b=JBc
	uQJDVqaVczOlMGgDe3EBkxvwrWOL0Np4Ey+c9Bt5Enl5VToPp4XPKU2i6NasHu3N1e48o7sAi4d1z
	rd95kTcr5rEgVovR/Cy6c0eRy3utgp+HX8kml3lH35VVsLxlfpBs0+zbD2dBy0m3jwrRyWcKy03ko
	ivjzuflazwcb/dToyWjR2fyNd7LIJsszoj011UiXpLxyA5CibgVZQEY5o5ltDfuvS8v7ysfGVECIB
	Rr6PSIOC9rKf6KqtCyi2b5El3I5Jq78qUbApVwIiCA/i0x+dpn1x3okv4VBBkg0ojRZsgXs3WWAVF
	sIrVrJ11qB65VdTWfEKERRAR87igpGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs76I-0002Vz-Dk; Mon, 29 Jul 2019 14:58:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs765-0002VO-T6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:57:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72F4528;
 Mon, 29 Jul 2019 07:57:53 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6ED673F71F;
 Mon, 29 Jul 2019 07:57:52 -0700 (PDT)
From: Julien Thierry <julien.thierry.kdev@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Lower priority mask for GIC_PRIO_IRQON
Date: Mon, 29 Jul 2019 15:57:46 +0100
Message-Id: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_075757_988411_3FD788E9 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: julien.thierry@arm.com, Marc Zyngier <maz@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On a system with two security states, if SCR_EL3.FIQ is set, non-secure
IRQ priorities get shifted to fit the secure view but priority masks
aren't.

On such system, it turns out that GIC_PRIO_IRQON masks the priority of
normal interrupts, which obviously ends up in a hang.

Increase GIC_PRIO_IRQON value (i.e. lower priority) to make sure
interrupts are not blocked by it.

Fixes: bd82d4bd21880b7c ("arm64: Fix incorrect irqflag restore for
       priority masking")
Signed-off-by: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/arch_gicv3.h | 6 ++++++
 arch/arm64/include/asm/ptrace.h     | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

Hopefully the last surprise...

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 79155a8..89e4c8b 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -155,6 +155,12 @@ static inline void gic_pmr_mask_irqs(void)
 	BUILD_BUG_ON(GICD_INT_DEF_PRI < (GIC_PRIO_IRQOFF |
 					 GIC_PRIO_PSR_I_SET));
 	BUILD_BUG_ON(GICD_INT_DEF_PRI >= GIC_PRIO_IRQON);
+	/*
+	 * Need to make sure IRQON allows IRQs when SCR_EL3.FIQ is cleared
+	 * and non-secure PMR accesses are not subject to the shifts that
+	 * are applied to IRQ priorities
+	 */
+	BUILD_BUG_ON((0x80 | (GICD_INT_DEF_PRI >> 1)) >= GIC_PRIO_IRQON);
 	gic_write_pmr(GIC_PRIO_IRQOFF);
 }

diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index b1dd039..1dcf63a 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -30,7 +30,7 @@
  * in the  the priority mask, it indicates that PSR.I should be set and
  * interrupt disabling temporarily does not rely on IRQ priorities.
  */
-#define GIC_PRIO_IRQON			0xc0
+#define GIC_PRIO_IRQON			0xe0
 #define GIC_PRIO_IRQOFF			(GIC_PRIO_IRQON & ~0x80)
 #define GIC_PRIO_PSR_I_SET		(1 << 4)

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
