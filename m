Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE22ADEAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45IoqyY95Nu1D1e4ucy3R7/pM07rBSdj4WJmZeN18rM=; b=pkJtAvvFC6Pk4H
	2413bvaea/KhSMt9/A7tiLCRSw1rqi8EOwFC+eYqglKzjM9+Zrl7lswtkjmW89swGSiSpixEvGakQ
	dhEoDFKloj4QosJgbpmibi/UFpyBkWZfmAG5QbqXr7d4WhSqH0SsFblU4mpoyM4So7iAp0c7HZU1X
	3DcFSmaHNLoqhfikVORDvtP3W8NzYXzCiN5gNUQWbbT7/1prOO7DBdolh2AwG2x8rIFlnGJtu6Qj2
	WnXc7Y7vqqk8dIbMXWe3S0x3D7Yk0/9i1yWpxtV3tlvR13fNLeXmy4bNqjdJTABKR1SW11H29nhsh
	ukpnYLYNdnZh52KLae8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ODz-0005u3-He; Mon, 09 Sep 2019 18:17:15 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9d-0000CX-CF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id 4so13998890qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=FUw6qa2MYJdKp/gIXzP4SLM1N30xDLUwNEhq/71i4ng=;
 b=XnfdhYNzn7N67bW/jWuTKw/6D0K8HU77oHQ9GmGE6Q/qEyfDPaBtEttmir1Uiv9afd
 cUukiMb4XpNVtqJBapjCHzvo+7GzVxiIogP9cFJnOFfKdPpX/1uznaEaP+LkvHCfnePG
 dwV86aQNQCiaTvtSyGoCZihzsUzlF+EN8Ln7C8p+uhYefXXJZcE4KK/WPh3iYripIpVO
 2o/I27Pb7xPtgaxcBoTumvu6yU/Pi2OZoyYL0QvKDyFPiOyF/S43wRLOdmgnmrRYYviv
 YkkhhrGPeQ2Y6W3NeNjyOnpse5GbQXZ7fbFTIrXUj5YCx8dmQAAgLZvNLcNl9N96QzVa
 V9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FUw6qa2MYJdKp/gIXzP4SLM1N30xDLUwNEhq/71i4ng=;
 b=qJ4D/lZ8oRvAmvdjO4A4C1V478D2SGlPiK/wWQ6okwaotwjM6t6K1B7m8a25KrxFdv
 ishZpeVNx5PDy8msEG5X+/LWJ9kNs37mMCAGCvsNPhbVGUgJqJ+ORGbdhoChYfPR2SfZ
 A9Mxi8YcSwHN52ccNkmEx0+l2ThDxAZVgP97hB3qr51eHEMkPpz7uOnHIHaXZXa9+ahv
 BTtYx2rp+NwfBHR55EEwhPed8MKBaU6LV/aZUY0LBWbYihU1ZoKVk2H1pX3sH8vdsG/+
 RpDSW7Ai849VhwSbggF4EbcAZnVe9uy2A/lMNHumb6c6S/BqAKtdhNXh20wJKZhVlrYs
 oL+w==
X-Gm-Message-State: APjAAAW5B7CzRKn9DMpRrfSbXd/OdiI8QXLJicqNZJgKOhpplXAKz5k1
 hozXUm6HwykdTmQNqHtSnSRMQQ==
X-Google-Smtp-Source: APXvYqzlcg09nsXuE6H13PAuyBoLAzGitzUW8SWzigHiV9rVFMfj1Y6YsNv0lBsRq+tdW3/nGGVCCw==
X-Received: by 2002:a37:bd45:: with SMTP id n66mr23793343qkf.272.1568052764598; 
 Mon, 09 Sep 2019 11:12:44 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 14/17] arm64: kexec: move relocation function setup and
 clean up
Date: Mon,  9 Sep 2019 14:12:18 -0400
Message-Id: <20190909181221.309510-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111245_593230_8A4D7FBC 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In addition, do some cleanup: add infor about reloction function to
kexec_image_info(), and remove extra messages from machine_kexec().

Make dtb_mem, always available, if CONFIG_KEXEC_FILE is not configured
dtb_mem is set to zero anyway.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  3 +-
 arch/arm64/kernel/machine_kexec.c | 49 +++++++++++--------------------
 2 files changed, 19 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 12a561a54128..d15ca1ca1e83 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,14 +90,15 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
-#ifdef CONFIG_KEXEC_FILE
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
 	unsigned long dtb_mem;
+	unsigned long kern_reloc;
 };
 
+#ifdef CONFIG_KEXEC_FILE
 extern const struct kexec_file_ops kexec_image_ops;
 
 struct kimage;
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 0df8493624e0..9b41da50e6f7 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    start:       %lx\n", kimage->start);
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -58,6 +59,19 @@ void machine_kexec_cleanup(struct kimage *kimage)
 	/* Empty routine needed to avoid build errors. */
 }
 
+int machine_kexec_post_load(struct kimage *kimage)
+{
+	unsigned long kern_reloc;
+
+	kern_reloc = page_to_phys(kimage->control_code_page);
+	memcpy(__va(kern_reloc), arm64_relocate_new_kernel,
+	       arm64_relocate_new_kernel_size);
+	kimage->arch.kern_reloc = kern_reloc;
+
+	kexec_image_info(kimage);
+	return 0;
+}
+
 /**
  * machine_kexec_prepare - Prepare for a kexec reboot.
  *
@@ -67,8 +81,6 @@ void machine_kexec_cleanup(struct kimage *kimage)
  */
 int machine_kexec_prepare(struct kimage *kimage)
 {
-	kexec_image_info(kimage);
-
 	if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
 		pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
 		return -EBUSY;
@@ -143,8 +155,7 @@ static void kexec_segment_flush(const struct kimage *kimage)
  */
 void machine_kexec(struct kimage *kimage)
 {
-	phys_addr_t reboot_code_buffer_phys;
-	void *reboot_code_buffer;
+	void *reboot_code_buffer = phys_to_virt(kimage->arch.kern_reloc);
 	bool in_kexec_crash = (kimage == kexec_crash_image);
 	bool stuck_cpus = cpus_are_stuck_in_kernel();
 
@@ -155,30 +166,8 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	reboot_code_buffer_phys = page_to_phys(kimage->control_code_page);
-	reboot_code_buffer = phys_to_virt(reboot_code_buffer_phys);
-
 	kexec_image_info(kimage);
 
-	pr_debug("%s:%d: control_code_page:        %p\n", __func__, __LINE__,
-		kimage->control_code_page);
-	pr_debug("%s:%d: reboot_code_buffer_phys:  %pa\n", __func__, __LINE__,
-		&reboot_code_buffer_phys);
-	pr_debug("%s:%d: reboot_code_buffer:       %p\n", __func__, __LINE__,
-		reboot_code_buffer);
-	pr_debug("%s:%d: relocate_new_kernel:      %p\n", __func__, __LINE__,
-		arm64_relocate_new_kernel);
-	pr_debug("%s:%d: relocate_new_kernel_size: 0x%lx(%lu) bytes\n",
-		__func__, __LINE__, arm64_relocate_new_kernel_size,
-		arm64_relocate_new_kernel_size);
-
-	/*
-	 * Copy arm64_relocate_new_kernel to the reboot_code_buffer for use
-	 * after the kernel is shut down.
-	 */
-	memcpy(reboot_code_buffer, arm64_relocate_new_kernel,
-		arm64_relocate_new_kernel_size);
-
 	/* Flush the reboot_code_buffer in preparation for its execution. */
 	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
 
@@ -214,12 +203,8 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
-#ifdef CONFIG_KEXEC_FILE
-						kimage->arch.dtb_mem);
-#else
-						0);
-#endif
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
+			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
