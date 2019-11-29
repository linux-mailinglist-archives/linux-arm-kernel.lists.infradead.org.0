Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E73E10D66C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 14:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgKbEavndARw50B3zrFFZIBDCUJ6PUcJK6q7J9CNIpQ=; b=fGrpriYD4mX/vk
	B6BLS7+S2bszJVto0OI/5Ah+7auwxW3SZx8VQn4/feruDp5YDFdmcyb8Ms7Y+ztFruLO39HWb44Xp
	DUXtSdh8d23rLqpZ3OmkLdaMppR8FgIEomxcb8wbnyphpoGU3NyZAU1Ygkh5huyhWKwZNZlNi659j
	xycSTh2Ri2DzVWuQjHRjaM8D07GXUBC0AVIlYwY7ogtVWzmNsdOLnkgQEg5m5IBpAet/1anhHJa0z
	jKKJgEPnT1gC5bdR+IZuHwDS3mh99ZXrChlpz9402UbszA7FU2q9xk6zL5DDCcyVJYVdnAPwHItT9
	nqfQUyvfM3XjyZFZlBzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagiB-0006Yr-23; Fri, 29 Nov 2019 13:53:31 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaggz-0005iM-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 13:52:18 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xvlMphDs0TlfNu/RfTZx44E1DcmsQqjkS73YDt210XqSOpykm7FLW1dvxtqR9+UmNqghUvZuu7
 CAz5U5VqJgbku/HFjaewXQWAdGZnrrnmS54i0JZRlMggMrdBq6yWVPn16OyOOalYknyprHQdX6
 FqwE30ZDzms8tc+oVfJK31tWaKHu2MJBMHpkCUgxpln6exaaULNKMNlXMhLh7tWgrLdshc6Xux
 WWA5hc03Ui2xq4sI8LW2sqHNCW8R3Du073zpSRARbWj1wUxUiGJiHW8LVn7n6MC9iBTq4EZrv2
 uIw=
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="58778682"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Nov 2019 06:52:12 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 06:52:12 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 29 Nov 2019 06:52:10 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>,
 <sre@kernel.org>
Subject: [PATCH v3 7/9] ARM: debug-ll: select DEBUG_AT91_RM9200_DBGU for
 sam9x60
Date: Fri, 29 Nov 2019 15:51:43 +0200
Message-ID: <1575035505-6310-8-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_055217_498366_7242D835 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Select DEBUG_AT91_RM9200_DBGU for SAM9X60 SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/Kconfig.debug | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 8bcbd0cd739b..b70d7debf5ca 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -147,14 +147,14 @@ choice
 		    0x80024000      | 0xf0024000     | UART9
 
 	config DEBUG_AT91_RM9200_DBGU
-		bool "Kernel low-level debugging on AT91RM9200, AT91SAM9 DBGU"
+		bool "Kernel low-level debugging on AT91RM9200, AT91SAM9, SAM9X60 DBGU"
 		select DEBUG_AT91_UART
-		depends on SOC_AT91RM9200 || SOC_AT91SAM9
+		depends on SOC_AT91RM9200 || SOC_AT91SAM9 || SOC_SAM9X60
 		help
 		  Say Y here if you want kernel low-level debugging support
 		  on the DBGU port of:
 		    at91rm9200, at91sam9260, at91sam9g20, at91sam9261,
-		    at91sam9g10, at91sam9n12, at91sam9rl64, at91sam9x5
+		    at91sam9g10, at91sam9n12, at91sam9rl64, at91sam9x5, sam9x60
 
 	config DEBUG_AT91_SAM9263_DBGU
 		bool "Kernel low-level debugging on AT91SAM{9263,9G45,A5D3} DBGU"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
