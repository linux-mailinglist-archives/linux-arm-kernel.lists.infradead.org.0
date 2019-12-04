Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC58112F94
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYr8bY8hYDpuYZrYcfiAPvKCZkD842rEGeIoWpMGaME=; b=usdawmDNuyL6vJ
	PNHIGRbmyMbayiv82LLqcpxng8gFgVyz5uNz72tQFGvtOmrGJ7Tn+8yetW35TgR65I+txBcGibGQq
	HdQOJkAj8dKa2QBNfoVGVGRK8Vs1ChqCTd6f6o1J4LbTCYP0l58hE0drX5N+XL5QdubXh08cCpyjq
	NZWCTPZP/HGgUrlKreTKTH2EoKczMda0SrVHzr+jbi+5o0JHsFFn6xmNiiTSbh3UhrbjOc0zKusP9
	FYlkDIl3GvYLDUOG3E4Z2TqOJ5lYd+uiYKinak4NPzdHPGct3OcCWGbnfJ5PjPezRGw3bz0I/RYti
	wZFJlacaV9NVOiZs1qDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXB7-0007Rx-SA; Wed, 04 Dec 2019 16:07:01 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4R-0007f9-Hx
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:19 +0000
Received: by mail-qv1-xf44.google.com with SMTP id t5so28539qvs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=qk25YAaOPxhty05prM3atPa37GbiRCyda8Z/W4GKB+0=;
 b=ONUu0JXiiwD4QsGwgCoVpTxf1VginBhYK4+llLcAFwRxv68eP1Xrd1mYHdUi2xG1sv
 I1ioJC+Tox44alCelXxpd8zVXT00sLukPxRUvxgeDg2GtuT6kppFX05xMOlnt5onR7oJ
 GCrzXqMSzBJWI693Hqbu3kK8mltWrsbGtPHBsFk2ZDSkJ5BpEj6W9pUukEKY9XqKhp+x
 DDr1KndM+TrZCFmQKrmtaxSnyklBgJMl3rOXb+8uDbDt/JveU2pBy3/2O93BQYoEdCis
 RIvB/keWXqub9fGpCYdtwIBzhurATuCV8l1OriL/VRSb/tbOHGrB69R9tnHshpbyr0Z4
 QxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qk25YAaOPxhty05prM3atPa37GbiRCyda8Z/W4GKB+0=;
 b=uGwYIG0YCc15M38DiKgA1gjR2gwgCdlggBYv+6krZCkqkqvsYV7oeoLGs7ieB6mn7w
 ZHl9gGvkqPiYkPaMv8uurNohQQOvbl7tB029No/Yn0DNdAIVKr5nvtn8SmTJhnRT2pjI
 f4NyWx78s7HnoekjCyRzIVxBhn/Pell4K7Q0rGLEsK3rW7fmGf5fIboVSv7nRaJNM4cT
 uSOgeYV/NoKVx77AqKWP27MslMOJboQPeRjdfvPkKLeElX5vQfut5TiqdirLKd47dpXz
 v43zj122fqoOVnjtWW0wQrF+KeTgIwKJBhyBKR3g9XZEWqiUUWE859tQ9uKoR3AVIzsR
 zSBg==
X-Gm-Message-State: APjAAAVxHJJ48zjAsEUAPN/h5PqZrP2iMqCKaS9F/LlaAtU0bKkaEEY6
 JCw6ZKpmCZ/M4jXTYZAtoK8rTw==
X-Google-Smtp-Source: APXvYqz+3hiuV6STGZnHJwaLLwOAKGH4nfp5Zj2mpiy0nDPxYfsoTWtopKzv0qCjUs3Xa4U+8mkFUQ==
X-Received: by 2002:a05:6214:1428:: with SMTP id
 o8mr3301869qvx.87.1575475203087; 
 Wed, 04 Dec 2019 08:00:03 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:02 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 15/25] arm64: kexec: move relocation function setup
Date: Wed,  4 Dec 2019 10:59:28 -0500
Message-Id: <20191204155938.2279686-16-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080007_656362_D87561D0 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arch/arm64/kernel/machine_kexec.c | 28 +++++++++++++++-------------
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index ad6afed69078..00dbcc71aeb2 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
 struct kimage_arch {
 	void *dtb;
 	phys_addr_t dtb_mem;
+	phys_addr_t kern_reloc;
 };
 
 #ifdef CONFIG_KEXEC_FILE
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ae1bad0156cd..46718b289a6b 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    start:       %lx\n", kimage->start);
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -58,6 +59,18 @@ void machine_kexec_cleanup(struct kimage *kimage)
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
+
 /**
  * machine_kexec_prepare - Prepare for a kexec reboot.
  *
@@ -143,8 +156,7 @@ static void kexec_segment_flush(const struct kimage *kimage)
  */
 void machine_kexec(struct kimage *kimage)
 {
-	phys_addr_t reboot_code_buffer_phys;
-	void *reboot_code_buffer;
+	void *reboot_code_buffer = page_to_virt(kimage->control_code_page);
 	bool in_kexec_crash = (kimage == kexec_crash_image);
 	bool stuck_cpus = cpus_are_stuck_in_kernel();
 
@@ -155,18 +167,8 @@ void machine_kexec(struct kimage *kimage)
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
 
@@ -202,7 +204,7 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
 			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
