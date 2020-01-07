Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4295613306D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4nh9OG8pUqEjlY27hW7x7R7x7iEk+OJIRZKM028S04=; b=Dalx2lShEdEi76
	hy9/LWxefYQ4lseevsYEJQZIr5wcTnboy6w7grD5RTTZvLN/wELvf3wJgoyon4tRbkCFQPFk/7B1f
	eQtGL+R8IGCdGhrBM+Y5f9KrsSe/Ka5LJ1n8T46G5glnBe6X8uEwOKe2tJYkz16j+HxKPJWCConbQ
	CXCTpuyNETsHtEDBCunGXxCBAEo8yTs6rKEZTlaxKhIBUW4p25MXiUTfV0fzyDKFsY2JFz2zVBGTz
	S+OODieB7Yy1MrIHngBcXA/9d/wtS9NA6FfXTgWAbEzk4Zb+sX85JKBL0/aL2gROxXMDFj2NHdFfN
	tOIW5b6S/RR+AeGs13gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovFM-0000zg-El; Tue, 07 Jan 2020 20:14:36 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovF9-0000ux-37
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:14:24 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MTfgb-1jGb592rZl-00U0gY; Tue, 07 Jan 2020 21:13:34 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: [PATCH] crypto: curve25519 - Work around link failure
Date: Tue,  7 Jan 2020 21:12:52 +0100
Message-Id: <20200107201327.3863345-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:pH50uSqCPXHunlRYi6L8CL6v1F+HPRpeGWLVm1siLpp01pLtaYn
 2PDMeX31+oZWljGNiyUjWfyxUAFZwK/QAfPI1wCcfZl5GAPYJx5qHOhEpBctrIl2uSjelXj
 i1UTXn5i/CNQUw0e09IOKdcp8GXAp2bsUdxECMYVmA0h1keXVYE+yFYXhAL5ixNOMrFMeQw
 TFVM2igKOFrWWhhnU2NUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tDcVV9wxuqU=:t8AUGn6nGKs3yyta8KcKP9
 YezldtC334Khb/zyCxX4Fu431iOpWdOxOc9G3oFdit+QZ2W3BW4i7FDBhGMWSDe/eF1m0hCHt
 oXUfPnslXBwdE5ok7fJkCYAQM9UDMAp0hKGIge5Wpk+ygXLgA0ob73HjQRi0YzRXC1tKogWq+
 H6Kit0nwKikgOhDWy+1aHIO681UnKANQgTn1Ni8AnssmzzAWOuSwF6QiTyyjQyJLwD4o8GtQo
 wS/yE6dJrhWtHYpUMAaoU1UfjiYtt1MR5FYhRNMTRNh87Zvr2rFixrKANALKT1mf3rk9uC8d4
 i6YuQwE7HI/bGAHs3jKN/QOIXJJ1FRruNQVhTL/zEZujMszjaLc6R03kNW2XQIf7p4nO42U/W
 FiFkMy1iV7GZ5rwv38Xy9YeDyrLjT1wrWWOclFTgof+QoMdfsYFFhXeu7rUysNAoFhO+9RfOg
 t2KxGnJV/Q9wx9PRTY0/e5VHmarkx8Zx/sJUhU7azenscql3gXSITqJkGmGBvjVP00LZNwrKA
 EStlkmVMa3GgKb1tPQhMRcNaRwKGAGSQbFNVHMV5Vc1IMuX713DOS6JusgMuGAKyA+GsPFaoa
 ZyxVll8+IOIJCw8bMPb7sUNWWvoCexA5E2hdmeQxuauQZ5BEI3f3sOvFNTYemcv+8ma6Spg1g
 h0VllTvNpGHXiww1strijITU48e7q/RmxzKm5dK8z+WcPT+iRZmcjkgghcv++j0aX6i7cpIb9
 O1NRNJ3fyT2sshmooUf71rr1om2p6WjYb5qRDNHEO6RJOxw2xjsEzH5xsJHgFlKjeJs9m7Ljj
 Urp5ZSnywq+FNozooUpaW/j2zFufIRrtkNpG4N3lDDlGhdEO1W5qCWR38VhXtov6MNnNNim3T
 5zcMACR9nlBNHY2eU8KA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_121423_425244_A7F1C6DC 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Vitaly Chikunov <vt@altlinux.org>, Arnd Bergmann <arnd@arndb.de>,
 Ondrej Mosnacek <omosnace@redhat.com>, linux-kernel@vger.kernel.org,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Eric Biggers <ebiggers@google.com>, Andy Polyakov <appro@cryptogams.org>,
 Samuel Neves <sneves@dei.uc.pt>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, linux-crypto@vger.kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The curve25519 selftest causes a link failure when one of the two
implementations is built-in and the other one is a loadable module,
as then the library gets built in as well but cannot call into the
module:

lib/crypto/curve25519-selftest.o: In function `curve25519_selftest':
curve25519-selftest.c:(.init.text+0x5c): undefined reference to `curve25519_arch'
curve25519-selftest.c:(.init.text+0xfd): undefined reference to `curve25519_base_arch'
curve25519-selftest.c:(.init.text+0x15a): undefined reference to `curve25519_arch'

There is probably a better fix, but this is the local workaround
that I used to get a clean randconfig build again, using Makefile
tricks to make all the curve25519 code built-in if any of the
implementations are.

Fixes: aa127963f1ca ("crypto: lib/curve25519 - re-add selftests")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/crypto/Makefile | 4 +++-
 arch/x86/crypto/Makefile | 4 +++-
 crypto/Makefile          | 5 ++++-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index b745c17d356f..a7b3957aca58 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -12,7 +12,9 @@ obj-$(CONFIG_CRYPTO_SHA512_ARM) += sha512-arm.o
 obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
 obj-$(CONFIG_CRYPTO_POLY1305_ARM) += poly1305-arm.o
 obj-$(CONFIG_CRYPTO_NHPOLY1305_NEON) += nhpoly1305-neon.o
-obj-$(CONFIG_CRYPTO_CURVE25519_NEON) += curve25519-neon.o
+ifdef CONFIG_CRYPTO_CURVE25519_NEON
+obj-$(CONFIG_CRYPTO_LIB_CURVE25519_GENERIC) += curve25519-neon.o
+endif
 
 obj-$(CONFIG_CRYPTO_AES_ARM_CE) += aes-arm-ce.o
 obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) += sha1-arm-ce.o
diff --git a/arch/x86/crypto/Makefile b/arch/x86/crypto/Makefile
index 958440eae27e..7546c276e2f0 100644
--- a/arch/x86/crypto/Makefile
+++ b/arch/x86/crypto/Makefile
@@ -39,7 +39,9 @@ obj-$(CONFIG_CRYPTO_AEGIS128_AESNI_SSE2) += aegis128-aesni.o
 
 obj-$(CONFIG_CRYPTO_NHPOLY1305_SSE2) += nhpoly1305-sse2.o
 obj-$(CONFIG_CRYPTO_NHPOLY1305_AVX2) += nhpoly1305-avx2.o
-obj-$(CONFIG_CRYPTO_CURVE25519_X86) += curve25519-x86_64.o
+ifdef CONFIG_CRYPTO_CURVE25519_X86
+obj-$(CONFIG_CRYPTO_LIB_CURVE25519_GENERIC) += curve25519-x86_64.o
+endif
 
 # These modules require assembler to support AVX.
 ifeq ($(avx_supported),yes)
diff --git a/crypto/Makefile b/crypto/Makefile
index 4ca12b6044f7..93ecbfe50285 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -166,7 +166,10 @@ obj-$(CONFIG_CRYPTO_ZSTD) += zstd.o
 obj-$(CONFIG_CRYPTO_OFB) += ofb.o
 obj-$(CONFIG_CRYPTO_ECC) += ecc.o
 obj-$(CONFIG_CRYPTO_ESSIV) += essiv.o
-obj-$(CONFIG_CRYPTO_CURVE25519) += curve25519-generic.o
+
+ifdef CONFIG_CRYPTO_CURVE25519
+obj-$(CONFIG_CRYPTO_LIB_CURVE25519_GENERIC) += curve25519-generic.o
+endif
 
 ecdh_generic-y += ecdh.o
 ecdh_generic-y += ecdh_helper.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
