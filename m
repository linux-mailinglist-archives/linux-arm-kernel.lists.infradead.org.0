Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D405D19D766
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 15:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4gi6FHmYd2ntLIiQYnU4jhegPcqq6zYPvVbrq3haCk=; b=Dyvw1RXoX6kxOC
	DLm66wO4cN4Y1+BQyFK9Gtl67KNSfd1qxE012VUnaGYzAOC4iJpvdXSxqfl1Lopyq0iYMT81p465l
	IhDIqSltl3f9AX3xygkk4BF22WoDyWO9K5+MQ5G8rz0kLx78E6s6Uo4G+BAuAAhrZGuLIQ2X0OcBU
	X36IWiIvAkLOCvCPymtjoEoFypRSoilJWq30yDEj+hA6RYxCP2Ooa3yCuO4GAou4Qd2OzxqcqfkRe
	mXIIUmd2pV5DMp0np0WjyIgvQBw+Y90/F8XmAz9jWUk31MLzOdTx4aFXiHb/8VUeqFcRdZULsVkSW
	AHxqnGVfkqxlc7t3MGYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKMAn-0008NH-Cn; Fri, 03 Apr 2020 13:15:49 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMAI-0007T3-SK
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 13:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585919718; x=1617455718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N1kWnTqh2tZak5rgwO3+hEG9eUcZkBQwSStH3ZrWv5g=;
 b=UOtPKyh+kTgQtD/0g4GXyXpxykMuXegisEd9pKPfThL/IFjMsIyaPTCb
 2t+ELSFv6lKetIyBuKyh9FLrrCdhroLRJJIVKzzXBo5iclpNgdghZGMmK
 lW5JlBZKL4XuYjH8HENb73TMRRfZfA0EvZBYUAJTCezYUPlLBreJ4I4WA
 si137N80eN/Z2rm7uBCKNHaMzi6l9nOMipYRItMISWolEg0Xy+x2l9O+a
 D2tzuyMyi8CvHsEg84AIl8NQCMAjJynBxuktjgnljxOWmIWK0LKfzk4Z+
 UlssB0W2A09BpVXktcau05e3UsiKTNI2aEb/u0gk4PErAgkt1h6s5AxPD A==;
IronPort-SDR: FW0u3tt77BdKo48afen52QKZLaE+WNNEIHUsxhg2O3wwQ4zazc0OuIAgRrKa9jYXG2e7lak0uW
 fMvGkJ2fgBLx1SW8Z3cZe9dtOico9p7GD/PdLc20IKZTKt1S3BSskb9yqEnOw8I9gMKC1fXSbD
 uAtCqpFJJ5egtUkYsOQPrnm93HYGKSzo08gcK0PmhQlwsX6WzZSQMG/Zl1xIEsxqQonQAcubzK
 WEB0HWxZFRGGhga7YscCbAgLScUe+623O9ZXexAp1DxHnugYDZcPBU7CHcM7bdElCOFtAzA7TV
 Fl0=
X-IronPort-AV: E=Sophos;i="5.72,339,1580799600"; d="scan'208";a="69328150"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Apr 2020 06:15:13 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Apr 2020 06:15:11 -0700
Received: from mchp-main.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Apr 2020 06:15:08 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [RFC PATCH 2/3] net: macb: mark device wake capable when
 "magic-packet" property present
Date: Fri, 3 Apr 2020 15:14:43 +0200
Message-ID: <21cbef3db93cb61c6b8f7093164005d0f452db02.1585917191.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585917191.git.nicolas.ferre@microchip.com>
References: <cover.1585917191.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_061519_004065_2D961BC1 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Change the way the "magic-packet" DT property is handled in the
macb_probe() function, matching DT binding documentation.
Now we mark the device as "wakeup capable" instead of calling the
device_init_wakeup() function that would enable the wakeup source.

For Ethernet WoL, enabling the wakeup_source is done by
using ethtool and associated macb_set_wol() function that
already calls device_set_wakeup_enable() for this purpose.

That would reduce power consumption by cutting more clocks if
"magic-packet" property is set but WoL is not configured by ethtool.

Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Rafal Ozieblo <rafalo@cadence.com>
Cc: Sergio Prado <sergio.prado@e-labworks.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index d1b4d6b6d7c8..629660d9f17e 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4384,7 +4384,7 @@ static int macb_probe(struct platform_device *pdev)
 	bp->wol = 0;
 	if (of_get_property(np, "magic-packet", NULL))
 		bp->wol |= MACB_WOL_HAS_MAGIC_PACKET;
-	device_init_wakeup(&pdev->dev, bp->wol & MACB_WOL_HAS_MAGIC_PACKET);
+	device_set_wakeup_capable(&pdev->dev, bp->wol & MACB_WOL_HAS_MAGIC_PACKET);
 
 	spin_lock_init(&bp->lock);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
