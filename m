Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853EB127F5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIXYuxzO0Ab9A0yIH18ww2TE6mF+RO1sfd8YHOzpC+0=; b=hJf7TlwjpVrUE3
	Xu3NSSrF5esGhPOWbvq22xZSMwqfCuwqYOatfuy+yiI/qQ3dmhbXHB6S/yBpXc2R24sNzwFFgK5N6
	zfQd4AGfdpyj5K8yjZ8LUolin8WhF9r/+p/WHeJ/oEMqd+xgOqlSa3pdX2U/HSBSJDmU7fTDzqXA/
	Nk0P4AhRJRJ4DmKKPZd0HWdpm/KVKjHN/ZngQLVBkLltKmALLNQJp9K01S1y982lggtb1+rzHGTpJ
	sbZPwqutzwLg4gYx69qEJ3bIzl4b0SLakVbM0rFKiEvTsLYPjKi0K3brBvTBg6ye2UPT7oojBAsJL
	yptGJ2m2759A1mEJ3lzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKGI-0006Fw-3Z; Fri, 20 Dec 2019 15:32:18 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKFj-0005uM-9R
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:31:44 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: FMqnboapz717VG/leNhoE9yn4xZSFAiHG/eNhNSSb9k35zssPXeFlF/xbXYOo4G80TnxyTDhuc
 ROuEzEEuGHSk+pIO7KeTFRnLOZGtZ3X1KSgnJKGyt+Lddfi1LDwMNvgn2nIGhcyxRO+ZaRFlxq
 wnNOlWgAXvN8mNjIaXLgUjYm01GrUa6/MrAccsdqhtf/uCUrFarSqh+HR0aaFfVJEHoMKD/Kjp
 +54/ju4KmERvbWKu9PGYiopK0yrnGYEEcxb1chydpYEQyE6390k7Jxwk9CJf1M2YUn4e03F/y0
 4do=
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="59174669"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Dec 2019 08:31:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Dec 2019 08:31:28 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 20 Dec 2019 08:31:26 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v2 2/2] power: reset: at91-poweroff: use proper master clock
 register offset
Date: Fri, 20 Dec 2019 17:31:18 +0200
Message-ID: <1576855878-13213-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_073143_399074_8650568C 
X-CRM114-Status: UNSURE (   9.41  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SAM9X60's PMC uses different offset for master clock register.
Add a member of type struct pmc_reg_config in struct reg_config,
fill it correspondingly for SAMA5D2 and SAM9X60 and use it in
poweroff() function.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-sama5d2_shdwc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/power/reset/at91-sama5d2_shdwc.c b/drivers/power/reset/at91-sama5d2_shdwc.c
index 84806d20846b..2fe3a627cb53 100644
--- a/drivers/power/reset/at91-sama5d2_shdwc.c
+++ b/drivers/power/reset/at91-sama5d2_shdwc.c
@@ -74,8 +74,13 @@ struct shdwc_reg_config {
 	u8 sr_rttwk_shift;
 };
 
+struct pmc_reg_config {
+	u8 mckr;
+};
+
 struct reg_config {
 	struct shdwc_reg_config shdwc;
+	struct pmc_reg_config pmc;
 };
 
 struct shdwc {
@@ -136,9 +141,9 @@ static void at91_poweroff(void)
 		"	str	%1, [%0, #" __stringify(AT91_DDRSDRC_LPR) "]\n\t"
 
 		/* Switch the master clock source to slow clock. */
-		"1:	ldr	r6, [%4, #" __stringify(AT91_PMC_MCKR) "]\n\t"
+		"1:	ldr	r6, [%4, %5]\n\t"
 		"	bic	r6, r6,  #" __stringify(AT91_PMC_CSS) "\n\t"
-		"	str	r6, [%4, #" __stringify(AT91_PMC_MCKR) "]\n\t"
+		"	str	r6, [%4, %5]\n\t"
 		/* Wait for clock switch. */
 		"2:	ldr	r6, [%4, #" __stringify(AT91_PMC_SR) "]\n\t"
 		"	tst	r6, #"	    __stringify(AT91_PMC_MCKRDY) "\n\t"
@@ -153,7 +158,8 @@ static void at91_poweroff(void)
 		  "r" cpu_to_le32(AT91_DDRSDRC_LPDDR2_PWOFF),
 		  "r" (at91_shdwc->shdwc_base),
 		  "r" cpu_to_le32(AT91_SHDW_KEY | AT91_SHDW_SHDW),
-		  "r" (at91_shdwc->pmc_base)
+		  "r" (at91_shdwc->pmc_base),
+		  "r" (at91_shdwc->rcfg->pmc.mckr)
 		: "r6");
 }
 
@@ -253,6 +259,9 @@ static const struct reg_config sama5d2_reg_config = {
 		.sr_rtcwk_shift = 5,
 		.sr_rttwk_shift = SHDW_CFG_NOT_USED,
 	},
+	.pmc = {
+		.mckr		= 0x30,
+	},
 };
 
 static const struct reg_config sam9x60_reg_config = {
@@ -263,6 +272,9 @@ static const struct reg_config sam9x60_reg_config = {
 		.sr_rtcwk_shift = 5,
 		.sr_rttwk_shift = 4,
 	},
+	.pmc = {
+		.mckr		= 0x28,
+	},
 };
 
 static const struct of_device_id at91_shdwc_of_match[] = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
