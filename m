Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2D51AB3AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 00:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTs6D6Z2CbtemRRpqcJyHGoElMpDXmp028Inrr8BFJc=; b=ui1084Bns6sJUS
	FnbK1H98cvLp11E8qqAIyB7rrCn1U6Wr+qNdobZ2Cvo5V2eAn+Wko2ZY67ax6ebLfQDTh00LaqOgA
	l2AOWTYr4P+mPu1tB7m782vLnLrRdG3t4YAUDVR6TDKMRnmRiwsFbbP7tsoa+VZIPFhYdo0uhj7s0
	W600v3q/kBno69YjoKplm/sOc6HbsaKczhsw4QxgWbAmYDNxivW+yDXOJJLP8KGvKTRrQg3OVfJ0Y
	YyaDf1YuQG64iPCZGJqOxcUAsDe/hp49La4ZG3fR57kWHVFIZEuymrH1Dj1TkfzWdMtqrtj+qaVwN
	+ld2bM8RO1Waevgb1F8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqKK-0007DM-HD; Wed, 15 Apr 2020 22:16:12 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqJY-0006eo-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 22:15:26 +0000
Received: by mail-qt1-f194.google.com with SMTP id q17so14565131qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GU2OawWL1bidpPge0CUGIGiauoJ+t/PQ9Hui01IaJ3w=;
 b=rroUX/KTh7nPOEEePdOBpwO4n+tW8MArNJlrSc+HxaeZwug+TjGpTWN4jXcl5WObEU
 1PpjJi0DN0XRlWvSL3+/82TD6ZFriNF7Ldzgaxf0amZmeDlJqcj8RFhxtEHy9wk9wq1w
 SgZf2NJGGZhl6bSsJ3cEFiLOyD+14iGIEhXNxPRENClDm1ODgxvLDdbqYSr+zPjxesVw
 IuPb7+usTmJbH9PuLoIKFWLDeH3xZyWxQIw8B/zAk3TRKTgcXq7qVPuuj+3Z63ZNdQhe
 HhKix7zcuLwYLyX+2qMZenBUedPBbvFz4PqKKFU2GJIlp8V1ex1inWW4v9GT1C/KAe+a
 +eHQ==
X-Gm-Message-State: AGi0PuZgqXcw8iCvr6XLXSstHXRVux5oC/noWCM/IGCQxINTKLu5ULYz
 EgtLsQI1YAJ/edSE4c/d1Pg=
X-Google-Smtp-Source: APiQypKKO+yiB7+uIjFNaUTWvJHYnvI37H4MMGwRwlMBGopSX4oyJgU87IbKYTyH9OfqIIaavzt8zA==
X-Received: by 2002:ac8:7498:: with SMTP id v24mr22500450qtq.32.1586988923198; 
 Wed, 15 Apr 2020 15:15:23 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id i20sm13264340qkl.135.2020.04.15.15.15.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 15:15:22 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 2/5] efi/libstub: Factor out relocation checking
Date: Wed, 15 Apr 2020 18:15:17 -0400
Message-Id: <20200415221520.2692512-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_151524_369217_3740A4FE 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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

In preparation for using STUBCOPY for x86 as well, which doesn't require
relocation checking, move the checking code into its own variable so it
can be left out for x86.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 drivers/firmware/efi/libstub/Makefile | 30 ++++++++++++++++-----------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 45ffe0822df1..e5e76677f2da 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -80,6 +80,15 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
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
 $(obj)/%.stub.o: $(obj)/%.o FORCE
 	$(call if_changed,stubcopy)
 
@@ -89,20 +98,17 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
 # such relocations. If none are found, regenerate the output object, but
 # this time, use objcopy and leave all sections in place.
 #
-quiet_cmd_stubcopy = STUBCPY $@
-      cmd_stubcopy =							\
+
+cmd_stubrelocs_check-y = /bin/true
+
+cmd_stubrelocs_check-$(CONFIG_EFI_ARMSTUB) =				\
 	$(STRIP) --strip-debug -o $@ $<;				\
 	if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then		\
 		echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
 		/bin/false;						\
-	fi;								\
-	$(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
+	fi
 
-#
-# ARM discards the .data section because it disallows r/w data in the
-# decompressor. So move our .data to .data.efistub and .bss to .bss.efistub,
-# which are preserved explicitly by the decompressor linker script.
-#
-STUBCOPY_FLAGS-$(CONFIG_ARM)	+= --rename-section .data=.data.efistub	\
-				   --rename-section .bss=.bss.efistub,load,alloc
-STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
+quiet_cmd_stubcopy = STUBCPY $@
+      cmd_stubcopy =							\
+	$(cmd_stubrelocs_check-y);					\
+	$(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
