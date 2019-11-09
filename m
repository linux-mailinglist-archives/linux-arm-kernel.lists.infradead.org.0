Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A95F5FFB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 16:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	From:Reply-To:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fdYK1xFXpeQBBgd1OY37yieYSAaXWtafsifCpDuzGZw=; b=WOjLXSUz3BC+BE
	fo/EoKLL0ozwTyhxYDlVG9iEUGwX5Q8Jdcl81qo15wW3T1o1a2ZI9CkS/7DlE7x/lH+p/tjiDpRuk
	8f8rDdihJcjENe8iWCJJyjsoEfMedZu33m9zC4q5T9PKtWJt2wZgPw7BrETB2ixA/hleOLP5ezWiY
	SE0JrM7cslGCcnZRupS47KxnLUYJ7W9zMkHohTrq6F01b2FrhYRqyjurEJO/A5FfQsgZI7KUIFuRy
	4REQKg44vxshAnHacmBnzKmBDMqfiMMJzYL/63D1SMPeT39kX84QsD1kjg8qU3EU9OuqEWlsw+muh
	EH/zhNduTnp6NG9HQuxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTSWJ-00074B-HD; Sat, 09 Nov 2019 15:19:23 +0000
Received: from mail-oln040092011065.outbound.protection.outlook.com
 ([40.92.11.65] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTSW9-00073m-QO
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 15:19:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTkwKklhXavMmvjNrZ754NSN1BvrxVJue2PmHl1JauT8XrjQSYiTlbsTeBeSahQ4zE+ldn7ZS68ujtaSf1cMKk0aXi45lnENmb3E7BEV14pHtvvx0C7lID41xfpUGZhfWMSZwEw6fuWL0WCC92AXy+KcGzTOKo9SZGjaLSoj/Ti4H37BBjwpqpiBBZm1rK5X8GIF2oMvLMPzR4dieSsmRl6281/7Kn6pH8HT+8aCPYmNMvy1DwCw95Hl/ARSD+CCUUbVd85gUuM5elD91nMR0WbnSDl4sgpIbURZ2oDCYdsSTWEGEJ9NtEZFE82BMg+gwnmQvhSXDr8GooB4gvrg/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=24aRtsX6mT+03xlbWXh3riemFGEBfKJsqAAF2Ius4f8=;
 b=ofworCtGn23wCU538UED3+I3EruRG2dui9T8lDXbTpQM3AOlKDn6jLpiE5EPuctD/KgFpYjQnrN1mfS5O3KLdjHSExl1oZP/Z2cc5NWeWVkpTpAhMFqzfLUE0qGbr/OOWMAgplLMEQqa1m6K4yhWMnOahmSUKwyr+ZxqT2zyICq5LKYAwUygWIQ/MlHRrFfIVwyg17VK1xzHndjvRzFm8jtZ9DBAaZmSsCoN8aMtgZpO867BJ6XuX/ESRkgVQppB0lo0IaEyvjRgL999GQppDhp4QasC1aXKYfReeV+KdgZe0uY0Ui482ok4R3tjDrtMRmFg3UWXzZa7VJRgL2yMug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=24aRtsX6mT+03xlbWXh3riemFGEBfKJsqAAF2Ius4f8=;
 b=anUUKl59jY+ITyyk+lwEApeuUERuM/u0tEdrHLhTDGpkClGEg1kgzCKThh459dmZsvDV3G9KUgKN+ccQxLHQav0Dk7AyHDLdyo1KgZm6CBLBS2PKdQRc2RvTBVeiB7phppEOc427sQ+SXSUYPPyykJOngFPZfam9h7goRlxgn8X9fYeRd5ZdQ6fUqD4rnWhcwyMmgc8IIs1ICaeNFVt1DSCmI0CU5uOhwPpc8IysvuZOzU89HFlTqTr5EVjgpiyPHUM3x4B65NygTvhi+hWecwuW3T3M3AqVytGdOWramxOMlrqfK59zhnosnpGlV6q1R7Ym8IOCc/z/sulyUm+xEA==
Received: from SN1NAM04FT006.eop-NAM04.prod.protection.outlook.com
 (10.152.88.58) by SN1NAM04HT206.eop-NAM04.prod.protection.outlook.com
 (10.152.89.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Sat, 9 Nov
 2019 15:19:10 +0000
Received: from BN8PR08MB5779.namprd08.prod.outlook.com (10.152.88.60) by
 SN1NAM04FT006.mail.protection.outlook.com (10.152.88.166) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20 via Frontend Transport; Sat, 9 Nov 2019 15:19:10 +0000
Received: from BN8PR08MB5779.namprd08.prod.outlook.com
 ([fe80::f97c:4f94:f334:b4a8]) by BN8PR08MB5779.namprd08.prod.outlook.com
 ([fe80::f97c:4f94:f334:b4a8%7]) with mapi id 15.20.2430.023; Sat, 9 Nov 2019
 15:19:10 +0000
From: Tian Yunhao <t123yh@outlook.com>
Subject: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Thread-Topic: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Thread-Index: AQHVlxEJWpAangI0i0+h9tdLzyboXQ==
Date: Sat, 9 Nov 2019 15:19:09 +0000
Message-ID: <BN8PR08MB57792366D78997180A698AF8897A0@BN8PR08MB5779.namprd08.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0081.apcprd03.prod.outlook.com
 (2603:1096:203:72::21) To BN8PR08MB5779.namprd08.prod.outlook.com
 (2603:10b6:408:ae::10)
x-incomingtopheadermarker: OriginalChecksum:6399F06F539F879EE770EC39982E5737CD76597A66A9E99D7236E9C4A196F324;
 UpperCasedChecksum:8473CBAE29CDAF40D2B1779800ADAE9F6DB55AD14540B6C043F239210B39F2D2;
 SizeAsReceived:7616; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-tmn: [E81gp6A4ShbCWhADvgulnSETwYOUwMB8QkeM8GsIubaA34qKfMHc+uAUl0LuXwrS]
x-microsoft-original-message-id: <20191109151823.22711-1-t123yh@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 4d7bd1a8-d050-4410-4cb8-08d765282b40
x-ms-exchange-slblob-mailprops: Ad+mZByrAbQhvslxRqTrNk0ITAfnUsm6lD1E/c6Bts5b+Il8O2vU84HFnrfiVP+NdcUO/EdjIErYSgZnblC2G+EkK87GhzWHe8HZag85KIY1mAvumt/geX+JvrCBuyK/yNgH1RB5FwGmZn8C5sgSezK26uT7/z3ixxyqQqLWGg24LB8EqbJ6pqx6+9uNLxKiLmdwRKxYc5ZXqPE5grVyvqbsV2Imh4qhRL/6rmQaPkrZ8edM059DOD7osR8fVg3vOiVAfJ5WRSKe8EZw8QXqEF6mex30qoOXMe/T4a7rfkvkCrPhKzH9hHhhoAWhWVQtXjtOr9eyQ0qIIXPnpjDCUL3wN1iR5iqN+imfzEawnU8LFWBDNUHJe8KWo0Ye1MNloE/g9SyeDa8IADjSdstmk5mijyy0g0ZqYr2rWdDwH6mEJgPlNAecMuGqf1BrTEJVX7c4FsbCKMYVxfDNOh+EywkrtU6VGt/z7IHRe3kErSrMOqjoCzZXuHQbVcAFg8PrCivIz0/jU9jW9H428fUjR46B12keuKnqFNAd7uNHms3TUL3305UGQaXYwUEqXveTCCXnsPNDLdhUi2BsRGhiOKtoE5VxYyOw1fjrXCfsZdl2KWXtb91Ijxvi7bKiHqagldhhcg83KHEydU38Mia8V1rKFSNLTkCv
x-ms-traffictypediagnostic: SN1NAM04HT206:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V1CIXLTeI+yUMivJPAB8y+Xl53imJ8n8Iuy8IhX6eO7HJQkcSOGeKR8x2d1HasgrZ58e6JMMmbysSORJw6tSTDbneCAWZfwBLz0E+sBXBqvbmRxhLuZuNie+GjB/xs17F1e3cNBqh9VjopzSKFVBHY40Bp6+UfXDfDyS0Yj+bR+BC2iA0IFSSiBpxKsttW1l
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d7bd1a8-d050-4410-4cb8-08d765282b40
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2019 15:19:10.1971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_071914_029157_A5BFC1F1 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.11.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (t123yh[at]outlook.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: tian yunhao <t123yh@outlook.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hws field of sun8i_v3s_hw_clks has only 74
members. However, the number specified by CLK_NUMBER
is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
fault that is not always reproducible.

This patch adds a protective field [CLK_NUMBER] which ensures
ARRAY_SIZE(.hws) is always greater than .num, thus eliminates
this error.

Signed-off-by: Yunhao Tian <t123yh@outlook.com>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
index 5c779eec454b..de7fce7f32e6 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
@@ -617,6 +617,7 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
 		[CLK_AVS]		= &avs_clk.common.hw,
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
+		[CLK_NUMBER]    = NULL,
 	},
 	.num	= CLK_NUMBER,
 };
@@ -699,6 +700,7 @@ static struct clk_hw_onecell_data sun8i_v3_hw_clks = {
 		[CLK_AVS]		= &avs_clk.common.hw,
 		[CLK_MBUS]		= &mbus_clk.common.hw,
 		[CLK_MIPI_CSI]		= &mipi_csi_clk.common.hw,
+		[CLK_NUMBER]    = NULL,
 	},
 	.num	= CLK_NUMBER,
 };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
