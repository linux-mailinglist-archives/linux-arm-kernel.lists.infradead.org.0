Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5C3D3541
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qkhvr2E3ORt3azu8xmZwuTZLEX5FpVxggUxDuN0QWwE=; b=CDpLWQ8ZZob9/cyYAYuLQIfjGr
	eKNUNFF/pipBEqqwuYzSEEhYf1ER0WzUI2zCIhN9gt8bFfGyjiIhl7IrjDqPQ1fZUyuBrfEU4BkCV
	RqqLS1YfPSsymuVJvu3mPR3YDZkWLJhOD0iv1IT3rEOZo4XzrqjFHm4fLgGzyLRfimHosWSIQpVLE
	GuP/dkFI+2aB5ZWcTT9WuCsVXGT7ZRBwIug1uyGFKz5s41w3gH6gVlpGtp7Hc7G7S+GsjzcM9s+ec
	uuzc7dwrpfSs21Z5i2h4jr4TToOjuniwl/bQTZ7YGXi7NtP+0A3+RyEPaMi+qEhpD/K9jPxhrnwzb
	nydU2zCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiUT-0005mU-Cb; Fri, 11 Oct 2019 00:09:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiRx-0003c6-7r
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id y72so4923816pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NdxCafKKRqXAoKJS3a+7E7MX2efPsfhraTr7Vwa5zkA=;
 b=cHZ91CVxuyng0UUZxGcb/ber128JimxZzD4s8SDtIkcbdkfkK9QM8pnThLhmF0agpR
 T7rmBmBvoM7a8G3Gx26RdR3XR/1f8VRXaujTb/vPtdDG1XhtEUbWfIJWjMRQdw9gHq3B
 iOZPAybj973b7Yiu/eaaA1VBQXDHW1/4thP5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NdxCafKKRqXAoKJS3a+7E7MX2efPsfhraTr7Vwa5zkA=;
 b=iW7zFf4BMDW61DAob9RezuFAURGr4geiM3RTTrzXrWz5IIB0lKQpd6Pu+L4iN0KJOO
 kGMx64AHFG8rjo1T5L1dW5dZIXuA0RpHg/C4TEbKlH8mrVSa0eo/R5arkRx2JFnzLuW4
 44o9rV9pb/f1xQ5pZgJV5ezV8jDfCeu4g+8k6UiwBxxMk7fwwj/0jqabiqRmGc9rhU/U
 lRvrETt45ouvyYdAsv3itVhUmOxaUU1nF252mX24pXzxKfDyTGv/Nd/RRdEuKKRtcg9E
 bJUtw9B03Lr5QXaCeGd45/8xQBVgPyrWepEAFs+WbowhdJY4Y99nrKjTTSqyzG3usuFo
 KK0A==
X-Gm-Message-State: APjAAAVo9Jk5galfaSTia9OxnuelUnqJj04F3Mgi+OC4xyMrj2q524uw
 hxWKz9eknOTfkuF5bHft1CeInA==
X-Google-Smtp-Source: APXvYqz3ed6UFMtmTs9WyLDFjU7LZoWgRldfZKGM1qhYTNl+e8Jhzebc8fAsIpgzugR9ERVwOeUjmA==
X-Received: by 2002:a62:1bd3:: with SMTP id b202mr13350926pfb.50.1570752388551; 
 Thu, 10 Oct 2019 17:06:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 64sm9017564pfx.31.2019.10.10.17.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:24 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
Date: Thu, 10 Oct 2019 17:05:51 -0700
Message-Id: <20191011000609.29728-12-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170629_336719_C54C3B2A 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no reason to keep the RODATA macro: replace the callers with
the expected RO_DATA macro.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/alpha/kernel/vmlinux.lds.S      | 2 +-
 arch/ia64/kernel/vmlinux.lds.S       | 2 +-
 arch/microblaze/kernel/vmlinux.lds.S | 2 +-
 arch/mips/kernel/vmlinux.lds.S       | 2 +-
 arch/um/include/asm/common.lds.S     | 2 +-
 arch/xtensa/kernel/vmlinux.lds.S     | 2 +-
 include/asm-generic/vmlinux.lds.h    | 4 +---
 7 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index bf28043485f6..af411817dd7d 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -34,7 +34,7 @@ SECTIONS
 	swapper_pg_dir = SWAPPER_PGD;
 	_etext = .;	/* End of text section */
 
-	RODATA
+	RO_DATA(4096)
 	EXCEPTION_TABLE(16)
 
 	/* Will be freed after init */
diff --git a/arch/ia64/kernel/vmlinux.lds.S b/arch/ia64/kernel/vmlinux.lds.S
index fae077595756..11d5115bc44d 100644
--- a/arch/ia64/kernel/vmlinux.lds.S
+++ b/arch/ia64/kernel/vmlinux.lds.S
@@ -104,7 +104,7 @@ SECTIONS {
 	code_continues2 : {
 	} :text
 
-	RODATA
+	RO_DATA(4096)
 
 	.opd : AT(ADDR(.opd) - LOAD_OFFSET) {
 		__start_opd = .;
diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
index d008e50bb212..2299694748ea 100644
--- a/arch/microblaze/kernel/vmlinux.lds.S
+++ b/arch/microblaze/kernel/vmlinux.lds.S
@@ -51,7 +51,7 @@ SECTIONS {
 	}
 
 	. = ALIGN(16);
-	RODATA
+	RO_DATA(4096)
 	EXCEPTION_TABLE(16)
 
 	/*
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 91e566defc16..a5f00ec73ea6 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -82,7 +82,7 @@ SECTIONS
 	}
 
 	_sdata = .;			/* Start of data section */
-	RODATA
+	RO_DATA(4096)
 
 	/* writeable */
 	.data : {	/* Data */
diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
index 91aca356095f..7145ce699982 100644
--- a/arch/um/include/asm/common.lds.S
+++ b/arch/um/include/asm/common.lds.S
@@ -9,7 +9,7 @@
   _sdata = .;
   PROVIDE (sdata = .);
 
-  RODATA
+  RO_DATA(4096)
 
   .unprotected : { *(.unprotected) }
   . = ALIGN(4096);
diff --git a/arch/xtensa/kernel/vmlinux.lds.S b/arch/xtensa/kernel/vmlinux.lds.S
index a0a843745695..b97e5798b9cf 100644
--- a/arch/xtensa/kernel/vmlinux.lds.S
+++ b/arch/xtensa/kernel/vmlinux.lds.S
@@ -124,7 +124,7 @@ SECTIONS
 
   . = ALIGN(16);
 
-  RODATA
+  RO_DATA(4096)
 
   /*  Relocation table */
 
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index dc3390ec6b60..a0a989fbe411 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -518,9 +518,7 @@
 	. = ALIGN((align));						\
 	__end_rodata = .;
 
-/* RODATA & RO_DATA provided for backward compatibility.
- * All archs are supposed to use RO_DATA() */
-#define RODATA          RO_DATA_SECTION(4096)
+/* All archs are supposed to use RO_DATA() */
 #define RO_DATA(align)  RO_DATA_SECTION(align)
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
