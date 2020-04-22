Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBB31B44CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+bh0pMN3P18NiQzD7ci91MPYqo8ShlsVQFuTzZm6fI=; b=O4RDRC+iPtj3d/
	kTWQg5YeK0KTiqPA6BQUhWWtdFqvdVw1xiOMAqp/3aZtNpo8st2PRxmAfSgO00gjiVwo9YeVvXCuF
	AmSYLwWHJBvnFZ04fK8yWcc/rpTEMgNQVb6l7afF1H4MVgDcWJ99+Qh+AZId5c/3xV6WQ3BAEUtU2
	RvgsHW+e21cIWAEi0LuOYEEjtFw31OEM1KVcaNDnm1Nq1agy3QSC6SaHvO+ktiVOBNgVez8YXfERS
	ueA5rahc11m9AmbqYyZkmfbSduBSq70mD+XzjNORPrvJixEXb7P9F4hO6Rt3vhKyzwLoinDVpJIfv
	FjjmQgNldYyC/MwVo8Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRENc-00050J-7V; Wed, 22 Apr 2020 12:21:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRENE-0004yl-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:21:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 914D620784;
 Wed, 22 Apr 2020 12:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587558063;
 bh=z3AT2reYnyV5hPONn1rqvr/DkOxt2Vj5nLApRzI/zKw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jOwurP18Q6bTTdXSzPIlMh1mfaQFKio2ClncMbc13h8MSZGWt1Wbvh7AzLpB2E72q
 HbU7Xc/U1vzJfzxWTlCUiGNTJrd+HDEGdg7k/kwsq5ZU99POi0rBSi00gU4RShJImc
 uU0eMPEQShMIjYCo+StNKoDhPZL+1MMV8p3rCdjk=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRE46-005UI7-1A; Wed, 22 Apr 2020 13:01:18 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 24/26] KVM: arm64: timers: Rename kvm_timer_sync_hwstate to
 kvm_timer_sync_user
Date: Wed, 22 Apr 2020 13:00:48 +0100
Message-Id: <20200422120050.3693593-25-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422120050.3693593-1-maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_052104_218277_FB4E0E5D 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_timer_sync_hwstate() has nothing to do with the timer HW state,
but more to do with the state of a userspace interrupt controller.
Change the suffix from _hwstate to_user, in keeping with the rest
of the code.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 include/kvm/arm_arch_timer.h | 2 +-
 virt/kvm/arm/arch_timer.c    | 2 +-
 virt/kvm/arm/arm.c           | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index d120e6c323e7c..a821dd1df0cfa 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -71,7 +71,7 @@ int kvm_timer_hyp_init(bool);
 int kvm_timer_enable(struct kvm_vcpu *vcpu);
 int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu);
 void kvm_timer_vcpu_init(struct kvm_vcpu *vcpu);
-void kvm_timer_sync_hwstate(struct kvm_vcpu *vcpu);
+void kvm_timer_sync_user(struct kvm_vcpu *vcpu);
 bool kvm_timer_should_notify_user(struct kvm_vcpu *vcpu);
 void kvm_timer_update_run(struct kvm_vcpu *vcpu);
 void kvm_timer_vcpu_terminate(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index 93bd59b46848e..1961de8828ee9 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -624,7 +624,7 @@ static void unmask_vtimer_irq_user(struct kvm_vcpu *vcpu)
 	}
 }
 
-void kvm_timer_sync_hwstate(struct kvm_vcpu *vcpu)
+void kvm_timer_sync_user(struct kvm_vcpu *vcpu)
 {
 	struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 03f01fcfa2bd5..a7ca341e7fd76 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -720,7 +720,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 			isb(); /* Ensure work in x_flush_hwstate is committed */
 			kvm_pmu_sync_hwstate(vcpu);
 			if (static_branch_unlikely(&userspace_irqchip_in_use))
-				kvm_timer_sync_hwstate(vcpu);
+				kvm_timer_sync_user(vcpu);
 			kvm_vgic_sync_hwstate(vcpu);
 			local_irq_enable();
 			preempt_enable();
@@ -769,7 +769,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 * timer virtual interrupt state.
 		 */
 		if (static_branch_unlikely(&userspace_irqchip_in_use))
-			kvm_timer_sync_hwstate(vcpu);
+			kvm_timer_sync_user(vcpu);
 
 		kvm_arch_vcpu_ctxsync_fp(vcpu);
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
