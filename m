Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A233B77B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKc5dzYr8PneAvbq70EB7dkpgG8T83HOE22cFOVTaZA=; b=eTYC0Z/Dl99Fl4
	zErNACgL070I+yld7+Xqi3f98jciwapulVOTyH0w4oiG3SFbf4/DZtPZY1uIkFli0O24itG5D/37i
	Fe8+KQH4l0CEnYou1HX3wahm+b4H9OTOfchw4nlNjlLOqOpVysIKUe7hywuknu+DuU0bpt/r7qmDc
	GgcTCubOPB6LpVA1Yp7zbfRd1SOCUsGYGx3xODotewY9EPH4BJuJXto11VE1rXuWhRCM3m49zLuia
	KraLVpjnGaGQL2KpLG5dcJUTOszKqRAK/DdLYDTeyvme6sTpu5m/uvj+vcW9+VRLpoZTvWxeO7jE8
	7+UN/J3MSKFcebNeOkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAty5-0004D1-Ir; Thu, 19 Sep 2019 10:47:22 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtwL-0003XY-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:45:34 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id BA3C3603E7;
 Thu, 19 Sep 2019 12:45:31 +0200 (CEST)
From: Philipp Puschmann <philipp.puschmann@emlix.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] dmaengine: imx-sdma: drop redundant variable
Date: Thu, 19 Sep 2019 12:45:26 +0200
Message-Id: <20190919104526.29851-4-philipp.puschmann@emlix.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919104526.29851-1-philipp.puschmann@emlix.com>
References: <20190919102319.23368-1-philipp.puschmann@emlix.com>
 <20190919104526.29851-1-philipp.puschmann@emlix.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_034533_197784_B91606B6 
X-CRM114-Status: GOOD (  10.22  )
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

In sdma_prep_dma_cyclic buf is redundant. Drop it.

Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---

Changelog v3:
 - no changes

Changelog v2:
 - add Reviewed-by tag

 drivers/dma/imx-sdma.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index a32b5962630e..17961451941a 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1544,7 +1544,7 @@ static struct dma_async_tx_descriptor *sdma_prep_dma_cyclic(
 	struct sdma_engine *sdma = sdmac->sdma;
 	int num_periods = buf_len / period_len;
 	int channel = sdmac->channel;
-	int i = 0, buf = 0;
+	int i;
 	struct sdma_desc *desc;
 
 	dev_dbg(sdma->dev, "%s channel: %d\n", __func__, channel);
@@ -1565,7 +1565,7 @@ static struct dma_async_tx_descriptor *sdma_prep_dma_cyclic(
 		goto err_bd_out;
 	}
 
-	while (buf < buf_len) {
+	for (i = 0; i < num_periods; i++) {
 		struct sdma_buffer_descriptor *bd = &desc->bd[i];
 		int param;
 
@@ -1592,9 +1592,6 @@ static struct dma_async_tx_descriptor *sdma_prep_dma_cyclic(
 		bd->mode.status = param;
 
 		dma_addr += period_len;
-		buf += period_len;
-
-		i++;
 	}
 
 	return vchan_tx_prep(&sdmac->vc, &desc->vd, flags);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
