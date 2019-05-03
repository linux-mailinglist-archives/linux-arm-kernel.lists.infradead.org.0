Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DE112F33
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giG+EdhMlRKnh5dx7PwsUkYJ0jfa9GKIxmwJJBOqqAc=; b=Tbb4Ia0hBPq37Z
	xiHksGmRk9Z9txVc05kaYNV5HtC9+365HmATFyhHWMzyCKbn87bj1EbDqGsmVv01TbbEfYms3DyKT
	bOe2GMUJYZ7oSdHbkiAs5dDEOaK2DyY2nk+tsULlK8QX5m9SYijuyIeu28BYpc4bxZndDFfdoCf7A
	RTA/Yn0Q3+gR4yncVvy3QLDz6pF5ZH5ZFkeHjKR0YPuEq+r/v5XMG1XPIDSx8AcK83INMzfdGPHlo
	R/P8UwLEOBqaz6Xt3pKbA40gSFJkcnngxJLm7Kk6zzx9PAiA3yAL8YlfP5WfVKVt+Z45vvUGuwTiL
	t8FNqU6grPtN4C096MEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYHn-0001Pn-KM; Fri, 03 May 2019 13:31:35 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHG-0000pd-Pc
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sR7K7nbxI/wFrvfL2pfh30qaAFxP4s0xjMs3P7sgKS0=; b=PWWvjGISa4jyvqxzwlIU1xEexH
 0iMKLuUB+TnK7QCn5uAQHlsms5qjlf7ShCo5rc/STSojUmn+6GedQ2c+ZrxvBdUG8e5H4+APiN65m
 0YQtzbwjuLOg2WIHQofKAj97XzI0KqvicGsGUszt5S/4eZmOGQO7HKOgGGlIJx4VGBBlwwsoVUTNs
 j4wspV96jIzAOd5B6wAc4UuviMfHv99DneQDoSX4nhNHmvav+atwe9okQx1M0LZXDozKvXhBvA5VH
 IOHBibGMzM8qxKZ8vIWGO63mjSNtP5vvcKoL9OHGhzEM9Yy2OyRO7I32T3Ap9grlBMC9ZctFs+kix
 LdUx2Phw==;
Received: from foss.arm.com ([217.140.101.70])
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXbJ-0005oD-Rv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3A4915AD;
 Fri,  3 May 2019 05:47:41 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B9D33F220;
 Fri,  3 May 2019 05:47:38 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 51/56] arm64: KVM: Enable !VHE support for :G/:H perf event
 modifiers
Date: Fri,  3 May 2019 13:44:22 +0100
Message-Id: <20190503124427.190206-52-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084742_053229_FCA6BE1B 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
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

From: Andrew Murray <andrew.murray@arm.com>

Enable/disable event counters as appropriate when entering and exiting
the guest to enable support for guest or host only event counting.

For both VHE and non-VHE we switch the counters between host/guest at
EL2.

The PMU may be on when we change which counters are enabled however
we avoid adding an isb as we instead rely on existing context
synchronisation events: the eret to enter the guest (__guest_enter)
and eret in kvm_call_hyp for __kvm_vcpu_run_nvhe on returning.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  3 +++
 arch/arm64/kvm/hyp/switch.c       |  6 +++++
 arch/arm64/kvm/pmu.c              | 39 +++++++++++++++++++++++++++++++
 3 files changed, 48 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 655ad08edc3a..645d74c705d6 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -591,6 +591,9 @@ static inline int kvm_arch_vcpu_run_pid_change(struct kvm_vcpu *vcpu)
 
 void kvm_set_pmu_events(u32 set, struct perf_event_attr *attr);
 void kvm_clr_pmu_events(u32 clr);
+
+void __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt);
+bool __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt);
 #else
 static inline void kvm_set_pmu_events(u32 set, struct perf_event_attr *attr) {}
 static inline void kvm_clr_pmu_events(u32 clr) {}
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 5444b9c6fb5c..22b4c335e0b2 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -566,6 +566,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 {
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
+	bool pmu_switch_needed;
 	u64 exit_code;
 
 	/*
@@ -585,6 +586,8 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	host_ctxt->__hyp_running_vcpu = vcpu;
 	guest_ctxt = &vcpu->arch.ctxt;
 
+	pmu_switch_needed = __pmu_switch_to_guest(host_ctxt);
+
 	__sysreg_save_state_nvhe(host_ctxt);
 
 	__activate_vm(kern_hyp_va(vcpu->kvm));
@@ -631,6 +634,9 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 */
 	__debug_switch_to_host(vcpu);
 
+	if (pmu_switch_needed)
+		__pmu_switch_to_host(host_ctxt);
+
 	/* Returning to host will clear PSR.I, remask PMR if needed */
 	if (system_uses_irq_prio_masking())
 		gic_write_pmr(GIC_PRIO_IRQOFF);
diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
index 5414b134f99a..599e6d3f692e 100644
--- a/arch/arm64/kvm/pmu.c
+++ b/arch/arm64/kvm/pmu.c
@@ -5,6 +5,7 @@
  */
 #include <linux/kvm_host.h>
 #include <linux/perf_event.h>
+#include <asm/kvm_hyp.h>
 
 /*
  * Given the exclude_{host,guest} attributes, determine if we are going
@@ -43,3 +44,41 @@ void kvm_clr_pmu_events(u32 clr)
 	ctx->pmu_events.events_host &= ~clr;
 	ctx->pmu_events.events_guest &= ~clr;
 }
+
+/**
+ * Disable host events, enable guest events
+ */
+bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenclr_el0);
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenset_el0);
+
+	return (pmu->events_host || pmu->events_guest);
+}
+
+/**
+ * Disable guest events, enable host events
+ */
+void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenclr_el0);
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenset_el0);
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
