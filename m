Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943341C3BA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0nX5XDToF4+y8AZyCuYkRTeCs5bJk2MHCisDNF+H7Y=; b=aiZ88P8I/hXA7N
	GTMQfz7c7c+bt6NXR7bCgDFa8dn1J6dp3wbN7+sGKLy9Z9FrOKIx6qCCFXL7SvAAEJ5Wk2JkfvgO8
	Z7XmPDcTOnYbfMDXqyfpHPyVJAn3uwxEYst+IMkFuNuBwm0gk7mSNU9KrhfXrWnY74VHQeMpaowll
	UWzlai/6hVNNvSYzkqcOsGqrWR1baHseJhBKVRYIDdqjzXwdD3eqQmLjj6+9UF4mrZY4mln11nuyk
	1oMO2HzWpwvIPCZR4o3n1DeMIpQC+vmb7zDBtPQtAWk2vSOSO9Q3qwwaRxHVUqWOkoj8NLH7di+Nf
	L6iohb09bYLL2lNMwqoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbRN-0007LM-71; Mon, 04 May 2020 13:47:25 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbQk-0006uu-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600006; x=1620136006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c3iuhkwHDW+6rW4ZzAEBKYMLJ0sc8jLJEmEwsrWvUFs=;
 b=WOD8ByVsR9J82bNWj8wVJAJ6Zcz7IQW62czkTKmzM/cAZwdgs4E3ExVh
 u5DwOhv6j6K50ZD72fpiwpFh6hwIHF0WfsUBfw1kz6Eq6p7mb1zM78jfu
 v6PoUw8YCbO+sPvTj/8jxHLGjbng3SuZapskwRD1dXjOwhHS7UojOlT40
 cZBA7h5FTl5yjoXrpCJC5Z60qpjTSMtXnJF7qSRoGy78Y3Ito3hKWOWXT
 StDVL2ypt7LpDywENbtPVVxr2yH2zyhT/Aa7SGVn+TxjoUKwhPeKyLxgR
 iAh0KTsLFTohoMY32RyQSW1h84qiT7Zaot0zw+DAofbyv6hENjGjbGwlB w==;
IronPort-SDR: qByEXUbz+XJu7zWYLrooIYhzLlJmc87a2ewZUokCHS5HEddGKdDpE2W7gODtBNCTltx0Q0yiVf
 ZScTbvdSukfaShDaFP+cBcost0Jduqg5aOxlJc18rGx1U0uwZBldTWg758tSp/b2Kta86DhQGG
 42GoMey4Fqqt4T1Jf+qwiOv3+JdO0HBngzngBQjVyvaZ+1VPthx8R3oMnSQT6v2af+vVGw+NZB
 F4anYAfmu+MIiX7FSByadjD4UOa/R3C01wCcHQ1OPIQX5pSUrTG/luCnfvAtF9GrTOh0ykXDLl
 03c=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="72332643"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:43 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:43 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:39 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 4/7] net: macb: fix macb_suspend() by removing call to
 netif_carrier_off()
Date: Mon, 4 May 2020 15:44:19 +0200
Message-ID: <2b377e5705ced4b0171e07642a891f2416b94945.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064646_938532_425632AB 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
