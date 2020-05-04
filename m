Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D878D1C3B9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5V77d7UX7CzA5UgoEUCtcZKJPu4LUwpHMplkQwjJyhM=; b=frQUNxtrKbCLEz
	FVOZcCkVj90uXodOGrzA8AXwtpvq+oo9huzFGfrVjQlodIe2N4pG2G+vAr/8mM+tqbe5UbOr0736l
	DC8rE90AXDWeOHRzdQw18eq0/p3S5DIdoiTWFdctedwRYYbw+WW+KMM5vQ0yqaOaExDUDSwH1PoLt
	Fo52M6+3fov5FtV3Uh+kNIBD4Y9iiC/PcYOt/+0E4o4R2c3WqMTypC8yY2Kr9ZsfA7l1IGz78fE2P
	fWIHv0pPAp57b0KqF+ISAupLD/PXBpGTyzWPZ/RPRfmPK+u5BgRTfXSYFpYAmWJX3WI15Yf/zCoMW
	8jjimrvXaaOOD8JW+/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbQq-0006vO-9Z; Mon, 04 May 2020 13:46:52 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbQe-0006tz-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600000; x=1620136000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e+zzAJaYzelyzPPipowOqC3N1EqhQqggcsRkXu8EpRs=;
 b=wnWJ1YxjNSx3wih87dIF6LQ/DI6UAn06Ol/95GCZZUkPVM0JDRXD3FPp
 Jxc7HjZ+lW3/a5FBRJqDZpMjrw7/khbquMnu2weQ+zT58mcyBpkhllqO+
 tM6wxWROapuKsJ4DSFzhQSUcJJeJjMmShMMWNSbJTodsUtGQEskORfI1x
 Dr/KaUf/ZHzffeD9wXTksX6YgLVWaJ1OuCqRwjqHmpZ4zunVIfQS35Ps/
 kY06cxeDFVD5AwWL003mHLeicKdwcy6ik9wXoPN/0ffXqYxq6Oohd3C4z
 zOUtVT4A2Orb3n/qg83JVOCi+aAEjzxo8tmNha87k9orFxYn9jTS0Xm9C w==;
IronPort-SDR: U6f2ndBh/Q51eX2UgthWQWst6qY/Mk/cR/vjfXibcc/+4vMKA3Lj3eHJeqfE51iHIYkBuvboB1
 i/nTOLBXyfNcMEnsJqpU8fWlqigFxqlffWA5eNErVFkh76NqI/uzFLMxpyh0dBQEgrtx120ul2
 w3mfduBGe2Rkb8M4DliDpQsPwuuBK7q44RjfllkpfQ+rP1wkLuPkYFGhMHxyKKmJvrzN0MNV0K
 wZ55eXoIL+TTB+GO8HeNmGCYc1TBhjpZ5EM4bUvBYFfa2etvDAF6KWX7rx2Uk3YYcxY5Pyi9Ge
 Sj0=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="75424641"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:40 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:33 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 2/7] net: macb: mark device wake capable when
 "magic-packet" property present
Date: Mon, 4 May 2020 15:44:17 +0200
Message-ID: <b01c5d9e5e112c8620e28e538109efa70d566509.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064641_003331_0066E443 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Sergio Prado <sergio.prado@e-labworks.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
