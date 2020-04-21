Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD5E1B240C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qbvvTEF4TrTUkfs4nS0dV9cDBQo2MxwCuItyIWHOw0U=; b=lKBMpLHWcq5jM5
	a2uGGmLZTx2PuhNjXYaCVZeQSTa4e1/JcVPWXoKBAdrjr5rxNdi51UTy1R7t1XN9nyMJDTM8nsKyu
	ycUWGr8KNLbBtlISYy30PCWsCY1umU8lW2I06vU1Z186gO8f3u/rdBEmqQGmtsLBKV8A1TJ9xWle8
	4tx7ktjv66Y30fmUvbSrC+iPabQqokQsNEOHLQqpa3JJa68EcHfuRybuzVHbhnzcsuuU0ce7byRC5
	SGtnZF0GmRnI3S+PjuLpSeVfa0jfqzxp1ATUTcGWzrrs2bWoF35Cqbbitp4wA4rO8sbVXYE/aQ6Tg
	S9QkjAlPepc1xrWZhyzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqLS-0000Gh-1A; Tue, 21 Apr 2020 10:41:38 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqLH-0000ET-HO
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587465687; x=1619001687;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lz3omuwZBzVsZksmCiDjrMvHtgtfWs9axYmIPw0sTvU=;
 b=EorLZwI1LFOC6BqnpDtd7t7CEOQzMKuMecubkhgSHqBvu8RwaDrNctPX
 Kr0mQeW6A75pDaVcEwLzw2HgfK59eXkjvDS+aoTlRM3l3aIpBKBXrYpar
 meyhVi6avqwPq5hDMY0lcTfSHgjRgFdksEj0JdT/t6pSpaP9pOHI7T8ti
 Ax//xk76oaBjA0FaHGUYorcT7N9TxWUFgdcKUKr6ILxBnOy8iXDqPaKU7
 0pGITwMkmAXY4xDtchFx6RDqUNi0FHRCpD342BVYjdaDjoQOAI0dQZnpt
 dXk3HxaNCiXtHb+L4PEjBk27Z1nfBI5lf9Yf/bQ6d0wDnjS/Llxc/pY4B g==;
IronPort-SDR: GZiOVziMewu9EEaeIzLMrl9xvhvUHoWUpkY6wOL8xhWqs+iLoPCfMn9875DjJ0rBxKo4o+3A2u
 +K9LGsydlVRkJXVa25ChDbQrGhJ3JqL4SZPRnA17g5omE6qsbT+WHUog8bA8dUHNAQeTvd0+/8
 VWy4CNH3ZDsDLGdwJsHvsqSQfOKROI2NhIE9Y1RpUTnHUf4IDQn/KoAfrmmgp9r0UcTHnFg9zN
 /J29ZhowCqH5/LzbQKwlHWmi7UeBZLknV57wpN8OVRaIba/wnefy472xnCrpCNslJjMOMO7M47
 2dA=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; 
   d="scan'208";a="9886768"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 03:41:24 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 03:40:55 -0700
Received: from ness.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 03:41:22 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v2 0/7] net: macb: Wake-on-Lan magic packet fixes and GEM
 handling
Date: Tue, 21 Apr 2020 12:40:57 +0200
Message-ID: <cover.1587463802.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_034127_724765_196EA60A 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Hi,
Here is the 2nd serries to fix WoL magic-packet on the current macb driver.
I also add, in the second part of this series the feature to GEM types of IPs.
Please tell me if they should be separated; but the two last patches cannot go
without the 5 fixes first ones.

MACB and GEM code must co-exist and as they don't share exactly the same
register layout, I had to specialize a bit the suspend/resume paths and plug a
specific IRQ handler in order to avoid overloading the "normal" IRQ hot path.

The use of dumb buffers for RX that Harini implemented in [1] might
need to be considered for a follow-up patch series in order to address
lower-power modes on some of the platforms.
For instance, I didn't have to implement dumb buffers for some of the simpler
ARM9 platforms using MACB+FIFO types of controllers.

Please give feedback. Best regards,
  Nicolas

[1]:
https://github.com/Xilinx/linux-xlnx/commit/e9648006e8d9132db2594e50e700af362b3c9226#diff-41909d180431659ccc1229aa30fd4e5a
https://github.com/Xilinx/linux-xlnx/commit/60a21c686f7e4e50489ae04b9bb1980b145e52ef


Changes in v2:
- Add patch 4/7 ("net: macb: fix macb_suspend() by removing call to netif_carrier_off()")
  needed for keeping phy state consistent
- Add patch 5/7 ("net: macb: fix call to pm_runtime in the suspend/resume functions") that prevent
  putting the macb in runtime pm suspend mode when WoL is used
- Collect review tags on 3 first patches from Florian: Thanks!
- Review of macb_resume() function
- Addition of pm_wakeup_event() in both MACB and GEM WoL IRQ handlers


Nicolas Ferre (7):
  net: macb: fix wakeup test in runtime suspend/resume routines
  net: macb: mark device wake capable when "magic-packet" property
    present
  net: macb: fix macb_get/set_wol() when moving to phylink
  net: macb: fix macb_suspend() by removing call to netif_carrier_off()
  net: macb: fix call to pm_runtime in the suspend/resume functions
  net: macb: WoL support for GEM type of Ethernet controller
  net: macb: Add WoL interrupt support for MACB type of Ethernet
    controller

 drivers/net/ethernet/cadence/macb.h      |   3 +
 drivers/net/ethernet/cadence/macb_main.c | 202 +++++++++++++++++++----
 2 files changed, 173 insertions(+), 32 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
