Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F63830C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqNRYGLGbYSebg5diCblybWUuyhuaBYrqOYVASBFK1I=; b=JkBikDDvM9D+Pk
	qoyn+Gv1E9myUuUymBygzzh1BHy4X0/a/+86a0qcFuNJ249xlvybB/V/b4f+tVJQnvZGa0ajra0s9
	ZQM84a8/oMhwTfaFjUE7k8QDnKT1RJsdwb1//qgaI0cC8bFx0GSBbey0j4FzWmBxOXYKJ1Eb8aSmO
	HQVFsqehuKDUlkZKKwkfmv5PnD9jGeDALhcOuzYZLORaalAfs/iR2NJGGVb6akBllCXEVPwr1aaYo
	HkWQ2jC7W+Gspyi50wITC0V03h8yUgjOWClVyK3sI11GwBx81zNKmkmCoWSgxff2ELozzC1jOcAcZ
	79sL0+/tCRZlcvYvrilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxkZ-0000RT-LM; Tue, 06 Aug 2019 11:35:31 +0000
Received: from unicorn.mansr.com ([2001:8b0:ca0d:8d8e::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxkL-0000Cw-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:35:19 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id F0FFA16F1B; Tue,  6 Aug 2019 12:35:00 +0100 (BST)
From: Mans Rullgard <mans@mansr.com>
To: Bin Liu <b-liu@ti.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [RESEND][PATCH] usb: musb: sunxi: propagate devicetree node to glue
 pdev
Date: Tue,  6 Aug 2019 12:34:58 +0100
Message-Id: <20190806113458.3304-1-mans@mansr.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_043518_044887_B85B526D 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order for devicetree nodes to be correctly associated with attached
devices, the controller node needs to be propagated to the glue device.

Signed-off-by: Mans Rullgard <mans@mansr.com>
---
 drivers/usb/musb/sunxi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/musb/sunxi.c b/drivers/usb/musb/sunxi.c
index 832a41f9ee7d..a72665fbf111 100644
--- a/drivers/usb/musb/sunxi.c
+++ b/drivers/usb/musb/sunxi.c
@@ -781,6 +781,8 @@ static int sunxi_musb_probe(struct platform_device *pdev)
 	pinfo.name	 = "musb-hdrc";
 	pinfo.id	= PLATFORM_DEVID_AUTO;
 	pinfo.parent	= &pdev->dev;
+	pinfo.fwnode	= of_fwnode_handle(pdev->dev.of_node);
+	pinfo.of_node_reused = true;
 	pinfo.res	= pdev->resource;
 	pinfo.num_res	= pdev->num_resources;
 	pinfo.data	= &pdata;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
