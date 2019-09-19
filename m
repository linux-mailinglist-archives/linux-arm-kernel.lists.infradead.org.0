Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F57AB7CD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFn4y/xNJ3fKhqDx90DBwfZVsfa/RGPMGoRAuY4FcNU=; b=dxweicaN2/eTxu
	Tlz6kqXCgDCG5phhWDnbbSTSvT1T3Z6PNkpchjjtDoVZEGaREfKiAKD9E8jKWOMsKCI/6b3FWS848
	518NP+96OK9KOdWenj33sykJvXcRI1owVgJfW/Z6Y1+r8sxGHwOEc38eW4Mx1QqcZtQeD6gdSOlxG
	Y/rZmn6Q1o1++HEJPAPjf81vRUaIh41pAKqpEyTJqGdCai3LAmRj+rXNw7c1kJ4cEN5UxWwtt1AOj
	7PZsn7UllO/hygDScdBHsX89JmjmjTOb1Oc+RhLF6nffl058xDiTlS0Fec+/EbyAY9oDvwxgPdusS
	Pm2ar8C3oauPQbxItbSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxRY-0001zm-Mz; Thu, 19 Sep 2019 14:30:00 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxRL-0001xu-NH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:29:49 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 03755600E3;
 Thu, 19 Sep 2019 16:29:46 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dmaengine: imx-sdma: fix buffer ownership
Date: Thu, 19 Sep 2019 16:29:39 +0200
Message-Id: <20190919142942.12469-2-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919142942.12469-1-philipp.puschmann@emlix.com>
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072947_911931_9D651132 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: fugang.duan@nxp.com, Philipp Puschmann <philipp.puschmann@emlix.com>,
 festevam@gmail.com, s.hauer@pengutronix.de, vkoul@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dan.j.williams@intel.com,
 yibin.gong@nxp.com, shawnguo@kernel.org, dmaengine@vger.kernel.or,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
buffer, when 0 ARM owns it. When processing the buffers in
sdma_update_channel_loop the ownership of the currently processed
buffer was set to SDMA again before running the callback function of
the buffer and while the sdma script may be running in parallel. So
there was the possibility to get the buffer overwritten by SDMA before
it has been processed by kernel leading to kind of random errors in the
upper layers, e.g. bluetooth.

Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>

---

Changelog v4:
 - fixed the fixes tag
 
Changelog v3:
 - use correct dma_wmb() instead of dma_wb()
 - add fixes tag

Changelog v2:
 - add dma_wb()

 drivers/dma/imx-sdma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9ba74ab7e912..e029a2443cfc 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		*/
 
 		desc->chn_real_count = bd->mode.count;
-		bd->mode.status |= BD_DONE;
 		bd->mode.count = desc->period_len;
 		desc->buf_ptail = desc->buf_tail;
 		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
@@ -817,6 +816,9 @@ static void sdma_update_channel_loop(struct sdma_channel *sdmac)
 		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
 		spin_lock(&sdmac->vc.lock);
 
+		dma_wmb();
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
