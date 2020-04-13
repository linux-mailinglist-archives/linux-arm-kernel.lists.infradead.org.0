Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439731A61CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 05:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bdN0676VfXKOV6X8BeDrfqHLZBF9r9/tonz8aFdJZ5k=; b=sNb
	3bSWRNcLKvcIDvZyngNS3r9N8DrOGdPEbGjCtnjw5/AUhg+drsmMQbDX14nJuutoDWkewgYNOIOuO
	zVe8J/GRNpCQnddDeTuPLlDzwUeiBeRNFicVpi9tJXRJWId86GBwCfvpOKZJ4r7r/tPRCkFT7kFVM
	rygLcutSNNM5zQNzeTI0AczkLQPGxrLHcjcGqy8jJWzQDoAQaTR2dlCsHQHoUjjzQym0eZ/su2l1g
	Bg3HA8QdXxxR1fh61QNlI9S63a0ynPBHiu6VNP3PiTF9ZMJWdWeO0zacygxAa5neL6plM7h5/YuPM
	NDr+Sf12geX6t+rE2pi7+UUWKyIIxDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNq2V-0001b4-NB; Mon, 13 Apr 2020 03:45:39 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNq2O-0001Z0-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 03:45:34 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R771e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04397;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=20; SR=0;
 TI=SMTPD_---0TvK0H1G_1586749524; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TvK0H1G_1586749524) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 13 Apr 2020 11:45:24 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: pbonzini@redhat.com, sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
Subject: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
Date: Mon, 13 Apr 2020 11:45:23 +0800
Message-Id: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_204533_157295_BA98D08B 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: linux-kernel@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_arch_vcpu_ioctl_run() is only called in the file kvm_main.c,
where vcpu->run is the kvm_run parameter, so it has been replaced.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 arch/x86/kvm/x86.c | 8 ++++----
 virt/kvm/arm/arm.c | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 3bf2ecafd027..70e3f4abbd4d 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -8726,18 +8726,18 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 		r = -EAGAIN;
 		if (signal_pending(current)) {
 			r = -EINTR;
-			vcpu->run->exit_reason = KVM_EXIT_INTR;
+			kvm_run->exit_reason = KVM_EXIT_INTR;
 			++vcpu->stat.signal_exits;
 		}
 		goto out;
 	}
 
-	if (vcpu->run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
+	if (kvm_run->kvm_valid_regs & ~KVM_SYNC_X86_VALID_FIELDS) {
 		r = -EINVAL;
 		goto out;
 	}
 
-	if (vcpu->run->kvm_dirty_regs) {
+	if (kvm_run->kvm_dirty_regs) {
 		r = sync_regs(vcpu);
 		if (r != 0)
 			goto out;
@@ -8767,7 +8767,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 
 out:
 	kvm_put_guest_fpu(vcpu);
-	if (vcpu->run->kvm_valid_regs)
+	if (kvm_run->kvm_valid_regs)
 		store_regs(vcpu);
 	post_kvm_run_save(vcpu);
 	kvm_sigset_deactivate(vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 48d0ec44ad77..ab9d7966a4c8 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -659,7 +659,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		return ret;
 
 	if (run->exit_reason == KVM_EXIT_MMIO) {
-		ret = kvm_handle_mmio_return(vcpu, vcpu->run);
+		ret = kvm_handle_mmio_return(vcpu, run);
 		if (ret)
 			return ret;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
