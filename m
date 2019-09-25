Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3662DBE243
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyuL7ah7G0JF2I4iSZoZxgi+2LVhfyPxHhMeSUM7gPM=; b=gt33bye3/w4fjH
	mlY80cyyxvYTbviEfDZJBNQe46WRizvAEDAQA9NbEa01yHfFtQLi9uQYmlG7KvPS/1u/pSFF198l6
	poR0DPQE12Crgiv0i2eIFyKLyJafew6ZSThnYVnpwC7hr80aYvGh4fmNfubdggq+FZ5Im94A0a1To
	3M90Wj170AbmGIJYAQzDZinWzzGoa9jw3x8QctVzl0wBIMsBI/KzkJBpzPPOZ2dxweJ3uYl34fsbN
	Of+TaCPfpHRlJmPMFAl4+52jdJqTqn6s/sWbTUU9tx+kOOmKwtp2Jbb++TqjTG7Y7LzVRMrEwCXWe
	NmZb1N7e5HjBXwKaOCaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9zs-0007wm-Hz; Wed, 25 Sep 2019 16:18:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vY-000401-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id n14so7640722wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GHZTUsgGCCxhaUqhh6GFmynzyGA2xAGilsSBrwWL8Ec=;
 b=EZelB1bmBbVqkj69RFWzhZDiyl+QrRS1Ld/4jAK9o8wa+U3Y4C9KupSUIqj2czhl7k
 ITiHGURXEqXrMJmGJNB9KMIUGwxFnx7bIhXwPlyP3otwQoRuaqODihXzE3AhyE+SuMOe
 Eupyf7hjZZlON1Utlzp/RmQMPvLJn2rjU8LmbXlYIzGZ+eXKz+3lmREZnr2u+zWgdOnC
 DnAE1RwkIUI90BBXqLfP2SQt/xl177ryb9XkpwBkxrUMcHJChPVU9vFbBntefNklJgCR
 eMbWcs4UmklFy7RjjpAUH6gGYaPbUv9a9jmIlTOejjFpzVISicNuFbq7E+U5L0HF88Yg
 IqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GHZTUsgGCCxhaUqhh6GFmynzyGA2xAGilsSBrwWL8Ec=;
 b=T5ABYLXmO3W9T9GXjrpSXV3Y9vTq1A4mtXoYWyG56WZWuGYQ8ut4iTHG7a55U1XMXn
 KQUtKknqDbxglHDthQQvznO0j5T4qrSJnq3FJMtOAiyqI1UZ0GqEH8S0Zh/j07IdSo5J
 3oI6Fad2G+4LuG8SNu9fWPqwf+TJG+ZETxK+K9MgIMVNYT/ryH9i4fFohlFqR53bbEpd
 Ao/Iw6jXGDcXTppdiR8Teph5RQxdv8a7seBZQqShVLS0A4sATivkjyymg4JaVZL4pvy7
 Z1x5Od/h86gOtS3UbLAewkDt83XxvRlHD4voDirkBD6ngnLFzpO+KKPCex4bZa8Qnhrh
 7Siw==
X-Gm-Message-State: APjAAAV/W72IiUFTRLEwlxjJVZspm3W1PPARV2brrfEHK4EytW8XPfTu
 dwWvZnUhzjelCZkOEB7lYNb24Q==
X-Google-Smtp-Source: APXvYqz1sBIY8jpDffs/GzFrwhS+OK125T+2rgBRUTsh9BLcog3Q1msw/qOOPlbx/V81RfwvRmI7vA==
X-Received: by 2002:a5d:62c6:: with SMTP id o6mr9945348wrv.243.1569428043029; 
 Wed, 25 Sep 2019 09:14:03 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.14.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:14:02 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 11/18] int128: move __uint128_t compiler test to Kconfig
Date: Wed, 25 Sep 2019 18:12:48 +0200
Message-Id: <20190925161255.1871-12-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091404_575543_BC3701D1 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
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

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/ecc.c | 2 +-
 init/Kconfig | 1 +
 lib/ubsan.c  | 2 +-
 lib/ubsan.h  | 2 +-
 4 files changed, 4 insertions(+), 3 deletions(-)

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
index bd7d650d4a99..e66f64a26d7d 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -785,6 +785,7 @@ config ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
 #
 config ARCH_SUPPORTS_INT128
 	bool
+	depends on !$(cc-option,-D__SIZEOF_INT128__=0)
 
 # For architectures that (ab)use NUMA to represent different memory regions
 # all cpu-local but of different latencies, such as SuperH.
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
