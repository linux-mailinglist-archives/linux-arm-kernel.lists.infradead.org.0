Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C92192766
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFRveNdg1/Xvva5+HWbinj2yllAwacU5j1YFuOJo6r4=; b=K/jYlyV7bSOEw+
	1MM0HIStjWAQBQ8MJ+bXYXIJOcuqa5P8Y0HW2lno16APBeRre24EHvORGTku/HJEOwYGJXE6iCWQO
	cZOc48fo9ATmff1xeagBXEo1MPSyr1hjHDXBEB/Sn0ECnZKKKO7/6YgWHdUeG+yiArhCfMThm2KNY
	xq5GZk0sEUSu1fPPf13ghUnKThMyJ+6fRfpIHw5n1mnDIYnbMoLmMA1jAAeqe1aGJDUJfRAzBGwZu
	JsTj0dr47nPULr7NgFX8czqx+GbO4eLwIqZiPaRntrl67AHWetPKQkVxpSPE4VPxySTtzNxDTdYZf
	88goMMB1WpzZnnWmdCmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4QF-00026L-UR; Wed, 25 Mar 2020 11:42:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4PQ-0001PW-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:41:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F251D31B;
 Wed, 25 Mar 2020 04:41:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7513D3F71F;
 Wed, 25 Mar 2020 04:41:19 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 3/3] arm64: crypto: Use ARM64_EXTENSIONS()
Date: Wed, 25 Mar 2020 11:41:10 +0000
Message-Id: <20200325114110.23491-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325114110.23491-1-broonie@kernel.org>
References: <20200325114110.23491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044120_666962_5B8337BD 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the newly introduced ARM64_EXTENSIONS() macro to enable the crypto
extensions.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/crypto/aes-ce-ccm-core.S   | 3 ++-
 arch/arm64/crypto/aes-ce-core.S       | 2 +-
 arch/arm64/crypto/aes-ce.S            | 2 +-
 arch/arm64/crypto/crct10dif-ce-core.S | 3 ++-
 arch/arm64/crypto/ghash-ce-core.S     | 3 ++-
 arch/arm64/crypto/sha1-ce-core.S      | 3 ++-
 arch/arm64/crypto/sha2-ce-core.S      | 3 ++-
 7 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/crypto/aes-ce-ccm-core.S b/arch/arm64/crypto/aes-ce-ccm-core.S
index 99a028e298ed..bb6d85c2a260 100644
--- a/arch/arm64/crypto/aes-ce-ccm-core.S
+++ b/arch/arm64/crypto/aes-ce-ccm-core.S
@@ -9,7 +9,8 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch	armv8-a+crypto
+
+ARM64_EXTENSIONS(crypto)
 
 	/*
 	 * void ce_aes_ccm_auth_data(u8 mac[], u8 const in[], u32 abytes,
diff --git a/arch/arm64/crypto/aes-ce-core.S b/arch/arm64/crypto/aes-ce-core.S
index e52e13eb8fdb..a8291111f68d 100644
--- a/arch/arm64/crypto/aes-ce-core.S
+++ b/arch/arm64/crypto/aes-ce-core.S
@@ -6,7 +6,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-	.arch		armv8-a+crypto
+ARM64_EXTENSIONS(crypto)
 
 SYM_FUNC_START(__aes_ce_encrypt)
 	sub		w3, w3, #2
diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
index 1dc5bbbfeed2..6493a8e8d8d0 100644
--- a/arch/arm64/crypto/aes-ce.S
+++ b/arch/arm64/crypto/aes-ce.S
@@ -12,7 +12,7 @@
 #define AES_FUNC_START(func)		SYM_FUNC_START(ce_ ## func)
 #define AES_FUNC_END(func)		SYM_FUNC_END(ce_ ## func)
 
-	.arch		armv8-a+crypto
+ARM64_EXTENSIONS(crypto)
 
 	xtsmask		.req	v16
 	cbciv		.req	v16
diff --git a/arch/arm64/crypto/crct10dif-ce-core.S b/arch/arm64/crypto/crct10dif-ce-core.S
index 5a95c2628fbf..bb6f3a14e9e8 100644
--- a/arch/arm64/crypto/crct10dif-ce-core.S
+++ b/arch/arm64/crypto/crct10dif-ce-core.S
@@ -66,7 +66,8 @@
 #include <asm/assembler.h>
 
 	.text
-	.cpu		generic+crypto
+
+ARM64_EXTENSIONS(crypto)
 
 	init_crc	.req	w19
 	buf		.req	x20
diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
index 6b958dcdf136..85839b701c83 100644
--- a/arch/arm64/crypto/ghash-ce-core.S
+++ b/arch/arm64/crypto/ghash-ce-core.S
@@ -57,7 +57,8 @@
 	HH34		.req	v19
 
 	.text
-	.arch		armv8-a+crypto
+
+ARM64_EXTENSIONS(crypto)
 
 	.macro		__pmull_p64, rd, rn, rm
 	pmull		\rd\().1q, \rn\().1d, \rm\().1d
diff --git a/arch/arm64/crypto/sha1-ce-core.S b/arch/arm64/crypto/sha1-ce-core.S
index 92d0d2753e81..8fa2d920be36 100644
--- a/arch/arm64/crypto/sha1-ce-core.S
+++ b/arch/arm64/crypto/sha1-ce-core.S
@@ -9,7 +9,8 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch		armv8-a+crypto
+
+ARM64_EXTENSIONS(crypto)
 
 	k0		.req	v0
 	k1		.req	v1
diff --git a/arch/arm64/crypto/sha2-ce-core.S b/arch/arm64/crypto/sha2-ce-core.S
index 3f9d0f326987..d8680b43a3fd 100644
--- a/arch/arm64/crypto/sha2-ce-core.S
+++ b/arch/arm64/crypto/sha2-ce-core.S
@@ -9,7 +9,8 @@
 #include <asm/assembler.h>
 
 	.text
-	.arch		armv8-a+crypto
+
+ARM64_EXTENSIONS(crypto)
 
 	dga		.req	q20
 	dgav		.req	v20
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
