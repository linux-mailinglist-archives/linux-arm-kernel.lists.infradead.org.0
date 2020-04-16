Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09831AC8A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzqJL3MhQYtNmeDFn+B4rjlcg7BkinTYW3aNzOu65Iw=; b=T2DmZzbnGOdGk2
	DFx4TcFGbo9ip5tljzdYHOjio0s99KGgerMY2EUhH7N3gyM1xFCKmvIBDqZURXrHnkrHK33Pgsehz
	0+VAnP+O5b55Nu8C1aRHi4qxERhCAC/UPWRiYjn9a6DPuZqFbIM1Q7HLuUCUQIbR3NUx9dgbAbEnm
	UyTF9QWkCQDVqNpMYqglzvfWRmQofoLNEhaTvtJ2RzuYN8Ufo+WBZRS7DSbSJ8tB/CNwSybupskP3
	bTZLumbyEAvAkcDjhMLtfvBggeztOBphn/iWc/l+JBUKRu1xX/oBZR22fv/fI05+Dp64rkEtA9h+u
	Yr6pwSwrWqoy0OuJEhKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6CH-0003lm-W5; Thu, 16 Apr 2020 15:12:58 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Br-0003bA-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:12:32 +0000
Received: by mail-qt1-f196.google.com with SMTP id s30so16666746qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:12:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=imM7gqSOmjnj0wLJRzezT2h41SI88XC5LjGCQYHrvNA=;
 b=NT23xqHTUTEzC8P5l/KlnEda/pEelK92oMnEmEM+xQ4eGiJPQFJbnUqLY6LvcryZkk
 bfw4HX2MxTNJYYSbdyJ5jrgGJ6kW2yGe5yx5xMM1DW9UdkJ9tIQyeOyt6tfo2FQqSGPN
 0/NnkavYtLm2mWZSHOb1j5/K0fbqPQOqeK81N76ulY+dOZT5mKQ38slmtK/LlsydKY1v
 0lP9bAH8KT5JVeE0rwxa/swU9zRigYrtesAwY9pZbsLpeYYda+5HhFI3+aau9u0J41ef
 3bC7E5MbW+HIuzvp54nvM3wmo8ONZnlmmsr3FYq0EeKWkgucYzU6ilnFOJ6NXfpFEML6
 L8Fw==
X-Gm-Message-State: AGi0PuZXe+VMCYTCXbFLpeeYGxWmvMFZKRjvuya3DE9Zsxsk6b3+cW2J
 qxKFPDb/fYOF0nQTo7E1KRk=
X-Google-Smtp-Source: APiQypICZD8HX0Ag/0fyyN0plcalNvAkwlqULHJHnrsXM4DNaQJR+ueS8IG2TsC0OBzxINWC7ELOiw==
X-Received: by 2002:ac8:45cf:: with SMTP id e15mr27114418qto.21.1587049950302; 
 Thu, 16 Apr 2020 08:12:30 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id c207sm15252197qkb.7.2020.04.16.08.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:12:29 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: [PATCH v2 1/3] efi/arm: Remove __efistub_global annotation
Date: Thu, 16 Apr 2020 11:12:25 -0400
Message-Id: <20200416151227.3360778-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_081231_555021_EA49FB3D 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/boot/compressed/vmlinux.lds.S | 2 +-
 drivers/firmware/efi/libstub/Makefile  | 7 ++++---
 drivers/firmware/efi/libstub/efistub.h | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index b247f399de71..b6793c7932a9 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -78,7 +78,7 @@ SECTIONS
      * The EFI stub always executes from RAM, and runs strictly before the
      * decompressor, so we can make an exception for its r/w data, and keep it
      */
-    *(.data.efistub)
+    *(.data.efistub .bss.efistub)
     __pecoff_data_end = .;
 
     /*
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..45ffe0822df1 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -100,8 +100,9 @@ quiet_cmd_stubcopy = STUBCPY $@
 
 #
 # ARM discards the .data section because it disallows r/w data in the
-# decompressor. So move our .data to .data.efistub, which is preserved
-# explicitly by the decompressor linker script.
+# decompressor. So move our .data to .data.efistub and .bss to .bss.efistub,
+# which are preserved explicitly by the decompressor linker script.
 #
-STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub
+STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub	\
+				   --rename-section .bss=.bss.efistub,load,alloc
 STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
index bd0b86b63936..a92d42ffd9f7 100644
--- a/drivers/firmware/efi/libstub/efistub.h
+++ b/drivers/firmware/efi/libstub/efistub.h
@@ -25,7 +25,7 @@
 #define EFI_ALLOC_ALIGN		EFI_PAGE_SIZE
 #endif
 
-#if defined(CONFIG_ARM) || defined(CONFIG_X86)
+#if defined(CONFIG_X86)
 #define __efistub_global	__section(.data)
 #else
 #define __efistub_global
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
