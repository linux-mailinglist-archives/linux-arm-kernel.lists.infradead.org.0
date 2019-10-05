Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9C8CCC2A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 20:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2b/qoXOaQDtsonKCltyoul1/U2fBHLQY/XKmvEDks7U=; b=jgnt3Pat2F1CVa
	3gN2X63ccJdiXf/eIRc1DFp4m/QSjCirnF2f3QDjiXl/cHpIXiW5B3xYtiZkRNE+lvZ+DyNmJ4yOk
	tDN/JDw4Cyv3F0eWlnvuMInfcW4NG7ILkRvinxmYsTiMu7chCRMOPBqOR4tcU3GCof7fKfatYaAqQ
	0drxgLzlOe0CZ3ofJsNkIVav5WPBRAZ46/sPoYyLOH2KWXcrUnA34EviholMghGWCCGwbQVI2dg9h
	iVbnBukH5zNuDNpgA3MgbwgOQS6PYf1sxgVFIz5dK8zd+8zMsiwbqqdiWlv0HXiXjCDWRbyds/fUD
	wT7fA/QA0lftQXeYmBzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGowM-0002XO-46; Sat, 05 Oct 2019 18:38:02 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGovp-0002PD-Gd
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 18:37:31 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n11so3570088ywn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 11:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OMhYgkYYNxK+vsqLS8qdyKHPOIgYu2hPpfb3+C8Zgbc=;
 b=PJp6MpKvrsmtizbGLUocxf+CPZvpLf4KR+nD7xIEA/S2O7B9mF5fhkP4GlIYwh+UxJ
 Hgd1ie0MeIGdmD46NLucfghU9T3pZGhZWd/Rgse8VKwtIf7iug+etAIJ4Zs4sBKXa2mf
 gZepBXAtUGD/xqLZdbas6DegOfQLQOXDLbGpkT7HdlZ3R/aOwAxBicU3nfjYXp6YPb6a
 zPXN0hTW8pW3JNZ8+L57xcgcMIm6hk6n3m/IrGegpRHcsnbUWo8XdMrP7yGPChvsh02k
 ftAGPtOQogH4FZe+DfCIwAoqgiTyCVo2Mjn3yMSIEN9dAFCbstmSqyTb+3HVj7eaOVdR
 E6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OMhYgkYYNxK+vsqLS8qdyKHPOIgYu2hPpfb3+C8Zgbc=;
 b=CUv5Th10zD4bmrKxbVsqiahDqtXw8tFjDaJ8pgpc9OpE3DFEVBPMFYtFzdAUnQWqlw
 p/ZzBBcBEWl9K/o5WHu3cefHa9U2/BolxcbyBmBlshO6SG2lg7RR2RU44JaEF7H1Sa4S
 ICGuTlVxsjDvj3ujGjbylFZcr9jmhOnNThuCmJBDmxLP16kjoXHdL+AZJa5bXeUMjgpH
 arT40BfXddgxRee16H27L182xBcWY2lGUjyjsopLZifT7KVNtCR3RQesGi80pFr0zvgD
 bZJdDEaocimMVfOUBPSLutiTpaFr+4B83v+Y16yLFig1zD+OD0etiD2yGTEzhhH69ktZ
 CukA==
X-Gm-Message-State: APjAAAVK+gDIrkX4wIoD2SBJKTNCK7yv0l0raeWGtwZIlxKAbu6vi3ba
 voS5gowNFWOBAvdjbscqNGQ=
X-Google-Smtp-Source: APXvYqyJV8InbTPKYGyTe1whvoICAZCq4IaqhS/HYTcmh1dMKcobmoakrPeMl4a2Mk9ZLmm8bvGeKA==
X-Received: by 2002:a81:7703:: with SMTP id s3mr14393586ywc.382.1570300648113; 
 Sat, 05 Oct 2019 11:37:28 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g128sm2376654ywb.13.2019.10.05.11.37.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 11:37:27 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v15 01/14] bitops: Introduce the for_each_set_clump8 macro
Date: Sat,  5 Oct 2019 14:36:55 -0400
Message-Id: <be63fa49f036b9168f223152648307a63056f4ee.1570299719.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570299719.git.vilhelm.gray@gmail.com>
References: <cover.1570299719.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_113729_552780_AF878810 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, preid@electromag.com.au,
 Arnd Bergmann <arnd@arndb.de>, William Breathitt Gray <vilhelm.gray@gmail.com>,
 yamada.masahiro@socionext.com, linux-pm@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk, linux-gpio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, lukas@wunner.de,
 geert@linux-m68k.org, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This macro iterates for each 8-bit group of bits (clump) with set bits,
within a bitmap memory region. For each iteration, "start" is set to the
bit offset of the found clump, while the respective clump value is
stored to the location pointed by "clump". Additionally, the
bitmap_get_value8 and bitmap_set_value8 functions are introduced to
respectively get and set an 8-bit value in a bitmap memory region.

Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Suggested-by: Lukas Wunner <lukas@wunner.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 include/asm-generic/bitops/find.h | 50 +++++++++++++++++++++++++++++++
 include/linux/bitops.h            |  5 ++++
 lib/find_bit.c                    | 14 +++++++++
 3 files changed, 69 insertions(+)

diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
index 8a1ee10014de..5277e72882ff 100644
--- a/include/asm-generic/bitops/find.h
+++ b/include/asm-generic/bitops/find.h
@@ -80,4 +80,54 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
 
 #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
 
+/**
+ * bitmap_get_value8 - get an 8-bit value within a memory region
+ * @addr: address to the bitmap memory region
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ *
+ * Returns the 8-bit value located at the @start bit offset within the @addr
+ * memory region.
+ */
+static inline unsigned long bitmap_get_value8(const unsigned long *addr,
+					      unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	return (addr[index] >> offset) & 0xFF;
+}
+
+/**
+ * bitmap_set_value8 - set an 8-bit value within a memory region
+ * @addr: address to the bitmap memory region
+ * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ */
+static inline void bitmap_set_value8(unsigned long *addr, unsigned long value,
+				     unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	addr[index] &= ~(0xFF << offset);
+	addr[index] |= value << offset;
+}
+
+/**
+ * find_next_clump8 - find next 8-bit clump with set bits in a memory region
+ * @clump: location to store copy of found clump
+ * @addr: address to base the search on
+ * @size: bitmap size in number of bits
+ * @offset: bit offset at which to start searching
+ *
+ * Returns the bit offset for the next set clump; the found clump value is
+ * copied to the location pointed by @clump. If no bits are set, returns @size.
+ */
+extern unsigned long find_next_clump8(unsigned long *clump,
+				      const unsigned long *addr,
+				      unsigned long size, unsigned long offset);
+
+#define find_first_clump8(clump, bits, size) \
+	find_next_clump8((clump), (bits), (size), 0)
+
 #endif /*_ASM_GENERIC_BITOPS_FIND_H_ */
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index cf074bce3eb3..fb94a10f7853 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -40,6 +40,11 @@ extern unsigned long __sw_hweight64(__u64 w);
 	     (bit) < (size);					\
 	     (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
 
+#define for_each_set_clump8(start, clump, bits, size) \
+	for ((start) = find_first_clump8(&(clump), (bits), (size)); \
+	     (start) < (size); \
+	     (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
+
 static inline int get_bitmask_order(unsigned int count)
 {
 	int order;
diff --git a/lib/find_bit.c b/lib/find_bit.c
index 5c51eb45178a..e35a76b291e6 100644
--- a/lib/find_bit.c
+++ b/lib/find_bit.c
@@ -214,3 +214,17 @@ EXPORT_SYMBOL(find_next_bit_le);
 #endif
 
 #endif /* __BIG_ENDIAN */
+
+unsigned long find_next_clump8(unsigned long *clump, const unsigned long *addr,
+			       unsigned long size, unsigned long offset)
+{
+	offset = find_next_bit(addr, size, offset);
+	if (offset == size)
+		return size;
+
+	offset = round_down(offset, 8);
+	*clump = bitmap_get_value8(addr, offset);
+
+	return offset;
+}
+EXPORT_SYMBOL(find_next_clump8);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
