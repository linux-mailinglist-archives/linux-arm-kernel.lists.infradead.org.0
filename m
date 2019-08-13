Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D631E8C49E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 01:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XZ+BI7KMLv5CK9fpjCfr2BBi8QW/s+AT8LUdifASByE=; b=WYiwESOMUH/q2w
	ZoAjL+RKg8nW+L4b9a3PaY25XhjIFS1xIc4+64S9bamNovTz2TSPUHWWe7qnNZ/Zf8RdT3euQ9u/+
	43o6rPA1PfsopEVIvVHTEvFDRvGgOuV4gUfTVG+WMZUvaV7kIrejLDj9OGNbPt1NhjPwndNHd1Hsq
	j6cRxIMOMDiriiC2wx0KVaEx23LEQSDt1lSZbMmgmTsYEk3y9DdRzJj26mmRKfUTyV7LE296/Wbxq
	yAyIQiXcBBVOhUHEAiQjmUWPRQRCq4couLHRSzhNlvfTdY2lY5ukZyzuSGuGrFgnBCiB8InMj+TWt
	RyZ+v2lOtUNfpgLUZHQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfqj-00062p-I9; Tue, 13 Aug 2019 23:05:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfqY-000623-37
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 23:04:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id g4so3405201plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=b+JmorHFxBDjgjp81mdE+eQ+tC1x8WkQJkcE1tgqkc4=;
 b=jTb0CaVwThVYx3vOwD1dWobGZmwwuJFAgFmShIxG1h6tk9h8u+FodDpc7Q6/DMNNBc
 ehUsXMoEmvKIeVHXp+U1thNd/6WXmq2LVXRdui0s7VQWWVv9LLmuV2ZTxBan5mDbUjOw
 F8qCtEw03kbY/4uMFXSgmw0+++sggXhYHCvz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=b+JmorHFxBDjgjp81mdE+eQ+tC1x8WkQJkcE1tgqkc4=;
 b=cP3LLfYAuCzdwDc+9mTVOriwSpfheWjAVn6GQE4jCXhkVzxPxark0COM4rEDMxEJTB
 Bxs9J0x6FnOElDfnB01lB+TZxUwPuGbHlZMFdkJZlIPTXyOH9OH6SZEnbwy7fobpysa+
 mOhBtUejVxQI7fE3PwZuqV8kadzWRn5m5c6g+TtW6smjtTqjCrcSIi7mR7nVYfA6V2Np
 4pmTpaMvA22jRtniyr5pN4XAOZLkGCn0RTUGDIRyXhE9ydeM+mhdEIgpi7PYfs/3rCkk
 5nvShwYgkd14B8LLdSHhnLJ51jZipn4J7RacMLAPgB5gbViXAdZFzP8Ctf5evxMSQZbK
 Etzg==
X-Gm-Message-State: APjAAAUeDiyJeJzujR/gE8kxrTurSiyVMxmx5NrEhkO9d/w85MvxgnOi
 tF7NgNVj9+3l9hYzk9qIXw2uww==
X-Google-Smtp-Source: APXvYqykdJqTdHuTeV+7Np9dvpfjLzBbQr3StktyfP/KteJaQUL8ByJ0OL/nBrBxD1YQlNAdMEvNAw==
X-Received: by 2002:a17:902:f30e:: with SMTP id
 gb14mr6861249plb.32.1565737492192; 
 Tue, 13 Aug 2019 16:04:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s11sm116207822pgv.13.2019.08.13.16.04.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 16:04:51 -0700 (PDT)
Date: Tue, 13 Aug 2019 16:04:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <201908131602.6E858DEC@keescook>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_160454_164835_F8D09898 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fangrui Song <maskray@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Smith <peter.smith@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It seems that LLVM's linker does not correctly handle variable assignments
involving section positions that are updated during the SECTIONS
parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
an absolute symbol explicitly") ran into this too, but found a different
workaround.

However, this was not enough, as other variables were also miscalculated
which manifested as boot failures under UEFI where __efistub__end was
not taking the correct _end value (they should be the same):

$ ld.lld -EL -maarch64elf --no-undefined -X -shared \
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
	-o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
  readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end

$ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
	-Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
	-o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
  readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end

To work around this, all of the __efistub_-prefixed variable assignments
need to be moved after the linker script's SECTIONS entry. As it turns
out, this also solves the problem fixed in commit aa69fb62bea1, so those
changes are reverted here.

Link: https://github.com/ClangBuiltLinux/linux/issues/634
Link: https://bugs.llvm.org/show_bug.cgi?id=42990
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/image-vars.h  | 51 +++++++++++++++++++++++++++++++++
 arch/arm64/kernel/image.h       | 42 ---------------------------
 arch/arm64/kernel/vmlinux.lds.S |  2 ++
 3 files changed, 53 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm64/kernel/image-vars.h

diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
new file mode 100644
index 000000000000..25a2a9b479c2
--- /dev/null
+++ b/arch/arm64/kernel/image-vars.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Linker script variables to be set after section resolution, as
+ * ld.lld does not like variables assigned before SECTIONS is processed.
+ */
+#ifndef __ARM64_KERNEL_IMAGE_VARS_H
+#define __ARM64_KERNEL_IMAGE_VARS_H
+
+#ifndef LINKER_SCRIPT
+#error This file should only be included in vmlinux.lds.S
+#endif
+
+#ifdef CONFIG_EFI
+
+__efistub_stext_offset = stext - _text;
+
+/*
+ * The EFI stub has its own symbol namespace prefixed by __efistub_, to
+ * isolate it from the kernel proper. The following symbols are legally
+ * accessed by the stub, so provide some aliases to make them accessible.
+ * Only include data symbols here, or text symbols of functions that are
+ * guaranteed to be safe when executed at another offset than they were
+ * linked at. The routines below are all implemented in assembler in a
+ * position independent manner
+ */
+__efistub_memcmp		= __pi_memcmp;
+__efistub_memchr		= __pi_memchr;
+__efistub_memcpy		= __pi_memcpy;
+__efistub_memmove		= __pi_memmove;
+__efistub_memset		= __pi_memset;
+__efistub_strlen		= __pi_strlen;
+__efistub_strnlen		= __pi_strnlen;
+__efistub_strcmp		= __pi_strcmp;
+__efistub_strncmp		= __pi_strncmp;
+__efistub_strrchr		= __pi_strrchr;
+__efistub___flush_dcache_area	= __pi___flush_dcache_area;
+
+#ifdef CONFIG_KASAN
+__efistub___memcpy		= __pi_memcpy;
+__efistub___memmove		= __pi_memmove;
+__efistub___memset		= __pi_memset;
+#endif
+
+__efistub__text			= _text;
+__efistub__end			= _end;
+__efistub__edata		= _edata;
+__efistub_screen_info		= screen_info;
+
+#endif
+
+#endif /* __ARM64_KERNEL_IMAGE_VARS_H */
diff --git a/arch/arm64/kernel/image.h b/arch/arm64/kernel/image.h
index 2b85c0d6fa3d..c7d38c660372 100644
--- a/arch/arm64/kernel/image.h
+++ b/arch/arm64/kernel/image.h
@@ -65,46 +65,4 @@
 	DEFINE_IMAGE_LE64(_kernel_offset_le, TEXT_OFFSET);	\
 	DEFINE_IMAGE_LE64(_kernel_flags_le, __HEAD_FLAGS);
 
-#ifdef CONFIG_EFI
-
-/*
- * Use ABSOLUTE() to avoid ld.lld treating this as a relative symbol:
- * https://github.com/ClangBuiltLinux/linux/issues/561
- */
-__efistub_stext_offset = ABSOLUTE(stext - _text);
-
-/*
- * The EFI stub has its own symbol namespace prefixed by __efistub_, to
- * isolate it from the kernel proper. The following symbols are legally
- * accessed by the stub, so provide some aliases to make them accessible.
- * Only include data symbols here, or text symbols of functions that are
- * guaranteed to be safe when executed at another offset than they were
- * linked at. The routines below are all implemented in assembler in a
- * position independent manner
- */
-__efistub_memcmp		= __pi_memcmp;
-__efistub_memchr		= __pi_memchr;
-__efistub_memcpy		= __pi_memcpy;
-__efistub_memmove		= __pi_memmove;
-__efistub_memset		= __pi_memset;
-__efistub_strlen		= __pi_strlen;
-__efistub_strnlen		= __pi_strnlen;
-__efistub_strcmp		= __pi_strcmp;
-__efistub_strncmp		= __pi_strncmp;
-__efistub_strrchr		= __pi_strrchr;
-__efistub___flush_dcache_area	= __pi___flush_dcache_area;
-
-#ifdef CONFIG_KASAN
-__efistub___memcpy		= __pi_memcpy;
-__efistub___memmove		= __pi_memmove;
-__efistub___memset		= __pi_memset;
-#endif
-
-__efistub__text			= _text;
-__efistub__end			= _end;
-__efistub__edata		= _edata;
-__efistub_screen_info		= screen_info;
-
-#endif
-
 #endif /* __ARM64_KERNEL_IMAGE_H */
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 7fa008374907..803b24d2464a 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -245,6 +245,8 @@ SECTIONS
 	HEAD_SYMBOLS
 }
 
+#include "image-vars.h"
+
 /*
  * The HYP init code and ID map text can't be longer than a page each,
  * and should not cross a page boundary.
-- 
2.17.1


-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
