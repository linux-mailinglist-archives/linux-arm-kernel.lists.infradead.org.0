Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8FBD12AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9EdPRSDWVLfaCJC3L91TcBHMssVi+HPrNseoGAzkSk=; b=G7ZmROk2Mg6e4R
	KP/XKe8T0PTCQAXAy8B1fs0Oqbh41EhG3gxSw15nBwKseLavKHEXzbtfhJ/0Ek62vxtO/TAq6Pj93
	pSnHwBHB+UCSNmaionEXF12QL3fOMzB33uR3hQ25/CXzoATWZsicas2NXklUzB6MjQrphlp08ExX4
	ar4V71nLjlK3tW83eMMYK7WU9mBqlg9dv62I4UwPFyMpjZG6ea6BrviKCz48gdwhuI6lvDjORRxfZ
	RfpEFUVVQsPQ9hadKKAKsGFvspE2P6hkR5unbqd51PHtsXvy9FrOVRU3ofiC+Efq7WTxWGvOIBEen
	eV0JsnC8YmB/OOUl50dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDt3-0001ye-Hb; Wed, 09 Oct 2019 15:28:25 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDsF-0001RS-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:27:37 +0000
Received: by mail-yw1-xc43.google.com with SMTP id e205so957373ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BimiSAhIyu/wlnbGZzM5zv98VeK3KGxYKaa4VCWD3vc=;
 b=XhKVN2b3nsHyExn5g3F5i4nQkLizp/ml0iJ6nyIDo8RaY41ylVOc0vRug0oE+UZAge
 i7aiVMFgkmpOpjS+c3EgFzlyN1cpWIrthK7jSW3uToSXKlX6Jhrxju0R21SjsGZRuyKp
 Ga2EQkW+onKg8Z5LYWuREGeksADsfpjrH1z7JxA9BcGLXN0APRwI6mj/NaV9cMwQ5/s7
 vLz1sfqnQZKxpvaGz8S5aITVxusnXfh4S1dYizvCFDbrftaqF0O+58Ig46PBWrt4xcrC
 9uobcnenyu1GareDW34LUr2PUsF4xO+ILnWyjuSck5fNf8YWAoNZs6EPQI4kSCK72LVQ
 1Gmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BimiSAhIyu/wlnbGZzM5zv98VeK3KGxYKaa4VCWD3vc=;
 b=J4VOE7UMhxs0T4W0vcsV9cuHeqddRrppZJZn3s8rFnfmho+wayeZpUDvZrl9822SV2
 7JRDBVn6XDmWsMHunCt+Lc2W08AD3qhWWiHxcVG4ToGEFJcoiaKq+DJ9zHpc5qtXm3Yd
 rY4cTPVO5dsm2JfaG/eZnUerkUNLWJzYx8c5d5ck5vG8eCSbOQoQiNxphqagZvqPB5n5
 XI9GsV4lrhP5FOm37FdXk9Iy9U7ZpNfrrbcHvQcmxVpn2ugXHsgRhm4gp5Sex3ValbHO
 /RhdIjTO5nk4snDDxXlS2+pZVROifN/8pa7+F660sXJxdVnoqKhXYSYinSGd/wzAfODi
 p9jA==
X-Gm-Message-State: APjAAAXHEn5Owig1bCKzJ5kj/2Iqmfr9iVisQsxT+99wzU3ILYQ/2lGv
 DrYIbtv2YpAHuUrzkYN6HPM=
X-Google-Smtp-Source: APXvYqwFyDfey8Cksi+zaDC4bwYRec4uXM/PDJXCjftXpBCynaS44f28FBJDexcQJTmMprUYCuEbow==
X-Received: by 2002:a81:a303:: with SMTP id a3mr3065880ywh.133.1570634854880; 
 Wed, 09 Oct 2019 08:27:34 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g40sm611863ywk.14.2019.10.09.08.27.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:27:33 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v17 02/14] lib/test_bitmap.c: Add for_each_set_clump8 test
 cases
Date: Wed,  9 Oct 2019 11:27:00 -0400
Message-Id: <febc0fb8151e3e3fdd61c34da9193d1c4d7e6c12.1570633189.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082735_991977_18FEAC83 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, lukas@wunner.de,
 geert@linux-m68k.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The introduction of the for_each_set_clump8 macro warrants test cases to
verify the implementation. This patch adds test case checks for whether
an out-of-bounds clump index is returned, a zero clump is returned, or
the returned clump value differs from the expected clump value.

Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Acked-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 lib/test_bitmap.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 51a98f7ee79e..dc167c13eb39 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -92,6 +92,36 @@ __check_eq_u32_array(const char *srcfile, unsigned int line,
 	return true;
 }
 
+static bool __init __check_eq_clump8(const char *srcfile, unsigned int line,
+				    const unsigned int offset,
+				    const unsigned int size,
+				    const unsigned char *const clump_exp,
+				    const unsigned long *const clump)
+{
+	unsigned long exp;
+
+	if (offset >= size) {
+		pr_warn("[%s:%u] bit offset for clump out-of-bounds: expected less than %u, got %u\n",
+			srcfile, line, size, offset);
+		return false;
+	}
+
+	exp = clump_exp[offset / 8];
+	if (!exp) {
+		pr_warn("[%s:%u] bit offset for zero clump: expected nonzero clump, got bit offset %u with clump value 0",
+			srcfile, line, offset);
+		return false;
+	}
+
+	if (*clump != exp) {
+		pr_warn("[%s:%u] expected clump value of 0x%lX, got clump value of 0x%lX",
+			srcfile, line, exp, *clump);
+		return false;
+	}
+
+	return true;
+}
+
 #define __expect_eq(suffix, ...)					\
 	({								\
 		int result = 0;						\
@@ -108,6 +138,7 @@ __check_eq_u32_array(const char *srcfile, unsigned int line,
 #define expect_eq_bitmap(...)		__expect_eq(bitmap, ##__VA_ARGS__)
 #define expect_eq_pbl(...)		__expect_eq(pbl, ##__VA_ARGS__)
 #define expect_eq_u32_array(...)	__expect_eq(u32_array, ##__VA_ARGS__)
+#define expect_eq_clump8(...)		__expect_eq(clump8, ##__VA_ARGS__)
 
 static void __init test_zero_clear(void)
 {
@@ -404,6 +435,39 @@ static void noinline __init test_mem_optimisations(void)
 	}
 }
 
+static const unsigned char clump_exp[] __initconst = {
+	0x01,	/* 1 bit set */
+	0x02,	/* non-edge 1 bit set */
+	0x00,	/* zero bits set */
+	0x38,	/* 3 bits set across 4-bit boundary */
+	0x38,	/* Repeated clump */
+	0x0F,	/* 4 bits set */
+	0xFF,	/* all bits set */
+	0x05,	/* non-adjacent 2 bits set */
+};
+
+static void __init test_for_each_set_clump8(void)
+{
+#define CLUMP_EXP_NUMBITS 64
+	DECLARE_BITMAP(bits, CLUMP_EXP_NUMBITS);
+	unsigned int start;
+	unsigned long clump;
+
+	/* set bitmap to test case */
+	bitmap_zero(bits, CLUMP_EXP_NUMBITS);
+	bitmap_set(bits, 0, 1);		/* 0x01 */
+	bitmap_set(bits, 9, 1);		/* 0x02 */
+	bitmap_set(bits, 27, 3);	/* 0x28 */
+	bitmap_set(bits, 35, 3);	/* 0x28 */
+	bitmap_set(bits, 40, 4);	/* 0x0F */
+	bitmap_set(bits, 48, 8);	/* 0xFF */
+	bitmap_set(bits, 56, 1);	/* 0x05 - part 1 */
+	bitmap_set(bits, 58, 1);	/* 0x05 - part 2 */
+
+	for_each_set_clump8(start, clump, bits, CLUMP_EXP_NUMBITS)
+		expect_eq_clump8(start, CLUMP_EXP_NUMBITS, clump_exp, &clump);
+}
+
 static void __init selftest(void)
 {
 	test_zero_clear();
@@ -413,6 +477,7 @@ static void __init selftest(void)
 	test_bitmap_parselist();
 	test_bitmap_parselist_user();
 	test_mem_optimisations();
+	test_for_each_set_clump8();
 }
 
 KSTM_MODULE_LOADERS(test_bitmap);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
