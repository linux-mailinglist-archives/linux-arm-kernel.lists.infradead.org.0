Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F8D112F92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qi63Qtgz0Bzoq70z9X7pRokRJ15gRtXg+ZH+RYlYzM=; b=k5HglhGnRIw7uA
	G2JXFCjYWvIOQ2gGk2BdtQZI/kcWNTEph/A66EVs29yi1msoAkd3G5p+9hra/Eaf0xf3gaAl2jlUb
	xP+MFNqOdCzq5x2Cy5Ggqy/ylAGN6E9FKgr/Wqe9684IYpYRJt6xDXLrbAegl6BZuXXSX3xVgL+UT
	O7w9XiX1w0eWuf31JwbaXbqCgMqpcIJalHwPXds2Fg+H3LBWiU/Rjq7BJ5RtvYe9YtAvXhGlwVyTY
	QHzDptaN4Nuv6MXbIoqanAxqI6phqttmB6x9GjvquHFJUW7USGmdki7jclwez4pMJ4iTZWeW1jYAO
	a3jUd2cosbSSbhXiZK7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXAm-0007AA-MH; Wed, 04 Dec 2019 16:06:40 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4e-0000VC-B3
 for linux-arm-kernel@bombadil.infradead.org; Wed, 04 Dec 2019 16:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AH9Zqm50+NfM1iWI5KoXJ3ULW24qoAyNsWFwS8TvaKI=; b=LQKitZBmruZXIhtKMaO1pNcCw3
 6EKAtoFLg+rserLzTrLYGsgdDLxpyflpANfGg3QRJ0iU5N3Q7+ilE6UqMlfq7yoGfDn+/CAyhAObm
 bTHhgOo3UjibJhAEG0I0CS6zn2DHHMVJDvDFyk/CFytR6wF3GDlG044lRtdNpi6UtoUF/5LhWmSEs
 9QlREcZ3SNrvGd6rr9jRRjIY89XU/W7AV5jy0zGPSpfsnLmZza2+bHKJMI9Z1htMRZHI3d8iz/jUw
 bC5dM618aCI18hPlJfuIGmyDR1ZrocnNgwFgFEoASAauIW8fi0fm4awsFl5IvAM7GRb+HfEo8lLKw
 ij82fFXg==;
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX51-0003EU-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:46 +0000
Received: by mail-qt1-x843.google.com with SMTP id q8so194873qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=AH9Zqm50+NfM1iWI5KoXJ3ULW24qoAyNsWFwS8TvaKI=;
 b=Se+GtdqPYx3xghEzAGZthtisSe0ZQjQrvlWzeSNSy/PBuc1k2WDaJOz1Ua2HdHbt90
 vlYAYKeycRP8dZ0IYThzw9EfzySjQKGlpoSBQzYMMrtStHE76eOKP52iZqlnK6p0cP7j
 gT72AJ1psutEHuFmURZrNMBYKB+do8ORxZYR3rBjdiebQPNlmtDslGtvzobm5T2JsnT2
 tFBaua2a3xWKA+xX7IB2HWT+jnLcqRDwisuhdJIO+SubNOlZa7pcKM397Kwg7mWXRtHu
 lyNxrkrxhgTHykYLF+DjPfPhNu3BQG990kW5kOOBEEk/z2zD5LPSL8WW7vOt5Oo3P4e0
 iyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AH9Zqm50+NfM1iWI5KoXJ3ULW24qoAyNsWFwS8TvaKI=;
 b=MsULYz7CdfhVgFmBt35Bs7iVZz0sEkOY+hb28cmgRkzwffkEB+Clbrl4I5LBqANGBe
 AT7vn8naBI653OI+omiXpRkXODaY3IuMHXzUzVwBSkBbvTxO4ikhdghodezxexQnvMOt
 pQPG6kfjsJjc8jaatmFe3AXrQfMCyabgJHJSMFaFSdjhFSfAQpFJA9CJbEUiXpnnM60K
 zkqzS5RZLUf2LheItgWAVVZXKfpCKBEAhwVMplEYfXYpacu3G9KCd0N3XVsLB5/dROo3
 w70UiNms4ifZENPSXRz7zKmw/gCibgNTCcdqag56H9zv++T6BLJSF5MtHO7gfF/Z2MaV
 rMAQ==
X-Gm-Message-State: APjAAAWFqx50lTDhRPOJ5p51DAIt29Ha0iH4MelCyY3YFlskhBsn5VYf
 aHJ09VTceqpGop9f49i1XCy6Iw==
X-Google-Smtp-Source: APXvYqy2qMRBi3u87BVr/0hJi/9zKWwZkhz36ju8Yj72sdPE1OrC/7nG0llQRtLFJTezSaUkAAYoRQ==
X-Received: by 2002:aed:2d01:: with SMTP id h1mr3410420qtd.239.1575475213602; 
 Wed, 04 Dec 2019 08:00:13 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:12 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 22/25] arm64: kexec: kexec EL2 vectors
Date: Wed,  4 Dec 2019 10:59:35 -0500
Message-Id: <20191204155938.2279686-23-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_160043_590494_8AF70209 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

If we have a EL2 mode without VHE, the EL2 vectors are needed in order
to switch to EL2 and jump to new world with hyperivsor privileges.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      |  5 +++++
 arch/arm64/kernel/asm-offsets.c     |  1 +
 arch/arm64/kernel/machine_kexec.c   |  5 +++++
 arch/arm64/kernel/relocate_kernel.S | 34 +++++++++++++++++++++++++++++
 4 files changed, 45 insertions(+)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 8cad34e7a9d9..414a0a41a60a 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
 extern const unsigned long kexec_relocate_code_size;
 extern const unsigned char kexec_relocate_code_start[];
 extern const unsigned long kexec_kern_reloc_offset;
+extern const unsigned long kexec_el2_vectors_offset;
 #endif
 
 /*
@@ -104,6 +105,9 @@ extern const unsigned long kexec_kern_reloc_offset;
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
  *		arguments are currently unused, and must be set to 0
+ * el2_vector	If present means that relocation routine will go to EL1
+ *		from EL2 to do the copy, and then back to EL2 to do the jump
+ *		to new world.
  */
 struct kern_reloc_arg {
 	phys_addr_t head;
@@ -112,6 +116,7 @@ struct kern_reloc_arg {
 	phys_addr_t kern_arg1;
 	phys_addr_t kern_arg2;
 	phys_addr_t kern_arg3;
+	phys_addr_t el2_vector;
 };
 
 #define ARCH_HAS_KIMAGE_ARCH
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 448230684749..ff974b648347 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -136,6 +136,7 @@ int main(void)
   DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
   DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
   DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
+  DEFINE(KEXEC_KRELOC_EL2_VECTOR,	offsetof(struct kern_reloc_arg, el2_vector));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 5e7b1f6569c4..ac6ade7c96ff 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -84,6 +84,11 @@ int machine_kexec_post_load(struct kimage *kimage)
 	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
+	/* Setup vector table only when EL2 is available, but no VHE */
+	if (is_hyp_mode_available() && !is_kernel_in_hyp_mode()) {
+		kern_reloc_arg->el2_vector = __pa(reloc_code)
+						+ kexec_el2_vectors_offset;
+	}
 	kexec_image_info(kimage);
 
 	return 0;
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 3c05220a79ab..67efa42575a5 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -88,6 +88,38 @@ ENTRY(arm64_relocate_new_kernel)
 .ltorg
 END(arm64_relocate_new_kernel)
 
+.macro el1_sync_64
+	br	x4			/* Jump to new world from el2 */
+	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
+.endm
+
+.macro invalid_vector label
+\label:
+	b \label
+	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
+.endm
+
+/* el2 vectors - switch el2 here while we restore the memory image. */
+	.align 11
+ENTRY(kexec_el2_vectors)
+	invalid_vector el2_sync_invalid_sp0	/* Synchronous EL2t */
+	invalid_vector el2_irq_invalid_sp0	/* IRQ EL2t */
+	invalid_vector el2_fiq_invalid_sp0	/* FIQ EL2t */
+	invalid_vector el2_error_invalid_sp0	/* Error EL2t */
+	invalid_vector el2_sync_invalid_spx	/* Synchronous EL2h */
+	invalid_vector el2_irq_invalid_spx	/* IRQ EL2h */
+	invalid_vector el2_fiq_invalid_spx	/* FIQ EL2h */
+	invalid_vector el2_error_invalid_spx	/* Error EL2h */
+		el1_sync_64			/* Synchronous 64-bit EL1 */
+	invalid_vector el1_irq_invalid_64	/* IRQ 64-bit EL1 */
+	invalid_vector el1_fiq_invalid_64	/* FIQ 64-bit EL1 */
+	invalid_vector el1_error_invalid_64	/* Error 64-bit EL1 */
+	invalid_vector el1_sync_invalid_32	/* Synchronous 32-bit EL1 */
+	invalid_vector el1_irq_invalid_32	/* IRQ 32-bit EL1 */
+	invalid_vector el1_fiq_invalid_32	/* FIQ 32-bit EL1 */
+	invalid_vector el1_error_invalid_32	/* Error 32-bit EL1 */
+END(kexec_el2_vectors)
+
 .Lkexec_relocate_code_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
 .align 3	/* To keep the 64-bit values below naturally aligned. */
@@ -99,3 +131,5 @@ GLOBAL(kexec_relocate_code_size)
 	.quad	.Lkexec_relocate_code_end - kexec_relocate_code_start
 GLOBAL(kexec_kern_reloc_offset)
 	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
+GLOBAL(kexec_el2_vectors_offset)
+	.quad	kexec_el2_vectors - kexec_relocate_code_start
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
