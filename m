Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B999218FD7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:19:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORtR0JLRYQyLEtUKbxs0HDJAZT+7uS6lhVoQIOsYLY8=; b=U2ePaNGqbuYIz4
	fQC6t91RfLUwYrGtc6Tehqd4D+mE/LPvUACKE5IT5vPZ9wgQDKbgCAEkRbLEJUoERevHM8uNjd3k5
	aJmGBkAAtyXZgr060jVu4hH5+mrIX3mM7WAmlijDHgvCmGgT+XeKz6Ue2t5o1l5whbJfIBaRjmH9z
	DBUvfaAUytKrMq+ZLT7wCo1dj/Kvkpt3+llXH69VF3MDqfwSadFV9Pw8G45fupI0j2s2J0+z/I1ZR
	z6FdyMZ/EpjJjVz5oiNS1XkEGegpa9jrJf+9fnsY9Zb2fVvYfNS6515EqCxw5d0HJo+j5nvhf2mHJ
	effa8WPktX8vR1biYvNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSbB-0003mJ-Ju; Mon, 23 Mar 2020 19:18:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSaW-0003Nu-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:18:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 503C4FEC;
 Mon, 23 Mar 2020 12:18:15 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9DA13F52E;
 Mon, 23 Mar 2020 12:18:14 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 2/2] arm64: crypto: Use .arch_extension
Date: Mon, 23 Mar 2020 19:18:07 +0000
Message-Id: <20200323191807.3864-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200323191807.3864-1-broonie@kernel.org>
References: <20200323191807.3864-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_121816_142431_DD2053F3 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently when implementing optimised assembler routines using
architecture extensions we override the base architecture along with
enabling the new extensions, causing problems for in kernel BTI support
which needs to raise the base architecture level for assembler files in
order to generate BTI landing pads.  We did this due to a lack of
support for the .arch_extension gas feature in older versions of the
clang built in assembler but since current versions of clang now have
support for .arch_extension we can use that.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/crypto/aes-ce-ccm-core.S   | 2 +-
 arch/arm64/crypto/aes-ce-core.S       | 2 +-
 arch/arm64/crypto/aes-ce.S            | 2 +-
 arch/arm64/crypto/crct10dif-ce-core.S | 2 +-
 arch/arm64/crypto/ghash-ce-core.S     | 2 +-
 arch/arm64/crypto/sha1-ce-core.S      | 2 +-
 arch/arm64/crypto/sha2-ce-core.S      | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/crypto/aes-ce-ccm-core.S b/arch/arm64/crypto/aes-ce-ccm-core.S
index 99a028e298ed..90fde12f8253 100644
--- a/arch/arm64/crypto/aes-ce-ccm-core.S
+++ b/arch/arm64/crypto/aes-ce-ccm-core.S
@@ -9,7 +9,7 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch	armv8-a+crypto
+	.arch_extension crypto
 
 	/*
 	 * void ce_aes_ccm_auth_data(u8 mac[], u8 const in[], u32 abytes,
diff --git a/arch/arm64/crypto/aes-ce-core.S b/arch/arm64/crypto/aes-ce-core.S
index e52e13eb8fdb..4dbc0052ffbe 100644
--- a/arch/arm64/crypto/aes-ce-core.S
+++ b/arch/arm64/crypto/aes-ce-core.S
@@ -6,7 +6,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-	.arch		armv8-a+crypto
+	.arch_extension crypto
 
 SYM_FUNC_START(__aes_ce_encrypt)
 	sub		w3, w3, #2
diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
index 1dc5bbbfeed2..d57516308cf1 100644
--- a/arch/arm64/crypto/aes-ce.S
+++ b/arch/arm64/crypto/aes-ce.S
@@ -12,7 +12,7 @@
 #define AES_FUNC_START(func)		SYM_FUNC_START(ce_ ## func)
 #define AES_FUNC_END(func)		SYM_FUNC_END(ce_ ## func)
 
-	.arch		armv8-a+crypto
+	.arch_extension crypto
 
 	xtsmask		.req	v16
 	cbciv		.req	v16
diff --git a/arch/arm64/crypto/crct10dif-ce-core.S b/arch/arm64/crypto/crct10dif-ce-core.S
index 5a95c2628fbf..c6b8b387f3bd 100644
--- a/arch/arm64/crypto/crct10dif-ce-core.S
+++ b/arch/arm64/crypto/crct10dif-ce-core.S
@@ -66,7 +66,7 @@
 #include <asm/assembler.h>
 
 	.text
-	.cpu		generic+crypto
+	.arch_extension crypto
 
 	init_crc	.req	w19
 	buf		.req	x20
diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
index 6b958dcdf136..65ed5690735a 100644
--- a/arch/arm64/crypto/ghash-ce-core.S
+++ b/arch/arm64/crypto/ghash-ce-core.S
@@ -57,7 +57,7 @@
 	HH34		.req	v19
 
 	.text
-	.arch		armv8-a+crypto
+	.arch_extension crypto
 
 	.macro		__pmull_p64, rd, rn, rm
 	pmull		\rd\().1q, \rn\().1d, \rm\().1d
diff --git a/arch/arm64/crypto/sha1-ce-core.S b/arch/arm64/crypto/sha1-ce-core.S
index 92d0d2753e81..8cfd30c5f605 100644
--- a/arch/arm64/crypto/sha1-ce-core.S
+++ b/arch/arm64/crypto/sha1-ce-core.S
@@ -9,7 +9,7 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch		armv8-a+crypto
+	.arch_extension crypto
 
 	k0		.req	v0
 	k1		.req	v1
diff --git a/arch/arm64/crypto/sha2-ce-core.S b/arch/arm64/crypto/sha2-ce-core.S
index 3f9d0f326987..a7ea4fc8d570 100644
--- a/arch/arm64/crypto/sha2-ce-core.S
+++ b/arch/arm64/crypto/sha2-ce-core.S
@@ -9,7 +9,7 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch		armv8-a+crypto
+	.arch_extension crypto
 
 	dga		.req	q20
 	dgav		.req	v20
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
