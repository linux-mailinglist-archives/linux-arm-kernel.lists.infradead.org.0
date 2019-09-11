Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EE8AFF23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRVqA64ZBseZYZlTCxE2/siZ/IrGS04d3Nozb8Q7ySo=; b=BX0f671rLIUZ/0
	EejQjEIT54AGMqm0nL66lQNQMDC+tHE+NiNFU4Em6vfsLMp5/9O0ziTHFzV0HZJ1pswGqsOK1vlx/
	gIGf7GdeE4XkMIHYyTSEJ//clrKf6ww59WfblzfPt2/fJIZl6kJv7MnndbC0ZJBzsX6UeXwHGGlRZ
	zRBNOcqDHlsaVzDZ8XfYUzphtasD7R5hLWlfWwGMMFfH6vtre9aoqG2vPN6SFTzCnoJskQlagODgj
	WcFKVXtD+jYiR+aT9pRrx38TEokfze4C8oQIeMe+FjutPBIYLZwwCevFn87YpVBe0g+qcHBp8xxeh
	/ZyV4Ycts1EgC9uBeBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83wo-0006PO-Fg; Wed, 11 Sep 2019 14:50:18 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83wa-0005QL-F5
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:50:06 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id BC6E95FC57;
 Wed, 11 Sep 2019 16:50:00 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dmaengine: imx-sdma: fix buffer ownership
Date: Wed, 11 Sep 2019 16:49:40 +0200
Message-Id: <20190911144943.21554-2-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_075004_662743_248B6DB5 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jslaby@suse.com, vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, festevam@gmail.com,
 Philipp Puschmann <philipp.puschmann@emlix.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the buffer,
when 0 ARM owns it. When processing the buffers in
sdma_update_channel_loop the ownership of the currently processed buffer
was set to SDMA again before running the callback function of the the
buffer and while the sdma script may be running in parallel. So there was
the possibility to get the buffer overwritten by SDMA before it has been
processed by kernel leading to kind of random errors in the upper layers,
e.g. bluetooth.

It may be further a good idea to make the status struct member volatile or
access it using writel or similar to rule out that the compiler sets the
BD_DONE flag before the callback routine has finished.

Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
---
 drivers/dma/imx-sdma.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index a01f4b5d793c..1abb14ff394d 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		*/
 
 		desc->chn_real_count = bd->mode.count;
-		bd->mode.status |= BD_DONE;
 		bd->mode.count = desc->period_len;
 		desc->buf_ptail = desc->buf_tail;
 		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
@@ -817,6 +816,8 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
 		spin_lock(&sdmac->vc.lock);
 
+		bd->mode.status |= BD_DONE;
+
 		if (error)
 			sdmac->status = old_status;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
