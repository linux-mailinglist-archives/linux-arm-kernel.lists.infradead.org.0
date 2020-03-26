Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225DE1936F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXc6v+FaqHRI8wChQJyraQGQ8bHmeGIOfE8NlqEV9BE=; b=tTgqOL9BbH9uEi
	MgDMj2gt/uWQECgeQl+vNUknVTTrii1Ns1DbXJd2Pp8Sf5ZcRTnD+J8T7QlH4XmLhWuzBObiQ4Ehd
	Z8c0JKWyO8+RX14bVTaZyNUZXacgiYF8lC0ql5YJi5XFlHB7E2fWS0Tz5/X+bUTRZtPxh52+Uex7K
	LqevrYsFEXW9Wjh3XB9vuALhq0231STSRZDJpw9Pf2EX5GTsJa2Pxnhm/xwe7pyXi3od2V9+Lp1NF
	Gp5lzf7WckmFdA/23nbkIHuvNGxspMEG1mTBX0jbCCu1Cpc2F2S4o+7TBKVIU/oT+HdJx/i+caL3k
	hAENOzaZkUHQZUR1xb3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJCq-0008Ut-CS; Thu, 26 Mar 2020 03:29:20 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8G-0004dZ-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:38 +0000
Received: by mail-qt1-x841.google.com with SMTP id a5so4169596qtw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=QhNz775VKRnk5y9bcc8c5HYbQNDUUf5cmSRr9I0ZSxg=;
 b=a8sWRWxYc+7MDMvMTEM9/sXq9DGPEMdBEdB0YPEk0ZriOtW7/957gv/EmOOnZXedgr
 wmJZXMMMPUhBteuPtM2M7iVfIGbzUKmsr2QuafhbN2axLwdDHRrVA4yVO4zJ3oYQrJ6o
 tuKWzNBUUTh+Mnl6qtByzo0lWeIQmL87AQ1IND0UGfGBiwR2m9eZwbhWuR+rZeuZg972
 tmml4/hrYoRrChsZKE1obNpDjGOOpL24yaRLbLxEJGDFtwRexNWZBlI0J6r18eXHrfp8
 afChEfRAX/ZfCaJVzRZn/4QwLQ0/S5aAWuM/OFcR7828eDXTuaW3XbxlnjkO4smbWDBN
 nhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=QhNz775VKRnk5y9bcc8c5HYbQNDUUf5cmSRr9I0ZSxg=;
 b=Y9rNWchkCCS+OhyqrMiaBq4QTtH6Z8CIepzk/Rxb/s/yAjd4aQQYNWL0Z5m7Y0bHd/
 Isj2m3tSE1AC+XtA7T3tChFMKcAAcjI5cmbl2cdoluOGdoE4uunHX3ISiCjZIpb96/o7
 Lk4r0M3s4X7tiiUOpraBrYOGguW4kkTApLe12jm8SqLVypu5/CJnx+7WuWi8/+VogDJ7
 YiDbNMSsaVOgdki6hVQ+/lg1sYuhy4dPfYkrIwE17FjSRipxnLiwC29b3l8GWGCXpxUT
 2ylM/SxC1m11DjcguWYRCuDWBs6IjO9MlKbR8zCbGktSl6gDPRZeEulEkBK/DsKu1bs7
 zLvA==
X-Gm-Message-State: ANhLgQ1PE1XN+Y091mPtVqGI8aCN8QcPX873lxmKwrzIPF451VROGGEI
 lqZh8BSH8+UnyBtAajJu+FguCQ==
X-Google-Smtp-Source: ADFU+vu69T1k3xDySQS9u2aotpb2qZ5XiyzNbLLTqTd9rKOnfFUHIbi50Tmyv1njzuyUGzMuj/ak5A==
X-Received: by 2002:aed:3607:: with SMTP id e7mr5922168qtb.316.1585193075249; 
 Wed, 25 Mar 2020 20:24:35 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:34 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 08/18] arm64: kexec: move relocation function setup
Date: Wed, 25 Mar 2020 23:24:10 -0400
Message-Id: <20200326032420.27220-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202437_012122_BA484E49 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Currently, kernel relocation function is configured in machine_kexec()
at the time of kexec reboot by using control_code_page.

This operation, however, is more logical to be done during kexec_load,
and thus remove from reboot time. Move, setup of this function to
newly added machine_kexec_post_load().

Because once MMU is enabled, kexec control page will contain more than
relocation kernel, but also vector table, add pointer to the actual
function within this page arch.kern_reloc. Currently, it equals to the
beginning of page, we will add offsets later, when vector table is
added.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  1 +
 arch/arm64/kernel/machine_kexec.c | 27 ++++++++++++++-------------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 61530ec3a9b1..9befcd87e9a8 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
 struct kimage_arch {
 	void *dtb;
 	phys_addr_t dtb_mem;
+	phys_addr_t kern_reloc;
 	/* Core ELF header buffer */
 	void *elf_headers;
 	unsigned long elf_headers_mem;
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ae1bad0156cd..ec71a153cc2d 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    start:       %lx\n", kimage->start);
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -58,6 +59,17 @@ void machine_kexec_cleanup(struct kimage *kimage)
 	/* Empty routine needed to avoid build errors. */
 }
 
+int machine_kexec_post_load(struct kimage *kimage)
+{
+	void *reloc_code = page_to_virt(kimage->control_code_page);
+
+	memcpy(reloc_code, arm64_relocate_new_kernel,
+	       arm64_relocate_new_kernel_size);
+	kimage->arch.kern_reloc = __pa(reloc_code);
+
+	return 0;
+}
+
 /**
  * machine_kexec_prepare - Prepare for a kexec reboot.
  *
@@ -143,8 +155,7 @@ static void kexec_segment_flush(const struct kimage *kimage)
  */
 void machine_kexec(struct kimage *kimage)
 {
-	phys_addr_t reboot_code_buffer_phys;
-	void *reboot_code_buffer;
+	void *reboot_code_buffer = page_to_virt(kimage->control_code_page);
 	bool in_kexec_crash = (kimage == kexec_crash_image);
 	bool stuck_cpus = cpus_are_stuck_in_kernel();
 
@@ -155,18 +166,8 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	reboot_code_buffer_phys = page_to_phys(kimage->control_code_page);
-	reboot_code_buffer = phys_to_virt(reboot_code_buffer_phys);
-
 	kexec_image_info(kimage);
 
-	/*
-	 * Copy arm64_relocate_new_kernel to the reboot_code_buffer for use
-	 * after the kernel is shut down.
-	 */
-	memcpy(reboot_code_buffer, arm64_relocate_new_kernel,
-		arm64_relocate_new_kernel_size);
-
 	/* Flush the reboot_code_buffer in preparation for its execution. */
 	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
 
@@ -202,7 +203,7 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
 			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
