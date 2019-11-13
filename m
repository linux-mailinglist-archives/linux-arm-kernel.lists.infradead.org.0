Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6086FAAE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOtylfIPub49DAs0x3a8YTQyhiqDvLaFgceowhjbVDk=; b=rsjjvlLLHzod4y
	RHe1AZnPnM7IWOaY+X8o/ZQiteKpy80Kd7T3DxQ4DqOos/8yl0tIgK0wXPW/nOkVH86vpjDNoImTE
	RKsfOkY0pQGrBext569XDwNNOIffoiSHP2f6UqKLuUfNck3B9CL5ZGlbyLaA9ygIctF1gNgx3n1dg
	4rNwe/9ijCHxV6KwsYwIgYyruGW0VzQ+tiz4m5E55LO+CWIVPF3IuzZ73szlBkfoAP9fk8m67eshM
	MGJ2e8Ej9SwboAakH3+i0MtW3Po+aT6i0COCNnPy1UlICD3Li6EA0EUEAyXdB0VDJM2QRa2kezdmq
	Zjle7Ai38fSaAmO0nNew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn21-0004AX-Iy; Wed, 13 Nov 2019 07:25:37 +0000
Received: from mail-am5eur02on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::61e]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn1N-0002Va-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:24:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lFE/enU+Om4QHMVAdc6NMp9izpPNEOQgV0NrQeljy3lEebxYlC6MFbfsif0B/U7hfe4LSOGtujul5TPAKW/R/cFgMw6q6x3DrauDqUi01Gjf+CvoJg5p5ypkOKyGoofqazrC+770U08MhL3TaaUVEwuT+R5SbP7ugbek+7Hpm2TlCPkfSptIkZMgojYYO0hyzqxnU07b2rOGHBsTYjrndNliSrMArUlcYF5XdlcBSiQywVwmsRe8ka9/FHxUpDun2A2ftUyjmk5ZuQSdR8EJB37Qqz5awC7fDUmDb4PbQ8thtGq4PHJPlj122MxBHoILVJKrqTJPrWJOnrHBQhd+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RV77L6pAwy8VG3PxPqjjLYulQaVEqevS2utmf1FEiyg=;
 b=PQNCVA40AvdH9gTMO9uzeIDdiSFn3HQqbAwX+3X6AeWsU94iElUqxJsj0mWdGoHkPHfDuooYjVW66ciq/GzFSNjfIw/6DamYqJnxhojNDogrQjP+4F390R1LpXtPQySacUBYwkBOMAyXYv5bvGAVfV9NmmQTsT6SKsF2uSLrZHA0gK6BtiIfZaGUGMDu1RALkyIH+6wmGpxdFZs8TftyAt78jUrQQxQEuYa1TzNhVWNCbvrbpJuz/wF8uh3otVRFx40GPiUSGx1o/VrF16nkwEBiMaDo84gUeozQSexedEbQPInR21fnurR/25UKfQ0Vtt/RfKiGaO+4wMBKOo2AaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RV77L6pAwy8VG3PxPqjjLYulQaVEqevS2utmf1FEiyg=;
 b=jLoBtTX2bX4+3FexxUN7724JYNrDOQ9vCDbPrTa2PV64R/J6RsUUK5xLc3qyXcSUVaGDG2mG/o3G4gMhixiQBf1nEWiUim4asKHSB6U/nOaM9X+721mecXegD5abjwxjGWMswNBK5eibiK7sCN+wNh49fvGjquZyFXtdnWIbwnA=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4651.eurprd04.prod.outlook.com (52.135.138.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 07:24:54 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 07:24:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/2] clk: imx: pll14xx: use readl to force write completed
Thread-Topic: [PATCH 2/2] clk: imx: pll14xx: use readl to force write completed
Thread-Index: AQHVmfNxsbVsC4dvu0eM4eyT9DyAhQ==
Date: Wed, 13 Nov 2019 07:24:54 +0000
Message-ID: <1573629763-18389-3-git-send-email-peng.fan@nxp.com>
References: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0169.apcprd02.prod.outlook.com
 (2603:1096:201:1f::29) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f3d0c28f-59f8-4c68-17ad-08d7680a93e8
x-ms-traffictypediagnostic: DB7PR04MB4651:|DB7PR04MB4651:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB46514EC43A119C21775E60CA88760@DB7PR04MB4651.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(199004)(189003)(54906003)(81156014)(81166006)(44832011)(8676002)(76176011)(50226002)(256004)(186003)(52116002)(6636002)(6486002)(66066001)(486006)(110136005)(2906002)(8936002)(36756003)(6436002)(316002)(478600001)(6512007)(7736002)(305945005)(71200400001)(2616005)(386003)(11346002)(102836004)(71190400001)(446003)(2501003)(6506007)(26005)(14454004)(476003)(4744005)(5660300002)(66476007)(66556008)(64756008)(66446008)(86362001)(25786009)(6116002)(66946007)(3846002)(99286004)(2201001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4651;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cENT66VEuYXcB5okVNepGYwuhwLwOR12246uSLSMQZ/ZwL0x8X5LPttKomvp6aUvMPhX49IpPy5u6t7kYn7Z0CefOyvRvPzSYQiFdIHHZHG5RNhc4kpNtR6YxXxjBtjFZ9O27580mZtbIRy3ADD3gcj/dIKdRwbSAQ+ooQvG8jlvz4ELGnrmA/+SYMl/gx1XwToMDcs0QQbKAtMp438ZujUPxUUvy3WY9HV+gHQznondRXvbS6N+LYYoQM04WKqdFwgW7gnb+09tBSwDNnS8I0+/8+SIy30rX/Q6a3SJ/ffHRvRM2aKkv4eeNcccyio6fAVwpiiiexxoc5YSdYtVLXuS3NN/TC1/9ouZ7R9AVRBzi1Gk9IYo0jyD596fSFl/kXNksFvqJgxZzBiD4krXcFkqo/DcjWh1UMVt9SJinTVMhY5iTYVvt3DJi9gjFR3u
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d0c28f-59f8-4c68-17ad-08d7680a93e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 07:24:54.0964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sotzV3pm5nz9JNdgM0xbDJi8DVDzW2alqm/ntVICdd6WS/fR8oNixSFyhPAdIycD5pJgwgPWaey1LIeKEtXQ6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232457_099296_BDAD916A 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

To ensure writes to clock registers have properly completed,
add a readl after writel_relaxed. Then we could make sure
when udelay, write has been completed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Cc: Will Deacon <will@kernel.org>
---
 drivers/clk/imx/clk-pll14xx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index e34813904023..2bbcfbf8081a 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -205,6 +205,12 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
 
+	/*
+	 * readl will force write completed. There is a udelay below,
+	 * we need make sure before udelay, write has been completed
+	 */
+	readl(pll->base + 0x4);
+
 	/*
 	 * According to SPEC, t3 - t2 need to be greater than
 	 * 1us and 1/FREF, respectively.
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
