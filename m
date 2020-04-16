Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3221ACEE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hGDRl5DNgwXnVswQrxwM7T0Bk4OI/GzvssFuVqHCJY=; b=o2ccXrxoTsoZ3A
	znxI34+gdXeuoCgr8gainA7eMlFvv8p9KMrysVpcY8j3HGJbWKYdVwydDDdnC7+grudMadXmwYD7q
	TkwUsFR7oD6CMQW7/Oqian+byYh9FPp6tu+1g+22mqsnf057rmtKakU3pmHdnNhbJD74hDrl3RtP9
	8dTmYX1M/f26AINuFBkfEoHxDeGcln1Pg9CrwUIO+8o0FLaL7aPVbDGdgXoWg/EqeCRXJUEFc4q9F
	8E+y/YEI7PNbtagpMSoKsCE2JBL1m/Myadrw/V9pRdYQgBZso3PIorkvLEExyQD15Mc/4o/Wl6Vih
	lk9OKl4DEZMs78Jwjpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8a7-0007Mf-PP; Thu, 16 Apr 2020 17:45:43 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Zd-0006S9-SW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587059113; x=1618595113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8jWIah1+DuDz5Akq920QK23cXPGfG/D/AEkjbdjTfY=;
 b=JI3jhErSr6EkxCSseHL1UD4HbIe0b/vAGdguj3hkCkSG9oJiWl5qBF6D
 x+1XGrqtQ33ermcc2QokBauGFypVMob8tJZoBh2CGxIzmbp3+KLA80uY3
 nQsW/COsfMdMiqwJr2316DKgOBFT51pS1DuGYMYluUmv/lfR2PKkeiB9T
 NxQPL+UnhXerdqHiBm0womr7NHAocufX/9kLeQ86HFJjjuYbBcuUnO30P
 R7hpeqNxVmyFNrQOFZ+bufVRDdGKVSUGpAdKIaWpvWjpf0CKNm16BZ4YX
 gWDAUGM3d7HwR7HAehwJToi5IszBGL4h0Hq8U89yRju/vdLkYT1fyrxyr w==;
IronPort-SDR: yqR50ruMSH58BCuI/9ZZgij5/Hga9PKpUiVSQvt/Zf1huNg6pXyNuHPpr9uFJWY8VClmkl98Kw
 DhmIl9gtgNqhMjj18LrN2bjnjFRHS5+Qi4Ek2fXkI3gnDvpWvvg0iOxA/nXh7V+wKhZe3WYxZC
 YVNfpxgYK/toGmiPcvEkxx9Eg9LHkFgAzugWStosqKp+pJSVD9I5dMei/X1m8o6iQoS2ggUsMl
 gig6cS7O/8Syvmzmawei8vj5NiuFgc3Px1pjjsPOUSTv+NcY9UQ+nT6J8HwOAo53HMaCbms4EN
 5u0=
X-IronPort-AV: E=Sophos;i="5.72,391,1580799600"; 
   d="scan'208";a="9428374"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Apr 2020 10:45:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Apr 2020 10:45:07 -0700
Received: from ness.corp.atmel.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 16 Apr 2020 10:45:00 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
 routines
Date: Thu, 16 Apr 2020 19:44:28 +0200
Message-ID: <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587058078.git.nicolas.ferre@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104514_120079_D1654036 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, pthombar@cadence.com,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Rafal Ozieblo <rafalo@cadence.com>, "David S. Miller" <davem@davemloft.net>
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
