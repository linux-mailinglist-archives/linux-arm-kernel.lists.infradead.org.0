Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3869E2EDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1O0kHRg6ihydcM1gvfwTarc7RKrWcc+NCd110eDvz/k=; b=ZDIqIVYstZbLc7t9at7qv4ND1p
	qFrAKxFwxp2/xLPvCDhyfaGjiZ0TeB2Iq62iJqmoszyVBXP/pVU8AlYUEoxxfeCx9k1fk9lTxdQ0w
	sOTnkObwcn4K8t1CDUG4krKB1yfJuvE8MKeK7gbXr5pIzZU9xlT8HTfJQgvZ8vKmBDkocldnpdb2i
	xjAW9//DwsUXZ/7bQysHsKFUtVJonsSLqWg5/nhYr56AkRkFq38T1jgGlRzEEU4UzSQ1BzPYCxgHu
	Bmdt0tfMHnSucWUFUTUplrELNAnku2HunHw1vsvdjsh5FNTWU/WnfJrkXXKGyQbOkHSqBMMXi9Pbs
	52LfpGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaMl-0005qZ-EU; Thu, 24 Oct 2019 10:29:15 +0000
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaLT-0004t5-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:28:03 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=shannon.zhao@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0Tg2twD8_1571912871; 
Received: from localhost(mailfrom:shannon.zhao@linux.alibaba.com
 fp:SMTPD_---0Tg2twD8_1571912871) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 24 Oct 2019 18:27:52 +0800
From: Shannon Zhao <shannon.zhao@linux.alibaba.com>
To: kvmarm@lists.cs.columbia.edu, maz@kernel.org, james.morse@arm.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com
Subject: [PATCH RFC 5/7] KVM: arch_timer: Add hyp uninitialize function
Date: Thu, 24 Oct 2019 18:27:48 +0800
Message-Id: <1571912870-18471-6-git-send-email-shannon.zhao@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032755_801530_6D74C362 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When KVM ARM exits, it needs to cleanup arch_timer setup by kvm_timer_hyp_init.

Signed-off-by: Shannon Zhao <shannon.zhao@linux.alibaba.com>
---
 include/kvm/arm_arch_timer.h |  1 +
 virt/kvm/arm/arch_timer.c    | 13 +++++++++++++
 virt/kvm/arm/arm.c           |  1 +
 3 files changed, 15 insertions(+)

diff --git a/include/kvm/arm_arch_timer.h b/include/kvm/arm_arch_timer.h
index d120e6c..3cb3a01 100644
--- a/include/kvm/arm_arch_timer.h
+++ b/include/kvm/arm_arch_timer.h
@@ -68,6 +68,7 @@ struct arch_timer_cpu {
 };
 
 int kvm_timer_hyp_init(bool);
+void kvm_timer_hyp_uninit(void);
 int kvm_timer_enable(struct kvm_vcpu *vcpu);
 int kvm_timer_vcpu_reset(struct kvm_vcpu *vcpu);
 void kvm_timer_vcpu_init(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/arch_timer.c b/virt/kvm/arm/arch_timer.c
index f5a5d51..7dafa97 100644
--- a/virt/kvm/arm/arch_timer.c
+++ b/virt/kvm/arm/arch_timer.c
@@ -991,6 +991,19 @@ int kvm_timer_hyp_init(bool has_gic)
 	return err;
 }
 
+void kvm_timer_hyp_uninit(void)
+{
+	struct arch_timer_kvm_info *info = arch_timer_get_kvm_info();
+
+	cpuhp_remove_state(CPUHP_AP_KVM_ARM_TIMER_STARTING);
+	if (info->physical_irq > 0) {
+		on_each_cpu(disable_percpu_irq, (void *)host_ptimer_irq, 1);
+		free_percpu_irq(host_ptimer_irq, kvm_get_running_vcpus());
+	}
+	on_each_cpu(disable_percpu_irq, (void *)host_vtimer_irq, 1);
+	free_percpu_irq(host_vtimer_irq, kvm_get_running_vcpus());
+}
+
 void kvm_timer_vcpu_terminate(struct kvm_vcpu *vcpu)
 {
 	struct arch_timer_cpu *timer = vcpu_timer(vcpu);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 0c60074..feb6649 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1724,6 +1724,7 @@ int kvm_arch_init(void *opaque)
 void kvm_arch_exit(void)
 {
 	kvm_perf_teardown();
+	kvm_timer_hyp_uninit();
 	kvm_vgic_hyp_uninit();
 	hyp_cpu_pm_exit();
 }
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
