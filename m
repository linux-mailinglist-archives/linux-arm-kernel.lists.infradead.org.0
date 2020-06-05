Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9C71EF5AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IYPmDqmPvN40kbUxjZp1wCHStUNBKMEAsx8RV2j1jKg=; b=g2z0b28dzXcF06
	uXbbDpdlGoLp4kVfEecwM0SXpVR2oNqNWaaSMXfCMZc8c9pkUCZPuXipsoBoe9EwF2qOtTdwhmaVL
	Kvewv5uMq8NcEIWjS5c9drGhZEmBV+qhdcmgcPvqf7ukV4otsG8jA3ljJc6aYIrVh0KWETu7BXfb/
	F6CdmgEbiH8ePWg/0iXQrnhm1GcwHSedDuY9TqdnZCj7/3GOQlgw4DgVmiIGBP+JQ6JgaDcO2w5WA
	pH+eh6yMo90uTISofzPWtoELF+YMlIv+d3AffXiRSZC+F19muBAqT6gJk8evJcM8Y7Uf6qFjXEooQ
	Ium+J7PxIzjeA4K+ySqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9us-0002xT-Ep; Fri, 05 Jun 2020 10:49:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9ue-0002rn-HZ
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:49:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CDDF2075B;
 Fri,  5 Jun 2020 10:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591354163;
 bh=cX/89CjOOUg6jmUBCST7BFjz97+vP7+nBPVaj6RGqsU=;
 h=From:To:Cc:Subject:Date:From;
 b=Yso7p38/qMftqFIRzSlmXy045MEnpGphZK7k3WIKi+17MkTkeKAxQ6YWs+xv4BCRL
 9LNByglCG8DNWD/Q+Hsuy14JaSAciZMDJyDxu0W0h0bwmhIzhCC2jPwgVYEqpthSfN
 JwQ0Dt5WtlTAKbxIDoubwbPQoEbAXybjhvrPPL0U=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jh9ub-000U0g-QP; Fri, 05 Jun 2020 11:49:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [kvmtool][PATCH] arm64: Obtain text offset from kernel image
Date: Fri,  5 Jun 2020 11:49:07 +0100
Message-Id: <20200605104907.1307967-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, will@kernel.org,
 julien.thierry.kdev@gmail.com, ardb@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034924_648567_05D25C50 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
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

Reported-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Makefile                           |  1 +
 arm/aarch32/include/kvm/kvm-arch.h |  2 +-
 arm/aarch64/include/asm/image.h    | 59 ++++++++++++++++++++++++++++++
 arm/aarch64/include/kvm/kvm-arch.h |  5 +--
 arm/aarch64/kvm.c                  | 30 +++++++++++++++
 arm/kvm.c                          |  2 +-
 6 files changed, 94 insertions(+), 5 deletions(-)
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
index 0000000..ed23ee9
--- /dev/null
+++ b/arm/aarch64/kvm.c
@@ -0,0 +1,30 @@
+#include "kvm/kvm.h"
+
+#include <asm/image.h>
+
+#include <linux/byteorder.h>
+
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
+	return le64_to_cpu(header.text_offset);
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
