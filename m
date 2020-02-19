Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE1A164872
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oeBma11Swamo+UXFA2UJ8O6PXvbnzO0SAvFsgH3GUxk=; b=PX/0cA8cm6xV7YsgnqOMnnDg9h
	JCCwpWNx/rMeTyC/7pt9SE4A+phbI9pxaLvreuCduiv8r8Hgi9GJngoxwL5wbV1RpfQQxb1364H/a
	xMTdQeAfMFXj4B8zW2P9ZSE06py9IGWmDwSvC4wLVPsVPpSP+ufU9SJ/MIQK6CyoKn3CkaQG9fuCG
	SFEVOzXFI4z350LGCK/qxx+C0ePRPezgO7bDCTyxdULK9W0UBPtXGxVm7cad5mIEZ4Nxnv8rB29F3
	ehgc0dAzs09NxhNty4GYXc9174EwVT67+y4L+eWXoGSLqSJ3BxXUvRdglKZOeI5kgHy38aikJ5Ba2
	AkE7K4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RDy-0006Uk-Dw; Wed, 19 Feb 2020 15:25:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RDU-0006KL-1M
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:24:49 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24D6D24670;
 Wed, 19 Feb 2020 15:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582125887;
 bh=p6quxa+3E1BfuMVMn0x0SwwnZ3l7CEP0hQbWAuv0qCk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1jVDtel0N9HhxINANEq48Icp6Exc9PIYAypzVzF6G//GZTvaBBZVRZwl2DWtNYCF0
 aAqhznkAtkxMAmooWgMec5bpAlLzRrnXFHPicbgRRigANfthD3bXTFTKUrXaYPG3M2
 17sT8GJul4EXa08RmFfx3JNdMjfHf/D2wRXLbWjY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 1/3] efi/arm: move FDT param discovery code out of efi.c
Date: Wed, 19 Feb 2020 16:24:38 +0100
Message-Id: <20200219152440.11561-2-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219152440.11561-1-ardb@kernel.org>
References: <20200219152440.11561-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072448_126310_2D6124FA 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: atish.patra@wdc.com, leif@nuviainc.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On ARM systems, we discover the UEFI system table address and memory
map address from the /chosen node in the device tree, or in the Xen
case, from a similar node under /hypervisor.

Before making some functional changes to that code, move it into its
own file that only gets built if CONFIG_EFI_PARAMS_FROM_FDT=y.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/Makefile    |   1 +
 drivers/firmware/efi/efi.c       | 135 -------------------
 drivers/firmware/efi/fdtparams.c | 142 ++++++++++++++++++++
 3 files changed, 143 insertions(+), 135 deletions(-)

diff --git a/drivers/firmware/efi/Makefile b/drivers/firmware/efi/Makefile
index 554d795270d9..3c5a9690de04 100644
--- a/drivers/firmware/efi/Makefile
+++ b/drivers/firmware/efi/Makefile
@@ -13,6 +13,7 @@ KASAN_SANITIZE_runtime-wrappers.o	:= n
 obj-$(CONFIG_ACPI_BGRT) 		+= efi-bgrt.o
 obj-$(CONFIG_EFI)			+= efi.o vars.o reboot.o memattr.o tpm.o
 obj-$(CONFIG_EFI)			+= capsule.o memmap.o
+obj-$(CONFIG_EFI_PARAMS_FROM_FDT)	+= fdtparams.o
 obj-$(CONFIG_EFI_VARS)			+= efivars.o
 obj-$(CONFIG_EFI_ESRT)			+= esrt.o
 obj-$(CONFIG_EFI_VARS_PSTORE)		+= efi-pstore.o
diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 55570ed751e8..69a585106d30 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -20,7 +20,6 @@
 #include <linux/device.h>
 #include <linux/efi.h>
 #include <linux/of.h>
-#include <linux/of_fdt.h>
 #include <linux/io.h>
 #include <linux/kexec.h>
 #include <linux/platform_device.h>
@@ -656,140 +655,6 @@ void __init efi_systab_report_header(const efi_table_hdr_t *systab_hdr,
 		vendor);
 }
 
-#ifdef CONFIG_EFI_PARAMS_FROM_FDT
-
-#define UEFI_PARAM(name, prop, field)			   \
-	{						   \
-		{ name },				   \
-		{ prop },				   \
-		offsetof(struct efi_fdt_params, field),    \
-		sizeof_field(struct efi_fdt_params, field) \
-	}
-
-struct params {
-	const char name[32];
-	const char propname[32];
-	int offset;
-	int size;
-};
-
-static __initdata struct params fdt_params[] = {
-	UEFI_PARAM("System Table", "linux,uefi-system-table", system_table),
-	UEFI_PARAM("MemMap Address", "linux,uefi-mmap-start", mmap),
-	UEFI_PARAM("MemMap Size", "linux,uefi-mmap-size", mmap_size),
-	UEFI_PARAM("MemMap Desc. Size", "linux,uefi-mmap-desc-size", desc_size),
-	UEFI_PARAM("MemMap Desc. Version", "linux,uefi-mmap-desc-ver", desc_ver)
-};
-
-static __initdata struct params xen_fdt_params[] = {
-	UEFI_PARAM("System Table", "xen,uefi-system-table", system_table),
-	UEFI_PARAM("MemMap Address", "xen,uefi-mmap-start", mmap),
-	UEFI_PARAM("MemMap Size", "xen,uefi-mmap-size", mmap_size),
-	UEFI_PARAM("MemMap Desc. Size", "xen,uefi-mmap-desc-size", desc_size),
-	UEFI_PARAM("MemMap Desc. Version", "xen,uefi-mmap-desc-ver", desc_ver)
-};
-
-#define EFI_FDT_PARAMS_SIZE	ARRAY_SIZE(fdt_params)
-
-static __initdata struct {
-	const char *uname;
-	const char *subnode;
-	struct params *params;
-} dt_params[] = {
-	{ "hypervisor", "uefi", xen_fdt_params },
-	{ "chosen", NULL, fdt_params },
-};
-
-struct param_info {
-	int found;
-	void *params;
-	const char *missing;
-};
-
-static int __init __find_uefi_params(unsigned long node,
-				     struct param_info *info,
-				     struct params *params)
-{
-	const void *prop;
-	void *dest;
-	u64 val;
-	int i, len;
-
-	for (i = 0; i < EFI_FDT_PARAMS_SIZE; i++) {
-		prop = of_get_flat_dt_prop(node, params[i].propname, &len);
-		if (!prop) {
-			info->missing = params[i].name;
-			return 0;
-		}
-
-		dest = info->params + params[i].offset;
-		info->found++;
-
-		val = of_read_number(prop, len / sizeof(u32));
-
-		if (params[i].size == sizeof(u32))
-			*(u32 *)dest = val;
-		else
-			*(u64 *)dest = val;
-
-		if (efi_enabled(EFI_DBG))
-			pr_info("  %s: 0x%0*llx\n", params[i].name,
-				params[i].size * 2, val);
-	}
-
-	return 1;
-}
-
-static int __init fdt_find_uefi_params(unsigned long node, const char *uname,
-				       int depth, void *data)
-{
-	struct param_info *info = data;
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(dt_params); i++) {
-		const char *subnode = dt_params[i].subnode;
-
-		if (depth != 1 || strcmp(uname, dt_params[i].uname) != 0) {
-			info->missing = dt_params[i].params[0].name;
-			continue;
-		}
-
-		if (subnode) {
-			int err = of_get_flat_dt_subnode_by_name(node, subnode);
-
-			if (err < 0)
-				return 0;
-
-			node = err;
-		}
-
-		return __find_uefi_params(node, info, dt_params[i].params);
-	}
-
-	return 0;
-}
-
-int __init efi_get_fdt_params(struct efi_fdt_params *params)
-{
-	struct param_info info;
-	int ret;
-
-	pr_info("Getting EFI parameters from FDT:\n");
-
-	info.found = 0;
-	info.params = params;
-
-	ret = of_scan_flat_dt(fdt_find_uefi_params, &info);
-	if (!info.found)
-		pr_info("UEFI not found.\n");
-	else if (!ret)
-		pr_err("Can't find '%s' in device tree!\n",
-		       info.missing);
-
-	return ret;
-}
-#endif /* CONFIG_EFI_PARAMS_FROM_FDT */
-
 static __initdata char memory_type_name[][20] = {
 	"Reserved",
 	"Loader Code",
diff --git a/drivers/firmware/efi/fdtparams.c b/drivers/firmware/efi/fdtparams.c
new file mode 100644
index 000000000000..3de343faffc6
--- /dev/null
+++ b/drivers/firmware/efi/fdtparams.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "efi: " fmt
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/efi.h>
+#include <linux/of.h>
+#include <linux/of_fdt.h>
+
+#include <asm/early_ioremap.h>
+
+#define UEFI_PARAM(name, prop, field)			   \
+	{						   \
+		{ name },				   \
+		{ prop },				   \
+		offsetof(struct efi_fdt_params, field),    \
+		sizeof_field(struct efi_fdt_params, field) \
+	}
+
+struct params {
+	const char name[32];
+	const char propname[32];
+	int offset;
+	int size;
+};
+
+static __initdata struct params fdt_params[] = {
+	UEFI_PARAM("System Table", "linux,uefi-system-table", system_table),
+	UEFI_PARAM("MemMap Address", "linux,uefi-mmap-start", mmap),
+	UEFI_PARAM("MemMap Size", "linux,uefi-mmap-size", mmap_size),
+	UEFI_PARAM("MemMap Desc. Size", "linux,uefi-mmap-desc-size", desc_size),
+	UEFI_PARAM("MemMap Desc. Version", "linux,uefi-mmap-desc-ver", desc_ver)
+};
+
+static __initdata struct params xen_fdt_params[] = {
+	UEFI_PARAM("System Table", "xen,uefi-system-table", system_table),
+	UEFI_PARAM("MemMap Address", "xen,uefi-mmap-start", mmap),
+	UEFI_PARAM("MemMap Size", "xen,uefi-mmap-size", mmap_size),
+	UEFI_PARAM("MemMap Desc. Size", "xen,uefi-mmap-desc-size", desc_size),
+	UEFI_PARAM("MemMap Desc. Version", "xen,uefi-mmap-desc-ver", desc_ver)
+};
+
+#define EFI_FDT_PARAMS_SIZE	ARRAY_SIZE(fdt_params)
+
+static __initdata struct {
+	const char *uname;
+	const char *subnode;
+	struct params *params;
+} dt_params[] = {
+	{ "hypervisor", "uefi", xen_fdt_params },
+	{ "chosen", NULL, fdt_params },
+};
+
+struct param_info {
+	int found;
+	void *params;
+	const char *missing;
+};
+
+static int __init __find_uefi_params(unsigned long node,
+				     struct param_info *info,
+				     struct params *params)
+{
+	const void *prop;
+	void *dest;
+	u64 val;
+	int i, len;
+
+	for (i = 0; i < EFI_FDT_PARAMS_SIZE; i++) {
+		prop = of_get_flat_dt_prop(node, params[i].propname, &len);
+		if (!prop) {
+			info->missing = params[i].name;
+			return 0;
+		}
+
+		dest = info->params + params[i].offset;
+		info->found++;
+
+		val = of_read_number(prop, len / sizeof(u32));
+
+		if (params[i].size == sizeof(u32))
+			*(u32 *)dest = val;
+		else
+			*(u64 *)dest = val;
+
+		if (efi_enabled(EFI_DBG))
+			pr_info("  %s: 0x%0*llx\n", params[i].name,
+				params[i].size * 2, val);
+	}
+
+	return 1;
+}
+
+static int __init fdt_find_uefi_params(unsigned long node, const char *uname,
+				       int depth, void *data)
+{
+	struct param_info *info = data;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(dt_params); i++) {
+		const char *subnode = dt_params[i].subnode;
+
+		if (depth != 1 || strcmp(uname, dt_params[i].uname) != 0) {
+			info->missing = dt_params[i].params[0].name;
+			continue;
+		}
+
+		if (subnode) {
+			int err = of_get_flat_dt_subnode_by_name(node, subnode);
+
+			if (err < 0)
+				return 0;
+
+			node = err;
+		}
+
+		return __find_uefi_params(node, info, dt_params[i].params);
+	}
+
+	return 0;
+}
+
+int __init efi_get_fdt_params(struct efi_fdt_params *params)
+{
+	struct param_info info;
+	int ret;
+
+	pr_info("Getting EFI parameters from FDT:\n");
+
+	info.found = 0;
+	info.params = params;
+
+	ret = of_scan_flat_dt(fdt_find_uefi_params, &info);
+	if (!info.found)
+		pr_info("UEFI not found.\n");
+	else if (!ret)
+		pr_err("Can't find '%s' in device tree!\n",
+		       info.missing);
+
+	return ret;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
