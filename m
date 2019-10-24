Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD9AE39D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwPMz1449zfjv77CZZQC6Uhf+9YrwlY4dgvnFXYbdE4=; b=fgaoLhZBv6W3fK
	UYLBdWLeKUtOkTFeMW4JIQ6ArjV2dE+Sedk6eTLmhD5Rp4v94xDPPL4w3qTTOjZVPBg5iHGNRpQYf
	yeHCT59RYprONhmp91DlIEhg5wL9TiqsiEPnskZH/5tE6PlqKn5QBwhg6SfipXfIhQ1BPtarm0cdq
	xN1T5dmXej7vKBRMmfOFlnaxbD6Reer5CnJUNfaeSbjyoWcLERi6WdUDWBRo6tmB7uNP1RHZipOrf
	u3CN8qrYi055r0RfkE6Mt9g9CzX8k+BmyZbh2cZ95b3Q0yeiMnLRQcf5QQ5kJGDkyyyMboQ6+GjE2
	+tidH+VjiPAG/aqLew0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgpd-00047f-7V; Thu, 24 Oct 2019 17:23:29 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgpT-00046y-KF
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:23:21 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Ou7W54TmqnFbEssWRvvbgNW8+4qLBBSu7XfMUuQXVxtxNVRg59cp6yDJJ9HPQyWqUAOyj11hGV
 3B9g0Ltci1F3/A1xdS2kcLIlfLWVCAUZafgtcaJvxWhRQl32Sp4lIim/vQn73AjezM689iU29S
 MJZWTR4mrH1VJVcbuNE0kpPC9XvaLnH2XC9D6bSexrft96uj5qj6GX3PCOjdBmgvObnUq3O02p
 88CADXvikp/+uYPbaF++VnoKHy9eiFnRhlJNjrWccV62z8sOjZoF9i0bDOp5pfcyI/laY9u3iQ
 dwk=
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="52860411"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Oct 2019 10:23:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 10:23:17 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 24 Oct 2019 10:23:15 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-gpio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH] pinctrl: at91: Enable slewrate by default on SAM9X60
Date: Thu, 24 Oct 2019 20:22:34 +0300
Message-ID: <20191024172234.5267-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_102319_758580_E4EABE43 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linus.walleij@linaro.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On SAM9X60, slewrate should be enabled on pins with a switching frequency
below 50Mhz. Since most of our pins do not exceed this value, we enable
slewrate by default. Pins with a switching value that exceeds 50Mhz will
have to explicitly disable slewrate.

Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/pinctrl/pinctrl-at91.c     | 4 ++--
 include/dt-bindings/pinctrl/at91.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 117075b5798f..c135149e84e9 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -85,8 +85,8 @@ enum drive_strength_bit {
 					 DRIVE_STRENGTH_SHIFT)
 
 enum slewrate_bit {
-	SLEWRATE_BIT_DIS,
 	SLEWRATE_BIT_ENA,
+	SLEWRATE_BIT_DIS,
 };
 
 #define SLEWRATE_BIT_MSK(name)		(SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
@@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
 {
 	unsigned int tmp;
 
-	if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
+	if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
 		return;
 
 	tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
index 3831f91fb3ba..e8e117306b1b 100644
--- a/include/dt-bindings/pinctrl/at91.h
+++ b/include/dt-bindings/pinctrl/at91.h
@@ -27,8 +27,8 @@
 #define AT91_PINCTRL_DRIVE_STRENGTH_MED			(0x2 << 5)
 #define AT91_PINCTRL_DRIVE_STRENGTH_HI			(0x3 << 5)
 
-#define AT91_PINCTRL_SLEWRATE_DIS	(0x0 << 9)
-#define AT91_PINCTRL_SLEWRATE_ENA	(0x1 << 9)
+#define AT91_PINCTRL_SLEWRATE_ENA	(0x0 << 9)
+#define AT91_PINCTRL_SLEWRATE_DIS	(0x1 << 9)
 
 #define AT91_PIOA	0
 #define AT91_PIOB	1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
