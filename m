Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0FAAD246
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYm50taDauAc7mcLHECQ0W1KpzvNR8EoY3y75f2rwp8=; b=JnqmjGfqVQY+Ii
	S7gk1xGyf0Uhcp8q6xHaL2wwZ4jqC9EYJRNo3WGmpT6SYzij8l+HtMQNufpAtc552UkAN+jAxZKtT
	FF4Acx69Jdd4J49w1jGVkOoqz/CPwfCm/K6GF8y5clB2qHXGlQYiSQOcC+kJeRJ/sRWdvu80nRFa7
	kA2uxFKZJBmhASsPHLH3sp+d19D82JSne6T5g7HErVB4ULsnHPKKwI/tHXXyTH//hqIQMMD9eA2sO
	rnywyHGsEpYgqh1DAyQ+m6Fx9K/D9ebGonlGMlqdJ6ExCI6hnTk0fok26P0hosjtVniO/OWTS+eV/
	B/os5yWLGi2gvcalXwXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AXD-0003uA-Ou; Mon, 09 Sep 2019 03:40:11 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AWm-0003ss-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:39:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nrf/Xurhf4waxw+zxjP/oh4sG7lJo5AvzGY9EM5Oa3pdhbIaegzJuCG3OLtZq5Vp0cqJeUu+Mv1EEVNjPJCjJ73LN2cT9SK9I0rR4JgX+0J2KIx3g3I2RyoS/Xr9T41qYhZnOIMZ+HbQ+7IoZZ/ML1uh+mlFVcNJQtRNacfunUJcnNDCNLNYGTXCW1d2Hvkx5zQrzZ5hP5/+wgNACzED4f8KqrqN0Gu5M2RVElN66PStzVFR7JM9S9EyP/rZcHKk5BnlgqC1iqjysB2HHURJIaxfJY9Kh3rV1t2CAuFzqWi1gUbPZ00g3EyAXWK+eZiHevGNcXEC4EPh4UMVzOT8zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PF+QbQ6C9EBBeWUE8Do2AhKUKj1uvwhx45VjUfUsigc=;
 b=kJW2FMHpp66Z0NdFM/+urL2xNk+Az/VgF4DMYfShTwnPXfXyBSIvenv/92ENH7hoYalTe8AJWGsJVMJp7zPoh2kp1CT9tBGsd2qfOIYNNwVz/HNevsBUM/C3FqFwNHmTsFbz76sNesiYKx4fC2HAdbwv+rWPum9synV3HbJSE2wLDqpBMfHSp8AY9EUJTMYaelD4PhspBWx0xn45RkazKpf6WygbjRGjq/iavx+3omq7yBTIdoK67wOxVVk+eazlCUcwQfPHSSb7OazMC+Ssf1CY0+xOKiUtB0GUVraxOUa6nEXgk1Xl5p0psbgkWEugNbfLsHWAw6Qlb1/OKmj8sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PF+QbQ6C9EBBeWUE8Do2AhKUKj1uvwhx45VjUfUsigc=;
 b=qYdYNszEpR/vEkg1K5lCkXy9oCqfNvR1UPAJMExwkt9zhMPFjRpFeDeWO/xrp8x2RLD+mOX4SFIe3KG9FNz4npTyNdS9vZR4bgdrBeVDpzLJuUY36xf68A4/WUgfRnysacOgEJzmT/5RojA0RmL0SL7g6jH496XNuy6ODQTIG04=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6020.eurprd04.prod.outlook.com (20.179.32.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 03:39:29 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 03:39:29 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Topic: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Index: AQHVZsAvxNHrETdja06leIJqZC3kHQ==
Date: Mon, 9 Sep 2019 03:39:29 +0000
Message-ID: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0004.apcprd03.prod.outlook.com
 (2603:1096:203:2e::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21c7b4ef-a549-4e51-64f6-08d734d751b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6020; 
x-ms-traffictypediagnostic: AM0PR04MB6020:|AM0PR04MB6020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6020F94DE7DE3D776A543F4E88B70@AM0PR04MB6020.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(189003)(7736002)(186003)(26005)(54906003)(316002)(66446008)(64756008)(50226002)(2616005)(4326008)(6512007)(44832011)(3846002)(6116002)(66946007)(102836004)(110136005)(2201001)(25786009)(8676002)(52116002)(2501003)(386003)(478600001)(36756003)(14454004)(99286004)(66556008)(5660300002)(66476007)(86362001)(4744005)(71190400001)(6506007)(2906002)(256004)(476003)(486006)(53936002)(8936002)(6486002)(66066001)(81166006)(6436002)(71200400001)(81156014)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6020;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /Q+OuHuMezANPUCpZCKkll1Ek1YuNasBAzkZvU8VPLmfbfrQnkoUrY+IqQ95Po0JCvsb9yqm/VnmQAVB6cVZrn19S+11kGYOPQcI7Nb8Bn1f8WZgnx7o/jci+0bklEYhYXVYP0OZ3HIsomWkpr1q+VWF//aqEywu4/uWAqCv6tbWmxMeY7yH+FFAhnJr3ir6g25pyYTYWKwZAO2O1vHUfswR356fdyxDME0tsL903EzT6PHtZgTN5nMwdnmZE2CKeM11OsdxmhPuTbGmZa5uKgeZtQ5ZhAfP2XbTzvDPt8HHE+qTrdhPUKvd9fp77rnnp2VdviFogHd7FKqNBl/pJHTaAPQ2pvrqP+Y+cJbGdjjgu2QQx9JT+j5gFcyc2DK0ORdTa5DX9AsT7cdgYKaNSlzVkRlpyo52MSBwlCNf2ek=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c7b4ef-a549-4e51-64f6-08d734d751b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 03:39:29.3409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPIBbo4HQ0NHebn8jeziRVlrGhBH5wJjDruZ9qxqCwWxHpxdQX9e5Potfe7Ifw7xko8NtXe4d9wUiBOei9gknA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_203944_757097_47D3759B 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

V3:
 Add cover-letter

V2:
 Added patch [2,3,4]/4 and avoid glitch when prepare

There is two bypass bit in the pll, BYPASS and EXT_BYPASS.
There is also a restriction that to avoid glitch, need set BYPASS
bit when RESETB changed from 0 to 1, otherwise there will be glitch.

However the BYPASS bit is also used as mux bit in imx8mm/imx8mn clk driver.

This means two paths touch the same bit which is wrong. So switch to use
EXT_BYPASS bit as the mux.

Peng Fan (4):
  clk: imx: pll14xx: avoid glitch when set rate
  clk: imx: clk-pll14xx: unbypass PLL by default
  clk: imx: imx8mm: fix pll mux bit
  clk: imx: imx8mn: fix pll mux bit

 drivers/clk/imx/clk-imx8mm.c  | 32 ++++++++++----------------------
 drivers/clk/imx/clk-imx8mn.c  | 32 ++++++++++----------------------
 drivers/clk/imx/clk-pll14xx.c | 27 ++++++++++++++++++++++++++-
 3 files changed, 46 insertions(+), 45 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
