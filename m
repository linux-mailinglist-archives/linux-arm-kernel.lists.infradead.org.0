Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0D11B241D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/zLfmM1JpkY9tY4HpIRIfLsVwr02Ft4Do4ptAvswN8=; b=e5lIWs1sRBWo2c
	i9uzi7NS2FQpZwYHiI8cSkozrPaWY8J3612e5dsm4de2MAO+5Y8i3MCn4blwPtTIwgXszM/lep61w
	r4++rv/bEC2I2uSYQzidH7+oIcJiKVkV0ByfsHllirLOwmEvjtXXl/6ixE0yXLEGLyXlgCYPPZkby
	rOB0ZUUrHKBl2OGpzmeSEdWgCY1Cr6LpWZ3/AX6zadCqt0x4d1AqCXSslW0IOcfvOpsNVytuw69Ko
	Gvd11VNWJ4nlSlUGfLDAOz7SjUTiwSPIagIdpox9ROiJRD7ZGSRerXx9PTJIkYmNHv8HNZi3Wjhu5
	581Dxd/mNTk/H0TIhhCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqNP-00022s-AY; Tue, 21 Apr 2020 10:43:39 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqLq-0000kT-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587465722; x=1619001722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vzlw1G5Ee347qgrm5+cdRwJvE93MjjUjImWalReU+Fg=;
 b=dsHFSnOAcFEVBoT5dU9N428WeFaCWTecbblzAcM2vvUH6K1IAJj1s8bz
 hJSTZUBjWIL6UJEhMWdAEECFL37fHC1c1TnMyR7MQpZQ6yGpUut7xafsV
 UesD2VP+Zh5Y/MQhHnQPjJzbk720b0S2kIrgwaN6a2wnWNnpiras7MJE9
 ytewZKXzGBysmUTQQsp7ZqMBLQZTOxXVXtxDJkGP5ncBmd/nMJjUKx4ts
 Xb622WUfrD0ZFrcKOaYvxdJrTWw7eh+vNDlbScLks3Q3MXeGVIfv4k1bx
 jZ/Iv8YQuF65CxfeU8QLeCIcocMGz/rZmEYA+mOG2ss4A2KiT18GedLOC A==;
IronPort-SDR: o8KUXHko2mnUGDDidQNOKWvT8xtAPU/I8R5ninw7kikWHgaFuZ6gaQSEIV0ez/dFXbn17RHSb3
 ZzUr2tYi5FLJxBMOofT4xyIsEFlrYXaPEDfXCBemMVn8rkE4ItQLXx8RB40jj2KbOfzrRc8D72
 7mThJWBjEd4Fxq2FG+nkGYXHSL29AFWm4a/KVRkMFYIx3gft3KsZmhK41d8lv3uhY8B/xQ/i4w
 likLRSHXsLrZ1r2sxPul9JXmVGdK+NRxoHdS9yc/EJkpPjjVOHX3I+uwVJxc6LZjy2Fx8bLo06
 9M8=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="71017521"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 03:41:46 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 03:41:45 -0700
Received: from ness.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 03:41:44 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v2 4/7] net: macb: fix macb_suspend() by removing call to
 netif_carrier_off()
Date: Tue, 21 Apr 2020 12:41:01 +0200
Message-ID: <da134cb7ffbdfcad1f8e7f2348b66c31f3a35680.1587463802.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587463802.git.nicolas.ferre@microchip.com>
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_034202_406059_2864F0A5 
X-CRM114-Status: UNSURE (   9.75  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Antoine Tenart <antoine.tenart@bootlin.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
Changes in v2:
- new in v2 serries

 drivers/net/ethernet/cadence/macb_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index b17a33c60cd4..72b8983a763a 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
