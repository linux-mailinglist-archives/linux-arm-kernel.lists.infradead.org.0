Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746EA1C6F89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NED3lsbXxi/XPM6sfdMILKYM+6GKa0C9Tu49naZ9UY=; b=TTJRY1XQIPElXc
	bAiqcZ/SoxSRt4ppqTA5fsXw7wPY7cuaR19ObTREmbCR1HZH7QEoCq+wax+uSEwsE/xNQOpDzp39J
	BAa5WASaKwY0kRrR+bMubu+3zvx73PSugHdEJddxo9WOL+Thx26mpfOdJBhIBSrWtICVhHfpGMgs1
	KlMV/MaMvHN4heYPlkjELFcqJZ+FFRd+Ib3nROUC6wX9ChkXacFxfiBxUTkt0vdkiQeSWQy3NS2K5
	ykKw2F+7hM60jT3VC6WL8aY/coLLP6fHrLkGGkGrT71ZmpYLPuC1EHk6PvNmr22dgOJlU8IvYEgFw
	WK1O42Nd/VODkGGO/XDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWISI-0005cA-Jh; Wed, 06 May 2020 11:43:14 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIRJ-0004mg-4P
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588765333; x=1620301333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LT3J9ik/ZJWvrD8XpOG7/NwP2Lq90M4T+y17p4Ln3ps=;
 b=SM/g4umm1+bgdDfyky7BFAbPKv/Ss1V8iSgNKHZltwSFvXjsguCsKZYd
 xcbn9Wc/xKwqIFqwPenEio3dfk5ZQt96p6Jh1Tl1hD/HNANIbVy5Rh/yK
 /lf0s4HtMyqREme9WeMUPlfBggShs+Eem+VrRAT1oHV0sO+AditdXb6Lx
 ZSlorVd4Xp5BvfvZB1Gz+1Gsp8WLX+JlLpiEw8q0RAEmZbxSKJxj2ibDK
 befg10lxtKKSn/J1SO2dHjJ5BmNK8rNu0CiZ3gUN/FBno3MpRLi059UL2
 8EGxyglGelyfTZibfshtw4+i8s8B5/zeh8C6YH9p4KhHCf/Ce0jOO1tdi w==;
IronPort-SDR: 8jR4LZbj5arbqc3uRsmUnFtBhO6LM2wTSSc5CvwjxaTWnCWZ7EsuskT0ES9jPfAKp5/xq9jPRc
 rYgsuPn3306qJ5wyirMwv9AWA8h04OOrzce0CJphmKvTAwWG2nt4sSJrhlbqE5EM+GG5M8Si/r
 N6km9gWoNpKSCShyPPSVm3G0aFaLZeNnni8cvBrhVyLx61tef7HcOx2JQrtbCw/q1xm8XoLVP0
 ObFKwbFPAMCWAef+0k9rjxJ/x7ze33uYDmIyBBS4kIjutTQ+k2e6d9ZwfZxKW5WKuxsEJWBXl6
 p+Q=
X-IronPort-AV: E=Sophos;i="5.73,358,1583218800"; d="scan'208";a="72599442"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 May 2020 04:42:09 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 04:42:08 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 6 May 2020 04:42:04 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v4 4/5] net: macb: fix macb_suspend() by removing call to
 netif_carrier_off()
Date: Wed, 6 May 2020 13:37:40 +0200
Message-ID: <cf81b45a07d1063f6632deebbb869c3974ded00c.1588763703.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588763703.git.nicolas.ferre@microchip.com>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044213_330725_46FF13C1 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
 antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

As we now use the phylink call to phylink_stop() in the non-WoL path,
there is no need for this call to netif_carrier_off() anymore. It can
disturb the underlying phylink FSM.

Fixes: 7897b071ac3b ("net: macb: convert to phylink")
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>
---
Changes in v2:
- new in v2 serries

 drivers/net/ethernet/cadence/macb_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 24c044dc7fa0..ebc57cd5d286 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4562,7 +4562,6 @@ static int __maybe_unused macb_suspend(struct device *dev)
 			bp->pm_data.scrt2 = gem_readl_n(bp, ETHT, SCRT2_ETHT);
 	}
 
-	netif_carrier_off(netdev);
 	if (bp->ptp_info)
 		bp->ptp_info->ptp_remove(netdev);
 	pm_runtime_force_suspend(dev);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
