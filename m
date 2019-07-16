Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBA16AD3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 18:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CDvET7iFYGl+wmNsiHWc/q+N3zgqBbyKRPZLJAUxO0=; b=nfnoud7so2dn56
	RBaYBHEw2MAn8KqnWJavu6wRU+g5IVobS7ier81dWkURDGQ78exAYRFNPNdbJok6Q8p6OV6VJvkmC
	OOvXUA3fu2ycKkqRx86zbI3VR1jms1K3OxZo5i9c4yGsMGEzcS1pM8wP9hb4mHo8EzksYVBa+3fs2
	Ik1TX1wcMBYoQgK6JGhFFGFM59ZnhrWlUnFhM+ciVFc4OId6Yzqp2T6yX1OlX0B/2v/XZhEppSnUi
	hRYnTk2MY5UaHauCq5SPohDQd+QNe3pBtIT3dNSYUDAaACIUwGSft0HG+A0y7Lm2Z5DDzwkHgOt/K
	gvddraQP9jlhLd+rIVdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQm3-0005hU-02; Tue, 16 Jul 2019 16:57:55 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQkw-00053R-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 16:56:48 +0000
Received: by mail-qt1-x842.google.com with SMTP id d17so20255363qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 09:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EifO61K65QbWAJ6xpvhOah9bA7Qm2CvZMBmlIJekn+0=;
 b=idL/2gxy1CAm62HCYqxM5BClPT9M4sH4sKI6TrJoDPJCf2MiSdvmWabARetWUf3w1e
 iLVb6WIYwP5AjN2cIxv4h5a/dXC1HSfIq/EowkRDV/VcrwVXFilBnt+w4BX/wJSeNTac
 VyO4uTItzt3qHiEZV1+Cipw1CKfeXeHp4CuapXhbkQG5CU5UI6UQiqrQmRW6A4HfkYH5
 kB+ZyqB3ioM+rxuyRjt7E0sXi1Gw71iKFcmO1Vy4zAAGlf2PsetNRiLVlfApLPbn9+g0
 yelseVL4ypdMFaIAuiYKSa557KSo3N7gKd7xeCmlxODv06M1IU+zX/u6dMsGi8SfWUcu
 Qqgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EifO61K65QbWAJ6xpvhOah9bA7Qm2CvZMBmlIJekn+0=;
 b=L5OI55Ff0+WgojrBPEoR6tkXDciG/OfiRueRna39DAWOs2ct7kr3wHg/6xqyaZaqaf
 Wf8eS97shc6esDQKVR6RvLvsCg5L5jSyRFzMmb9852VTI6UIpEM95dsas4H8X/ITkcNe
 R1ZZfjwBk4eHEhFf/j9Hi+KalvHg5mMH+Ad9T+xdxP+12mf70dksLCtgS9d+DCUHjlxB
 ZPbG0Nf/xMTBGYUM1788xEETOJ2uzbB6YOAAfRcRHVPp8fKSJffBVDcYyY2P6CGxieEJ
 6doMz++iUAnUHqoe/6aHeDHu1eov4faPFnm4YjpWCQn/UpAGF0vwJAR4xEAf0LU7VjJq
 H2kQ==
X-Gm-Message-State: APjAAAWDcAMqvZQtY65oBMud8Ys9RW9wUperFLI8hbnTWiCzwbvXLCxL
 mPVIsvjbHxhcs967Lkt/XZQ=
X-Google-Smtp-Source: APXvYqzHhhYiAKJdjA+sOKDaBPu/cH7wsljYIAcV0+pVKa8zDrnxHDQQygDK1MnOobsI2gFvewAVfA==
X-Received: by 2002:aed:24d9:: with SMTP id u25mr24126760qtc.111.1563296205591; 
 Tue, 16 Jul 2019 09:56:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 2/4] arm64, kexec: interface preparation for mmu enabled kexec
Date: Tue, 16 Jul 2019 12:56:39 -0400
Message-Id: <20190716165641.6990-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095647_027966_8A129269 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently cpu_install_idmap() is used to install page table during kexec
switch over to purgatory. We soon will be using our own page table, that
maps the whole physical range (and might be even more, i.e if new DTB
describes a bigger physical range or mem= parameter limited physical
range in the current kernel).

Make kimage_arch to be always part of arm64.
Add relocate_kern and kexec_pgtable verctors to this struct, as we won't
be able to rely on a single control page anymore.

Copy relocation function in machine_kexec_prepare(), and setup page
table there as well (for now idmap_pg_dir).

Cleanup call to cpu_soft_restart by removing ugly ifdefs. When
kimage->arch.dtb_mem is not set, it is 0 anyway.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  5 +--
 arch/arm64/kernel/cpu-reset.h     |  7 ++++-
 arch/arm64/kernel/machine_kexec.c | 52 ++++++++++++++-----------------
 3 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 12a561a54128..ef2d2442b890 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,14 +90,15 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
-#ifdef CONFIG_KEXEC_FILE
 #define ARCH_HAS_KIMAGE_ARCH
-
 struct kimage_arch {
 	void *dtb;
 	unsigned long dtb_mem;
+	void  *relocate_kern;
+	pgd_t *kexec_pgtable;
 };
 
+#ifdef CONFIG_KEXEC_FILE
 extern const struct kexec_file_ops kexec_image_ops;
 
 struct kimage;
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..c795811587f0 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -14,6 +14,7 @@ void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
 	unsigned long arg0, unsigned long arg1, unsigned long arg2);
 
 static inline void __noreturn cpu_soft_restart(unsigned long entry,
+					       pgd_t *kexec_pgtable,
 					       unsigned long arg0,
 					       unsigned long arg1,
 					       unsigned long arg2)
@@ -24,7 +25,11 @@ static inline void __noreturn cpu_soft_restart(unsigned long entry,
 		is_hyp_mode_available();
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
-	cpu_install_idmap();
+	cpu_set_reserved_ttbr0();
+	local_flush_tlb_all();
+	write_sysreg(phys_to_ttbr(virt_to_phys(kexec_pgtable)), ttbr0_el1);
+	isb();
+
 	restart(el2_switch, entry, arg0, arg1, arg2);
 	unreachable();
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 0df8493624e0..f4565eb01d09 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -42,6 +42,8 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    start:       %lx\n", kimage->start);
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+	pr_debug("    arch.kexec_pgtable: %p\n", kimage->arch.kexec_pgtable);
+	pr_debug("    arch.relocate_kern: %p\n", kimage->arch.relocate_kern);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -67,13 +69,24 @@ void machine_kexec_cleanup(struct kimage *kimage)
  */
 int machine_kexec_prepare(struct kimage *kimage)
 {
-	kexec_image_info(kimage);
+	void *reloc_buf = page_address(kimage->control_code_page);
 
 	if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
 		pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
 		return -EBUSY;
 	}
 
+	/*
+	 * Copy arm64_relocate_new_kernel to the buffer for use after the kernel
+	 * is shut down.
+	 */
+	memcpy(reloc_buf, arm64_relocate_new_kernel,
+	       arm64_relocate_new_kernel_size);
+
+	kimage->arch.relocate_kern = reloc_buf;
+	kimage->arch.kexec_pgtable = lm_alias(idmap_pg_dir);
+	kexec_image_info(kimage);
+
 	return 0;
 }
 
@@ -143,8 +156,6 @@ static void kexec_segment_flush(const struct kimage *kimage)
  */
 void machine_kexec(struct kimage *kimage)
 {
-	phys_addr_t reboot_code_buffer_phys;
-	void *reboot_code_buffer;
 	bool in_kexec_crash = (kimage == kexec_crash_image);
 	bool stuck_cpus = cpus_are_stuck_in_kernel();
 
@@ -155,32 +166,17 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	reboot_code_buffer_phys = page_to_phys(kimage->control_code_page);
-	reboot_code_buffer = phys_to_virt(reboot_code_buffer_phys);
-
 	kexec_image_info(kimage);
-
-	pr_debug("%s:%d: control_code_page:        %p\n", __func__, __LINE__,
-		kimage->control_code_page);
-	pr_debug("%s:%d: reboot_code_buffer_phys:  %pa\n", __func__, __LINE__,
-		&reboot_code_buffer_phys);
-	pr_debug("%s:%d: reboot_code_buffer:       %p\n", __func__, __LINE__,
-		reboot_code_buffer);
 	pr_debug("%s:%d: relocate_new_kernel:      %p\n", __func__, __LINE__,
 		arm64_relocate_new_kernel);
 	pr_debug("%s:%d: relocate_new_kernel_size: 0x%lx(%lu) bytes\n",
 		__func__, __LINE__, arm64_relocate_new_kernel_size,
 		arm64_relocate_new_kernel_size);
 
-	/*
-	 * Copy arm64_relocate_new_kernel to the reboot_code_buffer for use
-	 * after the kernel is shut down.
-	 */
-	memcpy(reboot_code_buffer, arm64_relocate_new_kernel,
-		arm64_relocate_new_kernel_size);
 
-	/* Flush the reboot_code_buffer in preparation for its execution. */
-	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
+	/* Flush the relocate_kern in preparation for its execution. */
+	__flush_dcache_area(kimage->arch.relocate_kern,
+			    arm64_relocate_new_kernel_size);
 
 	/*
 	 * Although we've killed off the secondary CPUs, we don't update
@@ -188,7 +184,7 @@ void machine_kexec(struct kimage *kimage)
 	 * need to avoid flush_icache_range(), which will attempt to IPI
 	 * the offline CPUs. Therefore, we must use the __* variant here.
 	 */
-	__flush_icache_range((uintptr_t)reboot_code_buffer,
+	__flush_icache_range((uintptr_t)kimage->arch.relocate_kern,
 			     arm64_relocate_new_kernel_size);
 
 	/* Flush the kimage list and its buffers. */
@@ -204,7 +200,7 @@ void machine_kexec(struct kimage *kimage)
 
 	/*
 	 * cpu_soft_restart will shutdown the MMU, disable data caches, then
-	 * transfer control to the reboot_code_buffer which contains a copy of
+	 * transfer control to the relocate_kern which contains a copy of
 	 * the arm64_relocate_new_kernel routine.  arm64_relocate_new_kernel
 	 * uses physical addressing to relocate the new image to its final
 	 * position and transfers control to the image entry point when the
@@ -214,12 +210,10 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
-#ifdef CONFIG_KEXEC_FILE
-						kimage->arch.dtb_mem);
-#else
-						0);
-#endif
+	cpu_soft_restart(__pa(kimage->arch.relocate_kern),
+			 kimage->arch.kexec_pgtable,
+			 kimage->head, kimage->start,
+			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
