Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D92712EAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k/yTJAZuv6hju8/1DIrfpdeomYSyBUl5PjuxhMDeH4=; b=BVWnFT3ZiOiByv
	WEWrp+A/ZbGWxsQNmBjuc7jr6TKcbcKs+d185dzGTNM8KxQCbFL4uR2R0Pm2hIjiVM1D8pNdGGDe3
	ALIKjy/I1Qvpt28R7O+KlxXtFkXZntWPDEe5+TEQ3hpoji/rkazvDerYFsi9M54Lk0D3qfhbQDBrz
	kBDWCXGSIpKlWCsqSMMU3fLSZYi/0MbXJzKA0voCvN7zMIt5N0sFuh5qTVGAlr47lFq8w30HyW9TF
	KzTwkTcKfMvewxAdMsGmeLl1qLQQEbGsyQjMO+9e5Or5LpD900/1Iih9EkCTGKdwK/cXkHmMdVDN7
	9XCOTRf7bYkDPG4dqqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXpX-0002V0-9t; Fri, 03 May 2019 13:02:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo4-0000Hz-ME
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oVGiJMhGTW6dj5ucK3YRt666RkcJekE5UY3jSrdIK1E=; b=mcWqfz0Odg/u+G8+N5955tzA1g
 VUWRbSy8ZdBaBKgPpue4LQLNkGjt33SUmZMeAYaxcVaOx0UEspuzqb7dMcAmdOmPhjHN9BuUmpyAO
 BK2ePqnaPVXx7yZ4+tSIgNHtdU1VKfLJm0FtDgHrJZ/krKc6LvY64NT++7kI4wTzB2yReI+lSeFIL
 GfuhjQOLXFCeftqox1nj1nNXNnvqYcSJnPzM3b90Pt9/BSF/kySpDb9Y7waiU21OFX0wS5ur0mW74
 to5sJZKLEsiWExTPys9evVgoyaJ3Z1vyhlF/7YDrJ8HMt8YaaSAvixvHxtQk8bUC6k2Ao6/TOELdH
 Q5lVkTXA==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaM-00028c-EZ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:46:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B30780D;
 Fri,  3 May 2019 05:46:42 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E81263F220;
 Fri,  3 May 2019 05:46:38 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 34/56] KVM: arm64/sve: Miscellaneous tidyups in guest.c
Date: Fri,  3 May 2019 13:44:05 +0100
Message-Id: <20190503124427.190206-35-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134642_783384_0E10464D 
X-CRM114-Status: GOOD (  16.67  )
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

 * Remove a few redundant blank lines that are stylistically
   inconsistent with code already in guest.c and are just taking up
   space.

 * Delete a couple of pointless empty default cases from switch
   statements whose behaviour is otherwise obvious anyway.

 * Fix some typos and consolidate some redundantly duplicated
   comments.

 * Respell the slice index check in sve_reg_to_region() as "> 0"
   to be more consistent with what is logically being checked here
   (i.e., "is the slice index too large"), even though we don't try
   to cope with multiple slices yet.

No functional change.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/guest.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 2e449e1dea73..f5ff7aea25aa 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -290,9 +290,10 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 #define KVM_SVE_PREG_SIZE KVM_REG_SIZE(KVM_REG_ARM64_SVE_PREG(0, 0))
 
 /*
- * number of register slices required to cover each whole SVE register on vcpu
- * NOTE: If you are tempted to modify this, you must also to rework
- * sve_reg_to_region() to match:
+ * Number of register slices required to cover each whole SVE register.
+ * NOTE: Only the first slice every exists, for now.
+ * If you are tempted to modify this, you must also rework sve_reg_to_region()
+ * to match:
  */
 #define vcpu_sve_slices(vcpu) 1
 
@@ -334,8 +335,7 @@ static int sve_reg_to_region(struct sve_state_reg_region *region,
 	/* Verify that we match the UAPI header: */
 	BUILD_BUG_ON(SVE_NUM_SLICES != KVM_ARM64_SVE_MAX_SLICES);
 
-	/* Only the first slice ever exists, for now: */
-	if ((reg->id & SVE_REG_SLICE_MASK) != 0)
+	if ((reg->id & SVE_REG_SLICE_MASK) > 0)
 		return -ENOENT;
 
 	vq = sve_vq_from_vl(vcpu->arch.sve_max_vl);
@@ -520,7 +520,6 @@ static int get_timer_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 
 static unsigned long num_sve_regs(const struct kvm_vcpu *vcpu)
 {
-	/* Only the first slice ever exists, for now */
 	const unsigned int slices = vcpu_sve_slices(vcpu);
 
 	if (!vcpu_has_sve(vcpu))
@@ -536,7 +535,6 @@ static unsigned long num_sve_regs(const struct kvm_vcpu *vcpu)
 static int copy_sve_reg_indices(const struct kvm_vcpu *vcpu,
 				u64 __user *uindices)
 {
-	/* Only the first slice ever exists, for now */
 	const unsigned int slices = vcpu_sve_slices(vcpu);
 	u64 reg;
 	unsigned int i, n;
@@ -555,7 +553,6 @@ static int copy_sve_reg_indices(const struct kvm_vcpu *vcpu,
 	reg = KVM_REG_ARM64_SVE_VLS;
 	if (put_user(reg, uindices++))
 		return -EFAULT;
-
 	++num_regs;
 
 	for (i = 0; i < slices; i++) {
@@ -563,7 +560,6 @@ static int copy_sve_reg_indices(const struct kvm_vcpu *vcpu,
 			reg = KVM_REG_ARM64_SVE_ZREG(n, i);
 			if (put_user(reg, uindices++))
 				return -EFAULT;
-
 			num_regs++;
 		}
 
@@ -571,14 +567,12 @@ static int copy_sve_reg_indices(const struct kvm_vcpu *vcpu,
 			reg = KVM_REG_ARM64_SVE_PREG(n, i);
 			if (put_user(reg, uindices++))
 				return -EFAULT;
-
 			num_regs++;
 		}
 
 		reg = KVM_REG_ARM64_SVE_FFR(i);
 		if (put_user(reg, uindices++))
 			return -EFAULT;
-
 		num_regs++;
 	}
 
@@ -645,7 +639,6 @@ int kvm_arm_get_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	case KVM_REG_ARM_CORE:	return get_core_reg(vcpu, reg);
 	case KVM_REG_ARM_FW:	return kvm_arm_get_fw_reg(vcpu, reg);
 	case KVM_REG_ARM64_SVE:	return get_sve_reg(vcpu, reg);
-	default: break; /* fall through */
 	}
 
 	if (is_timer_reg(reg->id))
@@ -664,7 +657,6 @@ int kvm_arm_set_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	case KVM_REG_ARM_CORE:	return set_core_reg(vcpu, reg);
 	case KVM_REG_ARM_FW:	return kvm_arm_set_fw_reg(vcpu, reg);
 	case KVM_REG_ARM64_SVE:	return set_sve_reg(vcpu, reg);
-	default: break; /* fall through */
 	}
 
 	if (is_timer_reg(reg->id))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
