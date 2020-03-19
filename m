Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147AB18B34B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aCcILSdzxlHJcosPiHQJzkkwh51CX44H3+jcJD73uUk=; b=ZQknpE9Ee7zRufKuqW106AQwW9
	9GvgJRAr1ib87kIL/eOR7Nqoy7msIutYLTeslCOXhUkWS5+0qKSqrDUyQPp6n9LAn1sy/J9Tm2NlU
	cchero7vIRKP1KQ85snerwal/QAa/TpNQt0Ii+Y1ZPNkFyNIJS4/Moo4HxasybfjzckhYs/VbgvI5
	5Ucloaf+bhq5aaO49nY4iUdCwvhbyUkyD1i5zA2Q/gEtMfZZuURGSjsupthc5+NWkoWolqcFcH2qf
	AFmTeHmqZzpSjKjTRGPqeUne6AWUJzmzw3tBV8TQSfgysyKCk4KdpNwnMJxKgEhaNu/bAacxsCDTz
	5PVBt0cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuBi-0003dM-01; Thu, 19 Mar 2020 12:22:14 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuBZ-0003cv-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:22:06 +0000
X-IronPort-AV: E=Sophos;i="5.70,571,1574089200"; d="scan'208";a="42339836"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 19 Mar 2020 21:22:04 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 71BB242BCBDB;
 Thu, 19 Mar 2020 21:22:00 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: [PATCH v4 3/5] media: i2c: ov5645: Increase tolerance of external
 clock frequency
Date: Thu, 19 Mar 2020 12:19:21 +0000
Message-Id: <1584620363-2255-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1584620363-2255-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_052205_187830_544BFBC9 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While testing on Renesas RZ/G2E platform, noticed the clock frequency to
be 24242424 as a result the probe failed.

This patch increases the tolerance to 5% so that it avoids patching for
new platforms and it warns the users if the frequency is not within the
range and continue further in the probe instead of returning failure.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/media/i2c/ov5645.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
index e298acdadeef..52a185ed4368 100644
--- a/drivers/media/i2c/ov5645.c
+++ b/drivers/media/i2c/ov5645.c
@@ -1105,13 +1105,11 @@ static int ov5645_probe(struct i2c_client *client)
 		}
 	}
 
-	/* external clock must be 24MHz, allow 1% tolerance */
+	/* ideally external clock must be 24MHz, allow 5% tolerance */
 	xclk_freq = clk_get_rate(ov5645->xclk);
-	if (xclk_freq < 23760000 || xclk_freq > 24240000) {
-		dev_err(dev, "external clock frequency %u is not supported\n",
-			xclk_freq);
-		return -EINVAL;
-	}
+	if (xclk_freq < 22800000 || xclk_freq > 25200000)
+		dev_warn(dev, "external clock frequency is set to %u, sensor might misbehave\n",
+			 xclk_freq);
 
 	for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
 		ov5645->supplies[i].supply = ov5645_supply_name[i];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
