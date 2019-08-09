Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F93188031
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGcmi1EvvKq6zq/p8/XwBgR9/bn187y13SYxpRarPQ0=; b=Lj2OgPq+4M2o5/
	WbnmuHMQL1MagEjISZNlzmkxhOcwgSPToI1DwnIOeXYkmEUYSdAyBXu4Gu1+kMnomQasM5ZwCheuW
	rpJGwSLDuA185tjIymPcgzkxqv39IvBF4qdXk0aLFoa+yQJswqhKeeTxQEN7vx1pHfoz/KdQhuGU3
	pk7R2VjQ8ylqxNFmfnB/QPrfZwD9O7/Lj4ROMEQhCnInxAZdr9KR2wKuT4wRzvyWoEa3mn1rlPcIn
	yWkFQe9BvJE884Dkd+K+UYthgHp5dHTkI5Vods3qPXLwzySAxrBs5Tld8J2+YaeGnwCPyXCJ79H5p
	h2IppIPvRigncG9FCKZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7qb-0004dV-5w; Fri, 09 Aug 2019 16:34:33 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7q0-0003qX-1F
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:33:57 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MiaLn-1iYmm935N9-00fn4k; Fri, 09 Aug 2019 18:33:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 5/7] ARM: xscale: fix multi-cpu compilation
Date: Fri,  9 Aug 2019 18:33:19 +0200
Message-Id: <20190809163334.489360-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wZlcz48ar72OTI0b4lRDVG5g8z7FKcBbmmlRwz5OyJHN+RZnSIu
 rPO+wv2A51N4cneEGdq5++c3p7S8W9hvSc0/+MJlbGu9ejYfTujT8svnratVAcjpJEGGv/T
 NXHhTUGyJQX/PS6OeT3qB34XlnqG4OMumh+VLw3NibgQKnG6LEXRUilqHtuedJI6D+RIZly
 Fm2LpeYj60KlsDF4evXVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:p9OV/IkT9gI=:vQKEMVaVwwOvgHQ9k8wqNy
 frRgQ5iPSYZBBsJ8Qrbd1D1A1CH34rn2cdmC6UGHpIGXrTyp8CD2Aa78I5ZU4E9jyTv9WvdIl
 fbt/7UygAPSI8fo0/ttAzm1GSPsmpTVHt3DJLPiVMpWX4qAT63RJizHPB9OYD7IdxM5UQnwH9
 LzDyHR8lG2qAV0gMRg6a8kksSkiEBhFFT1+JSKXdOVMSh/Wfm3ZYWTt1yUaYvD4fajrm1oM4X
 oHx1+k/fMd6xnGJZC1jvy9yy5ntt/RVfiy74k9RPx8cZ4JFLKxxQDwwlKvCbYnU4qWm+kEyfI
 Cnb6f+To5gLTzFOrAeaVq9rjR+CjsKD2hYMZ7n9pLVUWu1FsAPHu+eIbVkyTsPgzHivVNF3Fl
 T9Xl35tHU6a+7gMm/0epFHhknfyINhgxBBCVl4Y7YnTQrZ97ZYpZwYMTqdn9ZzvaEgO0hzKRd
 ofGcyc0AcO+aDSnWMN6PyWvOn2yuQWBxKjnmRNnx4uNKdkf2A5WKZaue0MYO59x7xX7PcCC3f
 d4+w9fPOaCT+U6hD4KHvhRJhkQ1ibQjgCOLS5NQuEsRO4yJkVR1RIxLB9PepRwK4SO4idjf7D
 HIM1rsTJ5V+xnSVw4JzkGeCHJC1dfPLXxhw4A9DvbGxKYVFF39vhTqy5t23p/4RsNyNZZJqp0
 RHEMej39ZLyU/RccOCDWLGm4+2AWUCIv6b2hfUEJnCqEKAF1Aoz6hehAgXjaDaPThbJt/2iDa
 I6d+QTwbVTuZmWqY4lyKpeiDTl0FNdnCXrKRBQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093356_379471_1D68D280 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Vinod Koul <vkoul@kernel.org>, linux-i2c@vger.kernel.org,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building a combined ARMv4+XScale kernel produces these
and other build failures:

/tmp/copypage-xscale-3aa821.s: Assembler messages:
/tmp/copypage-xscale-3aa821.s:167: Error: selected processor does not support `pld [r7,#0]' in ARM mode
/tmp/copypage-xscale-3aa821.s:168: Error: selected processor does not support `pld [r7,#32]' in ARM mode
/tmp/copypage-xscale-3aa821.s:169: Error: selected processor does not support `pld [r1,#0]' in ARM mode
/tmp/copypage-xscale-3aa821.s:170: Error: selected processor does not support `pld [r1,#32]' in ARM mode
/tmp/copypage-xscale-3aa821.s:171: Error: selected processor does not support `pld [r7,#64]' in ARM mode
/tmp/copypage-xscale-3aa821.s:176: Error: selected processor does not support `ldrd r4,r5,[r7],#8' in ARM mode
/tmp/copypage-xscale-3aa821.s:180: Error: selected processor does not support `strd r4,r5,[r1],#8' in ARM mode

Add an explict .arch armv5 in the inline assembly to allow the ARMv5
specific instructions regardless of the compiler -march= target.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mm/copypage-xscale.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/copypage-xscale.c b/arch/arm/mm/copypage-xscale.c
index 61d834157bc0..382e1c2855e8 100644
--- a/arch/arm/mm/copypage-xscale.c
+++ b/arch/arm/mm/copypage-xscale.c
@@ -42,6 +42,7 @@ static void mc_copy_user_page(void *from, void *to)
 	 * when prefetching destination as well.  (NP)
 	 */
 	asm volatile ("\
+.arch xscale					\n\
 	pld	[%0, #0]			\n\
 	pld	[%0, #32]			\n\
 	pld	[%1, #0]			\n\
@@ -106,8 +107,9 @@ void
 xscale_mc_clear_user_highpage(struct page *page, unsigned long vaddr)
 {
 	void *ptr, *kaddr = kmap_atomic(page);
-	asm volatile(
-	"mov	r1, %2				\n\
+	asm volatile("\
+.arch xscale					\n\
+	mov	r1, %2				\n\
 	mov	r2, #0				\n\
 	mov	r3, #0				\n\
 1:	mov	ip, %0				\n\
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
