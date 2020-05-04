Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9551C3BB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7LE0FlTiszbwjusoN4J/2j6oXEp9X2zdx5HTBGl5rM=; b=nLp2RlIFIAZ1PW
	dd1a8uRDuULhysOHle0/xksh9iBoRu7U9vKjzABVsW+RtnmomS624tzbiBdeLSLEmcHdGRSr90AUo
	xBoCTDscHTHPLaUblrX0UY04inZfs2Zlj/+kSUuyZSEomuETefbBWJI3u95jSj881+pyIQD7saeBk
	BqdxLdVaztzAeHu4jjAXWxz+w+3Td+L3joQ/ITNU2mR2/PEq5amH8lEehpZNSpJf5b8/HvHrD7mV2
	eJyf3gyDTRCtnBAdD4AW86uHEuHr/S7ojRk9pxZm5prKGnjov1hKGb5zcEJpvvTgsI3UHOk6XqOwX
	7HEeWWxP7RDt3W5TpisA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbSQ-0008Uw-6p; Mon, 04 May 2020 13:48:30 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbRC-0007HX-4F
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600034; x=1620136034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzrqr3G8iZcqzNlVDE8Bp5RQaqxIcZQVI/t/Po77lqo=;
 b=Dzvo488rFJa9UZTXw3ieACa6lO5TM2ZkVNSbdGR1fefCydRi8+djJAbB
 iJ+GQyxgwlzDFFvAUJDXJbU4wpRhnUnW2ZsOi5AKFWwoePSJqh0pRJqXz
 ontKjKxTPcqzTqncKyA5AXYUbBoit4VDR/+FWKzofCXtUQC0UpOIBIFK3
 lI+eEoTO1+kgpo2WS2O9NVuZKwF3LMn0DKyHoVjh3Af3iNXHlC41Hv9gi
 xwBOmvKERyCl5v6cXMIxgWAIxp6CJx/Keid8sRpMmhWUrP0c5/EScQ3lk
 PgP43FFx+9ZEIzHFW0jnB2yppPvlu18vIbl9u/UQ3w/volzMPYIj23fC4 A==;
IronPort-SDR: LeACB26FaamIcb3cWCu14cDkh7tkabI+Vn9g6mb3xiWVIhmhOIFGRmrVEaPdZYcyRxphPIvZDb
 bCeBfPdHJzJ0mmMOQ7lZSLepDazjBEc+AEMm66TG9HDNtrHpg1Bc8t/HUg8+hCagAZzOAvj6QU
 3cqm82Tuq0a13UI//9/vdtaT394pfxcMM137Qx4Q9u8655KKUIgbHJdjK/RjqgX6dr5ZoEvLZ/
 a3Yn0ml1wP7PlX8eqixy+x2euT/aUdRWeSDJl/5jCUS4Fp4k/3ZSZdy05ydRkTnBECJwQItQlb
 VYE=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="74135784"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:47 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:43 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 5/7] net: macb: fix call to pm_runtime in the
 suspend/resume functions
Date: Mon, 4 May 2020 15:44:20 +0200
Message-ID: <e985e9247478205d66507cd1bd74b6f8fb6c829f.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064714_410906_C2960186 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, michal.simek@xilinx.com, antoine.tenart@bootlin.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 Sergio Prado <sergio.prado@e-labworks.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

The calls to pm_runtime_force_suspend/resume() functions are only
relevant if the device is not configured to act as a WoL wakeup source.
Add the device_may_wakeup() test before calling them.

Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Sergio Prado <sergio.prado@e-labworks.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
Changes in v3:
 - remove the parenthesis around device_may_wakeup()
Changes in v2:
- new in v2 serries

 drivers/net/ethernet/cadence/macb_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 72b8983a763a..b42831966ffa 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4564,7 +4564,8 @@ static int __maybe_unused macb_suspend(struct device *dev)
 
 	if (bp->ptp_info)
 		bp->ptp_info->ptp_remove(netdev);
-	pm_runtime_force_suspend(dev);
+	if (!device_may_wakeup(dev))
+		pm_runtime_force_suspend(dev);
 
 	return 0;
 }
@@ -4579,7 +4580,8 @@ static int __maybe_unused macb_resume(struct device *dev)
 	if (!netif_running(netdev))
 		return 0;
 
-	pm_runtime_force_resume(dev);
+	if (!device_may_wakeup(dev))
+		pm_runtime_force_resume(dev);
 
 	if (bp->wol & MACB_WOL_ENABLED) {
 		macb_writel(bp, IDR, MACB_BIT(WOL));
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
