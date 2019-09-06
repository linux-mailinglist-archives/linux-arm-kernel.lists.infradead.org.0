Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467B7AC36B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 01:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Js93UAxakNEN0mbz8ssSYVtrLFTCHWw6mh1bd+fX87o=; b=lEZ+XroLH2Zr3pnxWNnzG98aSo
	ljFp6aJETDwBFXKYCwrtHA2MDrnCSGuhgz4mUHI+hTM8I10e9l+3xMENYidwBql2dVVfIY9b7iI2L
	X/sQvej9Wwsbh4AXvhOTZKGqjhtZpAlQWsrT7MwXTXh4Lrbmxx4sEIVvTzTczOLQ/u58HerMMZs7e
	LAhOiclYrDrrLFw+xI+fod6ugrLURSXt0BLLvKuMJHcM/69Sw55+dwupOFNztZapXb6Jyf2OVVxZS
	hlxhWpDdL8b3JYiSSd90P3rtwwnSaZmmVOxyjjtwIU6i+Uu7crGHvCuagtC5Ndw8FQANyZGXXuInW
	4hS0Wlug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6O17-0006hz-E0; Fri, 06 Sep 2019 23:51:49 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6O0e-0006W4-79
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 23:51:21 +0000
Received: from prsriva-Precision-Tower-5810.corp.microsoft.com (unknown
 [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id C50CC20B7187;
 Fri,  6 Sep 2019 16:51:18 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C50CC20B7187
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC][PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
Date: Fri,  6 Sep 2019 16:51:10 -0700
Message-Id: <20190906235110.15566-2-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906235110.15566-1-prsriva@linux.microsoft.com>
References: <20190906235110.15566-1-prsriva@linux.microsoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_165120_304237_C555E672 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During kexec_file_load, carrying forward the ima measurement log allows
a verifying party to get the entire runtime event log since the last
full reboot since that is when PCRs were last reset.

Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
---
 arch/arm64/Kconfig                     |   7 +
 arch/arm64/include/asm/ima.h           |  29 ++++
 arch/arm64/include/asm/kexec.h         |   5 +
 arch/arm64/kernel/Makefile             |   3 +-
 arch/arm64/kernel/ima_kexec.c          | 213 +++++++++++++++++++++++++
 arch/arm64/kernel/machine_kexec_file.c |   6 +
 6 files changed, 262 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/ima.h
 create mode 100644 arch/arm64/kernel/ima_kexec.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..f39b12dbf9e8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -976,6 +976,13 @@ config KEXEC_VERIFY_SIG
 	  verification for the corresponding kernel image type being
 	  loaded in order for this to work.
 
+config HAVE_IMA_KEXEC
+	bool "Carry over IMA measurement log during kexec_file_load() syscall"
+	depends on KEXEC_FILE
+	help
+	  Select this option to carry over IMA measurement log during
+	  kexec_file_load.
+
 config KEXEC_IMAGE_VERIFY_SIG
 	bool "Enable Image signature verification support"
 	default y
diff --git a/arch/arm64/include/asm/ima.h b/arch/arm64/include/asm/ima.h
new file mode 100644
index 000000000000..e23cee84729f
--- /dev/null
+++ b/arch/arm64/include/asm/ima.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARM64_IMA_H
+#define _ASM_ARM64_IMA_H
+
+struct kimage;
+
+int ima_get_kexec_buffer(void **addr, size_t *size);
+int ima_free_kexec_buffer(void);
+
+#ifdef CONFIG_IMA
+void remove_ima_buffer(void *fdt, int chosen_node);
+#else
+static inline void remove_ima_buffer(void *fdt, int chosen_node) {}
+#endif
+
+#ifdef CONFIG_IMA_KEXEC
+int arch_ima_add_kexec_buffer(struct kimage *image, unsigned long load_addr,
+			      size_t size);
+
+int setup_ima_buffer(const struct kimage *image, void *fdt, int chosen_node);
+#else
+static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
+				   int chosen_node)
+{
+	remove_ima_buffer(fdt, chosen_node);
+	return 0;
+}
+#endif /* CONFIG_IMA_KEXEC */
+#endif /* _ASM_ARM64_IMA_H */
diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 12a561a54128..e8d2412066e7 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -96,6 +96,11 @@ static inline void crash_post_resume(void) {}
 struct kimage_arch {
 	void *dtb;
 	unsigned long dtb_mem;
+
+#ifdef CONFIG_IMA_KEXEC
+	phys_addr_t ima_buffer_addr;
+	size_t ima_buffer_size;
+#endif
 };
 
 extern const struct kexec_file_ops kexec_image_ops;
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..580238f2e9a7 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -55,7 +55,8 @@ obj-$(CONFIG_RANDOMIZE_BASE)		+= kaslr.o
 obj-$(CONFIG_HIBERNATION)		+= hibernate.o hibernate-asm.o
 obj-$(CONFIG_KEXEC_CORE)		+= machine_kexec.o relocate_kernel.o	\
 					   cpu-reset.o
-obj-$(CONFIG_KEXEC_FILE)		+= machine_kexec_file.o kexec_image.o
+obj-$(CONFIG_KEXEC_FILE)		+= machine_kexec_file.o kexec_image.o	\
+					   ima_kexec.o
 obj-$(CONFIG_ARM64_RELOC_TEST)		+= arm64-reloc-test.o
 arm64-reloc-test-y := reloc_test_core.o reloc_test_syms.o
 obj-$(CONFIG_CRASH_DUMP)		+= crash_dump.o
diff --git a/arch/arm64/kernel/ima_kexec.c b/arch/arm64/kernel/ima_kexec.c
new file mode 100644
index 000000000000..b14326d541f3
--- /dev/null
+++ b/arch/arm64/kernel/ima_kexec.c
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Microsoft Corporation.
+ *
+ * Authors:
+ * Prakhar Srivastava <prsriva@linux.microsoft.com>
+ */
+
+#include <linux/slab.h>
+#include <linux/kexec.h>
+#include <linux/of.h>
+#include <linux/memblock.h>
+#include <linux/libfdt.h>
+
+
+/**
+ * delete_fdt_mem_rsv - delete memory reservation with given address and size
+ * @fdt - pointer to the fdt.
+ * @start - start address of the memory.
+ * @size - number of cells to be deletd.
+ * 
+ * Return: 0 on success, or negative errno on error.
+ */
+int delete_fdt_mem_rsv(void *fdt, unsigned long start, unsigned long size)
+{
+	int i, ret, num_rsvs = fdt_num_mem_rsv(fdt);
+
+	for (i = 0; i < num_rsvs; i++) {
+		uint64_t rsv_start, rsv_size;
+
+		ret = fdt_get_mem_rsv(fdt, i, &rsv_start, &rsv_size);
+		if (ret) {
+			pr_err("Malformed device tree\n");
+			return -EINVAL;
+		}
+
+		if (rsv_start == start && rsv_size == size) {
+			ret = fdt_del_mem_rsv(fdt, i);
+			if (ret) {
+				pr_err("Error deleting device tree reservation\n");
+				return -EINVAL;
+			}
+
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
+/**
+ * remove_ima_buffer - remove the IMA buffer property and reservation
+ * @fdt - pointer the fdt.
+ * @chosen_node - node under which property can be found.
+ * 
+ * The IMA measurement buffer is either read by now and freeed or a kexec call
+ * needs to replace the ima measurement buffer, clear the property and memory
+ * reservation.
+ */
+void remove_ima_buffer(void *fdt, int chosen_node)
+{
+	int ret, len;
+	const void *prop;
+	uint64_t tmp_start, tmp_end;
+
+	prop = fdt_getprop(fdt, chosen_node, "linux,ima-kexec-buffer", &len);
+	if (prop) {
+		tmp_start = fdt64_to_cpu(*((const fdt64_t *) prop));
+
+		prop = fdt_getprop(fdt, chosen_node,
+				   "linux,ima-kexec-buffer-end", &len);
+		if (!prop)
+			return;
+
+		tmp_end = fdt64_to_cpu(*((const fdt64_t *) prop));
+
+		ret = delete_fdt_mem_rsv(fdt, tmp_start, tmp_end - tmp_start);
+
+		if (ret == 0)
+			pr_debug("Removed old IMA buffer reservation.\n");
+		else if (ret != -ENOENT)
+			return;
+
+		fdt_delprop(fdt, chosen_node, "linux,ima-kexec-buffer");
+		fdt_delprop(fdt, chosen_node, "linux,ima-kexec-buffer-end");
+	}
+}
+
+/**
+ * ima_get_kexec_buffer - get IMA buffer from the previous kernel
+ * @addr:	On successful return, set to point to the buffer contents.
+ * @size:	On successful return, set to the buffer size.
+ *
+ * Return: 0 on success, negative errno on error.
+ */
+int ima_get_kexec_buffer(void **addr, size_t *size)
+{
+	int len;
+	const void *prop;
+	uint64_t tmp_start, tmp_end;
+
+	prop = of_get_property(of_chosen, "linux,ima-kexec-buffer", &len);
+	if (!prop)
+		return -ENOENT;
+
+	tmp_start = fdt64_to_cpu(*((const fdt64_t *) prop));
+
+	prop = of_get_property(of_chosen, "linux,ima-kexec-buffer-end", &len);
+	if (!prop)
+		return -ENOENT;
+
+	tmp_end = fdt64_to_cpu(*((const fdt64_t *) prop));
+
+	*addr = __va(tmp_start);
+	*size = tmp_end - tmp_start;
+
+	return 0;
+}
+
+/**
+ * ima_free_kexec_buffer - free memory used by the IMA buffer
+ *
+ * Return: 0 on success, negative errno on error.
+ */
+int ima_free_kexec_buffer(void)
+{
+	int ret;
+	void *propStart, *propEnd;
+	uint64_t tmp_start, tmp_end;
+
+	propStart = of_find_property(of_chosen, "linux,ima-kexec-buffer",
+				     NULL);
+	if (propStart) {
+		tmp_start = fdt64_to_cpu(*((const fdt64_t *) propStart));
+		ret = of_remove_property(of_chosen, propStart);
+		if (!ret) {
+			return ret;
+		}
+
+		propEnd = of_find_property(of_chosen,
+					   "linux,ima-kexec-buffer-end", NULL);
+		if (!propEnd) {
+			return -EINVAL;
+		}
+
+		tmp_end = fdt64_to_cpu(*((const fdt64_t *) propEnd));
+
+		ret = of_remove_property(of_chosen, propEnd);
+		if (!ret) {
+			return ret;
+		}
+
+		return memblock_free(tmp_start, tmp_end - tmp_start);
+	}
+	return 0;
+}
+
+#ifdef CONFIG_IMA_KEXEC
+/**
+ * arch_ima_add_kexec_buffer - do arch-specific steps to add the IMA
+ * 	measurement log.
+ * @image: - pointer to the kimage, to store the address and size of the 
+ *	 IMA measurement log.
+ * @load_addr: - the address where the IMA measurement log is stored.
+ * @size - size of the IMA measurement log.
+ * 
+ * Return: 0 on success, negative errno on error.
+ */
+int arch_ima_add_kexec_buffer(struct kimage *image, unsigned long load_addr,
+			      size_t size)
+{
+	image->arch.ima_buffer_addr = load_addr;
+	image->arch.ima_buffer_size = size;
+	return 0;
+}
+
+/**
+ * setup_ima_buffer - update the fdt to contain the ima mesasurement log
+ * @image: - pointer to the kimage, containing the address and size of
+ *	     the IMA measurement log.
+ * @fdt: - pointer to the fdt.
+ * @chosen_node: - node under which property is to be defined.
+ *  
+ * Return: 0 on success, negative errno on error.
+ */
+int setup_ima_buffer(const struct kimage *image, void *fdt, int chosen_node)
+{
+	int ret;
+
+	remove_ima_buffer(fdt, chosen_node);
+
+	if (!image->arch.ima_buffer_size)
+		return 0;
+
+	ret = fdt_setprop_u64(fdt, chosen_node, "linux,ima-kexec-buffer",
+			      image->arch.ima_buffer_addr);
+	if (ret < 0)
+		return ret;
+
+	ret = fdt_setprop_u64(fdt, chosen_node, "linux,ima-kexec-buffer-end",
+			      image->arch.ima_buffer_addr +
+			      image->arch.ima_buffer_size);
+	if (ret < 0)
+		return ret;
+
+	ret = fdt_add_mem_rsv(fdt, image->arch.ima_buffer_addr,
+			      image->arch.ima_buffer_size);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+#endif /* CONFIG_IMA_KEXEC */
diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 58871333737a..de5452539c67 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -21,6 +21,7 @@
 #include <linux/types.h>
 #include <linux/vmalloc.h>
 #include <asm/byteorder.h>
+#include <asm/ima.h>
 
 /* relevant device tree properties */
 #define FDT_PROP_INITRD_START	"linux,initrd-start"
@@ -85,6 +86,11 @@ static int setup_dtb(struct kimage *image,
 			goto out;
 	}
 
+	/* add ima measuremnet log buffer */
+	ret = setup_ima_buffer(image, dtb, off);
+	if (ret)
+		goto out;
+
 	/* add kaslr-seed */
 	ret = fdt_delprop(dtb, off, FDT_PROP_KASLR_SEED);
 	if  (ret == -FDT_ERR_NOTFOUND)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
