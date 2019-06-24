Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E7503CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iINOnYb0vh1p+1GwBh6TZ4Ym28K9jTGO78ES4MzW6M=; b=kO9OY/OEWAun6G
	F/CG9CEypka0axUQvENVNJO/ocHLFmexcyCf6wLONHZMmucQtLPMi+fjS/NWbZANlAmkXUjYUX/3h
	pYO2XgX0JrQhjZqBSwCBVVb/r434lGvrKueoZ2nvoUh2PAvo7jaS5ghe3I56uhs2CQAyN1rmlxiKH
	s7x55bLz7bXEdQ5yHMHElMiK1Yzgy3udlK27HiCtIUEOhX6lltroL+gBn1swH0yHK/XAAYbklde5+
	cln02GQxLQBBX3erG3eTBqC8WARPZSJURt05xgN9L2LcIVjCrLNtYwwmYDNpLkeUBPFwYzqUCS6Tz
	ywJ20q2ig7PYXIGk3grg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJbA-0001WJ-Fz; Mon, 24 Jun 2019 07:41:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYh-0007Gv-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id h19so13580863wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=923foVD9gLovB0Clhw+C5MS1BecE623/4WPm3/kqlks=;
 b=SOPGrPDKEtTWRgHEo/QtVnXTYMT9EWsCejMLqNCh+rc8DcPwE3A0Ca0OwHQWiDGehw
 6cAh4i95iKDiTSt/u3elGr7CQ4Yr+RXvDyMw/c+H0PrCEHjyQJWulbggCdcqn2zEchCd
 Is/xwQZTxvgXV+8OOfZEld8t+cNONRPudHH9lTjuYPfmQFTsqQT22jXa+HBMXpaWS7af
 wAft6VrIAX4rpUQJR/+62tBJBywS7WmPl2uaKTJz744IfKXR35xHRgB/UVYFwlnBnFf7
 YTY8357gfJBPyFjOisdYb1mKMuTV2tdLboNvFnD6Wf8YaW74Dz1DrmziWW6Y/Ur/e9DZ
 kR8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=923foVD9gLovB0Clhw+C5MS1BecE623/4WPm3/kqlks=;
 b=nunlYEWuomyFBA1OKZ5GVWkeX3az3e1uQiuRQwKnVMHUAfwiXUtCO2qRd2i4BxFZGE
 QZ9PRIIQ+D5oWiX+Lu7Xf50cpYMxH5lrW81w2ifl7drfespwCRxniBSsW4ZY0nnhz1To
 eHnojBspf3SO827Bg26Kn3bpLFbbZQuc1OET5ONWrLEE0nm8vyEnfEJTfiom2j4JGtAZ
 86h0bVMfloLOlJUwAgwGw5BsYL2w6NcnKc30RVYLeNIJRND8HR9+ka3UxhC4G0Y5Vi5b
 DPy0sxxGMvWYDRyM/PSHhhoGQF8vCuRs1bSbMgk3x4a5tbGEihfrXHglwD25sGS+a36g
 E4EQ==
X-Gm-Message-State: APjAAAX9X1Tcxduh42ZBK4HBRVwWdEagnEqbjfsmCT1BjV1WGF6n0pM0
 +Hqw38reAAmTJYPk71opg1rnHA==
X-Google-Smtp-Source: APXvYqwocA/iwp977z0ReuQP4uITc0I9diEZKfKl2rCCjRk74/ZzMwvB66J8eSVBbbU0JkqwPUqy8A==
X-Received: by 2002:a7b:c398:: with SMTP id s24mr9739069wmj.53.1561361914433; 
 Mon, 24 Jun 2019 00:38:34 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:33 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 5/6] crypto: aegis128 - provide a SIMD implementation based on
 NEON intrinsics
Date: Mon, 24 Jun 2019 09:38:17 +0200
Message-Id: <20190624073818.29296-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003835_922731_1A3714AC 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide an accelerated implementation of aegis128 by wiring up the
SIMD hooks in the generic driver to an implementation based on NEON
intrinsics, which can be compiled to both ARM and arm64 code.

This results in a performance of 2.2 cycles per byte on Cortex-A53,
which is a performance increase of ~11x compared to the generic
code.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/Kconfig               |   5 +
 crypto/Makefile              |  12 ++
 crypto/aegis128-neon-inner.c | 142 ++++++++++++++++++++
 crypto/aegis128-neon.c       |  43 ++++++
 4 files changed, 202 insertions(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 3d056e7da65f..c4b96f2e1344 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -311,6 +311,11 @@ config CRYPTO_AEGIS128
 	help
 	 Support for the AEGIS-128 dedicated AEAD algorithm.
 
+config CRYPTO_AEGIS128_SIMD
+	bool "Support SIMD acceleration for AEGIS-128"
+	depends on CRYPTO_AEGIS128 && ((ARM || ARM64) && KERNEL_MODE_NEON)
+	default y
+
 config CRYPTO_AEGIS128L
 	tristate "AEGIS-128L AEAD algorithm"
 	select CRYPTO_AEAD
diff --git a/crypto/Makefile b/crypto/Makefile
index 266a4cdbb9e2..f4a55cfb7f17 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -92,6 +92,18 @@ obj-$(CONFIG_CRYPTO_GCM) += gcm.o
 obj-$(CONFIG_CRYPTO_CCM) += ccm.o
 obj-$(CONFIG_CRYPTO_CHACHA20POLY1305) += chacha20poly1305.o
 obj-$(CONFIG_CRYPTO_AEGIS128) += aegis128.o
+aegis128-y := aegis128.o
+
+ifeq ($(ARCH),arm)
+CFLAGS_aegis128-neon-inner.o += -ffreestanding -march=armv7-a -mfloat-abi=softfp -mfpu=crypto-neon-fp-armv8
+aegis128-$(CONFIG_CRYPTO_AEGIS128_SIMD) += aegis128-neon.o aegis128-neon-inner.o
+endif
+ifeq ($(ARCH),arm64)
+CFLAGS_aegis128-neon-inner.o += -ffreestanding -mcpu=generic+crypto
+CFLAGS_REMOVE_aegis128-neon-inner.o += -mgeneral-regs-only
+aegis128-$(CONFIG_CRYPTO_AEGIS128_SIMD) += aegis128-neon.o aegis128-neon-inner.o
+endif
+
 obj-$(CONFIG_CRYPTO_AEGIS128L) += aegis128l.o
 obj-$(CONFIG_CRYPTO_AEGIS256) += aegis256.o
 obj-$(CONFIG_CRYPTO_MORUS640) += morus640.o
diff --git a/crypto/aegis128-neon-inner.c b/crypto/aegis128-neon-inner.c
new file mode 100644
index 000000000000..c6d90390ac38
--- /dev/null
+++ b/crypto/aegis128-neon-inner.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Linaro, Ltd. <ard.biesheuvel@linaro.org>
+ */
+
+#ifdef CONFIG_ARM64
+#include <asm/neon-intrinsics.h>
+#else
+#include <arm_neon.h>
+#endif
+
+#define AEGIS_BLOCK_SIZE	16
+
+#include <stddef.h>
+
+void *memcpy(void *dest, const void *src, size_t n);
+void *memset(void *s, int c, size_t n);
+
+struct aegis128_state {
+	uint8x16_t v[5];
+};
+
+static struct aegis128_state aegis128_update_neon(struct aegis128_state st,
+						  uint8x16_t m)
+{
+	uint8x16_t z = {};
+	uint8x16_t t;
+
+	t        = vaesmcq_u8(vaeseq_u8(st.v[3], z));
+	st.v[3] ^= vaesmcq_u8(vaeseq_u8(st.v[2], z));
+	st.v[2] ^= vaesmcq_u8(vaeseq_u8(st.v[1], z));
+	st.v[1] ^= vaesmcq_u8(vaeseq_u8(st.v[0], z));
+	st.v[0] ^= vaesmcq_u8(vaeseq_u8(st.v[4], z)) ^ m;
+	st.v[4] ^= t;
+
+	return st;
+}
+
+void crypto_aegis128_update_neon(void *state, const void *msg)
+{
+	struct aegis128_state st = { {
+		vld1q_u8(state),
+		vld1q_u8(state + 16),
+		vld1q_u8(state + 32),
+		vld1q_u8(state + 48),
+		vld1q_u8(state + 64)
+	} };
+
+	st = aegis128_update_neon(st, vld1q_u8(msg));
+
+	vst1q_u8(state, st.v[0]);
+	vst1q_u8(state + 16, st.v[1]);
+	vst1q_u8(state + 32, st.v[2]);
+	vst1q_u8(state + 48, st.v[3]);
+	vst1q_u8(state + 64, st.v[4]);
+}
+
+void crypto_aegis128_encrypt_chunk_neon(void *state, void *dst, const void *src,
+					unsigned int size)
+{
+	struct aegis128_state st = { {
+		vld1q_u8(state),
+		vld1q_u8(state + 16),
+		vld1q_u8(state + 32),
+		vld1q_u8(state + 48),
+		vld1q_u8(state + 64)
+	} };
+	uint8x16_t tmp;
+
+	while (size >= AEGIS_BLOCK_SIZE) {
+		uint8x16_t s = vld1q_u8(src);
+
+		tmp = s ^ st.v[1] ^ (st.v[2] & st.v[3]) ^ st.v[4];
+		st = aegis128_update_neon(st, s);
+		vst1q_u8(dst, tmp);
+
+		size -= AEGIS_BLOCK_SIZE;
+		src += AEGIS_BLOCK_SIZE;
+		dst += AEGIS_BLOCK_SIZE;
+	}
+
+	if (size > 0) {
+		uint8_t buf[AEGIS_BLOCK_SIZE] = {};
+		uint8x16_t msg;
+
+		memcpy(buf, src, size);
+		msg = vld1q_u8(buf);
+		tmp = msg ^ st.v[1] ^ (st.v[2] & st.v[3]) ^ st.v[4];
+		st = aegis128_update_neon(st, msg);
+		vst1q_u8(buf, tmp);
+		memcpy(dst, buf, size);
+	}
+
+	vst1q_u8(state, st.v[0]);
+	vst1q_u8(state + 16, st.v[1]);
+	vst1q_u8(state + 32, st.v[2]);
+	vst1q_u8(state + 48, st.v[3]);
+	vst1q_u8(state + 64, st.v[4]);
+}
+
+void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
+					unsigned int size)
+{
+	struct aegis128_state st = { {
+		vld1q_u8(state),
+		vld1q_u8(state + 16),
+		vld1q_u8(state + 32),
+		vld1q_u8(state + 48),
+		vld1q_u8(state + 64)
+	} };
+	uint8x16_t tmp;
+
+	while (size >= AEGIS_BLOCK_SIZE) {
+		tmp = vld1q_u8(src) ^ st.v[1] ^ (st.v[2] & st.v[3]) ^ st.v[4];
+		st = aegis128_update_neon(st, tmp);
+		vst1q_u8(dst, tmp);
+
+		size -= AEGIS_BLOCK_SIZE;
+		src += AEGIS_BLOCK_SIZE;
+		dst += AEGIS_BLOCK_SIZE;
+	}
+
+	if (size > 0) {
+		uint8_t buf[AEGIS_BLOCK_SIZE] = {};
+		uint8x16_t msg;
+
+		memcpy(buf, src, size);
+		msg = vld1q_u8(buf) ^ st.v[1] ^ (st.v[2] & st.v[3]) ^ st.v[4];
+		vst1q_u8(buf, msg);
+		memcpy(dst, buf, size);
+
+		memset(buf + size, 0, AEGIS_BLOCK_SIZE - size);
+		msg = vld1q_u8(buf);
+		st = aegis128_update_neon(st, msg);
+	}
+
+	vst1q_u8(state, st.v[0]);
+	vst1q_u8(state + 16, st.v[1]);
+	vst1q_u8(state + 32, st.v[2]);
+	vst1q_u8(state + 48, st.v[3]);
+	vst1q_u8(state + 64, st.v[4]);
+}
diff --git a/crypto/aegis128-neon.c b/crypto/aegis128-neon.c
new file mode 100644
index 000000000000..c1c0a1686f67
--- /dev/null
+++ b/crypto/aegis128-neon.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Linaro Ltd <ard.biesheuvel@linaro.org>
+ */
+
+#include <asm/cpufeature.h>
+#include <asm/neon.h>
+
+#include "aegis.h"
+
+void crypto_aegis128_update_neon(void *state, const void *msg);
+void crypto_aegis128_encrypt_chunk_neon(void *state, void *dst, const void *src,
+					unsigned int size);
+void crypto_aegis128_decrypt_chunk_neon(void *state, void *dst, const void *src,
+					unsigned int size);
+
+bool crypto_aegis128_have_simd(void)
+{
+	return cpu_have_feature(cpu_feature(AES));
+}
+
+void crypto_aegis128_update_simd(union aegis_block *state, const void *msg)
+{
+	kernel_neon_begin();
+	crypto_aegis128_update_neon(state, msg);
+	kernel_neon_end();
+}
+
+void crypto_aegis128_encrypt_chunk_simd(union aegis_block *state, u8 *dst,
+					const u8 *src, unsigned int size)
+{
+	kernel_neon_begin();
+	crypto_aegis128_encrypt_chunk_neon(state, dst, src, size);
+	kernel_neon_end();
+}
+
+void crypto_aegis128_decrypt_chunk_simd(union aegis_block *state, u8 *dst,
+					const u8 *src, unsigned int size)
+{
+	kernel_neon_begin();
+	crypto_aegis128_decrypt_chunk_neon(state, dst, src, size);
+	kernel_neon_end();
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
