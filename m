Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720EBC182E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=40pZrOKkmR3RXzrOgH6+x3pzFbGoabVzYN+sgHuLNTw=; b=RU3OQdB8f5q16mFkWNYNiyzV7h
	Z8odwkLQmDPsAC5tFQcnyEnT+sy/2MJ3bCwAAfgAmV2xveo6NT3xvTriPs2S0HlZpaCu/x5WrJBSc
	0Lz2d4VeET009IasW8DSqMVmCfd7zGbJv44YPST7SDtPdjLArf/Nx/RaOBkoICu9lEr1mcomdk4XU
	LxLrirQ6SR7hR3eRSXZSBY15EV3fepsbC2qVfQxLmy9xT5jNVqfxxcFKKrQr/UwxeFRBtIMgc//jr
	xYD1Lcu3OzDhjvP+UpkICo4yn4iEOeGKc1u3d0SZHZIeNtNSyJHeTNhXkXCSg0XplhsWHglHEpr7Z
	ASN99AHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdCn-00047q-2a; Sun, 29 Sep 2019 17:41:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdAD-0001Dc-0t
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id y135so12369828wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5d/ZKH6nBX0my5cG4izp5fBEt7WBkczBGaXtkFvAuQk=;
 b=TlalrYyfJxj0YBF8FYCxk129NR83oLscTRTtDelLf/jM57BADCT7vCx3wx/M4TaANH
 z7dHYFyyrO9zfUNHThfU9A5N/XfLzB/0Nl8w7lLXdsIGdU53mRv5XwVMrAtURRH6M0Bi
 tsbq3uOGOp3tiGqhdT2En15CPyCbhtHz/FF15EsX2iPC84VZ5Q+sdZ0Wc0/8bb3CA0sI
 l+sTtOwJWJwcKBYlg6uZP9YyO0/J16qjMK7B5pugm/GVGvPVy8h9T3wZ2zLvT9Eyl15Z
 yV4nLeHXtcOGFDS591+8R0gcrgtV62aASSrJupzSQOFk288k2Dv7ScA3nbQZD2X/X66v
 zM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5d/ZKH6nBX0my5cG4izp5fBEt7WBkczBGaXtkFvAuQk=;
 b=kzw1zbu0qfvII4IArqGXUqBDJpPjZAT7xFOc+kF0xdtSQci88ZgCzx7F+B7gQPmc85
 p16SvdN2QP1CIBIeX6ssoCGHiM3AhsjBIYVQxCmG/x9WkMev9NfmwujdO9oEbACNfBaW
 dDShwYXClfpxxSYJJCFSRc9tdzymtGNbjPs1e1NQOGn0WEylzaLVS5UxPY6+kImtDRMh
 5IAMhlT9jZmE5TrMF4+I3+vqyooyykAtttHy6eZ5efJQtnf3ljAl4JbIO9Im7Dg4X6dt
 tSm/Q1axcP4qGdsFyowo/peJdhgsliVABhr0UU6ksl2yLUhFniIRYk4mtt1kJT0sPRp8
 1Jeg==
X-Gm-Message-State: APjAAAV3c1nVxzrxpeTlHQ935oAUAlX838URnDgCHQu2kzsYDuiQSD4e
 yUDLHYgbgvyzkUqKXpreaHGV7w==
X-Google-Smtp-Source: APXvYqyxicDuFx1OEfg7GuNaInByNWRhWR710oIKNlBYTrWePh7z2VfAmJWaPnqZ4Sn0YjiRUhbRPg==
X-Received: by 2002:a7b:c182:: with SMTP id y2mr14179243wmi.156.1569778755308; 
 Sun, 29 Sep 2019 10:39:15 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:14 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 09/20] int128: move __uint128_t compiler test to Kconfig
Date: Sun, 29 Sep 2019 19:38:39 +0200
Message-Id: <20190929173850.26055-10-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103917_226674_31E6A538 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to use 128-bit integer arithmetic in C code, the architecture
needs to have declared support for it by setting ARCH_SUPPORTS_INT128,
and it requires a version of the toolchain that supports this at build
time. This is why all existing tests for ARCH_SUPPORTS_INT128 also test
whether __SIZEOF_INT128__ is defined, since this is only the case for
compilers that can support 128-bit integers.

Let's fold this additional test into the Kconfig declaration of
ARCH_SUPPORTS_INT128 so that we can also use the symbol in Makefiles,
e.g., to decide whether a certain object needs to be included in the
first place.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/Kconfig | 2 +-
 arch/riscv/Kconfig | 2 +-
 arch/x86/Kconfig   | 2 +-
 crypto/ecc.c       | 2 +-
 init/Kconfig       | 4 ++++
 lib/ubsan.c        | 2 +-
 lib/ubsan.h        | 2 +-
 7 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..a0f764e2f299 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -69,7 +69,7 @@ config ARM64
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_ATOMIC_RMW
-	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000 || CC_IS_CLANG
+	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
 	select ARCH_WANT_COMPAT_IPC_PARSE_VERSION if COMPAT
 	select ARCH_WANT_FRAME_POINTERS
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..99be78ac7b33 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -127,7 +127,7 @@ config ARCH_RV32I
 config ARCH_RV64I
 	bool "RV64I"
 	select 64BIT
-	select ARCH_SUPPORTS_INT128 if GCC_VERSION >= 50000
+	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && GCC_VERSION >= 50000
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_FTRACE_MCOUNT_RECORD
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 222855cc0158..97f74a2e1cf3 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -24,7 +24,7 @@ config X86_64
 	depends on 64BIT
 	# Options that are inherently 64-bit kernel only:
 	select ARCH_HAS_GIGANTIC_PAGE
-	select ARCH_SUPPORTS_INT128
+	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select HAVE_ARCH_SOFT_DIRTY
 	select MODULES_USE_ELF_RELA
diff --git a/crypto/ecc.c b/crypto/ecc.c
index dfe114bc0c4a..6e6aab6c987c 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -336,7 +336,7 @@ static u64 vli_usub(u64 *result, const u64 *left, u64 right,
 static uint128_t mul_64_64(u64 left, u64 right)
 {
 	uint128_t result;
-#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
+#if defined(CONFIG_ARCH_SUPPORTS_INT128)
 	unsigned __int128 m = (unsigned __int128)left * right;
 
 	result.m_low  = m;
diff --git a/init/Kconfig b/init/Kconfig
index bd7d650d4a99..f5566a985b9e 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -780,6 +780,10 @@ config ARCH_SUPPORTS_NUMA_BALANCING
 config ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
 	bool
 
+config CC_HAS_INT128
+	def_bool y
+	depends on !$(cc-option,-D__SIZEOF_INT128__=0)
+
 #
 # For architectures that know their GCC __int128 support is sound
 #
diff --git a/lib/ubsan.c b/lib/ubsan.c
index e7d31735950d..b652cc14dd60 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -119,7 +119,7 @@ static void val_to_string(char *str, size_t size, struct type_descriptor *type,
 {
 	if (type_is_int(type)) {
 		if (type_bit_width(type) == 128) {
-#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
+#if defined(CONFIG_ARCH_SUPPORTS_INT128)
 			u_max val = get_unsigned_val(type, value);
 
 			scnprintf(str, size, "0x%08x%08x%08x%08x",
diff --git a/lib/ubsan.h b/lib/ubsan.h
index b8fa83864467..7b56c09473a9 100644
--- a/lib/ubsan.h
+++ b/lib/ubsan.h
@@ -78,7 +78,7 @@ struct invalid_value_data {
 	struct type_descriptor *type;
 };
 
-#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
+#if defined(CONFIG_ARCH_SUPPORTS_INT128)
 typedef __int128 s_max;
 typedef unsigned __int128 u_max;
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
