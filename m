Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5C912EBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFkI0yNSC0hF1Mt4YHdLacJ0y4O3ph2ggGaD5GTuzhI=; b=CHYl/nxK5j43EU
	JuKB5EnwEhfPrq8C0dtRM9Omln41TdlOWqKP7JaPUcUUXF1GbqA0gU4eRhuppGjZ7FXTuEKEv36Nj
	K7PKKxBB3DvcYBcT4Y0EOa0oiaN9WiHHH1VlISozccJSrnGV4TvpE7WI/47nX9cXihWqUCTQofyis
	PjYohTs7rOZOi+8ViJJlo9tpHfAWyvTna0nNEQ96+Mcw0fNiuNru81Jg9CsHZ/kVR7KkwQZMaeT6B
	tWmUWmYGdXJT923LEZqIMQrlDNGNntsl/AsK3wd3OlJup4xDl2fHaOKxo3Uc4vnGb5B/SfzPVz5r0
	w9YTkGb7hM9G81iDrcEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXqt-0004aD-OQ; Fri, 03 May 2019 13:03:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo7-0000Hz-Sz
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h74E8fTJb/uELTinY90g5KHcOSDdMV200BS2ojtSaa0=; b=Ax4C+JEQY3NstzJt21s+mFuvk4
 A+OdCT+1b1hZboejsjxD4o7jK/w09RYQMZCyGRkx03nAo1coXn3tcEHBnjd7J/Owh5fPGmgvgB3/s
 pPtdbMSUJipbHj2ZeBpb9wyQbxycrPd1zSJuxtWK/v3PcCXbz8TRoGDTFZtTQFWiTum6PuhpRuTBn
 j3DnG6MpaYs+wygk6UBK1WCSTMvqj8HQl1MqYfhf3WAtcSC1ivXvU43H5wSD/cA9YveMcB1T5lPn0
 fF9TB9GPXYtcfVSPqiLlf8rn2ElVhbiX6Wraw6pTyep/B5sSL2u5FtKQ6nMvF8KAwdX0JYuvC4HHm
 XRlGedLw==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXa5-000265-4q
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A26C816A3;
 Fri,  3 May 2019 05:46:24 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B2773F220;
 Fri,  3 May 2019 05:46:21 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 29/56] arm64/sve: Clarify vq map semantics
Date: Fri,  3 May 2019 13:44:00 +0100
Message-Id: <20190503124427.190206-30-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134625_539040_396920DC 
X-CRM114-Status: GOOD (  14.67  )
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

Currently the meanings of sve_vq_map and the ancillary helpers
__bit_to_vq() and __vq_to_bit() are not clearly explained.

This patch makes the explanatory comment clearer, and removes the
duplicate comment from fpsimd.h.

The WARN_ON() currently present in __bit_to_vq() confuses the
intended use of this helper.  Since these are low-level helpers not
intended for general-purpose use anyway, it is better not to make
guesses about how these functions will be used: rather, this patch
removes the WARN_ON() and relies on callers to use the helpers
sensibly.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/fpsimd.h | 4 ----
 arch/arm64/kernel/fpsimd.c      | 7 ++++++-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
index ad6d2e41eb37..df62bbd33a9a 100644
--- a/arch/arm64/include/asm/fpsimd.h
+++ b/arch/arm64/include/asm/fpsimd.h
@@ -92,7 +92,6 @@ extern u64 read_zcr_features(void);
 
 extern int __ro_after_init sve_max_vl;
 extern int __ro_after_init sve_max_virtualisable_vl;
-/* Set of available vector lengths, as vq_to_bit(vq): */
 extern __ro_after_init DECLARE_BITMAP(sve_vq_map, SVE_VQ_MAX);
 
 /*
@@ -107,9 +106,6 @@ static inline unsigned int __vq_to_bit(unsigned int vq)
 
 static inline unsigned int __bit_to_vq(unsigned int bit)
 {
-	if (WARN_ON(bit >= SVE_VQ_MAX))
-		bit = SVE_VQ_MAX - 1;
-
 	return SVE_VQ_MAX - bit;
 }
 
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 577296bba730..56afa40263d9 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -135,10 +135,15 @@ static int sve_default_vl = -1;
 /* Maximum supported vector length across all CPUs (initially poisoned) */
 int __ro_after_init sve_max_vl = SVE_VL_MIN;
 int __ro_after_init sve_max_virtualisable_vl = SVE_VL_MIN;
-/* Set of available vector lengths, as vq_to_bit(vq): */
+
+/*
+ * Set of available vector lengths,
+ * where length vq encoded as bit __vq_to_bit(vq):
+ */
 __ro_after_init DECLARE_BITMAP(sve_vq_map, SVE_VQ_MAX);
 /* Set of vector lengths present on at least one cpu: */
 static __ro_after_init DECLARE_BITMAP(sve_vq_partial_map, SVE_VQ_MAX);
+
 static void __percpu *efi_sve_state;
 
 #else /* ! CONFIG_ARM64_SVE */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
