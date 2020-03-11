Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C446518196C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SQG/KJsFjctJSWfUFBg8/mbXl5MjHp8Cuhme1gOyvJU=; b=nLu9kmO+367fQd
	lYunoU5/mv9C3wPGY0nBGDUv1GruhVXRANQXfjEDOXxTHRF7QbdK95oUtPtyHnpRKRoeAHTsKxOC6
	J0xiOyMd27FVP66j5secmxbI3reU/Rou1IJtzSzadtnR6UPOdLqRaqz67wZqdizRzOZAc94aa7C4i
	KwtHxlX23apajX3dbOMEHPfW5GiY8ZrC5zBDZAiIGgk7pVfUmsZj5j2urAjEwo8JM5JUfIStwK7g/
	qLmH0nCC2LgguFveFiYJuYbQR5bdTQcWKRjWIx2CdETrIX7dH2hC/ShPrzAFLM8lWAroSj7gGtN/H
	zdbQN5HEo8O2SNOtwbYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1FW-0000Ie-QE; Wed, 11 Mar 2020 13:18:14 +0000
Received: from fw-tnat-cam5.arm.com ([217.140.106.53]
 helo=cam-smtp0.cambridge.arm.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1FP-0000I1-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 13:18:09 +0000
Received: from e123370-lin.nice.Arm.com (e123370-lin.nice.arm.com
 [10.34.104.64])
 by cam-smtp0.cambridge.arm.com (8.13.8/8.13.8) with ESMTP id 02BDI2Xt004408;
 Wed, 11 Mar 2020 13:18:02 GMT
From: Olivier Deprez <olivier.deprez@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH] drivers: firmware: ARM debug filesystem
Date: Wed, 11 Mar 2020 14:18:02 +0100
Message-Id: <20200311131802.29921-1-olivier.deprez@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_061807_682807_0E177D38 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implements the kernel driver part of a generic firmware
debug interface. It requires a specific support in the Trusted Firmware
to expose such interface. It consists in a set of 9p primitives invoked
through SMC. This permits access to an internal firmware namespace
using unix-like paths.

Signed-off-by: Olivier Deprez <olivier.deprez@arm.com>
---
 drivers/firmware/Kconfig       |  10 +
 drivers/firmware/Makefile      |   2 +
 drivers/firmware/arm_debugfs.c | 411 +++++++++++++++++++++++++++++++++
 3 files changed, 423 insertions(+)
 create mode 100644 drivers/firmware/arm_debugfs.c


This kernel driver patch illustrates the concept of a generic firmware debug
interface. The intent is for firmware to expose debug data by means of abstracted
directories and files. The primitives are borrowed from 9p. At the user level,
simple open/read/write/close function wrappers are provided. Those wrappers
translate into calling the firmware through SMC eventually passing parameters
through a shared buffer.

Following design proposal:
https://lists.trustedfirmware.org/pipermail/tf-a/2019-November/000123.html

The TF-A firmware side is merged and visible at:
https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/tree/lib/debugfs

Documentation:
https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/tree/docs/components/debugfs-design.rst
https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/tree/docs/components/arm-sip-service.rst

The design is still open to evolve. Please provide comments on the general
concept/acceptance.

Example of exposed firmware data: fip image flash contents

/ # find /sys/kernel/debug/tfa
/sys/kernel/debug/tfa
/sys/kernel/debug/tfa/fip
/sys/kernel/debug/tfa/blobs
/sys/kernel/debug/tfa/blobs/fip.bin
/sys/kernel/debug/tfa/blobs/ctl
/sys/kernel/debug/tfa/dev

/ # xxd -l32 /sys/kernel/debug/tfa/blobs/fip.bin
00000000: 0100 64aa 7856 3412 0000 0000 0000 0000  ..d.xV4.........
00000010: 5ff9 ec0b 4d22 3e4d a544 c39d 81c7 3f0a  _...M">M.D....?.

/ # cksum /sys/kernel/debug/tfa/blobs/fip.bin
4222949163 1048576 /sys/kernel/debug/tfa/blobs/fip.bin



diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 86d2901ad87a..e5c5caecdd86 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -82,6 +82,16 @@ config ARM_SCPI_POWER_DOMAIN
 	  This enables support for the SCPI power domains which can be
 	  enabled or disabled via the SCP firmware
 
+config ARM_DEBUGFS
+       bool "ARM TF-A debugfs"
+       help
+         Select Y to implement a firmware debug filesystem accessed
+         through kernel debug sysfs.
+
+         This feature depends on a Trusted-Firmware-A build option
+         (USE_DEBUGFS). It exposes an internal filesystem used to
+         peek/poke firmware data through file abstractions.
+
 config EDD
 	tristate "BIOS Enhanced Disk Drive calls determine boot disk"
 	depends on X86
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 33dcc099e021..52159d8c94ca 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -2,10 +2,12 @@
 #
 # Makefile for the linux kernel.
 #
+obj-$(CONFIG_ARM_DEBUGFS)	+= arm_debugfs.o
 obj-$(CONFIG_ARM_PSCI_FW)	+= psci.o
 obj-$(CONFIG_ARM_PSCI_CHECKER)	+= psci_checker.o
 obj-$(CONFIG_ARM_SCPI_PROTOCOL)	+= arm_scpi.o
 obj-$(CONFIG_ARM_SCPI_POWER_DOMAIN) += scpi_pm_domain.o
+
 obj-$(CONFIG_DMI)		+= dmi_scan.o
 obj-$(CONFIG_DMI_SYSFS)		+= dmi-sysfs.o
 obj-$(CONFIG_EDD)		+= edd.o
diff --git a/drivers/firmware/arm_debugfs.c b/drivers/firmware/arm_debugfs.c
new file mode 100644
index 000000000000..9e64228b9c05
--- /dev/null
+++ b/drivers/firmware/arm_debugfs.c
@@ -0,0 +1,411 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Copyright (C) 2020 ARM Limited
+ */
+
+/* #define DEBUG */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/debugfs.h>
+#include <linux/arm-smccc.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+
+#define VERSION_MAJOR		0
+#define VERSION_MINOR		2
+
+#define ARM_SIP_SVC_DEBUGFS	(0xC2000030)
+
+#define SMC_OK			(0)
+
+#define ARM_DEBUGFS_MOUNT	0
+#define ARM_DEBUGFS_CREATE	1
+#define ARM_DEBUGFS_OPEN	2
+#define ARM_DEBUGFS_CLOSE	3
+#define ARM_DEBUGFS_READ	4
+#define ARM_DEBUGFS_WRITE	5
+#define ARM_DEBUGFS_SEEK	6
+#define ARM_DEBUGFS_BIND	7
+#define ARM_DEBUGFS_STAT	8
+#define ARM_DEBUGFS_INIT	10
+#define ARM_DEBUGFS_VERSION	11
+
+#define NAMELEN			13 /* Maximum length of a file name */
+#define MAX_PATH_LEN		256
+
+#define QID_CHDIR		0x8000
+
+#define ARM_DEBUGFS_KSEEK_SET	(0)
+
+enum devflags {
+	ARM_DEBUGFS_OREAD   = 1 << 0,
+	ARM_DEBUGFS_OWRITE  = 1 << 1,
+	ARM_DEBUGFS_ORDWR   = 1 << 2,
+	ARM_DEBUGFS_OBIND   = 1 << 3,
+	ARM_DEBUGFS_ODIR    = 1 << 4,
+	ARM_DEBUGFS_OSTAT   = 1 << 5,
+};
+
+struct dir {
+	char name[NAMELEN];
+	long length;
+	unsigned char mode;
+	unsigned char type;
+	unsigned char dev;
+	unsigned short qid;
+};
+
+union debugfs_parms {
+	struct {
+		char fname[MAX_PATH_LEN];
+	} open;
+
+	struct mount {
+		char srv[MAX_PATH_LEN];
+		char where[MAX_PATH_LEN];
+		char spec[MAX_PATH_LEN];
+	} mount;
+
+	struct {
+		char path[MAX_PATH_LEN];
+		struct dir dir;
+	} stat;
+
+	struct {
+		char oldpath[MAX_PATH_LEN];
+		char newpath[MAX_PATH_LEN];
+	} bind;
+};
+
+static struct {
+	void *shared_buffer;
+	struct dentry *tfa_rootdir;
+	void *read_buffer;
+
+	/* This mutex protects the shared buffer and forbids concurrent */
+	/* entry into the debugfs internal firmware layers.             */
+	struct mutex debugfs_lock;
+} g;
+
+static int version(void)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_VERSION, &res);
+
+	return (res.a0 == SMC_OK) ? res.a1 : -EIO;
+}
+
+static int tfa_9p_init(void *shared_buffer)
+{
+	struct arm_smccc_res res;
+	phys_addr_t buffer_phys;
+
+	buffer_phys = virt_to_phys(shared_buffer);
+	if (!buffer_phys)
+		return -ENOMEM;
+
+	pr_debug("shared buffer 0x%p (PA 0x%llx)\n",
+		 shared_buffer, buffer_phys);
+
+	/* Pass the kernel allocated shared buffer PA */
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_INIT, buffer_phys,
+			  &res);
+
+	return res.a0;
+}
+
+static int open(const char *name, int flags)
+{
+	union debugfs_parms *parms = g.shared_buffer;
+	struct arm_smccc_res res;
+
+	mutex_lock(&g.debugfs_lock);
+	strlcpy(parms->open.fname, name, MAX_PATH_LEN);
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_OPEN, flags, &res);
+	mutex_unlock(&g.debugfs_lock);
+
+	return (res.a0 == SMC_OK) ? res.a1 : -EIO;
+}
+
+static int read(int fd, void *buf, size_t size)
+{
+	struct arm_smccc_res res;
+	int ret = -EIO;
+
+	mutex_lock(&g.debugfs_lock);
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_READ, fd, size,
+			  &res);
+
+	if (res.a0 != SMC_OK)
+		goto exit_unlock;
+
+	if (res.a1 > size) {
+		ret = -EIO;
+		goto exit_unlock;
+	}
+
+	memcpy(buf, g.shared_buffer, size);
+	ret = res.a1;
+
+exit_unlock:
+	mutex_unlock(&g.debugfs_lock);
+
+	return ret;
+}
+
+static int seek(int fd, long off, int whence)
+{
+	struct arm_smccc_res res;
+
+	mutex_lock(&g.debugfs_lock);
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_SEEK, fd, off,
+			  whence, &res);
+	mutex_unlock(&g.debugfs_lock);
+
+	return (res.a0 == SMC_OK) ? res.a1 : -EIO;
+}
+
+static int stat(const char *name, struct dir *entry)
+{
+	union debugfs_parms *parms = g.shared_buffer;
+	struct arm_smccc_res res;
+
+	mutex_lock(&g.debugfs_lock);
+	strlcpy(parms->stat.path, name, MAX_PATH_LEN);
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_STAT, &res);
+	mutex_unlock(&g.debugfs_lock);
+
+	if (res.a0 == SMC_OK)
+		memcpy(entry, &parms->stat.dir, sizeof(struct dir));
+
+	return (res.a0 == SMC_OK) ? res.a1 : -EIO;
+}
+
+static int close(int fd)
+{
+	struct arm_smccc_res res;
+
+	mutex_lock(&g.debugfs_lock);
+	arm_smccc_1_1_smc(ARM_SIP_SVC_DEBUGFS, ARM_DEBUGFS_CLOSE, fd, &res);
+	mutex_unlock(&g.debugfs_lock);
+
+	return (res.a0 == SMC_OK) ? 0 : -EIO;
+}
+
+static void dir_print(struct dir *dir)
+{
+	pr_devel("%s name %s, len %ld, mode %d, type %d, dev %d, qid 0x%x\n",
+		 __func__, dir->name, dir->length, dir->mode, dir->type,
+		 dir->dev, dir->qid);
+}
+
+ssize_t debugfs_read(struct file *file, char __user *user_buf, size_t length,
+		     loff_t *offset)
+{
+	char *debugfs_path, *tfa_path, *buf = (char *)g.read_buffer;
+	char pathname[MAX_PATH_LEN];
+	int ret, fd, read_size = 0;
+	struct dir dir_entry;
+
+	if (!offset || !user_buf || !length)
+		return 0;
+
+	/* Convert path object to an ascii absolute path string */
+	debugfs_path = d_path(&file->f_path, pathname, MAX_PATH_LEN);
+	if (!debugfs_path || IS_ERR(debugfs_path))
+		return 0;
+
+	/* Extrapolate the relative path in the firmware 9p hierarchy */
+	tfa_path = strstr(debugfs_path, "/tfa/");
+	if (!tfa_path)
+		return 0;
+
+	/* Skip debugfs absolute directory path */
+	tfa_path += 4;
+
+	/* Check file presence and get file size */
+	ret = stat(tfa_path, &dir_entry);
+	if (ret < 0) {
+		pr_err("%s stat failed\n", __func__);
+		return 0;
+	}
+
+	/* Discard read operation if offset is out of bounds */
+	if (*offset >= dir_entry.length)
+		return 0;
+
+	fd = open(tfa_path, ARM_DEBUGFS_OREAD);
+	if (fd < 0) {
+		pr_err("%s open failed\n", __func__);
+		return 0;
+	}
+
+	if (*offset > 0) {
+		ret = seek(fd, *offset, ARM_DEBUGFS_KSEEK_SET);
+		if (ret < 0) {
+			pr_err("%s seek failed ret=%d\n", __func__, ret);
+			goto exit_close;
+		}
+	}
+
+	/* Restrict length to one page frame size maximum */
+	if (length > PAGE_SIZE)
+		length = PAGE_SIZE;
+
+	read_size = read(fd, buf, length);
+	if (read_size <= 0) {
+		pr_err("%s read failed ret=%d\n", __func__, read_size);
+		goto exit_close;
+	}
+
+	if (copy_to_user(user_buf, buf, read_size)) {
+		pr_err("%s copy to user failed\n", __func__);
+		goto exit_close;
+	}
+
+	*offset += read_size;
+
+exit_close:
+	ret = close(fd);
+	if (ret < 0)
+		pr_err("%s close failed\n", __func__);
+
+	return read_size;
+}
+
+const struct file_operations debugfs_ops = {
+	.read = debugfs_read
+};
+
+static int arm_debugfs_walk_dir(struct dentry *parent_dir, const char *path)
+{
+	int ret, fd;
+	struct dir dir;
+	struct dentry *dent, *fent;
+	char abs_path[MAX_PATH_LEN];
+
+	/* open root directory */
+	fd = open(path, ARM_DEBUGFS_OREAD);
+	if (fd < 0) {
+		pr_err("open failed %d\n", fd);
+		return -EIO;
+	}
+
+	/* read directory entries */
+	do {
+		ret = read(fd, &dir, sizeof(dir));
+		if (ret > 0) {
+			dir_print(&dir);
+			if (dir.qid & QID_CHDIR) {
+				dent = debugfs_create_dir(dir.name, parent_dir);
+				snprintf(abs_path, MAX_PATH_LEN, "%s%s/",
+					 path, dir.name);
+				(void)arm_debugfs_walk_dir(dent, abs_path);
+			} else {
+				fent = debugfs_create_file(dir.name, O_RDONLY,
+							   parent_dir, NULL,
+							   &debugfs_ops);
+			}
+		}
+	} while (ret > 0);
+
+	/* close root directory handle */
+	ret = close(fd);
+	if (ret < 0) {
+		pr_err("close failed %d\n", ret);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int __init arm_debugfs_init(void)
+{
+	int ret;
+
+	/* Requires debugfs framework */
+	ret = debugfs_initialized();
+	if (!ret)
+		return ret;
+
+	/*
+	 * Request ARM TF-A debugfs interface version also used as
+	 * a means to detect such interface presence.
+	 */
+	ret = version();
+	if (ret < 0) {
+		pr_err("%s failed getting interface version.\n", __func__);
+		return ret;
+	}
+
+	pr_debug("%s interface version 0x%x\n", __func__, ret);
+
+	/* Create a top-level debugfs directory */
+	g.tfa_rootdir = debugfs_create_dir("tfa", NULL);
+	if (!g.tfa_rootdir)
+		return -EIO;
+
+	/* Allocate a shared buffer page */
+	g.shared_buffer = (void *)__get_free_page(GFP_KERNEL);
+	if (!g.shared_buffer)
+		goto exit_dir;
+
+	g.read_buffer = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	if (!g.read_buffer)
+		goto exit_free_shared_buffer;
+
+	/* Initialize ARM firmware debugfs interface */
+	ret = tfa_9p_init(g.shared_buffer);
+	if (ret)
+		goto exit_free_read_buffer;
+
+	mutex_init(&g.debugfs_lock);
+
+	ret = arm_debugfs_walk_dir(g.tfa_rootdir, "/");
+	if (ret)
+		goto exit_mutex_destroy;
+
+	pr_info("ARM TF-A debugfs v%u.%u interface initialized.\n",
+		VERSION_MAJOR, VERSION_MINOR);
+
+	return 0;
+
+exit_mutex_destroy:
+	mutex_destroy(&g.debugfs_lock);
+
+exit_free_read_buffer:
+	kfree(g.read_buffer);
+
+exit_free_shared_buffer:
+	free_page((uintptr_t)g.shared_buffer);
+
+exit_dir:
+	debugfs_remove_recursive(g.tfa_rootdir);
+
+	return ret;
+}
+module_init(arm_debugfs_init);
+
+static void __exit arm_debugfs_exit(void)
+{
+	debugfs_remove_recursive(g.tfa_rootdir);
+	mutex_destroy(&g.debugfs_lock);
+	free_page((uintptr_t)g.shared_buffer);
+	pr_info("ARM debugfs exited.\n");
+}
+module_exit(arm_debugfs_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("ARM debugfs");
+MODULE_VERSION("0.2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
