Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76511AB3AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 00:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efiOOyG4rc1Vvjjg1WXteOpeFYgRK2717oipeB6pM0c=; b=ZkKFGjl9+n0ive
	1l3Mrta+5fXj0y8xI1bZJkzWCIP9Y2aDoL6acm1CjV0DTRtih24hEqp1S4hDxaKUeMdARbyw2mkXa
	j/G3EKqq9LlkqJ56CDJQ4SoxdLWZCODk/DaR+r6kURkVnJl2u3qtyTjkVTuKaMSfh8mooxaTyCB4A
	g4hbDVEA7KrFaCv5GNtRO/JKGeAHqktyVAeY/oppe3yl7xP8MeLz4RvMqmI5QO1C50EUZGgChP6fQ
	YUN5HbD7PqZKFS7Wg1Y/CxkZDRlTTQUbc+kvBAeN06zpa+JexCSkKsU/o+RJ9O/q2PC5A93jWAlQ1
	kYIumazVFMngAsiBw7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqKY-0007SX-Ke; Wed, 15 Apr 2020 22:16:26 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqJZ-0006f5-1d
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 22:15:26 +0000
Received: by mail-qt1-f194.google.com with SMTP id c16so9102390qtv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/884Y4S8L6kS/iSrGalw7uxiGyhKVKiR3Ww6KT2GqZU=;
 b=i0Z3KZev4uHSYvMjKBFMBKHqBwedl3AfHN7HS1FtGKgcrviTZ8xC+SrVUJVVgsV82o
 Cpi9jIXwuNNUTa2qEvC3C7WG2rYdv/u+stShBuHFz6+wAnCtT9YGO04cvIMNAR5iNVXc
 3VIdwgEnAY6/GvQcUQZntSF+JnejUUxBVpzXq01JMd7T/FWMZ9476MWcPLmyLzy2HGgJ
 OVe0Ea9GknSYW2g47DdLMEMrSuwC6i/20xllDTInLPBe7YpSlIVY3tkgg3c2bQCmkFCe
 PECoqSB9qm2kEAo45JhClyJhmfDjM1QH9wHVfSBbsWNdv1qPaFsmxVXQdz2IKlwgDJ2Z
 gtpA==
X-Gm-Message-State: AGi0PublvJXW9j5WHY74NsETzpzW6hBOELW0NyXmzL9K8y11xoeunum6
 KT4fkFV2jExH6KCfGoMXumQ=
X-Google-Smtp-Source: APiQypJlrUQQ2en4qUdzPOfXDNxDRWtBRRylqygI8Tcxmp3E2gsu+n70rOWANLLUxOh7H3FryRVBlg==
X-Received: by 2002:ac8:7309:: with SMTP id x9mr21688226qto.68.1586988924230; 
 Wed, 15 Apr 2020 15:15:24 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id i20sm13264340qkl.135.2020.04.15.15.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 15:15:23 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 3/5] efi/x86: Remove __efistub_global annotation
Date: Wed, 15 Apr 2020 18:15:18 -0400
Message-Id: <20200415221520.2692512-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_151525_107599_65F73025 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of using __efistub_global to force variables into the .data
section, leave them in the .bss but pull the EFI stub's .bss section
into .data in the linker script for the compressed kernel.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/vmlinux.lds.S |  1 +
 drivers/firmware/efi/libstub/Makefile  | 12 ++++++++++--
 drivers/firmware/efi/libstub/efistub.h |  4 ----
 3 files changed, 11 insertions(+), 6 deletions(-)

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
index e5e76677f2da..0bb2916eb12b 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -73,8 +73,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 # a verification pass to see if any absolute relocations exist in any of the
 # object files.
 #
-extra-$(CONFIG_EFI_ARMSTUB)	:= $(lib-y)
-lib-$(CONFIG_EFI_ARMSTUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
+extra-y	:= $(lib-y)
+lib-y	:= $(patsubst %.o,%.stub.o,$(lib-y))
 
 STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
 				   --prefix-symbols=__efistub_
@@ -89,6 +89,14 @@ STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub	\
 				   --rename-section .bss=.bss.efistub,load,alloc
 STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
 
+#
+# For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
+# .bss section, so the .bss section of the EFI stub needs to be included in the
+# .data section of the compressed kernel to ensure initialization. Rename the
+# .bss section here so it's easy to pick out in the linker script.
+#
+STUBCOPY_FLAGS-$(CONFIG_X86)	+= --rename-section .bss=.bss.efistub,load,alloc
+
 $(obj)/%.stub.o: $(obj)/%.o FORCE
 	$(call if_changed,stubcopy)
 
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
