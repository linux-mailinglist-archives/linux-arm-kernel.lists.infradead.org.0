Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C058E1CA183
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EThg5RLpX+6EDlmhlw0pNGOTfrmlRm1L2l/KAaNfP8A=; b=aHu/QC0cwOhYAC
	D+VaFwQ8oo/gtd3vo/tbksb+A5N1mHq9HzSxRYRqQeUFZX4ohjFR0wojcMoNoMDY3nZ8ZYH8+YLRP
	ui0b4QZUqfCXYlCjn9so/mUHc+UwmhfN8a6YD7v+zuVMPjsUAEsrbbGjUo87FrXgUCnkajSM753z/
	m5za1rc9Zkk+2BcIVWYJzsZBL9nlZ7puCfJEXdCmukAVuA9CgNFsBgABMoEILkOl9kcTkZ7Vp9QDP
	YziarIqWZ0JQefOMT058z9UfBUTZyCBWx9sixgxlyI7nXbjTJB4K6WSrS7AaehvyVE+ka3Sq3TbMC
	j7mXpFCp0JryWKrgYGZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtil-0001dQ-Ug; Fri, 08 May 2020 03:30:43 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtiR-0001TS-E3
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588908622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v2m5baSn+ZYgBiiLOUz37xt+J63O4vzP3FQSixT340E=;
 b=Dm/7xupWpqA7IlXpoaVqUKpD76A3Q44xKRPRZuAComz3DMvrvQoGFbUIr4VvZdgoGo3TEX
 DkMmFimmYZiiA0Kv6zWIkRxR89FRk5tGBaEMblqmHnjDHoJkhXiO0X3YMY1rNdlMMvJ9N/
 /DRxLTU/6G8z+2NsRa/jFZfAEGGfvq0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-mK6p5XOzO-Gc_iPCxbJ03w-1; Thu, 07 May 2020 23:30:20 -0400
X-MC-Unique: mK6p5XOzO-Gc_iPCxbJ03w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E47610082EA;
 Fri,  8 May 2020 03:30:18 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9342599CF;
 Fri,  8 May 2020 03:30:12 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv2 1/9] arm64: Probe for the presence of KVM hypervisor
 services during boot
Date: Fri,  8 May 2020 13:29:11 +1000
Message-Id: <20200508032919.52147-2-gshan@redhat.com>
In-Reply-To: <20200508032919.52147-1-gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_203023_575830_884D34C9 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, aarcange@redhat.com, drjones@redhat.com,
 suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will@kernel.org>

Although the SMCCC specification provides some limited functionality for
describing the presence of hypervisor and firmware services, this is
generally applicable only to functions designated as "Arm Architecture
Service Functions" and no portable discovery mechanism is provided for
standard hypervisor services, despite having a designated range of
function identifiers reserved by the specification.

In an attempt to avoid the need for additional firmware changes every
time a new function is added, introduce a UID to identify the service
provider as being compatible with KVM. Once this has been established,
additional services can be discovered via a feature bitmap.

Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/hypervisor.h | 11 +++++++++
 arch/arm64/kernel/setup.c           | 35 +++++++++++++++++++++++++++++
 include/linux/arm-smccc.h           | 26 +++++++++++++++++++++
 3 files changed, 72 insertions(+)

diff --git a/arch/arm64/include/asm/hypervisor.h b/arch/arm64/include/asm/hypervisor.h
index f9cc1d021791..91e4bd890819 100644
--- a/arch/arm64/include/asm/hypervisor.h
+++ b/arch/arm64/include/asm/hypervisor.h
@@ -2,6 +2,17 @@
 #ifndef _ASM_ARM64_HYPERVISOR_H
 #define _ASM_ARM64_HYPERVISOR_H
 
+#include <linux/arm-smccc.h>
 #include <asm/xen/hypervisor.h>
 
+static inline bool kvm_arm_hyp_service_available(u32 func_id)
+{
+	extern DECLARE_BITMAP(__kvm_arm_hyp_services, ARM_SMCCC_KVM_NUM_FUNCS);
+
+	if (func_id >= ARM_SMCCC_KVM_NUM_FUNCS)
+		return -EINVAL;
+
+	return test_bit(func_id, __kvm_arm_hyp_services);
+}
+
 #endif
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 3fd2c11c09fc..61c3774c7bc9 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/acpi.h>
+#include <linux/arm-smccc.h>
 #include <linux/export.h>
 #include <linux/kernel.h>
 #include <linux/stddef.h>
@@ -275,6 +276,39 @@ static int __init reserve_memblock_reserved_regions(void)
 arch_initcall(reserve_memblock_reserved_regions);
 
 u64 __cpu_logical_map[NR_CPUS] = { [0 ... NR_CPUS-1] = INVALID_HWID };
+DECLARE_BITMAP(__kvm_arm_hyp_services, ARM_SMCCC_KVM_NUM_FUNCS) = { };
+
+static void __init kvm_init_hyp_services(void)
+{
+	int i;
+	struct arm_smccc_res res;
+
+	if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
+		return;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID, &res);
+	if (res.a0 != ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_0 ||
+	    res.a1 != ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_1 ||
+	    res.a2 != ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_2 ||
+	    res.a3 != ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_3)
+		return;
+
+	memset(&res, 0, sizeof(res));
+	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID, &res);
+	for (i = 0; i < 32; ++i) {
+		if (res.a0 & (i))
+			set_bit(i + (32 * 0), __kvm_arm_hyp_services);
+		if (res.a1 & (i))
+			set_bit(i + (32 * 1), __kvm_arm_hyp_services);
+		if (res.a2 & (i))
+			set_bit(i + (32 * 2), __kvm_arm_hyp_services);
+		if (res.a3 & (i))
+			set_bit(i + (32 * 3), __kvm_arm_hyp_services);
+	}
+
+	pr_info("KVM hypervisor services detected (0x%08lx 0x%08lx 0x%08lx 0x%08lx)\n",
+		res.a3, res.a2, res.a1, res.a0);
+}
 
 void __init setup_arch(char **cmdline_p)
 {
@@ -344,6 +378,7 @@ void __init setup_arch(char **cmdline_p)
 	else
 		psci_acpi_init();
 
+	kvm_init_hyp_services();
 	init_bootcpu_ops();
 	smp_init_cpus();
 	smp_build_mpidr_hash();
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 59494df0f55b..bdc0124a064a 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -46,11 +46,14 @@
 #define ARM_SMCCC_OWNER_OEM		3
 #define ARM_SMCCC_OWNER_STANDARD	4
 #define ARM_SMCCC_OWNER_STANDARD_HYP	5
+#define ARM_SMCCC_OWNER_VENDOR_HYP	6
 #define ARM_SMCCC_OWNER_TRUSTED_APP	48
 #define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
 #define ARM_SMCCC_OWNER_TRUSTED_OS_END	63
 
+#define ARM_SMCCC_FUNC_QUERY_CALL_UID	0xff01
+
 #define ARM_SMCCC_QUIRK_NONE		0
 #define ARM_SMCCC_QUIRK_QCOM_A6		1 /* Save/restore register a6 */
 
@@ -77,6 +80,29 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 0x7fff)
 
+#define ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_FUNC_QUERY_CALL_UID)
+
+/* KVM UID value: 28b46fb6-2ec5-11e9-a9ca-4b564d003a74 */
+#define ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_0	0xb66fb428U
+#define ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_1	0xe911c52eU
+#define ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_2	0x564bcaa9U
+#define ARM_SMCCC_VENDOR_HYP_UID_KVM_REG_3	0x743a004dU
+
+/* KVM "vendor specific" services */
+#define ARM_SMCCC_KVM_FUNC_FEATURES		0
+#define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
+#define ARM_SMCCC_KVM_NUM_FUNCS			128
+
+#define ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID			\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_FEATURES)
+
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
