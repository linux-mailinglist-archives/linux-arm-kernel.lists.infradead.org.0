Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819F91B2419
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmcV3swt53YuyZapNwRyi5OKgY4vQoo2gdfEGxDjKL8=; b=Oex1/CGUo253fB
	r+/V8IdisskE6TWAUtMsu3/cSGey7dH5os/pN+06eK6+fN8KcUkIo5oJoyX0nm67vHgbar1eq1KAY
	+Zol86aULBv2SURFefYdBkmv5a2UP/G+0qv/5L8ybHr6wXIHsIMVKFdeOx28MDJYEg20EPd8yj+ax
	eMolX/OWXB/qtn+Kl5Ko8b1E+CAM+erDPb51j7+uOO3kZP/Fjtfupo3q66JJnB9uHracBTwo1IlDf
	X8D+UZIO9Dxfu/SgeblSRK3wIr3Hqtv6BMh4dBoWwoZD9xEUxTAVVEDlLa/p1pglgE/lMwgsOHr57
	YrWpqd7oJ7JraJolB0ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqMo-0001P1-S2; Tue, 21 Apr 2020 10:43:02 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqLh-0000cE-6l
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587465714; x=1619001714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TztiFxj6Z+X7Jvou8xEXYwVYRRAwnN1c+02Sl4F7ae8=;
 b=SnAJ7LCddHzNvCwj6pCWvfP+fm8NQQ1k5ePBCsMg+8WsQv4ZtHeA5YGp
 TmpE7UIFz02f7eXUZAs9tvShieiTf6myIhD5KupQ/llMdNYvm1o/eBNDM
 gy3Y3wHkMbXCLWIF88VVT9AZo1WGMwLyzviyu3kdhCwCNvmF4ZIdmFeC0
 NhRlttCE0cDnUYuO+duXtljHoYrHirAuoqt/MvObMEUpfzzcLR/kHbFwH
 oDftsGJpSNAZavt2W86K2tsJwy9SVI8t7GFqtL1rgSwMoLKqAK/Smym4u
 ie9cXg4Q3m6qW9XaSpMuh2E8PdsbgV3EC3/3b9mSwKuYL3IMmos2v8HDb g==;
IronPort-SDR: 8n0nT7x0fnPmC3HBXMsPZGR9y8V2byVNe++dtzsAvZovsV35htCiHqk/1VyUCChy136/NkiNyN
 RiqQBbUcGU3It9C2y/P3pGyUlkhhOC1Ew7p1hioUqsIzJgfu/XZ929qw8O1CsgStqrBhAZzPZ2
 R7gSavMtdKvuolQ9e6c6LdES7tA6A8/cvp0dw8h8hmOGRBde9iH2cs6P5h9q/DkaEKfN4m05VZ
 n16/kNMAIqIC0QwUXUcCBtZKNM8lV1rNsNNfQBUEBy+fgn2J2Sy7TQqWOL+8hwfB27N8fcqvED
 ipg=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="73257510"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 03:41:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 03:41:54 -0700
Received: from ness.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 03:41:49 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v2 5/7] net: macb: fix call to pm_runtime in the
 suspend/resume functions
Date: Tue, 21 Apr 2020 12:41:02 +0200
Message-ID: <1c537d1287aaf57b8b20a923686dbb551e1727f0.1587463802.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587463802.git.nicolas.ferre@microchip.com>
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_034153_259978_5210187E 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

The calls to pm_runtime_force_suspend/resume() functions are only
relevant if the device is not configured to act as a WoL wakeup source.
Add the device_may_wakeup() test before calling them.

Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Cc: Sergio Prado <sergio.prado@e-labworks.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
Changes in v2:
- new in v2 serries

 drivers/net/ethernet/cadence/macb_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 72b8983a763a..8cf8e21fbb07 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4564,7 +4564,8 @@ static int __maybe_unused macb_suspend(struct device *dev)
 
 	if (bp->ptp_info)
 		bp->ptp_info->ptp_remove(netdev);
-	pm_runtime_force_suspend(dev);
+	if (!(device_may_wakeup(dev)))
+		pm_runtime_force_suspend(dev);
 
 	return 0;
 }
@@ -4579,7 +4580,8 @@ static int __maybe_unused macb_resume(struct device *dev)
 	if (!netif_running(netdev))
 		return 0;
 
-	pm_runtime_force_resume(dev);
+	if (!(device_may_wakeup(dev)))
+		pm_runtime_force_resume(dev);
 
 	if (bp->wol & MACB_WOL_ENABLED) {
 		macb_writel(bp, IDR, MACB_BIT(WOL));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
