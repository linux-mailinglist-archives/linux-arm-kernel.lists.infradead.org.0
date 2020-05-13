Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2941D06DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 08:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=axMm1t4C90j7wzJUm9GduSUcgN4/sAKCrD9n9k7Ssp0=; b=fDImqGB6JGthou
	4cqtu50S69CekBsHX9SK1ckTZyrCDfb48/LXjD008FO2dJ1EW+xobgiIQEZ4RBKhts7Zfn58Gw9pJ
	DD2r7TyNENzmXmEb/gq3rzey9W6Gny//6CwfMPqPt5+wA8qU47vmwwO+65kzc/Y+cGP6/iqCZRL2B
	fe/zdYmcrzRSrjlc/kqWUeS7VZ8dt5CwX3PguJxGOR2/KAls/3HjlCMoju9yzSm971j07denh/ZKx
	nP0btDCiYeDxMGGdhf+UP/1LHMFC2G6B8dFZS54mNxklabhHqtktYftlr6b/CbMyHVpe+AhXLjgH4
	EANvqwCtT4sIFRNur7xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkVE-0004nN-Dw; Wed, 13 May 2020 06:04:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkV8-0004mT-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 06:04:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYkV2-0000e1-27; Wed, 13 May 2020 08:04:12 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jYkUx-0004sD-QX; Wed, 13 May 2020 08:04:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dmaengine@vger.kernel.org
Subject: [PATCH] dmaengine: imx-sdma: initialize all script addresses
Date: Wed, 13 May 2020 08:04:05 +0200
Message-Id: <20200513060405.18685-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_230418_186333_A72EE6B4 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, Robin Gong <yibin.gong@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The script addresses array increases with each new version. The driver
initializes the array to -EINVAL initially, but only up to the size
of the v1 array. Initialize the additional addresses for the newer
versions as well. Without this unitialized values of the newer arrays
are treated as valid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/imx-sdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 01422e721b26e..2ca79357f57dc 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -2080,7 +2080,7 @@ static int sdma_probe(struct platform_device *pdev)
 
 	/* initially no scripts available */
 	saddr_arr = (s32 *)sdma->script_addrs;
-	for (i = 0; i < SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1; i++)
+	for (i = 0; i < sizeof(*sdma->script_addrs) / sizeof(s32); i++)
 		saddr_arr[i] = -EINVAL;
 
 	dma_cap_set(DMA_SLAVE, sdma->dma_device.cap_mask);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
