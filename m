Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF65D32A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fPPWFUVUl00E4GJf7+XHxKPOwHAWqnbx0GjT6svRoxs=; b=F2eRGByBdj0Ihz
	vhope53gYGgewf4QWuHQ4CMsOyw+ute87nlkEbnIHCh0jabHBUXVpuMlVHGbcwEvjUOL/Cs7jjvTH
	MPsggpox/GUf0k5qRByUt6QN59nIhKOqFmfv8y4M0Vnl2TUjDHzc+vnQhOUHlfGUtv5wt0GbYY8iZ
	GbWLC3VDZnZtbJZu3liPfmrbbLSecGWtkv8sVHP68hbLFPoIvhb+4VAnSzSgzDaMuyFDijgDLJtu1
	XWHEfKnhE1eVkgRiOz4Q8GoS3p6/Pjwvh1nu48uaylY+Gf2HVNV27gqvhXIQQ4+ixkjM48daCWswl
	VoKX70fixCfYWoZOVxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfKP-0004Tk-3z; Thu, 10 Oct 2019 20:46:29 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfK7-0004NS-EW
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:46:12 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 36D9DC000E;
 Thu, 10 Oct 2019 20:46:09 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH] net: lpc_eth: avoid resetting twice
Date: Thu, 10 Oct 2019 22:46:06 +0200
Message-Id: <20191010204606.15279-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134611_645972_3EC0588F 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__lpc_eth_shutdown is called after __lpc_eth_reset but it is already
calling __lpc_eth_reset. Avoid resetting the IP twice.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/net/ethernet/nxp/lpc_eth.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index fdcaf70151d4..e766a3e34d14 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -1364,9 +1364,6 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 	if (!is_valid_ether_addr(ndev->dev_addr))
 		eth_hw_addr_random(ndev);
 
-	/* Reset the ethernet controller */
-	__lpc_eth_reset(pldat);
-
 	/* then shut everything down to save power */
 	__lpc_eth_shutdown(pldat);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
