Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460201B9617
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2vc3nEzkPVq7L5DTFW/HaHf8veNU/M9ERHi9V0yS5VM=; b=FF1hY+TVxGN37kMttRHD0Ary1z
	vA0O/iy1S4jmshfC9LD01XDWRQkZ6wEkRewLk1+mJBU3fknefcgzc857T6p+p02fPpcKfC0PNvysx
	wBxgRfQSNbPbscJKs0vCNRYUgKhO3XVwtuo/AxIPNxI62frce5kjqniQE/nJzvfR6PnBmSAZKN6jF
	AIegvlT6idp41RnxMm46AYbQ0hVThIl5kWmdS7AHzS1UtbOskwk50vJHT9ol4KmknnWje0aYMXYYD
	8TcT/I0eW16xaZbdJw8v/PqzRI0BHTcnVdqAzAfzKECYakwWQcsJx0hCIfzPWLpSxj29vw/BoVjs4
	/Xv5RxIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvUW-00031P-2M; Mon, 27 Apr 2020 04:35:36 +0000
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvUI-0002zx-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:35:23 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R911e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01419;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=38; SR=0;
 TI=SMTPD_---0TwkAhX3_1587962115; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TwkAhX3_1587962115) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 27 Apr 2020 12:35:15 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: pbonzini@redhat.com, tsbogend@alpha.franken.de, paulus@ozlabs.org,
 mpe@ellerman.id.au, benh@kernel.crashing.org, borntraeger@de.ibm.com,
 frankja@linux.ibm.com, david@redhat.com, cohuck@redhat.com,
 heiko.carstens@de.ibm.com, gor@linux.ibm.com,
 sean.j.christopherson@intel.com, vkuznets@redhat.com,
 wanpengli@tencent.com, jmattson@google.com, joro@8bytes.org,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org,
 hpa@zytor.com, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 christoffer.dall@arm.com, peterx@redhat.com, thuth@redhat.com,
 chenhuacai@gmail.com
Subject: [PATCH v4 1/7] KVM: s390: clean up redundant 'kvm_run' parameters
Date: Mon, 27 Apr 2020 12:35:08 +0800
Message-Id: <20200427043514.16144-2-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_213522_250951_B93F31A3 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.57 listed in list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-s390@vger.kernel.org, tianjia.zhang@linux.alibaba.com,
 kvm@vger.kernel.org, linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
structure. For historical reasons, many kvm-related function parameters
retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
patch does a unified cleanup of these remaining redundant parameters.

Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 arch/s390/kvm/kvm-s390.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index e335a7e5ead7..c0d94eaa00d7 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -4176,8 +4176,9 @@ static int __vcpu_run(struct kvm_vcpu *vcpu)
 	return rc;
 }
 
-static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
+static void sync_regs_fmt2(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *kvm_run = vcpu->run;
 	struct runtime_instr_cb *riccb;
 	struct gs_cb *gscb;
 
@@ -4243,8 +4244,10 @@ static void sync_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 	/* SIE will load etoken directly from SDNX and therefore kvm_run */
 }
 
-static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
+static void sync_regs(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *kvm_run = vcpu->run;
+
 	if (kvm_run->kvm_dirty_regs & KVM_SYNC_PREFIX)
 		kvm_s390_set_prefix(vcpu, kvm_run->s.regs.prefix);
 	if (kvm_run->kvm_dirty_regs & KVM_SYNC_CRS) {
@@ -4273,7 +4276,7 @@ static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 
 	/* Sync fmt2 only data */
 	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu))) {
-		sync_regs_fmt2(vcpu, kvm_run);
+		sync_regs_fmt2(vcpu);
 	} else {
 		/*
 		 * In several places we have to modify our internal view to
@@ -4292,8 +4295,10 @@ static void sync_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 	kvm_run->kvm_dirty_regs = 0;
 }
 
-static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
+static void store_regs_fmt2(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *kvm_run = vcpu->run;
+
 	kvm_run->s.regs.todpr = vcpu->arch.sie_block->todpr;
 	kvm_run->s.regs.pp = vcpu->arch.sie_block->pp;
 	kvm_run->s.regs.gbea = vcpu->arch.sie_block->gbea;
@@ -4313,8 +4318,10 @@ static void store_regs_fmt2(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 	/* SIE will save etoken directly into SDNX and therefore kvm_run */
 }
 
-static void store_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
+static void store_regs(struct kvm_vcpu *vcpu)
 {
+	struct kvm_run *kvm_run = vcpu->run;
+
 	kvm_run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
 	kvm_run->psw_addr = vcpu->arch.sie_block->gpsw.addr;
 	kvm_run->s.regs.prefix = kvm_s390_get_prefix(vcpu);
@@ -4333,7 +4340,7 @@ static void store_regs(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
 	current->thread.fpu.fpc = vcpu->arch.host_fpregs.fpc;
 	current->thread.fpu.regs = vcpu->arch.host_fpregs.regs;
 	if (likely(!kvm_s390_pv_cpu_is_protected(vcpu)))
-		store_regs_fmt2(vcpu, kvm_run);
+		store_regs_fmt2(vcpu);
 }
 
 int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
@@ -4371,7 +4378,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
 		goto out;
 	}
 
-	sync_regs(vcpu, kvm_run);
+	sync_regs(vcpu);
 	enable_cpu_timer_accounting(vcpu);
 
 	might_fault();
@@ -4393,7 +4400,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu)
 	}
 
 	disable_cpu_timer_accounting(vcpu);
-	store_regs(vcpu, kvm_run);
+	store_regs(vcpu);
 
 	kvm_sigset_deactivate(vcpu);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
