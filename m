Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98DCFF28
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gciJjmt1fnQdkIEK8MOXlxsvcakMSjlTyzhFHTSP370=; b=s0bjkZ8TAAw7AB
	cHaZR50AuUG58c5YQyOpokYEMBfKJoZ2iU05HPB9QURGa6PjYg9yqkQj7R4IsqpIhQXe8PUv+OjR+
	AURE2mLPhd/QD1uaVK0HOt1NtXXZTDQ2VXbBBDCerNpdGHxd7OR3ccCmOqM8l5hmdg/jePMPjy9Z2
	Fn0w2FtGvHF8g6Xw0sLTpI7F57UaEfOzqLCThc0dGAMyGlY4GYRPyJI4ChRrVj+7eKalgZhfh+mgK
	RXjLUqXRAYhMrDdgiqtNHQRGE3fGXt/P7cy8EmoIzG45sD12u+RAQxOqybbRy+OMg4hBRBCA8zRJ2
	Z0wfdHJQGRkCBMpoor5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsdM-0005cg-28; Tue, 08 Oct 2019 16:46:48 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsdE-0005bb-Mj
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:46:43 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: H6KlVa765s741gCHQkH5nrUQwU0gRzARZmFvBKiVRr9iErEDF6tXqekI06w/5/pujwWljhgBdQ
 pwWGWhAufg4Unc+2nOYndpBuvPpctRxDVyk0xd3Ptpp5PtDJceyqrl9o5jkt/0y/nGx7sfpzY2
 JWcIdEyiZwEIgn7vqlzZwawmgTciGGvOSp0dchFrMetUYCq0TLO3vMgivv8pkGy44+vwmgIqT0
 L2L2dSHcjiv8QzudN4JwfZ1qoR3k7t4pKAcXfQuky+WU+2H9bunkFwjulZUgdMaWLC+/YCbMQu
 vt4=
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="50663840"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Oct 2019 09:46:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Oct 2019 09:46:32 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 8 Oct 2019 09:46:31 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH] clk: at91: add compatible for sam9x60
Date: Tue, 8 Oct 2019 19:46:26 +0300
Message-ID: <1570553186-24691-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_094640_749539_2A458F62 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible for SAM9X60's PMC.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/pmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index db24539d5740..24975bca608e 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -271,6 +271,7 @@ static struct syscore_ops pmc_syscore_ops = {
 
 static const struct of_device_id sama5d2_pmc_dt_ids[] = {
 	{ .compatible = "atmel,sama5d2-pmc" },
+	{ .compatible = "microchip,sam9x60-pmc" },
 	{ /* sentinel */ }
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
