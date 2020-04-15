Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0D11AB3AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 00:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvip+Cta8dY0VIaKe3lY4jpdnjCYF8F0oLwdci/78tM=; b=bRZq+RCiZYcWAR
	SjbiLdMA2q/WueWKd0+TS1XKHgzfniYzUiZo4A2z/xWc2dbi0HbyaV58I3bph15kJKcKhSIrjQJZM
	AtrFLQbJzr9rOdW0PZ/YJRLuLvcp/abb0lPGryqgn0a+V/VrZR12U8C2Tu/fVyAIQOzOnoMQawfgF
	jdV/e8MOJe1XtClw1k+sgy5cwVFLgAyALVnI/A0F1WNCt2RdbgG8q1wmbFbXWUyp5SwtWRLXF9TOA
	p8zkX+BwYSxDRkJOrpGAossHZQSlwY54Y7QvD7tlG7u6C/PlIsSt4NXY8rnq9ZbOH5RBVDR5vMLW1
	crtSH68R5JB3hsHcmLkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqJz-0006nW-QC; Wed, 15 Apr 2020 22:15:51 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqJX-0006eN-Em
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 22:15:24 +0000
Received: by mail-qt1-f196.google.com with SMTP id c16so9102304qtv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:15:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q+WCTPxC8MtmwIEzjkAHtcw6Iyj7SzDEM2KrEeYU91g=;
 b=kTLcj28XuaPYeeFt/CIL5u0oe82IbsOn5LqQt9KJB6SIC2z/J/AtpZcTubrvJGnB+S
 6Gi5W9VVBZCiiGdxioR2dho5VWD3V5zWEgtIHmjIQ52k1re8Swh8ijFVBv+iGBwvKgUg
 dH2cpE9Y3gxwi5GwiYECM8ieisV0UPWhqnRdnJoIXQQ9BlAkmrQmIDyyEgWUbItDLBZg
 e0Gp+9ac/A9xmkR8Ji+aR4V52sOYlv5U3QlqybqEMW5BjMX0CfKGKCn54jAvLTX5MeA3
 ZGy7HgnfIGzya4XRIGGqYHQiYlYvHzJ9/Xur6Bs7esAfH5VXoAAAqLzLV2YR/Dme0Ula
 ICiQ==
X-Gm-Message-State: AGi0PuYw9lfU4I6w2HIrX0Mfuise8aH2UixHN7x8DGz6Icu8JNCU00tk
 kYV0gitaSML9GaNhQvi4Tco=
X-Google-Smtp-Source: APiQypI8NnA5drqCjYaPuU0fFArVOFnxNmup6jrUOtP8oL8Xl04Ged6VBA6oue2ewi1z/QUYLxzymQ==
X-Received: by 2002:ac8:2272:: with SMTP id p47mr18126911qtp.297.1586988922280; 
 Wed, 15 Apr 2020 15:15:22 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id i20sm13264340qkl.135.2020.04.15.15.15.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 15:15:21 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 1/5] efi/arm: Remove __efistub_global annotation
Date: Wed, 15 Apr 2020 18:15:16 -0400
Message-Id: <20200415221520.2692512-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_151523_495558_CC41B668 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
