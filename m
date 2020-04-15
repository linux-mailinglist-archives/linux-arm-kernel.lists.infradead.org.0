Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF921AB3B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 00:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWb2efcCCudPObYOPZFQnu1VNtyShRRIYp/0A4fVmkc=; b=PC2ZzN31hJ7akw
	UPzNq+UXIs6vUX7v226ANogTC2/llWZPD6yKszQaEONjhTH3rXq22ATcoLL/ghuRbtOqmKdPnE1c3
	WLfN9JzIB0tsJW8KraJwY2miHeeFJzJHDOQa8oj+X4r5ZFFS5aTBSbiDXZiT1r/2v0Q/Dxj3gOm5l
	fAkpo6ZZLDW2jd8IhMYf4qr4utqg2OCGP/cU9GeqqPUApBaVQWNx09cyXDn2hj42IYFsim+B+9zMn
	P5DSTtCHOlvy0HiFdS2aU2W0P3v/xbEr2T1XO3VLk9q9x9ApwgadOFpUGnDHSNpsjlgvanoX/lb26
	GQDFcoq02LK+/t0ngJBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOqL4-00080C-Vr; Wed, 15 Apr 2020 22:16:59 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOqJa-0006gB-RH
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 22:15:28 +0000
Received: by mail-qt1-f194.google.com with SMTP id x2so14876838qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 15:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rOrczQkTIxOcY6UFnnC40rT9zyAvKX1Bi6yBMzeK9G0=;
 b=QwRNFt8l2LXW8KRkyHBV5lFRlCNAp3rr7YSufrIKyBlE7hVI46hV2HnfvNBWpO5uXr
 w9yM6it2Gf2eA49qkqIW6vEttD4Hj02JTmCFRQyqN2Lfhj5EFrkrDfHJiF3JtIgExEvv
 ci96h4cBeVrlKjyIPnKZgwluw6rIMgYNcMBgxXDjfymMp3cnzphbJt/2rHYvSvfMhxPR
 ucgDdTYVakTRwSqFLH+WwjIgQSqTZPtS4foDZ1RAmNF1qWBInd+oe1SeavbZxsknQWpX
 QkCTV0zecQf7tMKym4GtcKIxCKcnAxZDOC0X1njmTa0azWXq+DeSNwEQmRM1ijqPhq36
 RPiA==
X-Gm-Message-State: AGi0PuagesS31d9wmCDlJaBBNpVCc3NhweLSt4WB335Q2KyyvyhGsMcO
 eI9H82JHqixWP02kXBcV2oQ=
X-Google-Smtp-Source: APiQypL+3Bxma6w8vttK2a2cMb2AyT1VBao4IUEBYSF9XsXFaqUg93j4LKjmJf0fyJxTOhIxxv+jTg==
X-Received: by 2002:ac8:2afc:: with SMTP id c57mr17402778qta.324.1586988926023; 
 Wed, 15 Apr 2020 15:15:26 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id i20sm13264340qkl.135.2020.04.15.15.15.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 15:15:25 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 5/5] efi/x86: Check for bad relocations
Date: Wed, 15 Apr 2020 18:15:20 -0400
Message-Id: <20200415221520.2692512-6-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200415221520.2692512-1-nivedita@alum.mit.edu>
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_151526_884701_09DBE75E 
X-CRM114-Status: GOOD (  12.67  )
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

Add relocation checking for x86 as well to catch non-PC-relative
relocations that require runtime processing, since the EFI stub does not
do any runtime relocation processing.

This will catch, for example, data relocations created by static
initializers of pointers.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 drivers/firmware/efi/libstub/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 0bb2916eb12b..2aff59812a54 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -96,6 +96,8 @@ STUBCOPY_RELOC-$(CONFIG_ARM)	:= R_ARM_ABS
 # .bss section here so it's easy to pick out in the linker script.
 #
 STUBCOPY_FLAGS-$(CONFIG_X86)	+= --rename-section .bss=.bss.efistub,load,alloc
+STUBCOPY_RELOC-$(CONFIG_X86_32) := 'R_X86_32_(8|16|32)'
+STUBCOPY_RELOC-$(CONFIG_X86_64) := 'R_X86_64_(8|16|32|32S|64)'
 
 $(obj)/%.stub.o: $(obj)/%.o FORCE
 	$(call if_changed,stubcopy)
@@ -107,16 +109,14 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
 # this time, use objcopy and leave all sections in place.
 #
 
-cmd_stubrelocs_check-y = /bin/true
-
-cmd_stubrelocs_check-$(CONFIG_EFI_ARMSTUB) =				\
+cmd_stubrelocs_check =							\
 	$(STRIP) --strip-debug -o $@ $<;				\
-	if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then		\
+	if $(OBJDUMP) -r $@ | grep -E $(STUBCOPY_RELOC-y); then		\
 		echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
 		/bin/false;						\
 	fi
 
 quiet_cmd_stubcopy = STUBCPY $@
       cmd_stubcopy =							\
-	$(cmd_stubrelocs_check-y);					\
+	$(cmd_stubrelocs_check);					\
 	$(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
