Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49D812CE18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B9YHnDeS+mzHJFs6sH0IgfYlEjVO1A3lOYwAX9ukmcA=; b=OgUZdOtLB6QzM1
	tArRqNZOcSFp7d4uE0ie13CSQc3Up1d/3YiJKGEyKjSfoXlVsjjf0XqUK0xVnCOSYU7zV3xiW1lTX
	zk3n++dgYlB6De6p9FL7kaZhzo4195CIqecVOOsvOQ7F+1jnpWN3PzGv7N9ZFqQWwx1qd9L4dHqXg
	uqLi43zdEHagkFlvr1mFt35Z3Ix13xZueVLx4XUQouKIVmer105sbFlopfUyTQi8J1kCR//NSY0qo
	KcFdWENt2waGIm/1GJYXBRh4M12l81qVXJ0kygX/mxqVnz83cHYBWfe9yeolB5QGFGLoIfLvhoW6r
	7/WMTpNNNVanj54RuW4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr7B-0006QH-56; Mon, 30 Dec 2019 09:13:29 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr6h-0006Gi-Py
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:13:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBOT4IPQXM4Hfuxao4L6KClk9nc+ZdmjJZanpRRROHqpTYr/ullDWEWMnsNMVIyzj26sj2fVxprhpsxRbDDLF9VatUfvVBfw/UqGsedWwjFBTxXVJSSX3/I9KbI1WionFo/WE3kBw1wZcIG/0Q/Cm6kU0z91xhxVZiy8OjaXinevQW68N2wnk9VP5I7pOmCNCtc/ESIgDh4gxBD7DLbteHLSZtx/LdfON32LrnZ4I06fVUh+zAwu1M5jqGrL8hzXfefZ2o4gViU0NYpb7SGiDhMIkQ7VNKpIrzNSxD6CKRj7difv61W8L8a02uK3oxBrFZ8UOeBYIWmK8ZOgFBZFfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AOYcUkTbBq0dQfnGd/67uZ9OlRSBdIyyAwCt6zLDyko=;
 b=PTg6r89EYtmElegW4jOZnilkmEZCl1tbUU8kKhhfFozDWM9MLK+69Pmp+o+rtJXywywsrBr/eiGLTDWllKMqmzSEQYXyj6/TN9s7m9JJCkLifRwrfAP7inLbB2MMX33FCP4HJzKlnW6l5gBq9pD6weTrM65kq7wsKbi0aZovIiBKUozp7GTSpSSKbIQOosKPUnZOijWq4x5CwYzg92SEbgncb91VXNtKmD7EfJonHlFy0Xze+TXZmbFcVNU2fEBokHg9DSAXgehHGJNjPZCRjxGbiCy7zFq6SjtK2KXoLrTfLtz3bLFu+k1zE3nuRSFLR8j6MY+v87oezselJpflxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AOYcUkTbBq0dQfnGd/67uZ9OlRSBdIyyAwCt6zLDyko=;
 b=dWg3KNWumkHdz15U7Se+IgTzLozlF44pBC0txD3LiUZMFQ3ac4yHTNARQROIgdCjR58X7IiEKKhielJ5w6QVp6KioZ5EsGVY/goSaRRDiPMayGRZVrYtVYUTkkSeQkpaZNxhE+twZs5zouIkDJDfcrriEOE2EvmnYLS1VPknt4E=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7042.eurprd04.prod.outlook.com (10.141.146.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 09:12:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 09:12:56 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR03CA0057.apcprd03.prod.outlook.com (2603:1096:202:17::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.8 via Frontend Transport; Mon, 30 Dec 2019 09:12:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 0/3] clk: imx: avoid modify dram pll and improve for pll14xx
Thread-Topic: [PATCH 0/3] clk: imx: avoid modify dram pll and improve for
 pll14xx
Thread-Index: AQHVvvFS+w6THym720OJHNaRDkeTVw==
Date: Mon, 30 Dec 2019 09:12:56 +0000
Message-ID: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0057.apcprd03.prod.outlook.com
 (2603:1096:202:17::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbf043da-c352-4291-6a2d-08d78d087513
x-ms-traffictypediagnostic: AM0PR04MB7042:|AM0PR04MB7042:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7042BAF9EF773F6F2F35336888270@AM0PR04MB7042.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(2616005)(316002)(2906002)(8936002)(186003)(52116002)(4744005)(81156014)(6506007)(5660300002)(478600001)(86362001)(36756003)(16526019)(8676002)(26005)(81166006)(6512007)(54906003)(110136005)(6486002)(956004)(6636002)(64756008)(69590400006)(66946007)(4326008)(66476007)(66556008)(71200400001)(66446008)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7042;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ArFhmD2xTbIrDd34K2Mnws+uf7NNvTObkRVm2LBTHbnPAhqzwT7378IxdEVxVh5thh+WUK0+w5/SNFVMIp5icm1sH1TI0jJ2/T2r0aDdW4xZPc5Sv/tdAnaD/1NCzUTgnTHLcXJJkjL0DxPBVko7ub5gE4V8+4IbNcwSqMKeRav/4/MOvr+XYoqNZUZAnCFBM1N0nHSxReeh4XB3M43963bA/X3yOyN4z5HaKYQAG+uWX3DH0MjnshjuDLbs0jJmnhefbxCbp2KiWqfFhY4NO+KZg+NZLsCuKBqD+uI39HkaCYrbACOfxrxj8lQ5w8HiKfMxURIlnOXmbyOg0QlOZ/Jbk4FcmHZkdHIvT/30muaxAzHm+wBimf4cV8BNY4jmAEp5Ad0nLFtI1cNbKqiGVkx4OtlzT72C6Rd/NPcdW16kebihc5VymZm/ZjBI9JCQr91R1cdtaagsqCpMKTQ7lXXok+uTj7ZAO7vH6F9YffFU/Mnsd8NOA7cBbbWnSKQ+
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf043da-c352-4291-6a2d-08d78d087513
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 09:12:56.3253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dc555ItGcZqHEUwCEem9Eu97Lc6gU9SNL19m3Yt0qrTI03/i38L4SQEjpa9Iq5R3GiJLcSb7dQ9Hp6+uLIFfIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011259_869901_BBBC22A0 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
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

Dram PLL is expected to be modified in ATF, so we should
only provide recalc_rate hooks for the PLL.

To avoid add more entries in the pll14xx driver, we could introduce
imx_clk_hw_pll14xx_flags to pass flags.

Peng Fan (3):
  clk: imx: pll14xx: avoid modify dram pll
  clk: imx: pll14xx: introduce imx_clk_hw_pll14xx_flags
  clk: imx: imx8m: use imx_clk_hw_pll14xx_flags for dram pll

 drivers/clk/imx/clk-imx8mm.c  |  2 +-
 drivers/clk/imx/clk-imx8mn.c  |  2 +-
 drivers/clk/imx/clk-pll14xx.c | 24 +++++++++++++++---------
 drivers/clk/imx/clk.h         | 17 +++++++++++++----
 4 files changed, 30 insertions(+), 15 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
