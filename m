Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63047172D2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uq7iNtbkUxljQ5fWVWTlPFmB7Qc0xxHgizWJUHnVG6E=; b=dZWXCGKNVv52LJ
	K2Z96rxIjicZZgv4IpASTLiBvdvi/6Re0erucKqD0H+tjdRYWEYruKX5Li1PWhchzNQzJV5jLqoIp
	9mF2t7M8YXvG0rDj9kvckjOrTlx9VnRRTLZR/dymwnNXz6aHyBHHg4opeBCAz9lLPHJYYPGeYYgtY
	sIYpLKCAuP9R5wuGO0U5xL1ubE+dsAVFBZgdKGUJeA7hBMerG72qHUqd2hK6mrvxaZtPT5MZObcbT
	rz7h2RPzHbKAclF6X5c9HTp3f+KE+xvV6LVUENje3UqmzlftGfii97wPa6G/z7eXYVOeel2nzg2+J
	e+OCejFma6pEX7dboKBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TSZ-0002Vs-Fh; Fri, 28 Feb 2020 00:24:55 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQc-00012G-Fm
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id f2so3738736pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zVpHeuxipIPK/qd0iCdiGqFiQMqEhmX8CGXx2I34f0o=;
 b=krC6xmNgw5C2QYlaOO7YN2OpvJP+ov9IyIlPgq0DXWrHV9QPfrB/V2c9HARqDeyVlZ
 sbobrSdf3PuOxYRxxISvcUJUmQP1jaLlm2A+bGY0UwvmvfbkOinG7qJ0aqiD+JNnfd8f
 ebMF68HeaLLIxb73BOCWdAV1jFz++pJGNFM2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zVpHeuxipIPK/qd0iCdiGqFiQMqEhmX8CGXx2I34f0o=;
 b=Lg1inKaiLEaC0JYdxSq/+fWqX1ik8CcsQ3d/jaUCx8N1t37nOLV5sghklXpviSZ8f0
 phtFFiAiMm1iMGCIxJq+DNm+wAVCPynvFhXlyYmCGheP4kDlzjp6dWwnrNVB6ryI/IRv
 MZNFil+yO4B6dQumA7tRRduXsX2gh/8qpSMuJu2hVL71Wc9sx6IG5/dWWAmly/ZuB33E
 b7H8BE0oTPBv63tkVmRnA2uFSyEm1/Ec3CnrJsGrvl4EJ+p+MgqVvM/QALcJdihvEnVu
 Pwt9wL/NYB9Dbz3QngQzXmMT3+7ovGomGCk9ZW6XX3YVnwlJ+aa1C0Hdq6EgCoIePbYW
 4ApQ==
X-Gm-Message-State: APjAAAWzk2HDoczTHMuWbJqvQ0oc2VjpGfF/YM3rolKu+4Fadz/TgSWl
 O2um1Oc5YdvF3lM6RnkmDfOgMQ+8pRA=
X-Google-Smtp-Source: APXvYqwL7Pts9z/sbRgRZgMFUPPpjfZxHHeQCL3ybGBJta4uKv6RUba5OOEn0ffoF3CqGS5GRVG4Qw==
X-Received: by 2002:a17:902:a588:: with SMTP id
 az8mr1413232plb.123.1582849373376; 
 Thu, 27 Feb 2020 16:22:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e28sm8072097pgn.21.2020.02.27.16.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 7/9] arm64/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:42 -0800
Message-Id: <20200228002244.15240-8-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162254_552574_390F6547 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Explicitly include debug sections when they're present. Add .eh_frame*
to discard as it seems that these are still generated even though
-fno-asynchronous-unwind-tables is being specified. Add .plt and
.data.rel.ro to discards as they are not actually used. Add .got.plt
to the image as it does appear to be mapped near .data. Finally enable
orphan section warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             | 4 ++++
 arch/arm64/kernel/vmlinux.lds.S | 5 ++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..c682a65b3ab8 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -30,6 +30,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index c61d9ab3211c..6141d5b72f8f 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -98,7 +98,8 @@ SECTIONS
 	/DISCARD/ : {
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
+		*(.plt) *(.data.rel.ro)
+		*(.eh_frame) *(.init.eh_frame)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
@@ -212,6 +213,7 @@ SECTIONS
 	_data = .;
 	_sdata = .;
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
+	.got.plt : ALIGN(8) { *(.got.plt) }
 
 	/*
 	 * Data written with the MMU off but read with the MMU on requires
@@ -246,6 +248,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 
 	HEAD_SYMBOLS
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
