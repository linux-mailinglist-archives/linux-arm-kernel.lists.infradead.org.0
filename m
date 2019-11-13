Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25FFAC43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 09:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjTeCNAqP3p0PNjA6L6209leQrvMdOfiqmVQXFDOXO4=; b=mBvPlfdDxCvxL/
	7iCYFqAPG8dP9jGmQwao/+VdiQrpZ3VETKiHwRtpn2yU9t0ujpcyscz4Bf7kfhAN2tVUAfoj3yX14
	VQZJtruwBw9OpV8RV9PY7evO0jzFccvncFyVGGtAYCLGmhruZxnCvPF7N7KeoCkvANkla/Iv2fc1I
	r1oNbaCuP8qIyXD9+TzNOdj8PPMFxvUE/KmzeqK247upEUnV96v4PO1LmPPSgcrbleKDjSLet0wMO
	xY7DUMN10M9ydSXP2o5n8++k+1x4HDoX9Os4hA5G0ObWe57+47P6jRPn2ZCfl3HIjLdACaRLcAqKR
	1mOrmfdqsDqqP1IMlCVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoNA-000647-Ua; Wed, 13 Nov 2019 08:51:32 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoMw-00063D-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 08:51:20 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: loj92JB4T4b3cFB55iW8mXAVYHLK+Re1AHfvbOjHqg1Lqy/QRf0EkaAcO3/LA5rO9rziJlPXg7
 gWikkEGNaCkxHjPFgo5g9Vslo7opRpDFCr99NeTFlO63fv/jk6BSTX4FdSMpM8aPx/Chy64xZe
 7GPULWQj14+tyvNUhVPG2kDsirLPqIzR4yveXMckN4FzIOQpJyA8YyiCTaF5fc4z1SjkXJRoym
 3rfi6rykoVkzTR/2iiUTQxQi8lyrr0qPdJZ2pzF+IfqD4NOr0Y32YbOJ/pDr1gweculO7nF3Po
 XQM=
X-IronPort-AV: E=Sophos;i="5.68,299,1569308400"; d="scan'208";a="55255756"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 01:51:16 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 01:51:16 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 Nov 2019 01:51:14 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <linux@armlinux.org.uk>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH 01/13] ARM: at91: Kconfig: add sam9x60 pll config flag
Date: Wed, 13 Nov 2019 10:50:57 +0200
Message-ID: <1573635069-30883-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
References: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_005119_046365_08EF3C82 
X-CRM114-Status: UNSURE (   7.17  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SAM9X60's pll config flag.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index af41725fcc72..262b550d7329 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -154,6 +154,9 @@ config HAVE_AT91_AUDIO_PLL
 config HAVE_AT91_I2S_MUX_CLK
 	bool
 
+config HAVE_AT91_SAM9X60_PLL
+	bool
+
 config SOC_SAM_V4_V5
 	bool
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
