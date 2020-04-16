Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B7D1ACEE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4gi6FHmYd2ntLIiQYnU4jhegPcqq6zYPvVbrq3haCk=; b=Repgqm69u1kMk6
	H5tvjWTFzZJwUDw0NiRwP/wi6UvPYB1ZUBOVp+TBQF/5c1wT0swB5fhHK2VQSpkxgGBfeHi+bzWZF
	MXbBPriDfHncWOrX9QT2MwPvim/0vW8YkEjrIjT2GzJBS1XzH9qyLPpqKoRmhX+S8BSaazLJhXdqz
	b/lw59UZeWECQSK59Hq3gIkQAe1F+U3W2L4xkK12I7qnSmPlixT4Z4w1OdeeT/+43IyYleRPn8gLI
	rHuKybtxGAg8A33jFxqsPuVY+24L2JW993n9DmUWSVF+RCqV5qqAvdFdZU+rCUNk+BXUt5tN72WcO
	tvtbra4k8wNog/+dtC9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8ac-0007wR-HL; Thu, 16 Apr 2020 17:46:14 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Zj-0007Dc-8v
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587059119; x=1618595119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N1kWnTqh2tZak5rgwO3+hEG9eUcZkBQwSStH3ZrWv5g=;
 b=pVjm/nMrDOTo5hcB1BUOB4mQHtthUV7BchGcMwWqI4YN5FCxaGmMeg7q
 SwxM1+BNmN204PHgSzMm+vDxLReL3dzpCRP5kaFWZ7oYbyly1nHdT6lUz
 5jBct3yiGFl00yYVyXZNOuHIIISuVit8zoIcihjUH/WCDv82jECYPG6mY
 vvAU1KwVhGzaH3wn4J8Q61QBSA7ERG6G4wkeKEkLEPHkctS6l3TPk2R7e
 NcwG+99y0OJ+5kKj9KToyC2OyVK3vZxAuNZYMvNGmRSCly1tL+YAakEer
 hWfLRzUmiPP1wVEjrUdKWqrcM6Eu0tDJ6t64jWrxrU07usoAGyXIJLBvU A==;
IronPort-SDR: MZH7D49x+kXnbSgRYDTuOdxdyBKj8zPh/CEpUoxnChBPBfN5xaoQmy4rr+cvAt3jy1Bn6A5Jpm
 uVjCmvd558OymHipaPSCa6f+3HR/Vat2pBUPkwwbZjfd8oCjdv7DrL1wPAs2BDmpuaw1SYqbuh
 NE7L+vqOsll1ngujtEtSTruEhvl7jr19h5r0U5DK5z+/k4E07zY+qLENpO6V+aaRRgE0H8gYKq
 KCE5gjEWLtm5Nhg2IvUjssA6aUEEhWhSGn4B4slul+E0ZeXUOwJlnxzMeXbn6+B3+/xGZZ3JXl
 GLI=
X-IronPort-AV: E=Sophos;i="5.72,391,1580799600"; d="scan'208";a="72439768"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Apr 2020 10:45:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Apr 2020 10:45:14 -0700
Received: from ness.corp.atmel.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 16 Apr 2020 10:45:07 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH 2/5] net: macb: mark device wake capable when "magic-packet"
 property present
Date: Thu, 16 Apr 2020 19:44:29 +0200
Message-ID: <3d41fc5ef84dfb2b1fa4bb41c0212417023d4d97.1587058078.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587058078.git.nicolas.ferre@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104519_475619_0AA279B0 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
