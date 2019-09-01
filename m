Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC28A4BF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g7Q2MHtPQw2rWEkYl1Zc4VFK2nA9lxtaFi1sSp8AxU=; b=RiphMZ0RaIPZYo
	Js6liz4BkqJ3KgYVMZajLR1g1pcfh23WGCWfbjpgEXGwRyeXQ1Nv9U6L5acKwACvQx0S7dqNe+sQ4
	CukY2+ibXNuAM7FgtgeHBsXDnPCfL8LgNSd97F0gkSULALwniWzwN+v6v77gGFZKLPlL4r7tly/EF
	+OloHfXiPrORoWgMCt3tNFO9iEySei0A9lqjf+9AzgISaRDGECBkuX03e3aaVke6B8RVrsiy/U3Ve
	3DgiOZmZzj0i7f6p51Xy+tnSUZogd1sxXSwuXQC/WC/tjbHfJcC3bdLFvSn9Nau+03yCcvYJtjrzI
	qoYm3IuTq1F/fXfRMXoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Wbr-0004Ue-2P; Sun, 01 Sep 2019 20:38:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Wa7-0002z3-W3
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:36:17 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6027D309B688;
 Sun,  1 Sep 2019 20:36:15 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3426D60606;
 Sun,  1 Sep 2019 20:36:11 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Atul Gupta <atul.gupta@chelsio.com>
Subject: [PATCH 8/9] crypto: sha256 - Merge crypto/sha256.h into crypto/sha.h
Date: Sun,  1 Sep 2019 22:35:31 +0200
Message-Id: <20190901203532.2615-9-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Sun, 01 Sep 2019 20:36:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133616_093310_CFB960AD 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Eric Biggers <ebiggers@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, linux-crypto@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic sha256 implementation from lib/crypto/sha256.c uses data
structs defined in crypto/sha.h, so lets move the function prototypes
there too.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 arch/s390/purgatory/purgatory.c |  2 +-
 arch/x86/purgatory/purgatory.c  |  2 +-
 crypto/sha256_generic.c         |  1 -
 include/crypto/sha.h            | 21 ++++++++++++++++++++
 include/crypto/sha256.h         | 34 ---------------------------------
 lib/crypto/sha256.c             |  2 +-
 6 files changed, 24 insertions(+), 38 deletions(-)
 delete mode 100644 include/crypto/sha256.h

diff --git a/arch/s390/purgatory/purgatory.c b/arch/s390/purgatory/purgatory.c
index a80c78da9985..0a423bcf6746 100644
--- a/arch/s390/purgatory/purgatory.c
+++ b/arch/s390/purgatory/purgatory.c
@@ -9,7 +9,7 @@
 
 #include <linux/kexec.h>
 #include <linux/string.h>
-#include <crypto/sha256.h>
+#include <crypto/sha.h>
 #include <asm/purgatory.h>
 
 int verify_sha256_digest(void)
diff --git a/arch/x86/purgatory/purgatory.c b/arch/x86/purgatory/purgatory.c
index 7f90a86eff49..3b95410ff0f8 100644
--- a/arch/x86/purgatory/purgatory.c
+++ b/arch/x86/purgatory/purgatory.c
@@ -9,7 +9,7 @@
  */
 
 #include <linux/bug.h>
-#include <crypto/sha256.h>
+#include <crypto/sha.h>
 #include <asm/purgatory.h>
 
 #include "../boot/string.h"
diff --git a/crypto/sha256_generic.c b/crypto/sha256_generic.c
index eafd10f9bf86..f2d7095d4f2d 100644
--- a/crypto/sha256_generic.c
+++ b/crypto/sha256_generic.c
@@ -13,7 +13,6 @@
 #include <linux/mm.h>
 #include <linux/types.h>
 #include <crypto/sha.h>
-#include <crypto/sha256.h>
 #include <crypto/sha256_base.h>
 #include <asm/byteorder.h>
 #include <asm/unaligned.h>
diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index 8a46202b1857..535955c84187 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -112,4 +112,25 @@ extern int crypto_sha512_update(struct shash_desc *desc, const u8 *data,
 
 extern int crypto_sha512_finup(struct shash_desc *desc, const u8 *data,
 			       unsigned int len, u8 *hash);
+
+/*
+ * Stand-alone implementation of the SHA256 algorithm. It is designed to
+ * have as little dependencies as possible so it can be used in the
+ * kexec_file purgatory. In other cases you should generally use the
+ * hash APIs from include/crypto/hash.h. Especially when hashing large
+ * amounts of data as those APIs may be hw-accelerated.
+ *
+ * For details see lib/crypto/sha256.c
+ */
+
+extern int sha256_init(struct sha256_state *sctx);
+extern int sha256_update(struct sha256_state *sctx, const u8 *input,
+			 unsigned int length);
+extern int sha256_final(struct sha256_state *sctx, u8 *hash);
+
+extern int sha224_init(struct sha256_state *sctx);
+extern int sha224_update(struct sha256_state *sctx, const u8 *input,
+			 unsigned int length);
+extern int sha224_final(struct sha256_state *sctx, u8 *hash);
+
 #endif
diff --git a/include/crypto/sha256.h b/include/crypto/sha256.h
deleted file mode 100644
index a75998d65a41..000000000000
--- a/include/crypto/sha256.h
+++ /dev/null
@@ -1,34 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- *  Copyright (C) 2014 Red Hat Inc.
- *
- *  Author: Vivek Goyal <vgoyal@redhat.com>
- */
-
-#ifndef SHA256_H
-#define SHA256_H
-
-#include <linux/types.h>
-#include <crypto/sha.h>
-
-/*
- * Stand-alone implementation of the SHA256 algorithm. It is designed to
- * have as little dependencies as possible so it can be used in the
- * kexec_file purgatory. In other cases you should generally use the
- * hash APIs from include/crypto/hash.h. Especially when hashing large
- * amounts of data as those APIs may be hw-accelerated.
- *
- * For details see lib/crypto/sha256.c
- */
-
-extern int sha256_init(struct sha256_state *sctx);
-extern int sha256_update(struct sha256_state *sctx, const u8 *input,
-			 unsigned int length);
-extern int sha256_final(struct sha256_state *sctx, u8 *hash);
-
-extern int sha224_init(struct sha256_state *sctx);
-extern int sha224_update(struct sha256_state *sctx, const u8 *input,
-			 unsigned int length);
-extern int sha224_final(struct sha256_state *sctx, u8 *hash);
-
-#endif /* SHA256_H */
diff --git a/lib/crypto/sha256.c b/lib/crypto/sha256.c
index 42d75e490a97..220b74c2bbd8 100644
--- a/lib/crypto/sha256.c
+++ b/lib/crypto/sha256.c
@@ -15,7 +15,7 @@
 #include <linux/export.h>
 #include <linux/module.h>
 #include <linux/string.h>
-#include <crypto/sha256.h>
+#include <crypto/sha.h>
 #include <asm/unaligned.h>
 
 static inline u32 Ch(u32 x, u32 y, u32 z)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
