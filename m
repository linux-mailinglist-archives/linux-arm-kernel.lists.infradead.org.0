Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3300CD676D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bFVBLmSAI67EKVRVJ976rFVJhb17XzlF5Frmxpt4Q24=; b=AWaZtE0prtFAKn
	TzXV3jyYung5GM46YpbdIYSXq5utN5mbiOzHoadisQSsfKUn1h5/wpF7esUHXwHaDS5FWUUp5g6F+
	P0rKmQjVgWN+jVD7Kk7RvmJewoFKWvlUzoG5+Lfin8NLSHMwNg+v2Z+sUayE+SylST1LP8jkK8B7e
	QiOi647qxPv6IW25Zucu4D+N8DXmh+t6DjJXZ2W1LznbCD0PIPjTpcen0dntkHUYL0FHya3ghdrC3
	ejo+MjvSDlrs4LgP5ER56hiSeucu58WMLefoUS3oSEYirB+9zt3Qk2Ppxv6k2GY/NBkLjw9jT76kg
	OIZj83Gck17z+l7+NVmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3Hv-0001ZP-3g; Mon, 14 Oct 2019 16:33:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3Hf-0001Tp-Mo
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:33:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id y135so386665wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 09:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yuEdphuMWOUGDahWSE97oqgmOlObKgpyvQgzFU8TRQU=;
 b=THTDXG/3mOeZtb6dOK6qrH1eQvV7z52+jijnE+ULOhMbPReKZiIPTLCR3+W7HnWIkL
 RFmtL80kGqOr/FynSqFtzLiwv4TaClqwXnVtULNnpITi/cHhy+AnvWVfQCDZ1THjSHSh
 pduFTV40hbsfQR4K3wm6K4LGLOnaAkS193JT28eOdR7oOcCjbZSKoQKTYCquWrAWTeIo
 oQAUnFNuy4gdBy+94VmzR0AdgNrDXTc5KPDYLaOTSBxZUJQ8+7pDFhxOxm06B6gNgPEp
 fzYcPcRV2R9hc6PtL8jxMKRNQ3PcJnas8KU2DsmaK/FJZxgtzXs97TaHydGKq33TYgst
 Mpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yuEdphuMWOUGDahWSE97oqgmOlObKgpyvQgzFU8TRQU=;
 b=PJHaADcio6H7WwVXfMpYGT2fr/FMtU5GUUbNeD+td9rfpid6nfbHrh2TCAQtpxAMaS
 B63nd+HNchQoPhWWHWMMx8gbY9KwOKzc5/FO5wqeDo5gbpI/eWidH+ieGLaxozX/Aqku
 BLTdsnGMIB+FxmFCmtaY1y9wuqdVmS/4RiobjBycBZmXBYOYxZc3I81zM1u+nBjRKsNZ
 h2D/gN8sjkRbT4f5kU/xpHbh+8CbpVp4ze5cpKOf35Iwf+ASNw/l53NHft0Y41ehG2NA
 YFsdBpquso+CNhTGqN5VOBlpGdMFRJ4SIseygRQbXVT4KEeZBP60so7Ed8MwxoXmG6sw
 gM5w==
X-Gm-Message-State: APjAAAUc9u8vjoe8La6L5Z/DMvnvVKz828SBRtfClkhDufJCaEZaQ1S9
 nO3+g66C+iOliANLi0dTY/L7SkabogZiQQ==
X-Google-Smtp-Source: APXvYqz0XzN3uY3m31zQi76ZEDZQMtYggJ6COqe0WCePJ5GuE+rYLNtFHVBakYmvlBvQjlPYRU+lrg==
X-Received: by 2002:a1c:a516:: with SMTP id o22mr16781400wme.116.1571070801893; 
 Mon, 14 Oct 2019 09:33:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm25785240wme.29.2019.10.14.09.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 09:33:21 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] efi: libstub/arm: account for firmware reserved memory at the
 base of RAM
Date: Mon, 14 Oct 2019 18:33:09 +0200
Message-Id: <20191014163309.2860-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_093323_781941_B57BEE97 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chester Lin <clin@suse.com>, Guillaume Gardet <Guillaume.Gardet@arm.com>,
 linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EFI stubloader for ARM starts out by allocating a 32 MB window
at the base of RAM, in order to ensure that the decompressor (which
blindly copies the uncompressed kernel into that window) does not
overwrite other allocations that are made while running in the context
of the EFI firmware.

In some cases, (e.g., U-Boot running on the Raspberry Pi 2), this is
causing boot failures because this initial allocation conflicts with
a page of reserved memory at the base of RAM that contains the SMP spin
tables and other pieces of firmware data and which was put there by
the bootloader under the assumption that the TEXT_OFFSET window right
below the kernel is only used partially during early boot, and will be
left alone once the memory reservations are processed and taken into
account.

So let's permit reserved memory regions to exist in the region starting
at the base of RAM, and ending at TEXT_OFFSET - 5 * PAGE_SIZE, which is
the window below the kernel that is not touched by the early boot code.

Cc: Guillaume Gardet <Guillaume.Gardet@arm.com>
Cc: Chester Lin <clin@suse.com> 
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/firmware/efi/libstub/Makefile     |  1 +
 drivers/firmware/efi/libstub/arm32-stub.c | 16 +++++++++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 0460c7581220..ee0661ddb25b 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -52,6 +52,7 @@ lib-$(CONFIG_EFI_ARMSTUB)	+= arm-stub.o fdt.o string.o random.o \
 
 lib-$(CONFIG_ARM)		+= arm32-stub.o
 lib-$(CONFIG_ARM64)		+= arm64-stub.o
+CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
 #
diff --git a/drivers/firmware/efi/libstub/arm32-stub.c b/drivers/firmware/efi/libstub/arm32-stub.c
index e8f7aefb6813..47aafeff3e01 100644
--- a/drivers/firmware/efi/libstub/arm32-stub.c
+++ b/drivers/firmware/efi/libstub/arm32-stub.c
@@ -195,6 +195,7 @@ efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
 				 unsigned long dram_base,
 				 efi_loaded_image_t *image)
 {
+	unsigned long kernel_base;
 	efi_status_t status;
 
 	/*
@@ -204,9 +205,18 @@ efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
 	 * loaded. These assumptions are made by the decompressor,
 	 * before any memory map is available.
 	 */
-	dram_base = round_up(dram_base, SZ_128M);
+	kernel_base = round_up(dram_base, SZ_128M);
 
-	status = reserve_kernel_base(sys_table, dram_base, reserve_addr,
+	/*
+	 * Note that some platforms (notably, the Raspberry Pi 2) put
+	 * spin-tables and other pieces of firmware at the base of RAM,
+	 * abusing the fact that the window of TEXT_OFFSET bytes at the
+	 * base of the kernel image is only partially used at the moment.
+	 * (Up to 5 pages are used for the swapper page table)
+	 */
+	kernel_base += TEXT_OFFSET - 5 * PAGE_SIZE;
+
+	status = reserve_kernel_base(sys_table, kernel_base, reserve_addr,
 				     reserve_size);
 	if (status != EFI_SUCCESS) {
 		pr_efi_err(sys_table, "Unable to allocate memory for uncompressed kernel.\n");
@@ -220,7 +230,7 @@ efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
 	*image_size = image->image_size;
 	status = efi_relocate_kernel(sys_table, image_addr, *image_size,
 				     *image_size,
-				     dram_base + MAX_UNCOMP_KERNEL_SIZE, 0);
+				     kernel_base + MAX_UNCOMP_KERNEL_SIZE, 0);
 	if (status != EFI_SUCCESS) {
 		pr_efi_err(sys_table, "Failed to relocate kernel.\n");
 		efi_free(sys_table, *reserve_size, *reserve_addr);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
