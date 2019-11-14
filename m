Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1D7FC622
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 13:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wVftvAhiQLdLtoYqYhIu3jWThgB/PWmEnGIj6xE/hGk=; b=b82OUmgCnG79Rx8GkM9x15cRN6
	d+rWAQ4sRehSEGs4Qt5chtehgtyxt23V5r/FpqaxfZGqePRrSkH8qmXaLdrolEYQnyxWCcN9sCxL2
	UomZXnqRCDlctuly6Lgni+lFJP5bdg/r0k/cEnAO/V4AdN0voBZ7av2FuwEKpAGMl7q6EwldMzuvA
	K4dxaNYQXK+vzYYfSWPvEVitBriQEzFhsLjQfWgRH3dtbPYD+YyUNDqXeP+wfRHQ5AdihoD95W6Z8
	dzsTpd4W8dC8yq2tj5Ofs7OhUD4lReo0oxxCBg6/j+uqWw4maE0dVkiMqjPC/dy4dX+YvjdZsNeOb
	cE+G3ZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVE37-0005Mp-EH; Thu, 14 Nov 2019 12:16:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVE1f-0002zB-Qa
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 12:15:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BB8AC86;
 Thu, 14 Nov 2019 04:15:03 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 553653F6C4;
 Thu, 14 Nov 2019 04:14:57 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [RFC PATCH v7 7/7] kvm: arm64: Add capability check extension for
 ptp_kvm
Date: Thu, 14 Nov 2019 20:13:58 +0800
Message-Id: <20191114121358.6684-8-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114121358.6684-1-jianyong.wu@arm.com>
References: <20191114121358.6684-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_041504_224932_DCB67528 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let userspace check if there is kvm ptp service in host.
before VMs migrate to a another host, VMM may check if this
cap is available to determine the migration behaviour.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
Suggested-by: Marc Zyngier <maz@kernel.org>
---
 drivers/clocksource/arm_arch_timer.c | 4 ++--
 drivers/ptp/ptp_kvm_arm64.c          | 1 -
 include/uapi/linux/kvm.h             | 1 +
 virt/kvm/arm/arm.c                   | 1 +
 4 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index b931ae94764f..e407e774ff36 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -1639,7 +1639,7 @@ TIMER_ACPI_DECLARE(arch_timer, ACPI_SIG_GTDT, arch_timer_acpi_init);
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK_KVM)
 #include <linux/arm-smccc.h>
-int kvm_arch_ptp_get_clock_fn(unsigned long *cycle, struct timespec64 *ts,
+int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *ts,
 			      struct clocksource **cs)
 {
 	struct arm_smccc_res hvc_res;
@@ -1656,5 +1656,5 @@ int kvm_arch_ptp_get_clock_fn(unsigned long *cycle, struct timespec64 *ts,
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(kvm_arch_ptp_get_clock_fn);
+EXPORT_SYMBOL_GPL(kvm_arch_ptp_get_crosststamp);
 #endif
diff --git a/drivers/ptp/ptp_kvm_arm64.c b/drivers/ptp/ptp_kvm_arm64.c
index 7c697f20904f..f3f957117865 100644
--- a/drivers/ptp/ptp_kvm_arm64.c
+++ b/drivers/ptp/ptp_kvm_arm64.c
@@ -30,7 +30,6 @@ int kvm_arch_ptp_init(void)
 int kvm_arch_ptp_get_clock_generic(struct timespec64 *ts,
 				   struct arm_smccc_res *hvc_res)
 {
-	u64 ns;
 	ktime_t ktime_overall;
 
 	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID,
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 2fe12b40d503..a0bff6002bd9 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -993,6 +993,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_ARM_SVE 170
 #define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
 #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
+#define KVM_CAP_ARM_KVM_PTP 173
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index bd5c55916d0d..80999985160b 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -201,6 +201,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	case KVM_CAP_MP_STATE:
 	case KVM_CAP_IMMEDIATE_EXIT:
 	case KVM_CAP_VCPU_EVENTS:
+	case KVM_CAP_ARM_KVM_PTP:
 		r = 1;
 		break;
 	case KVM_CAP_ARM_SET_DEVICE_ADDR:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
