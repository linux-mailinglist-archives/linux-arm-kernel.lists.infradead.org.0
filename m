Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4241F1C0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v0WjLERhf4DSEcQot9RgNfdShNTQR8C/WrbHKhLPoBg=; b=fe3lrdcehKcFAs
	hAAlvj3pVs+oc2AibIrThBvQwl88BwRdvyfHPso4uV8f8XRnFSxTDb/u2Blkqx+49qkWiRy4klYsY
	473nd8PUSIRWSdTykOFMGhKQmxnc1ZwZ3mfKdgUHcZldsyFbZ1HLnvhzMefSfkWcCaq1/ErXH6lEc
	hNk5Tbz3JQ8hzMIbU2oRKd9ILR02dgoEk2Hm8FNZGeYYjFS8kiqVoYA8bmYFZWo1aq3Q7MpxRg80E
	8MpA4LbgDyupOCA4yrI+jRJK2uqIHPcgWSICvPSTNZTtiMYV5SF+x8mabGt6ptv43aynXDMoJ/dDY
	xKTpekzhy6hSgJZqSABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJhA-0005uI-IL; Mon, 08 Jun 2020 15:28:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJh4-0005tY-2K
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:28:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 725ED206D5;
 Mon,  8 Jun 2020 15:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591630089;
 bh=dLu0XJ1TYdNhKvkSJPwUcvKrUNbDTGDeAe/7UCVVlKI=;
 h=From:To:Cc:Subject:Date:From;
 b=diyDYWHvk1c6D/XEQnkWOhPkj9WV6PEnRf7nqyH2tLdplBuPmBzqAGzN5Hr1PwZUX
 VshTX5+WGk9edlFny5qPInE6jeZZGdz9Y4b3P0GBekUOTNaucnpWbHU9tkGW66HtqG
 ndOkCsfflQl0uIQTgdtZLYneR1jxE0nSyr+pelR0=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiJh1-0019tL-Ue; Mon, 08 Jun 2020 16:28:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [kvmtool][PATCH v2] arm64: Obtain text offset from kernel image
Date: Mon,  8 Jun 2020 16:28:01 +0100
Message-Id: <20200608152801.1415902-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, will@kernel.org,
 julien.thierry.kdev@gmail.com, alexandru.elisei@arm.com, ardb@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_082810_149358_8BC7026A 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandru Elisei <alexandru.elisei@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent changes made to Linux 5.8 have outlined that kvmtool
hardcodes the text offset instead of reading it from the arm64
image itself.

To address this, import the image header structure into kvmtool
and do the right thing. 32bit guests are still loaded to their
usual locations.

While we're at it, check the image magic and default to the text
offset to be 0x80000 when image_size is 0, as described in the
kernel's booting.rst document.

Cc: Alexandru Elisei <alexandru.elisei@arm.com>
Reported-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---

Notes:
    v2: Check magic, assume offset to be 0x8000 if image_size is 0.

 Makefile                           |  1 +
 arm/aarch32/include/kvm/kvm-arch.h |  2 +-
 arm/aarch64/include/asm/image.h    | 59 ++++++++++++++++++++++++++++++
 arm/aarch64/include/kvm/kvm-arch.h |  5 +--
 arm/aarch64/kvm.c                  | 43 ++++++++++++++++++++++
 arm/kvm.c                          |  2 +-
 6 files changed, 107 insertions(+), 5 deletions(-)
 create mode 100644 arm/aarch64/include/asm/image.h
 create mode 100644 arm/aarch64/kvm.c

diff --git a/Makefile b/Makefile
index d27ff38..35bb118 100644
--- a/Makefile
+++ b/Makefile
@@ -179,6 +179,7 @@ ifeq ($(ARCH), arm64)
 	OBJS		+= $(OBJS_ARM_COMMON)
 	OBJS		+= arm/aarch64/arm-cpu.o
 	OBJS		+= arm/aarch64/kvm-cpu.o
+	OBJS		+= arm/aarch64/kvm.o
 	ARCH_INCLUDE	:= $(HDRS_ARM_COMMON)
 	ARCH_INCLUDE	+= -Iarm/aarch64/include
 
diff --git a/arm/aarch32/include/kvm/kvm-arch.h b/arm/aarch32/include/kvm/kvm-arch.h
index cd31e72..a772bb1 100644
--- a/arm/aarch32/include/kvm/kvm-arch.h
+++ b/arm/aarch32/include/kvm/kvm-arch.h
@@ -1,7 +1,7 @@
 #ifndef KVM__KVM_ARCH_H
 #define KVM__KVM_ARCH_H
 
-#define ARM_KERN_OFFSET(...)	0x8000
+#define kvm__arch_get_kern_offset(...)	0x8000
 
 #define ARM_MAX_MEMORY(...)	ARM_LOMAP_MAX_MEMORY
 
diff --git a/arm/aarch64/include/asm/image.h b/arm/aarch64/include/asm/image.h
new file mode 100644
index 0000000..c2b1321
--- /dev/null
+++ b/arm/aarch64/include/asm/image.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_IMAGE_H
+#define __ASM_IMAGE_H
+
+#define ARM64_IMAGE_MAGIC	"ARM\x64"
+
+#define ARM64_IMAGE_FLAG_BE_SHIFT		0
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT	(ARM64_IMAGE_FLAG_BE_SHIFT + 1)
+#define ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT \
+					(ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT + 2)
+#define ARM64_IMAGE_FLAG_BE_MASK		0x1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_MASK		0x3
+#define ARM64_IMAGE_FLAG_PHYS_BASE_MASK		0x1
+
+#define ARM64_IMAGE_FLAG_LE			0
+#define ARM64_IMAGE_FLAG_BE			1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_4K		1
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_16K		2
+#define ARM64_IMAGE_FLAG_PAGE_SIZE_64K		3
+#define ARM64_IMAGE_FLAG_PHYS_BASE		1
+
+#ifndef __ASSEMBLY__
+
+#define arm64_image_flag_field(flags, field) \
+				(((flags) >> field##_SHIFT) & field##_MASK)
+
+/*
+ * struct arm64_image_header - arm64 kernel image header
+ * See Documentation/arm64/booting.rst for details
+ *
+ * @code0:		Executable code, or
+ *   @mz_header		  alternatively used for part of MZ header
+ * @code1:		Executable code
+ * @text_offset:	Image load offset
+ * @image_size:		Effective Image size
+ * @flags:		kernel flags
+ * @reserved:		reserved
+ * @magic:		Magic number
+ * @reserved5:		reserved, or
+ *   @pe_header:	  alternatively used for PE COFF offset
+ */
+
+struct arm64_image_header {
+	__le32 code0;
+	__le32 code1;
+	__le64 text_offset;
+	__le64 image_size;
+	__le64 flags;
+	__le64 res2;
+	__le64 res3;
+	__le64 res4;
+	__le32 magic;
+	__le32 res5;
+};
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_IMAGE_H */
diff --git a/arm/aarch64/include/kvm/kvm-arch.h b/arm/aarch64/include/kvm/kvm-arch.h
index 9de623a..55ef8ed 100644
--- a/arm/aarch64/include/kvm/kvm-arch.h
+++ b/arm/aarch64/include/kvm/kvm-arch.h
@@ -1,9 +1,8 @@
 #ifndef KVM__KVM_ARCH_H
 #define KVM__KVM_ARCH_H
 
-#define ARM_KERN_OFFSET(kvm)	((kvm)->cfg.arch.aarch32_guest	?	\
-				0x8000				:	\
-				0x80000)
+struct kvm;
+unsigned long long kvm__arch_get_kern_offset(struct kvm *kvm, int fd);
 
 #define ARM_MAX_MEMORY(kvm)	((kvm)->cfg.arch.aarch32_guest	?	\
 				ARM_LOMAP_MAX_MEMORY		:	\
diff --git a/arm/aarch64/kvm.c b/arm/aarch64/kvm.c
new file mode 100644
index 0000000..a46d438
--- /dev/null
+++ b/arm/aarch64/kvm.c
@@ -0,0 +1,43 @@
+#include "kvm/kvm.h"
+
+#include <asm/image.h>
+
+#include <linux/byteorder.h>
+
+/*
+ * Return the TEXT_OFFSET value that the guest kernel expects. Note
+ * that pre-3.17 kernels expose this value using the native endianness
+ * instead of Little-Endian. BE kernels of this vintage may fail to
+ * boot. See Documentation/arm64/booting.rst in your local kernel tree.
+ */
+unsigned long long kvm__arch_get_kern_offset(struct kvm *kvm, int fd)
+{
+	struct arm64_image_header header;
+	off_t cur_offset;
+	ssize_t size;
+
+	/* the 32bit kernel offset is a well known value */
+	if (kvm->cfg.arch.aarch32_guest)
+		return 0x8000;
+
+	cur_offset = lseek(fd, 0, SEEK_CUR);
+	if (cur_offset == (off_t)-1 ||
+	    lseek(fd, 0, SEEK_SET) == (off_t)-1)
+		die("Failed to seek in image file");
+
+	size = xread(fd, &header, sizeof(header));
+	if (size < 0 || (size_t)size < sizeof(header))
+		die("Failed to read kernel image header");
+
+	lseek(fd, cur_offset, SEEK_SET);
+
+	if (memcmp(&header.magic, ARM64_IMAGE_MAGIC, sizeof(header.magic)))
+		pr_warning("Kernel image magic not matching");
+
+	if (le64_to_cpu(header.image_size))
+		return le64_to_cpu(header.text_offset);
+
+	pr_warning("Image size is 0, assuming TEXT_OFFSET to be 0x80000");
+	return 0x80000;
+}
+
diff --git a/arm/kvm.c b/arm/kvm.c
index 1f85fc6..5aea18f 100644
--- a/arm/kvm.c
+++ b/arm/kvm.c
@@ -103,7 +103,7 @@ bool kvm__arch_load_kernel_image(struct kvm *kvm, int fd_kernel, int fd_initrd,
 	 */
 	limit = kvm->ram_start + min(kvm->ram_size, (u64)SZ_256M) - 1;
 
-	pos = kvm->ram_start + ARM_KERN_OFFSET(kvm);
+	pos = kvm->ram_start + kvm__arch_get_kern_offset(kvm, fd_kernel);
 	kvm->arch.kern_guest_start = host_to_guest_flat(kvm, pos);
 	file_size = read_file(fd_kernel, pos, limit - pos);
 	if (file_size < 0) {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
