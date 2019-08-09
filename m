Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6088802B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMp39RjciczFGxHDAcGt85BSo07a6ktcT88dsJAvtzM=; b=Yjr7qGMLWrUXtJ
	TlV+D9RPbmteAxrbGHUoV4VICdY2zP3WAGzPKwYRr6rv3CjD2DYgfWgVCLYJ8IGNs5D+omhfgexBC
	OG9lDXwg7e19wUs6dDdnA3T25FDrE/shlWhEx/lcqCNQm5M8Rxk56IHtY53BgRHE0P7GHbX7gF2Ex
	82pyYtKb3Yiv81Va63naAZi/VPewGWIkXlwDw2/rreWKONaxdKfC+1sdK2tCwOOtWxIQYwsWhVbhg
	Fac3uhX+tmMDkpkltNanzrXhByEt4sxU4eoopHOoynjkSVvTp4Y2ei9BEjgLcxdDssYTlKaEVVyKX
	GgzDtC7XAk4lE2CpuE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7qO-00042W-4v; Fri, 09 Aug 2019 16:34:20 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7pw-0003ob-RO
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:33:54 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MwQGj-1iCHo22V1R-00sLsu; Fri, 09 Aug 2019 18:33:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 3/7] dma: iop-adma: use correct printk format strings
Date: Fri,  9 Aug 2019 18:33:17 +0200
Message-Id: <20190809163334.489360-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:K2Gx1fY8Ljd2NDS0Jw6+u8SOqS2PIq6MXC+1tPMpqkPHMkN2W/I
 iUBsOGMIfYW0btXkuSVHgws6TSChnnyEjdPzKqoXg730XHuYfskdrup3mtEge1rLJ+RCNvQ
 GQbLW5G77AESmvtOHKekKJvRWjugWQADMHgElxGI6TZPj1M/u2a4Z8vgEVUsbkqZx9E69wR
 Q+AKv4g8mPLpqgrMovg+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QlJroodNYQw=:7aGy8w9I7kaBCshH9xaCjU
 wXcGD7f/tjxfwmYWN0zF6a6BNWSScNC/Is7ufjpFaHt2cDsuBKoX3K3cuXluPLwW6I3Qisz3m
 U+42mPjMLyNFXswlSWWkloOyq+wzFchxwUWpSBj7/RUTP4lyyyI371+rz3Wc3bFpy8G1XkncX
 LoovGzApYsKtu1YPo1rEDONjs4MydfqiVD6Wg32W2qIqY5K8vWcPuJBEK5Cb+0/efGgbsNQV7
 V3wOvTjX70IxhULQLgAOMt2Bb4YJgU1rztLd+tOvjMRSAFBjDz/Zd7yLOvgx8lGvyRcQFrSh4
 rWTbIxgkc8UNl+eNyAsDeUi8uOphzhhXMi9NhAm9eGpMfZ+X2VEEkWvst5wPCoK2BkgLtu9iX
 pz3uTyHAQmgP78WyaeDMfD2uTJdp0eqjnxj/uy9YlSZm8RVQqeM99+n9825SzW0xxl+GQvu0N
 UwMPpWclDbP+vbdalZWzI5/8G+R2l5XV7wknLNi/L47H7ak53NkcdoXB+EbsO9mVne++T9wmn
 dcjnvVDeJ9qTx7yl7+w4dLPEtykr+QZ2wNwJ3vCqyKeDwFVkNcGJjk36HA7Zigxn8acuLL603
 M5dXoM+K4YhwfCd74Vhb5K7ND0GQ5kYbSogwdlOihfCjtVVqF51qXlKOnxfj02+v7s2e/sDsR
 pgZ94SPPF4hfRTom/6Acj8gyvdZq2e569om+DLW6j7bdszTGSgVGdr3oT+fRdUmHuG0RJ3tWd
 18Cx/AYE/Vj++D0bSBIgCfsEps3UlwrZw+gGjg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093353_181258_E95F1945 
X-CRM114-Status: GOOD (  10.32  )
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

When compile-testing on other architectures, we get lots of warnings
about incorrect format strings, like:

   drivers/dma/iop-adma.c: In function 'iop_adma_alloc_slots':
   drivers/dma/iop-adma.c:307:6: warning: format '%x' expects argument of type 'unsigned int', but argument 6 has type 'dma_addr_t {aka long long unsigned int}' [-Wformat=]

   drivers/dma/iop-adma.c: In function 'iop_adma_prep_dma_memcpy':
>> drivers/dma/iop-adma.c:518:40: warning: format '%u' expects argument of type 'unsigned int', but argument 5 has type 'size_t {aka long unsigned int}' [-Wformat=]

Use %zu for printing size_t as required, and cast the dma_addr_t
arguments to 'u64' for printing with %llx. Ideally this should use
the %pad format string, but that requires an lvalue argument that
doesn't work here.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/dma/iop-adma.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/dma/iop-adma.c b/drivers/dma/iop-adma.c
index 7857b54770d1..aebdd671651a 100644
--- a/drivers/dma/iop-adma.c
+++ b/drivers/dma/iop-adma.c
@@ -117,9 +117,9 @@ static void __iop_adma_slot_cleanup(struct iop_adma_chan *iop_chan)
 	list_for_each_entry_safe(iter, _iter, &iop_chan->chain,
 					chain_node) {
 		pr_debug("\tcookie: %d slot: %d busy: %d "
-			"this_desc: %#x next_desc: %#x ack: %d\n",
+			"this_desc: %#x next_desc: %#llx ack: %d\n",
 			iter->async_tx.cookie, iter->idx, busy,
-			iter->async_tx.phys, iop_desc_get_next_desc(iter),
+			iter->async_tx.phys, (u64)iop_desc_get_next_desc(iter),
 			async_tx_test_ack(&iter->async_tx));
 		prefetch(_iter);
 		prefetch(&_iter->async_tx);
@@ -307,9 +307,9 @@ iop_adma_alloc_slots(struct iop_adma_chan *iop_chan, int num_slots,
 				int i;
 				dev_dbg(iop_chan->device->common.dev,
 					"allocated slot: %d "
-					"(desc %p phys: %#x) slots_per_op %d\n",
+					"(desc %p phys: %#llx) slots_per_op %d\n",
 					iter->idx, iter->hw_desc,
-					iter->async_tx.phys, slots_per_op);
+					(u64)iter->async_tx.phys, slots_per_op);
 
 				/* pre-ack all but the last descriptor */
 				if (num_slots != slots_per_op)
@@ -517,7 +517,7 @@ iop_adma_prep_dma_memcpy(struct dma_chan *chan, dma_addr_t dma_dest,
 		return NULL;
 	BUG_ON(len > IOP_ADMA_MAX_BYTE_COUNT);
 
-	dev_dbg(iop_chan->device->common.dev, "%s len: %u\n",
+	dev_dbg(iop_chan->device->common.dev, "%s len: %zu\n",
 		__func__, len);
 
 	spin_lock_bh(&iop_chan->lock);
@@ -550,7 +550,7 @@ iop_adma_prep_dma_xor(struct dma_chan *chan, dma_addr_t dma_dest,
 	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
 
 	dev_dbg(iop_chan->device->common.dev,
-		"%s src_cnt: %d len: %u flags: %lx\n",
+		"%s src_cnt: %d len: %zu flags: %lx\n",
 		__func__, src_cnt, len, flags);
 
 	spin_lock_bh(&iop_chan->lock);
@@ -583,7 +583,7 @@ iop_adma_prep_dma_xor_val(struct dma_chan *chan, dma_addr_t *dma_src,
 	if (unlikely(!len))
 		return NULL;
 
-	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %u\n",
+	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %zu\n",
 		__func__, src_cnt, len);
 
 	spin_lock_bh(&iop_chan->lock);
@@ -621,7 +621,7 @@ iop_adma_prep_dma_pq(struct dma_chan *chan, dma_addr_t *dst, dma_addr_t *src,
 	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
 
 	dev_dbg(iop_chan->device->common.dev,
-		"%s src_cnt: %d len: %u flags: %lx\n",
+		"%s src_cnt: %d len: %zu flags: %lx\n",
 		__func__, src_cnt, len, flags);
 
 	if (dmaf_p_disabled_continue(flags))
@@ -684,7 +684,7 @@ iop_adma_prep_dma_pq_val(struct dma_chan *chan, dma_addr_t *pq, dma_addr_t *src,
 		return NULL;
 	BUG_ON(len > IOP_ADMA_XOR_MAX_BYTE_COUNT);
 
-	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %u\n",
+	dev_dbg(iop_chan->device->common.dev, "%s src_cnt: %d len: %zu\n",
 		__func__, src_cnt, len);
 
 	spin_lock_bh(&iop_chan->lock);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
