Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A21953E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 03:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+OgHg2gmkywFpQN5Fpl6BuzPVGDwnaCQWgCU9D8Z/Hs=; b=CAHKmtMOj8lz5E
	RFYbi7vSDN6qNhVy9ow0Po01UlKNiO3DzJo2faZYTMNkMrAsHC0X/9lmp6ETGrbL3Vmng2ziEZhTp
	LFRcHdTgo8KUCxCv87J4cD7FMUVH2nxlLDmt+YZeIQBEiwx8A0N4vVjloLd5GuHdkTsxoH1eKWqom
	RVneIyiuJe6XS0TNTbIptzL++Cub0ftY6gQoZ7b20FTSR5t2X/I9AO4Vl6gyZKOHRm1cSWE31WRWv
	PgQ2QUoJQAwcRcLLO46RYKjYwllQ/ZU0G64XBiDF6KXO7cUlpy2Vho6ThtvrtG2yszA61wVLpWsRu
	ZR1RiJWdGkeSweVb9PrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztMs-0005VV-LK; Tue, 20 Aug 2019 01:55:27 +0000
Received: from mail-db5eur01on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::61c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztMe-0005Sq-Fz
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 01:55:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UvNp0dsV0rtp1SFp79Ntx2JF3eGTDY/kCfhinI46b/13bC1pNF29RtrzYJVyVLdVJhyyeXJGQhHLZCiNg4uZkF7+ekx3FurtxiV+NGvs+6I9H4vFbPUS3EPA2qyeNwXBYc4O4dnh41PW6DmM2wfiSqAeEUJYTThMug1FYgdfyv0jcrHm4l1/e45PM7CtQ7AhOOYZByEuFa3xlZu10/EC4rkmrV5qjATFfQgVQReFWOVCEfShTvTgOTPf8SH9332UpPB40cobrW/9BE8tE/TdbdvFIgXRtR2uumlkdLHNkK8Nty6OGhc9YX9+gVm2Mq/IUGuXolb5r7je0Y8OjdU33A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Rsp3bvn1VYswwty9Qp0NHusnBbdFVLvw46pvTZBIpM=;
 b=TLJ1Yz3p73VyIoeEZthnPu2JIGf5K42Qf30lp3of1wwjWdoGtipc/XRcMj74PuYKSCtGWDym+1dr3kh36xUFjKLJS/3JQXWRusHajywVVNxDh0sTiBYG0GVZcPdv3aUkPdSs25jceys0ktgIfqaR9D7ZzjXt8qreb8vlCCcQ2h2W6rHip3zxpodVk+mX6midohJ7XwjGUTXI8UHeTuXPveGsBXz9YJaONVc7hHMbQIFsFYfJKTWaUJk4RfLyxEsh8QEi36l9hnnRrtECss+03RYWDSX+gJA9lx89ZgSghFtQF4AythLB9xV20jFaqjmHlEL+N4IxEo3fllp+FTTXFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Rsp3bvn1VYswwty9Qp0NHusnBbdFVLvw46pvTZBIpM=;
 b=Rej2dU+VFfZaUkkDmzm/qT3nMTLhwc9Ilf5K0DQ2O1mn0GPr1rt5dwkQdvJzeF4MQpuNTVUvyeK0WbrU3tH7+AiZ5CqQvanjjO6SlnQkDxFx5nMCrcySPKFJNDsGOaO02pPmfSqVjsoLSYErK4qG8tRQi9fIp0leZm71gkuN9Vg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5874.eurprd04.prod.outlook.com (20.178.202.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Tue, 20 Aug 2019 01:55:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 01:55:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] clk: imx: imx8mn: fix audio pll setting
Thread-Topic: [PATCH] clk: imx: imx8mn: fix audio pll setting
Thread-Index: AQHVVvpKZsJi+GA1m0yPuh1H25F+Bw==
Date: Tue, 20 Aug 2019 01:55:07 +0000
Message-ID: <1566264894-31788-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0048.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::36) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4efa2d5-a1e5-4f33-e9d9-08d725116d10
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB5874; 
x-ms-traffictypediagnostic: AM0PR04MB5874:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB587459DAA9B5DD9C49FFBB1D88AB0@AM0PR04MB5874.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(2906002)(478600001)(66066001)(6486002)(305945005)(4326008)(52116002)(7736002)(53936002)(5660300002)(3846002)(6116002)(102836004)(256004)(14444005)(14454004)(36756003)(6512007)(316002)(54906003)(71190400001)(186003)(81166006)(71200400001)(8936002)(81156014)(66556008)(64756008)(66446008)(66476007)(44832011)(110136005)(6506007)(25786009)(386003)(486006)(2616005)(476003)(8676002)(6436002)(86362001)(50226002)(26005)(2201001)(99286004)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5874;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UpSHm4oe0QLKY+aLMV1wS4jgz+62+sGz7t7slAeEJjKOCiIdsXYzZu3qNARltsOVrRRUCZykmZqjKZgj9Jo/XKw9rYcJUS/DXzR2ZjhwqBaLuk85Hlg5Aqo2jhZEWwrOfOURGhpgikefI2vPdhNThOGTjoXUERvRCwlhAkBMP8ybvnUqsmVoSrXg2H2JUsXx4Hw+Te/GGwmdNr4umlx+cvI80OBBPkRM/UKe/u1QYmWVBJqYKmcjQtnDlkmTWXBG9rXmjGqNBxe4H4I8fHhmXiBjO336V82+HonhAQMrvavst9zerpmtap3RD/oIrD3V4L8Rhkuub5R7comZOw87W07U8UsJtWpBJkfxaeDmhtsDRwnHU0Mi950zkdEPwSSnlaHSHXzOEdFrWU2sZRobKzKvWCEB8uEqUv0/uNb6Ikk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4efa2d5-a1e5-4f33-e9d9-08d725116d10
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 01:55:07.4838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dPAX6hEMadN4tvxpDvPjW2/rqCgliLyOcXxKzYu4VOSA34DvWGztoOmRNFdxP6xsav4uRcDIf/lx9wjii/W+kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_185512_618244_EF36912D 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The AUDIO PLL max support 650M, so the original clk settings violate
spec. This patch makes the output 786432000 -> 393216000,
and 722534400 -> 361267200 to aligned with NXP vendor kernel without any
impact on audio functionality and go within 650MHz PLL limit.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index c5838710e1d8..0e7fb39bcb44 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -51,8 +51,8 @@ static const struct imx_pll14xx_rate_table imx8mn_pll1416x_tbl[] = {
 };
 
 static const struct imx_pll14xx_rate_table imx8mn_audiopll_tbl[] = {
-	PLL_1443X_RATE(786432000U, 655, 5, 2, 23593),
-	PLL_1443X_RATE(722534400U, 301, 5, 1, 3670),
+	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
+	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
 };
 
 static const struct imx_pll14xx_rate_table imx8mn_videopll_tbl[] = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
