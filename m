Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D85FBE65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4epmQzv+uMdgJmP5gH4DYywtae1N6oKxoSm67hXjPcE=; b=dQBrwkWG4kCB3z
	hKIHHqgoUI40tS0tRhuah7i2p3D6Cbodh1P+PRu0JfDFndsIlHMKBmfcdgtqzhw7Y9ixwGg+J5sqC
	/J4fP1ta+u76geAQOhCOjlavfEBm8g+jAT2L5RyRuEoF/oasZ1j6U7JC2MZsmUgnZjVvvV2LyJ3o5
	pIyEzolBm3eU54EkNcorbHAIaIAIY8HUL3Ijv4mLMiewwN+KJ2QLUCsCCI6OJiQQsZ0u42KIdWK2X
	jBqSW4Nni2XIMW+AMHarnWfOhnQljlqXXLBaj7i4u0TfYVhCrMGVVulumCltuSIkaAvIran7XmjoK
	Y3afAmG06FGNUJ5QD3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5ym-0008MW-Q7; Thu, 14 Nov 2019 03:39:32 +0000
Received: from mail-eopbgr20085.outbound.protection.outlook.com ([40.107.2.85]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5xn-0007f5-9j
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 03:38:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzyV/bBUlt3nHHqFJH2evpQZpTBORRLvSf275keXtMvEP8uA0MGG5dXXJ2SyI/lt27PGhaGwFd7XcxC4AouGl8Sfblpqah2eNi+oPfHKz/WicU2FZ7miSECszqihqF5DcEmB1h1JYpGJ2qfTCVSUx1+Rs2nmKnN33OLxBGXWlNunygTDMdJ7aZbU7C2lXoCO+NSbKBBV9C1cmGBiNCd2+skr2xRQIWW70AMCrQxWG/4MmmVF42366BGhjA9x/DRchJONfCJtez6LFJ/z+XAHt0Pzlacy7aTSJr4sNotvgWqFMEXoOWL2/aPpeV3zVQJ1v6Dl14mPsA5vFRQ5h6Vn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=byRtdbqMPgct8GxQZExa0Mdbbx5IfxCCr8i2HW0+U0Q=;
 b=n4Wor90lciGUKogp4zkxwA7UUpQ0psHNjxmMVKaD2mWaHsjwSL+XSi54UGWXX/5/yKKaH9fanNTXL1irIpVEi2Xd7k8jJyyyEsINeOcrz7NqoUAZY4BGJS1aplobZPb2VRA9q065bMV7NE4NLzzWjd7bURKKnjN4NLNgCAKX08RXbOJb8qgegxQjc+fCZ3yoqCIjrD2k9DlKCCpc9tfToBXOEegyXyo6lPeJZgbI/S4M6ewZN9TdiNdM5vYqj4M3R6D3mzaDFdv6812pfozesiwAXFeOmt+nSTSl20hABF9Zwo1jnHvOBumbf6h9sFekO61JxVE15N6HCRD3y2VErA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=byRtdbqMPgct8GxQZExa0Mdbbx5IfxCCr8i2HW0+U0Q=;
 b=cfPILI8w7MC8qM1vX0b3fbDG7kXiW/+urQI1TdIetx5IbAHt2l48aYFn7wnbvnUYbAd3Wfy3KHVgZEiv9AHnGdiQs5ZIgzTnrcWb1vlZgAtfQAYmkB/KrLtdDTEyrYcmol4IO8OkHjDU8pqMRpj3DqkAU7PBgFwUugaddaHCcvY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4994.eurprd04.prod.outlook.com (20.176.215.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Thu, 14 Nov 2019 03:38:28 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 03:38:28 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 4/4] clk: imx: composite-8m: use relaxed io api
Thread-Topic: [PATCH V2 4/4] clk: imx: composite-8m: use relaxed io api
Thread-Index: AQHVmpz6hEyooanfW0qGgPGksZc+HA==
Date: Thu, 14 Nov 2019 03:38:28 +0000
Message-ID: <1573702559-2744-5-git-send-email-peng.fan@nxp.com>
References: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0033.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: da549bda-804d-468b-620c-08d768b41cc1
x-ms-traffictypediagnostic: AM0PR04MB4994:|AM0PR04MB4994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4994577BA82E7FDAB36E523788710@AM0PR04MB4994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(66066001)(305945005)(14454004)(36756003)(71200400001)(71190400001)(7736002)(2501003)(99286004)(4326008)(486006)(81156014)(81166006)(25786009)(86362001)(44832011)(2616005)(476003)(50226002)(446003)(11346002)(8676002)(8936002)(52116002)(76176011)(186003)(478600001)(6506007)(386003)(6486002)(6512007)(6436002)(2201001)(102836004)(26005)(316002)(5660300002)(54906003)(110136005)(256004)(14444005)(3846002)(6116002)(66556008)(6636002)(66446008)(66946007)(64756008)(66476007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4994;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2lPMtvP9KTUnySnwLQ76TxhyIiYsrpxK4r//pmQB6Mx1G11Mx/QJQue9ZJIsS0UMCSzEvZZbsM2IwBWeAOsaFHcCjJMwWFOdeBbNy9HC3ifaYghiHlHK0DytnGft/X7fNjRFBUi+FeQ6d2xpfqd0tO24NnDDJGMRGT7hUpSYnyHKoxRQSQQih/FDTkgj3/urn2kvYRkg/Xl7nY15KwCYrYTii6R3WTx9JgiedqKhiYjznFZ163WwPVKSDfl5s12hOjWBwAumGYFMWrCRsyxpeepD7jfYr3YEg2pGBqUXJXYBLt2AqbKMakG76qCqC08R3acmKVSzEpQWj1L7Km8nk5o+KRMRErYC22dRUVdqT7Y82QeS+XBvfZOJLTBD9SBbFY1dpCYRe74lazAiH33iYi4XAkzpOCVzc1STqYGFfPzDucCwT5W9340PwMF1mx+x
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da549bda-804d-468b-620c-08d768b41cc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 03:38:28.3601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UmiA5ztVMKze12N/dUmnQA4a7HHfUsNqbDuYfrBqZPvuJUOPBBkfgsOvtzQVe6zb5WA7pkh3i3l/8+LhXSym9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_193831_353463_358D9F46 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

writel/readl has a barrier, however that barrier is not needed,
because device memory mapping is nGnRE mapping and access is
in order and clk driver has spin lock or other lock to make
sure write finished. It is ok to use relaxed api here, no need
to use stronger readl/writel

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 20f7c91c03d2..513dc57483d0 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -31,14 +31,14 @@ static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
 	unsigned int prediv_value;
 	unsigned int div_value;
 
-	prediv_value = readl(divider->reg) >> divider->shift;
+	prediv_value = readl_relaxed(divider->reg) >> divider->shift;
 	prediv_value &= clk_div_mask(divider->width);
 
 	prediv_rate = divider_recalc_rate(hw, parent_rate, prediv_value,
 						NULL, divider->flags,
 						divider->width);
 
-	div_value = readl(divider->reg) >> PCG_DIV_SHIFT;
+	div_value = readl_relaxed(divider->reg) >> PCG_DIV_SHIFT;
 	div_value &= clk_div_mask(PCG_DIV_WIDTH);
 
 	return divider_recalc_rate(hw, prediv_rate, div_value, NULL,
@@ -104,13 +104,13 @@ static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
 
 	spin_lock_irqsave(divider->lock, flags);
 
-	val = readl(divider->reg);
+	val = readl_relaxed(divider->reg);
 	val &= ~((clk_div_mask(divider->width) << divider->shift) |
 			(clk_div_mask(PCG_DIV_WIDTH) << PCG_DIV_SHIFT));
 
 	val |= (u32)(prediv_value  - 1) << divider->shift;
 	val |= (u32)(div_value - 1) << PCG_DIV_SHIFT;
-	writel(val, divider->reg);
+	writel_relaxed(val, divider->reg);
 
 	spin_unlock_irqrestore(divider->lock, flags);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
