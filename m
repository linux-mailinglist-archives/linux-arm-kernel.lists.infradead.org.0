Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0797A4C3C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 23:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrR5uzJBvlyoTinvl9e9uolbPnB67hAD40rElWtWyO8=; b=Uo4u4PaXWsRIJZ
	YFNVn6k8UhOhAktkUiUcJJfRomJ/CX7vUzWHn88T5U4YidQA05JBBQ/uvcpHJdOIFEOYzx9unNBgJ
	tmi8iFhJ+Ba4BzeBZiRZ9EWY6HOG9VByAyRKgozAZTLHHN7+8AE4FmXiRaY0vS65J3veLgYieRqo7
	iHkQTO5omSzjKYCNAI/wAsq0/+URaAMtcdCyHqEN0IqOZw2MtdYHiwLGes0VIBjHk9KEfHq2f9ojA
	+BAKZBHGyX7FW6wCYVN/jxyUZe+X96/E6Xz+GQIIHfMoeOr+Nk7KJCi4JPSMVnHtxlnIRP9aY5qrH
	wHHpdCBleorupi0U5k4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4XAM-0006br-0f; Sun, 01 Sep 2019 21:13:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4X9h-0006DF-QH
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 21:13:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E29DE15A2;
 Sun,  1 Sep 2019 14:13:00 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABBDD3F77D;
 Sun,  1 Sep 2019 14:12:59 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Subject: [PATCH 3/3] arm64: KVM: Kill hyp_alternate_select()
Date: Sun,  1 Sep 2019 22:12:37 +0100
Message-Id: <20190901211237.11673-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190901211237.11673-1-maz@kernel.org>
References: <20190901211237.11673-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_141301_891205_1A911281 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hyp_alternate_select() is now completely unused. Goodbye.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 86825aa20852..97f21cc66657 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -47,30 +47,6 @@
 #define read_sysreg_el2(r)	read_sysreg_elx(r, _EL2, _EL1)
 #define write_sysreg_el2(v,r)	write_sysreg_elx(v, r, _EL2, _EL1)
 
-/**
- * hyp_alternate_select - Generates patchable code sequences that are
- * used to switch between two implementations of a function, depending
- * on the availability of a feature.
- *
- * @fname: a symbol name that will be defined as a function returning a
- * function pointer whose type will match @orig and @alt
- * @orig: A pointer to the default function, as returned by @fname when
- * @cond doesn't hold
- * @alt: A pointer to the alternate function, as returned by @fname
- * when @cond holds
- * @cond: a CPU feature (as described in asm/cpufeature.h)
- */
-#define hyp_alternate_select(fname, orig, alt, cond)			\
-typeof(orig) * __hyp_text fname(void)					\
-{									\
-	typeof(alt) *val = orig;					\
-	asm volatile(ALTERNATIVE("nop		\n",			\
-				 "mov	%0, %1	\n",			\
-				 cond)					\
-		     : "+r" (val) : "r" (alt));				\
-	return val;							\
-}
-
 int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
 void __vgic_v3_save_state(struct kvm_vcpu *vcpu);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
