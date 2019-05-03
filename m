Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5CD12EB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Oz3Mbvojftxrr+4Vgxs2f0efvdz/eQQ41r6yiDZ4Ig=; b=E0wZKfs+zjxHaA
	PxIQGja9ox7XzV6A2M6ZwVr7RD50bYHb8u99FK51b5HlhM1WTL80X5Pr1hli0sKFVr1w4tFv2sYyI
	T7Pbb/L5olXyl1iH0CbrY9TVZqG1wEvhPv+QsUmV6Hx3M3XfxP8LriYFPPqlmqCG6I4QdUnn4fAZX
	mqp13/52IgTGWmHJUqkU5WIoOWoSKiHfqqiSsfIOQRHErNrbYtCiGzpxgn8wPJ9q6wSvyM+PF9N/g
	5WAfKvENttyT8+l/ooS6gu6oOGXxH3LaC2ZBOit4KR/+JzF6UUsBKaClvx1d65zipdOQKDNUvnjlP
	jCl6Oo1FFtDqtJyjOdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXpu-00030G-1g; Fri, 03 May 2019 13:02:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo3-0000Tx-S1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i4GRohZbhpeJHfTYyaMPFej0vMkjp0p67BG0aaaPVNg=; b=Zjeg8NLwxiPgrp+G6Mh27O7BlV
 kCTuW4YM2u2es9iR5i/wZig1JoeL2PkJB133riWlcHRRXUCGFaEo0LYD0fzUKf0BFunbYC7393YUL
 fmvXBsJgC2jdlZYx1PII6CiAceYlNPGmUZ4whXwjFZzZ2UKusiy3KTMIlQyz4j+XPJsG/wP+OlMyT
 8ZRkpVVfHMGo5/7yZ5a/gUAFqdbYJhy8sRFMzmoiAzlLsARD9n5eswAs/YQONcmQBeNA/DaC5mYY3
 Izb2MI8fxbqwA3/J1cXVgP7Jt7Uj9pkBXIZpvpH21Emv2+aFG0Iu1Z7VKNqm8FftoS903687QeOVM
 VRUqtyMQ==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaX-0002AC-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6C9615AD;
 Fri,  3 May 2019 05:46:52 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6ECD63F220;
 Fri,  3 May 2019 05:46:49 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 37/56] KVM: arm64/sve: Simplify KVM_REG_ARM64_SVE_VLS array
 sizing
Date: Fri,  3 May 2019 13:44:08 +0100
Message-Id: <20190503124427.190206-38-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134653_743581_6A9FEA20 
X-CRM114-Status: GOOD (  18.52  )
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

A complicated DIV_ROUND_UP() expression is currently written out
explicitly in multiple places in order to specify the size of the
bitmap exchanged with userspace to represent the value of the
KVM_REG_ARM64_SVE_VLS pseudo-register.

Userspace currently has no direct way to work this out either: for
documentation purposes, the size is just quoted as 8 u64s.

To make this more intuitive, this patch replaces these with a
single define, which is also exported to userspace as
KVM_ARM64_SVE_VLS_WORDS.

Since the number of words in a bitmap is just the index of the last
word used + 1, this patch expresses the bound that way instead.
This should make it clearer what is being expressed.

For userspace convenience, the minimum and maximum possible vector
lengths relevant to the KVM ABI are exposed to UAPI as
KVM_ARM64_SVE_VQ_MIN, KVM_ARM64_SVE_VQ_MAX.  Since the only direct
use for these at present is manipulation of KVM_REG_ARM64_SVE_VLS,
no corresponding _VL_ macros are defined.  They could be added
later if a need arises.

Since use of DIV_ROUND_UP() was the only reason for including
<linux/kernel.h> in guest.c, this patch also removes that #include.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/virtual/kvm/api.txt | 10 ++++++----
 arch/arm64/include/uapi/asm/kvm.h |  5 +++++
 arch/arm64/kvm/guest.c            |  7 +++----
 3 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virtual/kvm/api.txt
index 68509dee23e8..03df379a02b0 100644
--- a/Documentation/virtual/kvm/api.txt
+++ b/Documentation/virtual/kvm/api.txt
@@ -2171,13 +2171,15 @@ and KVM_ARM_VCPU_FINALIZE for more information about this procedure.
 KVM_REG_ARM64_SVE_VLS is a pseudo-register that allows the set of vector
 lengths supported by the vcpu to be discovered and configured by
 userspace.  When transferred to or from user memory via KVM_GET_ONE_REG
-or KVM_SET_ONE_REG, the value of this register is of type __u64[8], and
-encodes the set of vector lengths as follows:
+or KVM_SET_ONE_REG, the value of this register is of type
+__u64[KVM_ARM64_SVE_VLS_WORDS], and encodes the set of vector lengths as
+follows:
 
-__u64 vector_lengths[8];
+__u64 vector_lengths[KVM_ARM64_SVE_VLS_WORDS];
 
 if (vq >= SVE_VQ_MIN && vq <= SVE_VQ_MAX &&
-    ((vector_lengths[(vq - 1) / 64] >> ((vq - 1) % 64)) & 1))
+    ((vector_lengths[(vq - KVM_ARM64_SVE_VQ_MIN) / 64] >>
+		((vq - KVM_ARM64_SVE_VQ_MIN) % 64)) & 1))
 	/* Vector length vq * 16 bytes supported */
 else
 	/* Vector length vq * 16 bytes not supported */
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 2a04ef015469..edd2db8e5160 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -258,9 +258,14 @@ struct kvm_vcpu_events {
 	 KVM_REG_SIZE_U256 |						\
 	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
 
+#define KVM_ARM64_SVE_VQ_MIN __SVE_VQ_MIN
+#define KVM_ARM64_SVE_VQ_MAX __SVE_VQ_MAX
+
 /* Vector lengths pseudo-register: */
 #define KVM_REG_ARM64_SVE_VLS		(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | \
 					 KVM_REG_SIZE_U512 | 0xffff)
+#define KVM_ARM64_SVE_VLS_WORDS	\
+	((KVM_ARM64_SVE_VQ_MAX - KVM_ARM64_SVE_VQ_MIN) / 64 + 1)
 
 /* Device Control API: ARM VGIC */
 #define KVM_DEV_ARM_VGIC_GRP_ADDR	0
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 73044e3f8706..5bb909c3ff7c 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -23,7 +23,6 @@
 #include <linux/errno.h>
 #include <linux/err.h>
 #include <linux/nospec.h>
-#include <linux/kernel.h>
 #include <linux/kvm_host.h>
 #include <linux/module.h>
 #include <linux/stddef.h>
@@ -210,7 +209,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
 
 static bool vq_present(
-	const u64 (*const vqs)[DIV_ROUND_UP(SVE_VQ_MAX - SVE_VQ_MIN + 1, 64)],
+	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
 	unsigned int vq)
 {
 	return (*vqs)[vq_word(vq)] & vq_mask(vq);
@@ -219,7 +218,7 @@ static bool vq_present(
 static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 {
 	unsigned int max_vq, vq;
-	u64 vqs[DIV_ROUND_UP(SVE_VQ_MAX - SVE_VQ_MIN + 1, 64)];
+	u64 vqs[KVM_ARM64_SVE_VLS_WORDS];
 
 	if (!vcpu_has_sve(vcpu))
 		return -ENOENT;
@@ -243,7 +242,7 @@ static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 {
 	unsigned int max_vq, vq;
-	u64 vqs[DIV_ROUND_UP(SVE_VQ_MAX - SVE_VQ_MIN + 1, 64)];
+	u64 vqs[KVM_ARM64_SVE_VLS_WORDS];
 
 	if (!vcpu_has_sve(vcpu))
 		return -ENOENT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
