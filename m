Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288051AC8A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1fnvmkbTjXH9wtl84nbxVusjc5p32z0ykclj6q/2JQ=; b=DxIzb+kQ+cgoa/
	nV6x+rKpe9Tt50ldN+5G0O+i/gTSNiXT2vx+5j5mmtlGZB1vvvnMO/gXgHPyFXbWuNWTZJhagSoCa
	1YK1x09ke99Iw45+2KNHoXUSG1ZdQkTIbmpnt6ZeDJET1zJj0k9adh5OVtuuhSWgbbeaN+VqZ/aRC
	tC6FLftcfYAuVPkZLkjQHuYu4xU7hD6KVfjOyc2Cskh3fQ7azTKHnBmVfD9Zv+nQ/Ci4LzrDeyQXX
	8HjyE08u7Mlkvnx1CT7WKJHyjRVoHyd8j1kHSAPIJvN6uhy2V7zOeZhYngEDnNsOD+2edfu3sV0xL
	FHIvuoi76YLgddP15KzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6CX-00042Q-R4; Thu, 16 Apr 2020 15:13:13 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Bs-0003bb-Cl
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:12:33 +0000
Received: by mail-qk1-f196.google.com with SMTP id x66so21592072qkd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:12:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dyf4r03T42/Fy8x1nrv3/xsvgPjc2y6s6Z0vSeQSYSg=;
 b=Q6HQHzsi8697G+xHPGZKQKViul49P+kKrX0RHIqoNp7DO7oYSkzPpQj3V4j2QbcQVR
 0wAGGRqfx2NCAtQuWS8BeJtUTrICwE5sbgJA/M7JpCqB9M53eNFuxSXIsMNweI3jkNPR
 3ErK3DEbtl6CoTPzvVH5HFdlw8IdPXWA2tDDpZ27SOxoT8qYqcaWl1XX9E+4a8n1FMMe
 +kOEqSMzovvaUwzIwPE+AFhTsuowb2cMsUXefi4eOoCinLABQQLAVQBdXfRU2wP0POmN
 uqQk2E3bJSENZNWgxp7TI4XMhQ0rTUs08lyOKqnG0cqmw/zRftVSmXxh4rvHHVXy5tbe
 kPwA==
X-Gm-Message-State: AGi0Pub9IRpL2qMKRo+o1AnBHOkbLMNLsn/to0lLpCUdvYzGUnUJwPF2
 ZD99ZhPnpG/VCBOENptxPSM=
X-Google-Smtp-Source: APiQypKLdtvWPbVerN9afGD477FA7gKjijbQItkiMGN23vQW6YEg3e2VjR3oP6K+WdheuvtL1luyQQ==
X-Received: by 2002:a37:58a:: with SMTP id 132mr21979682qkf.303.1587049951094; 
 Thu, 16 Apr 2020 08:12:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id c207sm15252197qkb.7.2020.04.16.08.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:12:30 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: [PATCH v2 2/3] efi/x86: Remove __efistub_global and add relocation
 check
Date: Thu, 16 Apr 2020 11:12:26 -0400
Message-Id: <20200416151227.3360778-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_081232_428744_F823256C 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of using __efistub_global to force variables into the .data
section, leave them in the .bss but pull the EFI stub's .bss section
into .data in the linker script for the compressed kernel.

Add relocation checking for x86 as well to catch non-PC-relative
relocations that require runtime processing, since the EFI stub does not
do any runtime relocation processing.

This will catch, for example, data relocations created by static
initializers of pointers.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/vmlinux.lds.S |  1 +
 drivers/firmware/efi/libstub/Makefile  | 32 +++++++++++++++++---------
 drivers/firmware/efi/libstub/efistub.h |  4 ----
 3 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 508cfa6828c5..0dc5c2b9614b 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -52,6 +52,7 @@ SECTIONS
 		_data = . ;
 		*(.data)
 		*(.data.*)
+		*(.bss.efistub)
 		_edata = . ;
 	}
 	. = ALIGN(L1_CACHE_BYTES);
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 45ffe0822df1..069d117d5451 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -73,13 +73,32 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 # a verification pass to see if any absolute relocations exist in any of the
 # object files.
 #
-extra-$(CONFIG_EFI_ARMSTUB)	:= $(lib-y)
-lib-$(CONFIG_EFI_ARMSTUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
+extra-y	:= $(lib-y)
+lib-y	:= $(patsubst %.o,%.stub.o,$(lib-y))
 
 STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
 				   --prefix-symbols=__efistub_
 STUBCOPY_RELOC-$(CONFIG_ARM64)	:= R_AARCH64_ABS
 
+#
+# ARM discards the .data section because it disallows r/w data in the
+# decompressor. So move our .data to .data.efistub and .bss to .bss.efistub,
+# which are preserved explicitly by the decompressor linker script.
+#
+STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub	\
+				   --rename-section .bss=.bss.efistub,load,alloc
+STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
+
+#
+# For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
+# .bss section, so the .bss section of the EFI stub needs to be included in the
+# .data section of the compressed kernel to ensure initialization. Rename the
+# .bss section here so it's easy to pick out in the linker script.
+#
+STUBCOPY_FLAGS-$(CONFIG_X86)	+= --rename-section .bss=.bss.efistub,load,alloc
+STUBCOPY_RELOC-$(CONFIG_X86_32) := R_386_32
+STUBCOPY_RELOC-$(CONFIG_X86_64) := R_X86_64_64
+
 $(obj)/%.stub.o: $(obj)/%.o FORCE
 	$(call if_changed,stubcopy)
 
@@ -97,12 +116,3 @@ quiet_cmd_stubcopy = STUBCPY $@
 		/bin/false;						\
 	fi;								\
 	$(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
-
-#
-# ARM discards the .data section because it disallows r/w data in the
-# decompressor. So move our .data to .data.efistub and .bss to .bss.efistub,
-# which are preserved explicitly by the decompressor linker script.
-#
-STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub	\
-				   --rename-section .bss=.bss.efistub,load,alloc
-STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
index a92d42ffd9f7..49651e20bb9f 100644
--- a/drivers/firmware/efi/libstub/efistub.h
+++ b/drivers/firmware/efi/libstub/efistub.h
@@ -25,11 +25,7 @@
 #define EFI_ALLOC_ALIGN		EFI_PAGE_SIZE
 #endif
 
-#if defined(CONFIG_X86)
-#define __efistub_global	__section(.data)
-#else
 #define __efistub_global
-#endif
 
 extern bool __pure nochunk(void);
 extern bool __pure nokaslr(void);
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
