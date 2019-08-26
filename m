Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69C49CCAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVXDdnQc/YGtD9hLr0xQr7Vz2TKsPpH58BSxIuRYbwY=; b=siwzlufIqx64k6
	CgFhldzDJ9b9leqCnzXnfM+MHertK/0bnyp6mAw75c5Dstrbc3suF/hM/lUl9yM8/SZlX+d4lUIIa
	HEKn7hDVnq1np1TTat1/KdAVNJemQyZ8739+RB3Cv0xFAdKzk/IVpq0HJB6FF0livJ2r/RWon/qtq
	Yv12ert16DDwAezBa3nn6ISOlckGr7Wn4jYNlWqO6uHp0LZQ+vG+ds5MWEn693ZrrjX5jPJi3iW7/
	/6VWIIvEmqbEWhqS7RmP+I7ewp+cd8rqSm2nThYFbicO1ZnGfzUqElcKv7F5aX6a8FYVu6zeG9oGj
	xwy+2i418d53IoKPcaAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BW8-0003hg-Ec; Mon, 26 Aug 2019 09:42:28 +0000
Received: from mail-eopbgr60073.outbound.protection.outlook.com ([40.107.6.73]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BVz-0003gG-09
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:42:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HodChanQkoFD8BPABuFE8PRg0k/77d7WGWkn5nroQog91QhGkDquVTLXTj+DTGD5+14wcdyEIKxDItHS1wXLWWdVIlAyy3bXS9EDVIzEkP5uzUDFwn1jZCeQXsKeJV/gty32A1m1/1sofNnx3qMaUO1U85h4Z28SHY0dEJzMuTQIaYiv3iS9GmRedRzaJnKlZbHXqulwNNCh1NVE0hF9ldVGCnFxCZOX39u7liMXRVjkaS3rc4h+BfSKpJpwUnPjQDNHtDv/Ki4Z5C0HRncDRuKMc6f5gIdTwH9/Y6akQf2XnTsPBRvASaxF/QQ2NY563INcyTsu7xHyPKfdfLuSPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A11c6YqLZ+w8YbRtLdr11LAUgnZRPRhPzG6+nMim9Hw=;
 b=Epc2Su5qfI8EIzP/DP8/S7eVkXiJrtiKweG0+NA5vAdkSmMJU17HsCqI9DDXxkQmRGwj/Sub7z/c45oFoaRFzeZ2zSNdKM0hcrzB9wIarfcdyVEQHeB9hnBUHL4be4NekbnKtLUBiRmeCdQ3+fI6lSo0AQDCZvVIromGaYXgHgn1zrrSTEkQa5jaJT7nJ3+jCC4rHK87tTtsaM52qqsoEJXjfq7ESUn/JW2aVVs1PlgLQviaHNKkHz/jp4XsMTTE90YvwOAFmPig4CT4ZUpHtZzkoRW85gl8tFtr4zIvimXd1+OrG8wRRgpRUy+s4P8naQ53Pz5USu3QRnuG7lNa0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A11c6YqLZ+w8YbRtLdr11LAUgnZRPRhPzG6+nMim9Hw=;
 b=Ga8qEmMRz80oX6LM7dZzMtrisnaSe2r1BWDGTBxN491ufUT2OFVyZtQKrXOZSnnkI358N5d6nvebanRo/fCqP2h/KV47L4E7kyuFQpJnPOF48prZPwrLTbmduwX+ohRYQkt6p1kAbp9X3yM0ugXjeVtI/+uknLPeB3p2gdckbMw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4194.eurprd04.prod.outlook.com (52.134.126.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 09:42:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.022; Mon, 26 Aug 2019
 09:42:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Topic: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Index: AQHVW/KK74JBQxFn0kSNJpxYwL3XVQ==
Date: Mon, 26 Aug 2019 09:42:14 +0000
Message-ID: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0047.apcprd04.prod.outlook.com
 (2603:1096:202:14::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50cafe09-948c-4e55-0c99-08d72a09acf0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4194; 
x-ms-traffictypediagnostic: AM0PR04MB4194:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4194C75557579220DED810D088A10@AM0PR04MB4194.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(43544003)(189003)(199004)(478600001)(2501003)(25786009)(66066001)(81166006)(81156014)(66476007)(44832011)(7736002)(486006)(305945005)(2616005)(476003)(36756003)(8676002)(66946007)(66556008)(66446008)(64756008)(14454004)(316002)(110136005)(54906003)(6116002)(256004)(14444005)(8936002)(50226002)(2201001)(99286004)(4326008)(6512007)(2906002)(86362001)(53936002)(386003)(71200400001)(71190400001)(6506007)(102836004)(186003)(26005)(5660300002)(52116002)(3846002)(6436002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4194;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bAiVVXYMZcvfiSsmqHplSZmcwSALF01eVPT8IVFRFZ9r/UDIX0uHQrdHvNZ8+R6VxflTP08qGNACRbrrvHCnlRBrf4haL2sHKjyfwt6STGkn0MloFzRSN/QFrpwF+dPvMWxYwSAXjpvPDENkzbI8qR2uAMIam3dyFhYyrC+vJX35xwpNYIcQMTCV3MQz5f4eAsnaoDj5AFg+3XwMvQdCjfcUIM2nLcDcomUKxRNww31jzzOYspYZfMvOsQnndoKFTYaZvpEq/dwy4lAg9Ao3sgggWU6+cs9hPkvK6cidWRzsBCV/phOj2Ms1uMRB3TmIsMJioTHZRWACGZDRis4AmKF776a20/0v1Xppo2zGlErqQYKiWriBO9RRO0UWIZjHhBG+4W0M3cX3GiRRHXtyg57RYOrP5+9vT/8x5Orqbc0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50cafe09-948c-4e55-0c99-08d72a09acf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 09:42:14.2608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AbfXkPej4cyNWw2QpctKGhPTEaqWX6SIzEPZytrzML+Pj1UYgVxBJLSB8VF9RKbwn68mtHNVkQR3PGo39YEL5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_024219_124139_98CF66C4 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

According to PLL1443XA and PLL1416X spec,
"When BYPASS is 0 and RESETB is changed from 0 to 1, FOUT starts to
output unstable clock until lock time passes. PLL1416X/PLL1443XA may
generate a glitch at FOUT."

So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
In the end of set rate, BYPASS will be cleared.

When prepare clock, also need to take care to avoid glitch. So
we also follow Spec to set BYPASS before RESETB changed from 0 to 1.
And add a check if the RESETB is already 0, directly return 0;

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
  Avoid glitch when prepare
  update commit log

 drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index b7213023b238..656f48b002dd 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -191,6 +191,10 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
@@ -250,6 +254,10 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel_relaxed(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
@@ -283,16 +291,28 @@ static int clk_pll14xx_prepare(struct clk_hw *hw)
 {
 	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 val;
+	int ret;
 
 	/*
 	 * RESETB = 1 from 0, PLL starts its normal
 	 * operation after lock time
 	 */
 	val = readl_relaxed(pll->base + GNRL_CTL);
+	if (val & RST_MASK)
+		return 0;
+	val |= BYPASS_MASK;
+	writel_relaxed(val, pll->base + GNRL_CTL);
 	val |= RST_MASK;
 	writel_relaxed(val, pll->base + GNRL_CTL);
 
-	return clk_pll14xx_wait_lock(pll);
+	ret = clk_pll14xx_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	val &= ~BYPASS_MASK;
+	writel_relaxed(val, pll->base + GNRL_CTL);
+
+	return 0;
 }
 
 static int clk_pll14xx_is_prepared(struct clk_hw *hw)
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
