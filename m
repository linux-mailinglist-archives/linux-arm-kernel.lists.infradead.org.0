Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57FFC2ECF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ioW9laDRZvLrYUyzNwm7kNbZrbEvTnB9Hh8dqORv0NU=; b=TKt
	SQHLhZPoLGGLW/3uTeMXxab3bmKC5pd/MF6MRBGDxg2kPzwfL2A39fdX2wj8AoaqRH6S8v7UvU/IO
	dkS+v/GS2GJQWgJzYQmExlkropr+6ysWq1OMPyRh+N8VM+XCCTFTQXaLl9C0Io9z9b/MBSNldPcgn
	GBUhND2ZlfL7xr9lgaFTXpz7I5OIqw69z0VG3sDgirVi5hcB1tsRWTOVELKkWW/hxh2P/0qB5DN80
	BcyDIbn9vlBMGKKfhi9+UuyJFuH1+4/EhMXv0eg9yJ2WU9fGKQgKDDp5voBznTpU82/nwL/QEXlW6
	F9Lhjh/hYSo4Yy0sAQMBhGsnfH1lZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDU2-0006DL-JF; Tue, 01 Oct 2019 08:26:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDTu-0006Bg-S3
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:26:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D0FC3AF9F;
 Tue,  1 Oct 2019 08:25:36 +0000 (UTC)
From: Juergen Gross <jgross@suse.com>
To: xen-devel@lists.xenproject.org, x86@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] xen/efi: have a common runtime setup function
Date: Tue,  1 Oct 2019 10:25:34 +0200
Message-Id: <20191001082534.12067-1-jgross@suse.com>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_012603_199445_D46F34BF 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Today the EFI runtime functions are setup in architecture specific
code (x86 and arm), with the functions themselves living in drivers/xen
as they are not architecture dependent.

As the setup is exactly the same for arm and x86 move the setup to
drivers/xen, too. This at once removes the need to make the single
functions global visible.

Signed-off-by: Juergen Gross <jgross@suse.com>
---
 arch/arm/include/asm/xen/xen-ops.h   |  6 ---
 arch/arm/xen/Makefile                |  1 -
 arch/arm/xen/efi.c                   | 30 -------------
 arch/arm/xen/enlighten.c             |  1 -
 arch/arm64/include/asm/xen/xen-ops.h |  7 ---
 arch/arm64/xen/Makefile              |  1 -
 arch/x86/xen/efi.c                   | 16 +------
 drivers/xen/efi.c                    | 85 ++++++++++++++++++++----------------
 include/xen/xen-ops.h                | 25 +----------
 9 files changed, 50 insertions(+), 122 deletions(-)
 delete mode 100644 arch/arm/include/asm/xen/xen-ops.h
 delete mode 100644 arch/arm/xen/efi.c
 delete mode 100644 arch/arm64/include/asm/xen/xen-ops.h

diff --git a/arch/arm/include/asm/xen/xen-ops.h b/arch/arm/include/asm/xen/xen-ops.h
deleted file mode 100644
index ec154e719b11..000000000000
--- a/arch/arm/include/asm/xen/xen-ops.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef _ASM_XEN_OPS_H
-#define _ASM_XEN_OPS_H
-
-void xen_efi_runtime_setup(void);
-
-#endif /* _ASM_XEN_OPS_H */
diff --git a/arch/arm/xen/Makefile b/arch/arm/xen/Makefile
index 7ed28982c4c3..c32d04713ba0 100644
--- a/arch/arm/xen/Makefile
+++ b/arch/arm/xen/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y		:= enlighten.o hypercall.o grant-table.o p2m.o mm.o
-obj-$(CONFIG_XEN_EFI) += efi.o
diff --git a/arch/arm/xen/efi.c b/arch/arm/xen/efi.c
deleted file mode 100644
index cb2aaf98e243..000000000000
--- a/arch/arm/xen/efi.c
+++ /dev/null
@@ -1,30 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (c) 2015, Linaro Limited, Shannon Zhao
- */
-
-#include <linux/efi.h>
-#include <xen/xen-ops.h>
-#include <asm/xen/xen-ops.h>
-
-/* Set XEN EFI runtime services function pointers. Other fields of struct efi,
- * e.g. efi.systab, will be set like normal EFI.
- */
-void __init xen_efi_runtime_setup(void)
-{
-	efi.get_time                 = xen_efi_get_time;
-	efi.set_time                 = xen_efi_set_time;
-	efi.get_wakeup_time          = xen_efi_get_wakeup_time;
-	efi.set_wakeup_time          = xen_efi_set_wakeup_time;
-	efi.get_variable             = xen_efi_get_variable;
-	efi.get_next_variable        = xen_efi_get_next_variable;
-	efi.set_variable             = xen_efi_set_variable;
-	efi.set_variable_nonblocking = xen_efi_set_variable;
-	efi.query_variable_info      = xen_efi_query_variable_info;
-	efi.query_variable_info_nonblocking = xen_efi_query_variable_info;
-	efi.update_capsule           = xen_efi_update_capsule;
-	efi.query_capsule_caps       = xen_efi_query_capsule_caps;
-	efi.get_next_high_mono_count = xen_efi_get_next_high_mono_count;
-	efi.reset_system             = xen_efi_reset_system;
-}
-EXPORT_SYMBOL_GPL(xen_efi_runtime_setup);
diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
index 1e57692552d9..99f955a5b694 100644
--- a/arch/arm/xen/enlighten.c
+++ b/arch/arm/xen/enlighten.c
@@ -15,7 +15,6 @@
 #include <xen/xen-ops.h>
 #include <asm/xen/hypervisor.h>
 #include <asm/xen/hypercall.h>
-#include <asm/xen/xen-ops.h>
 #include <asm/system_misc.h>
 #include <asm/efi.h>
 #include <linux/interrupt.h>
diff --git a/arch/arm64/include/asm/xen/xen-ops.h b/arch/arm64/include/asm/xen/xen-ops.h
deleted file mode 100644
index e6e784051932..000000000000
--- a/arch/arm64/include/asm/xen/xen-ops.h
+++ /dev/null
@@ -1,7 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_XEN_OPS_H
-#define _ASM_XEN_OPS_H
-
-void xen_efi_runtime_setup(void);
-
-#endif /* _ASM_XEN_OPS_H */
diff --git a/arch/arm64/xen/Makefile b/arch/arm64/xen/Makefile
index a4fc65f3928d..b66215e8658e 100644
--- a/arch/arm64/xen/Makefile
+++ b/arch/arm64/xen/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 xen-arm-y	+= $(addprefix ../../arm/xen/, enlighten.o grant-table.o p2m.o mm.o)
 obj-y		:= xen-arm.o hypercall.o
-obj-$(CONFIG_XEN_EFI) += $(addprefix ../../arm/xen/, efi.o)
diff --git a/arch/x86/xen/efi.c b/arch/x86/xen/efi.c
index 7e3eb70f411a..a04551ee5568 100644
--- a/arch/x86/xen/efi.c
+++ b/arch/x86/xen/efi.c
@@ -57,21 +57,7 @@ static efi_system_table_t __init *xen_efi_probe(void)
 		return NULL;
 
 	/* Here we know that Xen runs on EFI platform. */
-
-	efi.get_time                 = xen_efi_get_time;
-	efi.set_time                 = xen_efi_set_time;
-	efi.get_wakeup_time          = xen_efi_get_wakeup_time;
-	efi.set_wakeup_time          = xen_efi_set_wakeup_time;
-	efi.get_variable             = xen_efi_get_variable;
-	efi.get_next_variable        = xen_efi_get_next_variable;
-	efi.set_variable             = xen_efi_set_variable;
-	efi.set_variable_nonblocking = xen_efi_set_variable;
-	efi.query_variable_info      = xen_efi_query_variable_info;
-	efi.query_variable_info_nonblocking = xen_efi_query_variable_info;
-	efi.update_capsule           = xen_efi_update_capsule;
-	efi.query_capsule_caps       = xen_efi_query_capsule_caps;
-	efi.get_next_high_mono_count = xen_efi_get_next_high_mono_count;
-	efi.reset_system             = xen_efi_reset_system;
+	xen_efi_runtime_setup();
 
 	efi_systab_xen.tables = info->cfg.addr;
 	efi_systab_xen.nr_tables = info->cfg.nent;
diff --git a/drivers/xen/efi.c b/drivers/xen/efi.c
index 89d60f8e3c18..ffbdaa9f4a45 100644
--- a/drivers/xen/efi.c
+++ b/drivers/xen/efi.c
@@ -40,7 +40,7 @@
 
 #define efi_data(op)	(op.u.efi_runtime_call)
 
-efi_status_t xen_efi_get_time(efi_time_t *tm, efi_time_cap_t *tc)
+static efi_status_t xen_efi_get_time(efi_time_t *tm, efi_time_cap_t *tc)
 {
 	struct xen_platform_op op = INIT_EFI_OP(get_time);
 
@@ -61,9 +61,8 @@ efi_status_t xen_efi_get_time(efi_time_t *tm, efi_time_cap_t *tc)
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_get_time);
 
-efi_status_t xen_efi_set_time(efi_time_t *tm)
+static efi_status_t xen_efi_set_time(efi_time_t *tm)
 {
 	struct xen_platform_op op = INIT_EFI_OP(set_time);
 
@@ -75,10 +74,10 @@ efi_status_t xen_efi_set_time(efi_time_t *tm)
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_set_time);
 
-efi_status_t xen_efi_get_wakeup_time(efi_bool_t *enabled, efi_bool_t *pending,
-				     efi_time_t *tm)
+static efi_status_t xen_efi_get_wakeup_time(efi_bool_t *enabled,
+					    efi_bool_t *pending,
+					    efi_time_t *tm)
 {
 	struct xen_platform_op op = INIT_EFI_OP(get_wakeup_time);
 
@@ -98,9 +97,8 @@ efi_status_t xen_efi_get_wakeup_time(efi_bool_t *enabled, efi_bool_t *pending,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_get_wakeup_time);
 
-efi_status_t xen_efi_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm)
+static efi_status_t xen_efi_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm)
 {
 	struct xen_platform_op op = INIT_EFI_OP(set_wakeup_time);
 
@@ -117,11 +115,10 @@ efi_status_t xen_efi_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm)
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_set_wakeup_time);
 
-efi_status_t xen_efi_get_variable(efi_char16_t *name, efi_guid_t *vendor,
-				  u32 *attr, unsigned long *data_size,
-				  void *data)
+static efi_status_t xen_efi_get_variable(efi_char16_t *name, efi_guid_t *vendor,
+					 u32 *attr, unsigned long *data_size,
+					 void *data)
 {
 	struct xen_platform_op op = INIT_EFI_OP(get_variable);
 
@@ -141,11 +138,10 @@ efi_status_t xen_efi_get_variable(efi_char16_t *name, efi_guid_t *vendor,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_get_variable);
 
-efi_status_t xen_efi_get_next_variable(unsigned long *name_size,
-				       efi_char16_t *name,
-				       efi_guid_t *vendor)
+static efi_status_t xen_efi_get_next_variable(unsigned long *name_size,
+					      efi_char16_t *name,
+					      efi_guid_t *vendor)
 {
 	struct xen_platform_op op = INIT_EFI_OP(get_next_variable_name);
 
@@ -165,11 +161,10 @@ efi_status_t xen_efi_get_next_variable(unsigned long *name_size,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_get_next_variable);
 
-efi_status_t xen_efi_set_variable(efi_char16_t *name, efi_guid_t *vendor,
-				 u32 attr, unsigned long data_size,
-				 void *data)
+static efi_status_t xen_efi_set_variable(efi_char16_t *name, efi_guid_t *vendor,
+					 u32 attr, unsigned long data_size,
+					 void *data)
 {
 	struct xen_platform_op op = INIT_EFI_OP(set_variable);
 
@@ -186,11 +181,10 @@ efi_status_t xen_efi_set_variable(efi_char16_t *name, efi_guid_t *vendor,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_set_variable);
 
-efi_status_t xen_efi_query_variable_info(u32 attr, u64 *storage_space,
-					 u64 *remaining_space,
-					 u64 *max_variable_size)
+static efi_status_t xen_efi_query_variable_info(u32 attr, u64 *storage_space,
+						u64 *remaining_space,
+						u64 *max_variable_size)
 {
 	struct xen_platform_op op = INIT_EFI_OP(query_variable_info);
 
@@ -208,9 +202,8 @@ efi_status_t xen_efi_query_variable_info(u32 attr, u64 *storage_space,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_query_variable_info);
 
-efi_status_t xen_efi_get_next_high_mono_count(u32 *count)
+static efi_status_t xen_efi_get_next_high_mono_count(u32 *count)
 {
 	struct xen_platform_op op = INIT_EFI_OP(get_next_high_monotonic_count);
 
@@ -221,10 +214,9 @@ efi_status_t xen_efi_get_next_high_mono_count(u32 *count)
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_get_next_high_mono_count);
 
-efi_status_t xen_efi_update_capsule(efi_capsule_header_t **capsules,
-				    unsigned long count, unsigned long sg_list)
+static efi_status_t xen_efi_update_capsule(efi_capsule_header_t **capsules,
+				unsigned long count, unsigned long sg_list)
 {
 	struct xen_platform_op op = INIT_EFI_OP(update_capsule);
 
@@ -241,11 +233,9 @@ efi_status_t xen_efi_update_capsule(efi_capsule_header_t **capsules,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_update_capsule);
 
-efi_status_t xen_efi_query_capsule_caps(efi_capsule_header_t **capsules,
-					unsigned long count, u64 *max_size,
-					int *reset_type)
+static efi_status_t xen_efi_query_capsule_caps(efi_capsule_header_t **capsules,
+			unsigned long count, u64 *max_size, int *reset_type)
 {
 	struct xen_platform_op op = INIT_EFI_OP(query_capsule_capabilities);
 
@@ -264,10 +254,9 @@ efi_status_t xen_efi_query_capsule_caps(efi_capsule_header_t **capsules,
 
 	return efi_data(op).status;
 }
-EXPORT_SYMBOL_GPL(xen_efi_query_capsule_caps);
 
-void xen_efi_reset_system(int reset_type, efi_status_t status,
-			  unsigned long data_size, efi_char16_t *data)
+static void xen_efi_reset_system(int reset_type, efi_status_t status,
+				 unsigned long data_size, efi_char16_t *data)
 {
 	switch (reset_type) {
 	case EFI_RESET_COLD:
@@ -281,4 +270,26 @@ void xen_efi_reset_system(int reset_type, efi_status_t status,
 		BUG();
 	}
 }
-EXPORT_SYMBOL_GPL(xen_efi_reset_system);
+
+/*
+ * Set XEN EFI runtime services function pointers. Other fields of struct efi,
+ * e.g. efi.systab, will be set like normal EFI.
+ */
+void __init xen_efi_runtime_setup(void)
+{
+	efi.get_time			= xen_efi_get_time;
+	efi.set_time			= xen_efi_set_time;
+	efi.get_wakeup_time		= xen_efi_get_wakeup_time;
+	efi.set_wakeup_time		= xen_efi_set_wakeup_time;
+	efi.get_variable		= xen_efi_get_variable;
+	efi.get_next_variable		= xen_efi_get_next_variable;
+	efi.set_variable		= xen_efi_set_variable;
+	efi.set_variable_nonblocking	= xen_efi_set_variable;
+	efi.query_variable_info		= xen_efi_query_variable_info;
+	efi.query_variable_info_nonblocking = xen_efi_query_variable_info;
+	efi.update_capsule		= xen_efi_update_capsule;
+	efi.query_capsule_caps		= xen_efi_query_capsule_caps;
+	efi.get_next_high_mono_count	= xen_efi_get_next_high_mono_count;
+	efi.reset_system		= xen_efi_reset_system;
+}
+EXPORT_SYMBOL_GPL(xen_efi_runtime_setup);
diff --git a/include/xen/xen-ops.h b/include/xen/xen-ops.h
index 98b30c1613b2..d89969aa9942 100644
--- a/include/xen/xen-ops.h
+++ b/include/xen/xen-ops.h
@@ -212,30 +212,7 @@ int xen_xlate_map_ballooned_pages(xen_pfn_t **pfns, void **vaddr,
 
 bool xen_running_on_version_or_later(unsigned int major, unsigned int minor);
 
-efi_status_t xen_efi_get_time(efi_time_t *tm, efi_time_cap_t *tc);
-efi_status_t xen_efi_set_time(efi_time_t *tm);
-efi_status_t xen_efi_get_wakeup_time(efi_bool_t *enabled, efi_bool_t *pending,
-				     efi_time_t *tm);
-efi_status_t xen_efi_set_wakeup_time(efi_bool_t enabled, efi_time_t *tm);
-efi_status_t xen_efi_get_variable(efi_char16_t *name, efi_guid_t *vendor,
-				  u32 *attr, unsigned long *data_size,
-				  void *data);
-efi_status_t xen_efi_get_next_variable(unsigned long *name_size,
-				       efi_char16_t *name, efi_guid_t *vendor);
-efi_status_t xen_efi_set_variable(efi_char16_t *name, efi_guid_t *vendor,
-				  u32 attr, unsigned long data_size,
-				  void *data);
-efi_status_t xen_efi_query_variable_info(u32 attr, u64 *storage_space,
-					 u64 *remaining_space,
-					 u64 *max_variable_size);
-efi_status_t xen_efi_get_next_high_mono_count(u32 *count);
-efi_status_t xen_efi_update_capsule(efi_capsule_header_t **capsules,
-				    unsigned long count, unsigned long sg_list);
-efi_status_t xen_efi_query_capsule_caps(efi_capsule_header_t **capsules,
-					unsigned long count, u64 *max_size,
-					int *reset_type);
-void xen_efi_reset_system(int reset_type, efi_status_t status,
-			  unsigned long data_size, efi_char16_t *data);
+void xen_efi_runtime_setup(void);
 
 
 #ifdef CONFIG_PREEMPT
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
