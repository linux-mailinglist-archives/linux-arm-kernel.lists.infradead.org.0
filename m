Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000CB14EC24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 12:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5QmLtz9+y9Uobakjr9sgvMnxBI6C0X9HeKePQdnvHrY=; b=R/k9rITkwCVGzG
	M6tEWt3a4b9ehRDkOZOOzckODx2GzV8KjwDyolCn7++yxY//HcTDcPt71aFdjvKDjU//Qb52kthX+
	3KYYcz5EqBxInN7s0uVSqY2vCSGfviw2sF8UynNUeoTkkiwK2QsF+LkXcjPvEXFYWpkEJ2kuFkb3A
	jXBuFEokimyw/YNPsgDU+5kIgisLTCyQp1kq16sRRDxnfbNQU+iSUzSmg37lZbouw4oeg+Hw+Cve6
	LfTLsHin7aaKZPgYHD3+gPXbdfQkn2Lq3HepZjbk47pmFMpXsOxUp2x26AiIlsxkZ2omLGzBHWYCq
	s1lgVc4U7qfW588UR3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUwc-0005T8-RE; Fri, 31 Jan 2020 11:58:42 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUwU-0005Sq-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 11:58:35 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yZTKSBkc3InGyKlpPWjPwSlFiFEo6AQdsanKlgJmbso6ZrjrscNBb0JR9WKWW+WLFV3zlUSEOW
 Ud4tl/jculWR7MZZ14KRjPde56QkgRJpUBMyv/0w9K2ChZpUdZV6ib3/g1P7caz7fTkL3UI9OM
 vkYtHaqH03P02IAaSf9L3Z6z2dI/bflrr2FoZ2wxbkABPwByAcgVNqsArHj8grqDDumqxZKXiE
 zblfYB4DMVAhJeSSH8NE/7SLEAZjEsW9cYqSYxCZWB6BfAkBNP8wt7NZHzMsNDjKs/uxY5KUmC
 tDM=
X-IronPort-AV: E=Sophos;i="5.70,385,1574146800"; d="scan'208";a="65127845"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jan 2020 04:58:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jan 2020 04:58:27 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 31 Jan 2020 04:58:23 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] clk: at91: sam9x60: Don't use audio PLL
Date: Fri, 31 Jan 2020 13:58:16 +0200
Message-ID: <20200131115816.12483-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035834_257287_7D746054 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, sboyd@kernel.org,
 ludovic.desroches@microchip.com, eugen.hristev@microchip.com, Codrin
 Ciubotariu <codrin.ciubotariu@microchip.com>, Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On sam9x60, there is not audio PLL and so I2S and classD have to use one
of the best matching parents for their generated clock.

Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---

Changes in v2:
 - removed pll member entirely;

 drivers/clk/at91/sam9x60.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 77398aefeb6d..bacb32c15b26 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -124,7 +124,6 @@ static const struct {
 	char *n;
 	u8 id;
 	struct clk_range r;
-	bool pll;
 } sam9x60_gck[] = {
 	{ .n = "flex0_gclk",  .id = 5, },
 	{ .n = "flex1_gclk",  .id = 6, },
@@ -144,11 +143,9 @@ static const struct {
 	{ .n = "sdmmc1_gclk", .id = 26, .r = { .min = 0, .max = 105000000 }, },
 	{ .n = "flex11_gclk", .id = 32, },
 	{ .n = "flex12_gclk", .id = 33, },
-	{ .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 },
-		.pll = true, },
+	{ .n = "i2s_gclk",    .id = 34, .r = { .min = 0, .max = 105000000 }, },
 	{ .n = "pit64b_gclk", .id = 37, },
-	{ .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 },
-		.pll = true, },
+	{ .n = "classd_gclk", .id = 42, .r = { .min = 0, .max = 100000000 }, },
 	{ .n = "tcb1_gclk",   .id = 45, },
 	{ .n = "dbgu_gclk",   .id = 47, },
 };
@@ -290,7 +287,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
 						 sam9x60_gck[i].n,
 						 parent_names, 6,
 						 sam9x60_gck[i].id,
-						 sam9x60_gck[i].pll,
+						 false,
 						 &sam9x60_gck[i].r);
 		if (IS_ERR(hw))
 			goto err_free;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
