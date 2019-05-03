Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B1512EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8NlLUWX0yzB9SVhtQIKhysUVX7Sf0t8svglhcltUPE=; b=OGSGDt5OQh/Gq/
	AZnPDrc/QqKxfQGSr5nX2pSpybqOsnXlYxu0nPjwlx3rmsCdjvZqZcZwQ1A2Jbjl5VfVOLKgQ9Fbo
	zMX/bWfys9Ljg/gt9ZA2i1AU+k52eROMLCQMG0s+Oh5/4ngEnmNjLEhjV0w4n8CBzw+I7Xy1Ut18S
	oNkU4KCV36E6DPWoCZhUmpgW34EXOrd8l9HB9/mGK2cMtalkYxCOZ7+sreGduuHC9C0yM60cwTdV9
	U4gNuy49SyXrlSDLDv0aege3ZF55vLwHxBHUePBVf2GEVcnDrellvQlVw4KjINF/cPw5sDLTJx34f
	Dy9QoljwIa4ExcK++cEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXqF-0003ZG-Hx; Fri, 03 May 2019 13:03:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo5-0000Tx-7O
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uIa2eHP6OG54anvgk0mf9URVSIK5m2nKp0XWhFlfFxI=; b=g2ekiM6ansOhiinzi/P88QQenX
 4gHu43CA+ssgYvMLPfySdoxcjNkImwtZ4uZQlAMtQbekaDD6s+hmj3osE/oehHIbv2qwUwB7ji8X4
 fkaZoxdoN7Pb3wi1AABWjmgnJFgMMCAbcK3hePEZ/GzEtvkIfF/OZBEnMIGwLYAenJ/DygIqTkm9z
 3hKIfcUDFyMWuuaW6tJvGfcmRXHy4IHUV87Dod64eb7CS2v9c0n1QMZpePpnF0i3302S2uY2qujrx
 z7zI4q2lh5Xo3tlosFA7IwCAKxApjQHIM6Qk4tqIpslQJoTfO8z74QJd2YLDXDwr10jkZn188pPoh
 YYdJGS8Q==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaJ-00028c-QV
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4FA6374;
 Fri,  3 May 2019 05:46:38 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CB823F220;
 Fri,  3 May 2019 05:46:35 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 33/56] KVM: arm64/sve: Clean up UAPI register ID definitions
Date: Fri,  3 May 2019 13:44:04 +0100
Message-Id: <20190503124427.190206-34-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134640_172700_5E0DF8A2 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Currently, the SVE register ID macros are not all defined in the
same way, and advertise the fact that FFR maps onto the nonexistent
predicate register P16.  This is really just for kernel
convenience, and may lead userspace into bad habits.

Instead, this patch masks the ID macro arguments so that
architecturally invalid register numbers will not be passed through
any more, and uses a literal KVM_REG_ARM64_SVE_FFR_BASE macro to
define KVM_REG_ARM64_SVE_FFR(), similarly to the way the _ZREG()
and _PREG() macros are defined.

Rather than plugging in magic numbers for the number of Z- and P-
registers and the maximum possible number of register slices, this
patch provides definitions for those too.  Userspace is going to
need them in any case, and it makes sense for them to come from
<uapi/asm/kvm.h>.

sve_reg_to_region() uses convenience constants that are defined in
a different way, and also makes use of the fact that the FFR IDs
are really contiguous with the P15 IDs, so this patch retains the
existing convenience constants in guest.c, supplemented with a
couple of sanity checks to check for consistency with the UAPI
header.

Fixes: e1c9c98345b3 ("KVM: arm64/sve: Add SVE support to register access ioctl interface")
Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/uapi/asm/kvm.h | 32 ++++++++++++++++++++++---------
 arch/arm64/kvm/guest.c            |  9 +++++++++
 2 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 6963b7e8062b..2a04ef015469 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -35,6 +35,7 @@
 #include <linux/psci.h>
 #include <linux/types.h>
 #include <asm/ptrace.h>
+#include <asm/sve_context.h>
 
 #define __KVM_HAVE_GUEST_DEBUG
 #define __KVM_HAVE_IRQ_LINE
@@ -233,16 +234,29 @@ struct kvm_vcpu_events {
 /* Z- and P-regs occupy blocks at the following offsets within this range: */
 #define KVM_REG_ARM64_SVE_ZREG_BASE	0
 #define KVM_REG_ARM64_SVE_PREG_BASE	0x400
+#define KVM_REG_ARM64_SVE_FFR_BASE	0x600
 
-#define KVM_REG_ARM64_SVE_ZREG(n, i)	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | \
-					 KVM_REG_ARM64_SVE_ZREG_BASE |	\
-					 KVM_REG_SIZE_U2048 |		\
-					 ((n) << 5) | (i))
-#define KVM_REG_ARM64_SVE_PREG(n, i)	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | \
-					 KVM_REG_ARM64_SVE_PREG_BASE |	\
-					 KVM_REG_SIZE_U256 |		\
-					 ((n) << 5) | (i))
-#define KVM_REG_ARM64_SVE_FFR(i)	KVM_REG_ARM64_SVE_PREG(16, i)
+#define KVM_ARM64_SVE_NUM_ZREGS		__SVE_NUM_ZREGS
+#define KVM_ARM64_SVE_NUM_PREGS		__SVE_NUM_PREGS
+
+#define KVM_ARM64_SVE_MAX_SLICES	32
+
+#define KVM_REG_ARM64_SVE_ZREG(n, i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_ZREG_BASE | \
+	 KVM_REG_SIZE_U2048 |						\
+	 (((n) & (KVM_ARM64_SVE_NUM_ZREGS - 1)) << 5) |			\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
+
+#define KVM_REG_ARM64_SVE_PREG(n, i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_PREG_BASE | \
+	 KVM_REG_SIZE_U256 |						\
+	 (((n) & (KVM_ARM64_SVE_NUM_PREGS - 1)) << 5) |			\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
+
+#define KVM_REG_ARM64_SVE_FFR(i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_FFR_BASE | \
+	 KVM_REG_SIZE_U256 |						\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
 
 /* Vector lengths pseudo-register: */
 #define KVM_REG_ARM64_SVE_VLS		(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | \
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 4f7b26bbf671..2e449e1dea73 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -325,6 +325,15 @@ static int sve_reg_to_region(struct sve_state_reg_region *region,
 
 	size_t sve_state_size;
 
+	const u64 last_preg_id = KVM_REG_ARM64_SVE_PREG(SVE_NUM_PREGS - 1,
+							SVE_NUM_SLICES - 1);
+
+	/* Verify that the P-regs and FFR really do have contiguous IDs: */
+	BUILD_BUG_ON(KVM_REG_ARM64_SVE_FFR(0) != last_preg_id + 1);
+
+	/* Verify that we match the UAPI header: */
+	BUILD_BUG_ON(SVE_NUM_SLICES != KVM_ARM64_SVE_MAX_SLICES);
+
 	/* Only the first slice ever exists, for now: */
 	if ((reg->id & SVE_REG_SLICE_MASK) != 0)
 		return -ENOENT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
