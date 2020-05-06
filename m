Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80331C6F88
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7IpT+u+dU8noYATUORI+SQCFYxy03FatMKCXBIWzTY=; b=nsa7sE4005dxHm
	ENylDN1TCC++HeZ6sQCM2wKNqWO+L6T1hGMyyVl/TF5jQ2vyc5r3qCDkWV7axR6WLOcbaN0IWbagY
	rAVFLDtw/QUae3dE8d7WSXAIDs4Z5blk5K6D4IBrcYKD0sNOlH32CIytTNISlvHqnBcypD4nkZPmS
	rszxOIZRyhEit8jSvBcb8twbtUDZC8ksTNgdmw6PWak78l20gA9t8xNE6oCn0OO0NLOTxoDiv4xvS
	Khtr7r9nIO9vFFvglJEFl6KmKFdrK0c5A2UOP8F59/WmLvwFsw8T59gShu+3Kd4SLwx4/84Fud+vX
	CPwWN4RU7TljzoPslB2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIS5-0005Oj-CO; Wed, 06 May 2020 11:43:01 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIR9-0004dL-TE
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588765323; x=1620301323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tv6yJ7LbbY1iSVkwSqx5jSF+okHW//DxXRB/JfgHvV0=;
 b=2TeY/wlMCHOlj/z5EvoYK8pLSrI4Cy+1dyRCooyIbcWJYirJJ06QdQ2/
 fL9W5/d+s1nzGctA0ejheQjKTGGhQGDHxbC9CLLzr8CLE/oXZLclRcbCe
 bnM30HWd37Q2yE6uzx8tiP/9UWf/cG4MA8X40atdpGFp2ezitXoXmUBtH
 HxbbKLGdd01WlgeV7WJJTIK0jliTzCBhDSZ7880zm5ktOaiK1rP8HyMOI
 tagjOI8L7/eOCQ75qP13KzEH++EAog6wgY2WpgrTHHW08q/w5e9bYoZjC
 DEuxlIemW7IIi4XoNIZrLVstsxjYX2SsLzUdIGczpNnVQEkF1uq27vQj1 w==;
IronPort-SDR: /qz0F12LrMVzDtxM0Yzbwgc1vdt5nba7jH4t4WMGJHJuxo/pGUMRASLobG/IZU3Ap6oh01JaqE
 n837HY/8jb2foWC78+Yg/oUs461tqzCfoJSuobWogRxvOX6VG9ZAdsuKdGwqNM7zqDNp+K5rZz
 5mLCqYeRgBahGpNWa7LyWQzvy0WJXLMT3w6ZwOIyKBDPQfaVvbWD3sP7n81KnLglrCFTYriJZE
 Uv3wu7Cn0Y1lqBGQoVaz/JNKMPG9ULYY5JLLnfwvBjdWFMvawPYOTANZfPReVrbrOPwKn0iNq6
 QZY=
X-IronPort-AV: E=Sophos;i="5.73,358,1583218800"; d="scan'208";a="11483896"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 May 2020 04:41:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 04:42:01 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 6 May 2020 04:41:55 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v4 2/5] net: macb: mark device wake capable when
 "magic-packet" property present
Date: Wed, 6 May 2020 13:37:38 +0200
Message-ID: <a9b3da7295473d77459242a9a672cc8913cdb80d.1588763703.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588763703.git.nicolas.ferre@microchip.com>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044204_078814_E9705110 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 Sergio Prado <sergio.prado@e-labworks.com>, antoine.tenart@bootlin.com,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
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
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Sergio Prado <sergio.prado@e-labworks.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index d11fae37d46b..53e81ab048ae 100644
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
