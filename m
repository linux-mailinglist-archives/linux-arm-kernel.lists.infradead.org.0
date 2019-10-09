Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1161AD1539
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ3Z+KBsgRTb0pfENigTx1dKsm5cijLlZ9DFSgABIqw=; b=QgsUNtculyB5Kf
	GgEA9/rCpfDXIjwXcPH/qF0MzfDQhia1Ct2jk1MVOKWRqtxgE7g5wV2N7t/Ylz5bTOYk72ZT3xvZ6
	gyVlcpd9Igv2SvWCL4wvfAvrUNqOAnL89cptHk6fXAyq3XdjOsTuDp7e799Cq4EPhfj2Amd4AnV4a
	oPJyADimF/JbZ9riIaWTvf7LdnOvlEbwYcLeVIOEDe0k/2zm8nlTTqGeKJPRF9JGN2CRYI63v3vpc
	53wPTK98c0HF0feG21nqU76Q/PxsMDMCB1pN46+stttTkQ/Zp1CMaEuyJZBAb4/iZcvfK6uJFoPch
	hTFDvq1gWvRK0ZQuCtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFZ1-0006fc-FW; Wed, 09 Oct 2019 17:15:51 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFYR-0006Bw-Mw
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:15:17 +0000
Received: by mail-yb1-xb43.google.com with SMTP id r2so990467ybg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 10:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qFx5e6sekWj4cSXabcHlK2m6teGcz5rYDUsYdjC+rrw=;
 b=vU5nENGi+96qwP1zXySRiWdFjmgbqu2wz/Nv/G+uJKJJ3evWwp5yKBdbAOYOxR1UD6
 02e0fvSrnPTf7cs9XAocBH5tfFvYAD8DjRLbupbDBxhqDO1OnyL0+YkJOZJ78rYIuDkv
 4lHksmb169tCjBIbSMDL/SXap1/9ySx+oH7+ANVrRMaxo6Z8e8hlkvhRqH9aJvh0tyXE
 O8OC4U47zNrp1IPyOfx9kyFntLDoj3vwq3s2lkMmrk0n6z46+gIjoW4Xjo/uPQWtzRz3
 Tkr5VXvUolO44bthr8sCq3XyND0NpqFKhBnozXvK/qa7maJKhSBEnwQ5UtCvBGg6SWgz
 ZYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qFx5e6sekWj4cSXabcHlK2m6teGcz5rYDUsYdjC+rrw=;
 b=A3UONMGBp9rrMGKjP/C7oJTyWB4zo930FtG2m10+J9OjTYWI/79gFZ6JGF/Z4paRKB
 +PT/UbGIdNCJHi/BXBV/pCGALJ6UcLmhqlPLPaJSbMX446Enmcn8i5YKVfn1qYzJBY3d
 tWD4nDWHWHgHHPSE5dbtKDpvxQF462w081a/zluZha3f8XIvSdyvJo9xDLKN7uS+fRJe
 3l902eapOfTMucxA4xjnANe0/g0xMcsaOnrw3D3OjdNx/kMi8PIkecT38tLGcQHxdfOS
 Z1YSdm3G2rrWWb/UjoBH573L9OLo3vIsTpaBns6fWZD1A7s1bXIYPWmqPn5ejFjOdrFN
 E51g==
X-Gm-Message-State: APjAAAX0TFR/PzhKU3hvadb1XQmAAHa84Nf+nUJSqb2hbXIP7uFNCF9D
 ag7rv/xXiXa/+pwPvutpJ7s=
X-Google-Smtp-Source: APXvYqyo/6BM6QV7w2AEso0LDLVV9QJhxnkgkXCJdqwwCDn8k8vz3H54P9dTdCDOoxtGL1DTt4y1QA==
X-Received: by 2002:a25:49c7:: with SMTP id w190mr2853099yba.140.1570641313477; 
 Wed, 09 Oct 2019 10:15:13 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id r63sm743292ywg.36.2019.10.09.10.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 10:15:11 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 akpm@linux-foundation.org
Subject: [PATCH v18 01/14] bitops: Introduce the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 13:14:37 -0400
Message-Id: <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570641097.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570641097.git.vilhelm.gray@gmail.com>
References: <cover.1570641097.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_101515_746069_4AF24774 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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
 Arnd Bergmann <arnd@arndb.de>, yamada.masahiro@socionext.com,
 linux-pm@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 linux-gpio@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 lukas@wunner.de, geert@linux-m68k.org, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
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
 include/asm-generic/bitops/find.h | 17 +++++++++++++++
 include/linux/bitmap.h            | 35 +++++++++++++++++++++++++++++++
 include/linux/bitops.h            |  5 +++++
 lib/find_bit.c                    | 14 +++++++++++++
 4 files changed, 71 insertions(+)

diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
index 8a1ee10014de..9fdf21302fdf 100644
--- a/include/asm-generic/bitops/find.h
+++ b/include/asm-generic/bitops/find.h
@@ -80,4 +80,21 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
 
 #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
 
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
diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 90528f12bdfa..761fab5b60a7 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -66,6 +66,8 @@
  *  bitmap_allocate_region(bitmap, pos, order)  Allocate specified bit region
  *  bitmap_from_arr32(dst, buf, nbits)          Copy nbits from u32[] buf to dst
  *  bitmap_to_arr32(buf, src, nbits)            Copy nbits from buf to u32[] dst
+ *  bitmap_get_value8(map, start)               Get 8bit value from map at start
+ *  bitmap_set_value8(map, value, start)        Set 8bit value to map at start
  *
  * Note, bitmap_zero() and bitmap_fill() operate over the region of
  * unsigned longs, that is, bits behind bitmap till the unsigned long
@@ -488,6 +490,39 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
 		dst[1] = mask >> 32;
 }
 
+/**
+ * bitmap_get_value8 - get an 8-bit value within a memory region
+ * @map: address to the bitmap memory region
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ *
+ * Returns the 8-bit value located at the @start bit offset within the @src
+ * memory region.
+ */
+static inline unsigned long bitmap_get_value8(const unsigned long *map,
+					      unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	return (map[index] >> offset) & 0xFF;
+}
+
+/**
+ * bitmap_set_value8 - set an 8-bit value within a memory region
+ * @map: address to the bitmap memory region
+ * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ */
+static inline void bitmap_set_value8(unsigned long *map, unsigned long value,
+				     unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	map[index] &= ~(0xFF << offset);
+	map[index] |= value << offset;
+}
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __LINUX_BITMAP_H */
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
