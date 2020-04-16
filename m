Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57C31AC8A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqfaUNra+TL2MRMNFTl45eeIqfANDqHwME8VGJvxweM=; b=pVJZ3NO6nVCiqe
	L/OsDAHWvAZCBmkMap86VqTuUnnQ2ev9ZOt1StgBw/R/p5f3m+vRrxKLvfPS/k9VICadPgFoRDk8t
	XBuNIlf9RamDiewDa6Zx1+NDMddsD1VDfZjgYnG9b3e9ssQJNicJc87FgpRne/vY7FD0BLI2KJIO0
	8mTtJ28ZF0f0SZg95U3YMGj/f1n23UmabeoPCG37HEKedo1/I+rYRdxgHRw1z9R4TX4G9IQMUyxi+
	SNL1Yr04gHNU5DX6Q4RE4T5+geYmMfWAX15cminKASlTV8F1QIeWCMSHExPh/aep49As7cA2eiB6O
	9xRcTGES/gGjgmOXCWJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6Cm-0004GX-8Y; Thu, 16 Apr 2020 15:13:28 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Bt-0003cA-Ev
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:12:35 +0000
Received: by mail-qt1-f194.google.com with SMTP id l60so8224600qtd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KisqXFX2ulNUKz2440gS97HInTPJUxOKPLXnv3/3XBo=;
 b=h8DGWzQPoSN7keiYevzqt0tV8T9XF4VaUxulW2uGW+Q4JJC1xDFXLld+Tbuj/36XG7
 8GYiKOvSlecURR8HsA8dP7HKC88kzkHeLe374EGtxajD7+HPafE4MGkS7N042vbz2YCY
 iMKSjfIDcIyEsIN6Q0rrtqeLsxHVYkU6pPiNJuPfkwqY/WkZUEXG/WIHGvwe4XIf8/ud
 qlbRhxfcOnLBFeEq2q70UPlC9secmHAoQgWQoViOJdn5YHFwmOeLZxWnzJbdNKsMZafR
 SCNhj1dWh/1FJA59hM64NVeD8zvCxlnCzjmEWfTfKTQFo7Xhk2qt30CnqhfPmm0IplsX
 a0Fw==
X-Gm-Message-State: AGi0PuY0SjouEvwBlEIrF3HvbWE6SYABdzeK5rth6WsqeS753OTCqmEt
 nUUHAVcCy7pBlQvQ5jEoorU=
X-Google-Smtp-Source: APiQypIPRk5qt0xhHpWYN1+m32Md8N9+UiGMBo0eavOhuXfsoMRtmHqYSc4JoAekFfMxinNmOUXvzg==
X-Received: by 2002:ac8:6d2c:: with SMTP id r12mr19506468qtu.355.1587049952304; 
 Thu, 16 Apr 2020 08:12:32 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id c207sm15252197qkb.7.2020.04.16.08.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:12:31 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: [PATCH v2 3/3] efi: Kill __efistub_global
Date: Thu, 16 Apr 2020 11:12:27 -0400
Message-Id: <20200416151227.3360778-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_081233_501070_46537531 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

Now that both arm and x86 are using the linker script to place the EFI
stub's global variables in the correct section, remove __efistub_global.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/arm-stub.c        |  4 ++--
 drivers/firmware/efi/libstub/efi-stub-helper.c | 15 +++++++--------
 drivers/firmware/efi/libstub/efistub.h         |  2 --
 drivers/firmware/efi/libstub/gop.c             |  2 +-
 drivers/firmware/efi/libstub/x86-stub.c        |  2 +-
 5 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
index 99a5cde7c2d8..bf42d6c742a8 100644
--- a/drivers/firmware/efi/libstub/arm-stub.c
+++ b/drivers/firmware/efi/libstub/arm-stub.c
@@ -36,9 +36,9 @@
 #endif
 
 static u64 virtmap_base = EFI_RT_VIRTUAL_BASE;
-static bool __efistub_global flat_va_mapping;
+static bool flat_va_mapping;
 
-static efi_system_table_t *__efistub_global sys_table;
+static efi_system_table_t *sys_table;
 
 __pure efi_system_table_t *efi_system_table(void)
 {
diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
index c6092b6038cf..14e56a64f208 100644
--- a/drivers/firmware/efi/libstub/efi-stub-helper.c
+++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
@@ -12,14 +12,13 @@
 
 #include "efistub.h"
 
-static bool __efistub_global efi_nochunk;
-static bool __efistub_global efi_nokaslr;
-static bool __efistub_global efi_noinitrd;
-static bool __efistub_global efi_quiet;
-static bool __efistub_global efi_novamap;
-static bool __efistub_global efi_nosoftreserve;
-static bool __efistub_global efi_disable_pci_dma =
-					IS_ENABLED(CONFIG_EFI_DISABLE_PCI_DMA);
+static bool efi_nochunk;
+static bool efi_nokaslr;
+static bool efi_noinitrd;
+static bool efi_quiet;
+static bool efi_novamap;
+static bool efi_nosoftreserve;
+static bool efi_disable_pci_dma = IS_ENABLED(CONFIG_EFI_DISABLE_PCI_DMA);
 
 bool __pure nochunk(void)
 {
diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
index 49651e20bb9f..f96c56596034 100644
--- a/drivers/firmware/efi/libstub/efistub.h
+++ b/drivers/firmware/efi/libstub/efistub.h
@@ -25,8 +25,6 @@
 #define EFI_ALLOC_ALIGN		EFI_PAGE_SIZE
 #endif
 
-#define __efistub_global
-
 extern bool __pure nochunk(void);
 extern bool __pure nokaslr(void);
 extern bool __pure noinitrd(void);
diff --git a/drivers/firmware/efi/libstub/gop.c b/drivers/firmware/efi/libstub/gop.c
index fa05a0b0adfd..216327d0b034 100644
--- a/drivers/firmware/efi/libstub/gop.c
+++ b/drivers/firmware/efi/libstub/gop.c
@@ -32,7 +32,7 @@ static struct {
 			u8 depth;
 		} res;
 	};
-} cmdline __efistub_global = { .option = EFI_CMDLINE_NONE };
+} cmdline = { .option = EFI_CMDLINE_NONE };
 
 static bool parse_modenum(char *option, char **next)
 {
diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
index 7583e908852f..aedac3af4b5c 100644
--- a/drivers/firmware/efi/libstub/x86-stub.c
+++ b/drivers/firmware/efi/libstub/x86-stub.c
@@ -20,7 +20,7 @@
 /* Maximum physical address for 64-bit kernel with 4-level paging */
 #define MAXMEM_X86_64_4LEVEL (1ull << 46)
 
-static efi_system_table_t *sys_table __efistub_global;
+static efi_system_table_t *sys_table;
 extern const bool efi_is64;
 extern u32 image_offset;
 
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
