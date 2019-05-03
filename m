Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E37412EAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/gcTe91/9swiLT7AnYGvKPUJ6J1TPOaeHtXhbHnfTI=; b=UwPlwMnle5Afdc
	McOA0yc4Nj5sk1fileWHbmODw9sWdSm10YKgd6zD1IVKYxFxbIS7vNRNHQMT9OmlyN2PlrANGfrBl
	iF0m6hXgg46yNRaPmwcWRWBPdeY3u/SFl9h+KcLUApq2cGrG7DnvnIAmWirIYZSH+5FnSWTI55fW/
	aIeevcjX4MloalhkdBgEUHjGHFWaBmdjsQY2jUBDYdfNBQwiCqBmHtqaC8hlDeVApyBCgX1jErsYc
	wUsPyCrtjsrn+lU2kXqDBgHzfhkDkKlru+EDbR0N/7ndUOBjntDYHEfcxCs6knT8l7Fvb/YOZlwbt
	ZRzXhhxZpnhlB0UfMKTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXpN-0002FW-5m; Fri, 03 May 2019 13:02:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo3-0000Hk-Bw
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tO7O7fMHxr8mmGYPuZp6L0gqqhZlGXNbkm/0KWyyT50=; b=NXlDApZR4FWp2kZpNiTtQ5D0SB
 QtIhoQFGS4O1YESUlo9aJxueWebkSX0XP7cdS7arsZ7ozxWz5/Lr71O9712Lz2NyrJH5573vkieTd
 CnSUtqZuv2fqkHGe2Cysjp2dx/Rm0K8c36Y75DHHHR/J8hRO3z4043H3lOk23ifF1AtU15qHcbQic
 g1QPvffo/YZUVlzl8/x+hKYCYGll3vtteEgp3dTEq2qYaVoAYeOV1Wl8txAYzJnxZr5mqqYV0PGFF
 trWYaoIRZ5zA+dWnfyG4nOUFLoeHogCu32XCUgnbQNJ6C4uFGOMMsDIamUR6gcsu/TE5LxDq/lddF
 DXnEsrDw==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXad-0002AC-Ue
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8F3F15AD;
 Fri,  3 May 2019 05:46:59 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 718F83F220;
 Fri,  3 May 2019 05:46:56 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 39/56] KVM: arm/arm64: Clean up vcpu finalization function
 parameter naming
Date: Fri,  3 May 2019 13:44:10 +0100
Message-Id: <20190503124427.190206-40-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134700_155904_55AF0209 
X-CRM114-Status: GOOD (  12.62  )
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

Currently, the internal vcpu finalization functions use a different
name ("what") for the feature parameter than the name ("feature")
used in the documentation.

To avoid future confusion, this patch converts everything to use
the name "feature" consistently.

No functional change.

Suggested-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm/include/asm/kvm_host.h   | 2 +-
 arch/arm64/include/asm/kvm_host.h | 2 +-
 arch/arm64/kvm/reset.c            | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 7feddacbc207..fe7754315e9c 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -412,7 +412,7 @@ static inline int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 	return 0;
 }
 
-static inline int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int what)
+static inline int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int feature)
 {
 	return -EINVAL;
 }
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 6adf08ba9277..7a096fdb333d 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -627,7 +627,7 @@ void kvm_arch_free_vm(struct kvm *kvm);
 
 int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type);
 
-int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int what);
+int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int feature);
 bool kvm_arm_vcpu_is_finalized(struct kvm_vcpu *vcpu);
 
 #define kvm_arm_vcpu_sve_finalized(vcpu) \
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 8847f389f56d..3402543fdcd3 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -186,9 +186,9 @@ static int kvm_vcpu_finalize_sve(struct kvm_vcpu *vcpu)
 	return 0;
 }
 
-int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int what)
+int kvm_arm_vcpu_finalize(struct kvm_vcpu *vcpu, int feature)
 {
-	switch (what) {
+	switch (feature) {
 	case KVM_ARM_VCPU_SVE:
 		if (!vcpu_has_sve(vcpu))
 			return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
