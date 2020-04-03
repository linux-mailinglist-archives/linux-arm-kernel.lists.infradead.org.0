Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E9C19D765
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hGDRl5DNgwXnVswQrxwM7T0Bk4OI/GzvssFuVqHCJY=; b=LQBHCXGfU1oyVR
	IUD6En4LvPwsNKBYY5ZP6J6L5H8vx7s+gCPgF0pVABFRsIwE6ZrJeOVr8gBE+H1i03DW7aqtUk/r9
	NR22ZJhwQKGyy1dLIlCsrczUoiWxO/q3bW7rWTPgfyPTHYD8sTFtQSHxtuVk8eTlZ585ptQDKYPYU
	4SmHPcPkq9vEF052PD7gk12fPF1hNy796inGbgjotGqoV2qGYXf6LZv6YduLyFOmveaFPkw3936Ra
	llHxltiWqZBQodeXbF3dbjXm0UMyfiQHjc17+OTfbqje7A4GJKVXelWYmoBTAAGYooeosW8y80eXY
	+8XutSdzPt2/gcp25tdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMAY-0007vc-1g; Fri, 03 Apr 2020 13:15:34 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMAC-0006Yr-Hh
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585919712; x=1617455712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8jWIah1+DuDz5Akq920QK23cXPGfG/D/AEkjbdjTfY=;
 b=XVD2q4XS7S8BCQtqrdGjQ9y7z45d4NGyrjir+1BfxPlQ57dHVn/o01Vo
 XpxzdaDNmmYIXRZIiOZXrgrNeG/3hbXyQ3w8/2lzxx9a5v2QQJx1lAtWo
 hIWcRtOiKTnwiet1lBKZoP+Q+DdyCjZkB3Ob8lzzQrPYwf9iGpM5z4DwR
 4PIt4K87sfT9UbfL1ZocB+7S0ALoriS8ZiXsGIkMaTXyl+xBT2ETHU4aX
 tDnkmVl76R4Hcj/FwPPkZ1f+cuDfhP2RMrfJFiRSd/AG0nPh85wiU00p7
 51HoH177kcoyQUvD8fgedzpkyMrs7LURwruD+1uelpPSGDBIoUCsBsSdT g==;
IronPort-SDR: Y8mHCdf1WejyJmCFJxCn38Ggz+QBexElCJdKulyjFOe7vNU5u6rf9+oKtA4b5NSdmvojH+nB0U
 WZlTC6S3Nqvcbdjq4U5pF6KW1lm/l662AJdbeUvThOBbJw3PFKvUn5F+aZvxms/pRY/BzZPu50
 zjdTfyuHPjFhYBQbwz8H9TLNhhLDufE0YM+MN7R93XbAD+uhVd96XimozlMjPEnGe0oU78CBFN
 jh3OYaxA9HdlDI5aFi2hmj+LlIabdxTjAbA2htH3c3enGh0yFck1pvejuHCDn+mZkJkuOad7HS
 OVU=
X-IronPort-AV: E=Sophos;i="5.72,339,1580799600"; d="scan'208";a="72230550"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Apr 2020 06:15:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Apr 2020 06:15:07 -0700
Received: from mchp-main.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Apr 2020 06:15:03 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [RFC PATCH 1/3] net: macb: fix wakeup test in runtime suspend/resume
 routines
Date: Fri, 3 Apr 2020 15:14:42 +0200
Message-ID: <04a0daab049737a929fd4a144f0c79008c543c7d.1585917191.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585917191.git.nicolas.ferre@microchip.com>
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_061512_932468_875A985D 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rafalo@cadence.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, andrew@lunn.ch,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Use the proper struct device pointer to check if the wakeup flag
and wakeup source are positioned.
Use the one passed by function call which is equivalent to
&bp->dev->dev.parent.

It's preventing the trigger of a spurious interrupt in case the
Wake-on-Lan feature is used.

Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Rafal Ozieblo <rafalo@cadence.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index a0e8c5bbabc0..d1b4d6b6d7c8 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4616,7 +4616,7 @@ static int __maybe_unused macb_runtime_suspend(struct device *dev)
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct macb *bp = netdev_priv(netdev);
 
-	if (!(device_may_wakeup(&bp->dev->dev))) {
+	if (!(device_may_wakeup(dev))) {
 		clk_disable_unprepare(bp->tx_clk);
 		clk_disable_unprepare(bp->hclk);
 		clk_disable_unprepare(bp->pclk);
@@ -4632,7 +4632,7 @@ static int __maybe_unused macb_runtime_resume(struct device *dev)
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct macb *bp = netdev_priv(netdev);
 
-	if (!(device_may_wakeup(&bp->dev->dev))) {
+	if (!(device_may_wakeup(dev))) {
 		clk_prepare_enable(bp->pclk);
 		clk_prepare_enable(bp->hclk);
 		clk_prepare_enable(bp->tx_clk);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
