Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D291FCB78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2izSrIyfeEaqRfdObKcAq3ZETKzQ2XZKiwfJKtZOlMI=; b=rYhpfQL2u1lUuE
	Z2T65CHJKU2vHjik4kQJfLRtv5/eEF2QPG5eQGwFHZpmT+9e6T29EvD/OxOR/a0NsE38FiX9ZyCg5
	nATxle4LklmbhYxlE4/WTbc7A9x0r7L64ZgVYHBRb4DPmqOje1aFR6uVQ+YpfeS4WZgJwMFcpyv17
	1mnTiXPmCIdHrQM7W2zaTZHm6vlPNR9/8rgw34CM5VAt3ojTkgexGl2s+Tkdy9IRPKVlLmPYqIT9t
	9k4Qc+NCWIbEZZz9/TKTpbzWr1UpbiTcYdgwnY+dEfc3FKBFOqILGw+kNIEQ3OZ36F9eOg+FLUKnC
	r8TAzQ7DSBYbbpM9JaZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVix-0000GK-WF; Wed, 17 Jun 2020 10:55:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVin-0007zZ-1n
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:55:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86BF3C0A;
 Wed, 17 Jun 2020 03:55:08 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 384F03F71F;
 Wed, 17 Jun 2020 03:55:06 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v2] KVM: arm64: kvm_reset_vcpu() return code incorrect with SVE
Date: Wed, 17 Jun 2020 11:54:56 +0100
Message-Id: <20200617105456.28245-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_035509_183653_557CE32B 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Dave Martin <Dave.Martin@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Steven Price <steven.price@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If SVE is enabled then 'ret' can be assigned the return value of
kvm_vcpu_enable_sve() which may be 0 causing future "goto out" sites to
erroneously return 0 on failure rather than -EINVAL as expected.

Remove the initialisation of 'ret' and make setting the return value
explicit to avoid this situation in the future.

Fixes: 9a3cdf26e336 ("KVM: arm64/sve: Allow userspace to enable SVE for vcpus")
Reported-by: James Morse <james.morse@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
Changes since v1:
 * Fix embarrassing accidental inversion of the if() test

The problematic chunk isn't visible in the diff, so reproduced here:

	if (!kvm_arm_vcpu_sve_finalized(vcpu)) {
		if (test_bit(KVM_ARM_VCPU_SVE, vcpu->arch.features)) {
			ret = kvm_vcpu_enable_sve(vcpu);
			if (ret)
				goto out;
		}
	} else {
		kvm_vcpu_reset_sve(vcpu);
	}

 arch/arm64/kvm/reset.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index d3b209023727..6ed36be51b4b 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -245,7 +245,7 @@ static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
  */
 int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 {
-	int ret = -EINVAL;
+	int ret;
 	bool loaded;
 	u32 pstate;
 
@@ -269,15 +269,19 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 
 	if (test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
 	    test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features)) {
-		if (kvm_vcpu_enable_ptrauth(vcpu))
+		if (kvm_vcpu_enable_ptrauth(vcpu)) {
+			ret = -EINVAL;
 			goto out;
+		}
 	}
 
 	switch (vcpu->arch.target) {
 	default:
 		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
-			if (!cpus_have_const_cap(ARM64_HAS_32BIT_EL1))
+			if (!cpus_have_const_cap(ARM64_HAS_32BIT_EL1)) {
+				ret = -EINVAL;
 				goto out;
+			}
 			pstate = VCPU_RESET_PSTATE_SVC;
 		} else {
 			pstate = VCPU_RESET_PSTATE_EL1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
