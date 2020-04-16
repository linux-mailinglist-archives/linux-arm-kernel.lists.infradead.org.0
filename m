Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114531ACEE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MMxwXj+dvum8fo6Gh3Y/KJc2gjOXJwQuTmaclsi+uhw=; b=I0QxKOhiW1jGM2
	Cc7pz5YlHkLYoVPWpLy6BAQRJOMZh8+sHqkvv9wjwCIcuxyBns2xRotTnsTod5XHy5sPDnfKd2HPo
	PVsFXbuxZkSDjTIbm0Jrepr79lsnTfeDkD5dkkDs1b+bN3qXbNHM+2didELRb/OKDFhWutAaxmhA7
	ERDfyUVD8uD10hkqs7IozRhcImsz6PlLbLLsdsRXyVjfqx+zTj8Stiy34saBbkU0Fx94IKmKX0rlS
	SjQxKCBNsj/4s9+DUd4h/j9tdelmUu0h6f3AqfcuUtdg6Aa1pMHw3mLzlAV0RKcT7UkYtYXkWzZWj
	BocH4FCvMsPyOa/t+TjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8Zq-0007AK-7E; Thu, 16 Apr 2020 17:45:26 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8ZZ-00054D-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587059109; x=1618595109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5ZWBmVoYMO/hCFi0Ml2DiGaGCI33pC6mAPMVtPWs/Mw=;
 b=PGx+WWovRBCXz0Y/N6+WmYc7gDBYSXfcvtae05qPuSyObHnLyVW32Nxo
 wzLFDzGa4FMwMnlTcpBBE5GbX9C5xTol2xzZ9CGUQOu5GJitrSDSLc9Bt
 Yee2jji3tHqLhqUY8zGuVCYT19Y+waw+hyItsB/wbmnFwdKNrF+ow1HiV
 UYoDl7KNi1NZ5llcKQ3G9L1AgzJs3eq7JjBjsA6+4HhCu3taH740TWwpq
 msUbdg+198TM3oGMTRMF53zqydrwdQdjZP0CMW3NORSKm5ApICVmd2Chc
 pc2/AlQVb80QLyRGlpgSR6M5B/hSyZRwMd6j0Fr7MBRqnVcwCBllb5Gu9 Q==;
IronPort-SDR: PtSZ4I31iksvGuzc9xhP9LVWGcyCXG8fRlBsa6MUe7f0kTawT44YjJW/Ol87YLQhSd/TWC06CN
 vY3kUgO7yvYkMZdIj+THMSmt5tNVA09qVx/ltYeBsCpReLtfGehSmxuqAEQCuXp+3ajKkuhYLg
 Aa6DHA/Ln42W8mtSjfNspxx1fMguUeZWpgI9znGdV4MVvQd3kWPobVaHh3rHewD3ersvdUVH8z
 /7ym+dIl2VSnL1J7zsSvMomtoTVyGUY0+R1f3eBBjww1K6IxRNwQ/tA0STASxoi4fWAK+GT6rC
 7gU=
X-IronPort-AV: E=Sophos;i="5.72,391,1580799600"; 
   d="scan'208";a="9428364"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Apr 2020 10:45:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Apr 2020 10:45:00 -0700
Received: from ness.corp.atmel.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 16 Apr 2020 10:44:55 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH 0/5] net: macb: Wake-on-Lan magic packet fixes and GEM handling
Date: Thu, 16 Apr 2020 19:44:27 +0200
Message-ID: <cover.1587058078.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104509_550821_94AA5883 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Hi,
Here are some of my patches in order to fix WoL magic-packet on the current
macb driver.
I also add, in the second part of this series the feature to GEM types of IPs.
Please tell me if they should be separated; but the two last patches cannot go
without the 3 fixes first ones.

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


Nicolas Ferre (5):
  net: macb: fix wakeup test in runtime suspend/resume routines
  net: macb: mark device wake capable when "magic-packet" property
    present
  net: macb: fix macb_get/set_wol() when moving to phylink
  net: macb: WoL support for GEM type of Ethernet controller
  net: macb: Add WoL interrupt support for MACB type of Ethernet
    controller

 drivers/net/ethernet/cadence/macb.h      |   3 +
 drivers/net/ethernet/cadence/macb_main.c | 181 +++++++++++++++++++----
 2 files changed, 158 insertions(+), 26 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
