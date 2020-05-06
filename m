Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4214B1C6F8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZY04sbbr5MhsSL/G+S5B3z8HsTv2yJhN17AyhwBOJ0=; b=GsjAQobz9rm0pR
	8KIIix7Rcok2fF/S0Utql1ikW0MTGGSCRqFxJzz1biRMkWV8PBP4UirZ70EXDnOPqy5Y2ep0UXiOV
	IMuKrfmBi7dq5XkfB1AR8gTqR9PvIM2v1/Gmk4VFD/T9a1NCvsE0hfHI0u37RaiJE7hny2+MC1h5r
	8WgzW9vX+NjMyDI5PX7lNHDo4Eyw0dCacbkAV4ZTyiq/SRuouFbgv9nw+Y+PChbbfJ8xK55jNTmk3
	QXn9oOfuMZfgbSy0BfIJ8iQ9N8afSevpuPBzjcUk6D/obfkZLMZzSbAvZiO4q7j+i2tYmfj/2Uw8d
	fkE7TClAkEUVVXFdhguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWISZ-0005pO-Mm; Wed, 06 May 2020 11:43:31 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIRL-0004mg-3F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588765335; x=1620301335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rNIeyGDtU/ObatCtRK8/2BrcAEK4nBJLJd7TnqPJUmc=;
 b=qfr429YkEiv0TNHeWlt6l3wCC8YSTzrVqWSj3XJeU3PG1BzHFtkpTa8P
 saSUJzU2Y0jNRPJdX0FUZU9+UNa9f/PcAKcGzT5E1VJ8OLOtU/WIgoNxQ
 VRHp6S+l3eHrBE1Gz5YhkC3U31WsAHAwcqLoydT16BYLZOf4ACNyMDOCo
 gEcJpdAzjKsnFTTYIZQ0stA74kbFG3H8CIdIT7LwnyzLp6b8hPob6JHRl
 a9/k4MEraDcOZ8YcggeHQIuqYwlYBmLZdbdAK+a+JOpcDBI2oujBdFupz
 DgK6Xtn4+BqsbetaFnR1agK5/8CeW/0405q3jue2WgbbNXwHeZ76A0X8T g==;
IronPort-SDR: Il0T3scwtTKFf3RazNpNV6QZOoRnf34El2f2q5I7L6wzLDqMeUHQE2D7gxrYQvMiChTk8QRa/U
 sIqWsbdvySFQaeRX77yPbI5rq91NNWjH0Jb6pMu095vjFrpWDIDh3XChqwT7QV3r49D4iFAwHM
 gozXyHi64oDnaioMCZnrwEO/uaZFnaqNDe7UWakhTJMAk2iHxRy4eTTyHd2YDm0GE3JRLmCPlq
 1TYUCiWOkmr9+FGtz5lV9TT6lkctr1xZ7uSZapQ7u3OdZTys8eR3cilC5ejvqCaX+9zPLZXv3a
 X4k=
X-IronPort-AV: E=Sophos;i="5.73,358,1583218800"; d="scan'208";a="72599461"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 May 2020 04:42:14 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 04:42:13 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 6 May 2020 04:42:09 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v4 5/5] net: macb: fix call to pm_runtime in the
 suspend/resume functions
Date: Wed, 6 May 2020 13:37:41 +0200
Message-ID: <c7c517840ce8c166c83f45e66169e40c1614323f.1588763703.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588763703.git.nicolas.ferre@microchip.com>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044215_242042_577474AE 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

The calls to pm_runtime_force_suspend/resume() functions are only
relevant if the device is not configured to act as a WoL wakeup source.
Add the device_may_wakeup() test before calling them.

Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Sergio Prado <sergio.prado@e-labworks.com>
---
Changes in v3:
 - remove the parenthesis around device_may_wakeup()
Changes in v2:
- new in v2 serries

 drivers/net/ethernet/cadence/macb_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index ebc57cd5d286..f01b9831b219 100644
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
