Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0A4ED8AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 06:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LcUWQ1V4GeBH1ELm3SL6XXu8lYo5hNyAJTZ3QhN5UH4=; b=p3buhl3EudF9Pb
	sele5EwhpPJdJzrjYx4edELzMOpMO8GC/eqFnGLDTLi6LZE9ymSmzT88I1AWO6zjp7DqPNK8Pyv3+
	T6DyesSqSX9ez8JwhrHRB8JTfoIOlZejo1RyniiyyiMQwZrfxhzZjJXXXfF8sf6roCTGvsCcXDmil
	Qrp7iK2DhoIK9RhShNtBjLpEw+jujJyKlnvHbL/dl1CO4R67fy3YYZPXXq9Dh4GPpxPBSbidOtIYS
	cik5zR/yP1iztcDX0aiVa64B8q1blNXmEqxn4pUF74VTfJ4CqzeJyTdw0QgIQ4hfJwj9yAnKdCIIv
	l+cijIEks5c4t5J7a5Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRVBs-0005mc-6b; Mon, 04 Nov 2019 05:46:12 +0000
Received: from mail-eopbgr40059.outbound.protection.outlook.com ([40.107.4.59]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRVBl-0005m6-I9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 05:46:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/+ZXY2BDiIT4qN1EJkeIyeuOCqduoIi+xgGzMsSWlurN4zuSYFubthywXZLFcynwe77cnwVURlTjMtyJccDtW0yCouUpwAc5yvedSlWtJlBcdNhl00nC9jjCIAxbfFb+/uxfJ0BlG9YYSUjNT8ev58rovMQEXyo/rwsvyRjIXNyeXSkwauNyHz4az/LTdnUD55JFghi2Pg+ayxzbGL5GpLtWubOQEJ4atE2xa3jd/oYZMJFvkA0W1V8sbRCeALd2zLGlUkWbhHxsg3G259Mbq5ZjFOQaebKcwLaee+SbrRR+gYRG31Zy4JSGTo6j5k1+elA//zYKmc1Q+w94/iUFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YIrWcMx7RwRi1aHg6dnGuGuh7s3vtfQuUXell/JUxHM=;
 b=dp/o0rd05nuNvkciMY76yxLQ5HyhWWDhuZeokWz0q+Q2wywgANLwbxj1QrCvyi8kpePoFz4DOoHexJHSSPRtWGy21jV6x3Y31DXLb0zC0VtlsVhAkQ6ny6XZWrW3d1TaaoQoAZ2+Y1Eux675h3KuQTE/zQfJJ2tIAbHJl04rFXRnIGJOCXNW5Sj1ZJTwTV+GXZ+LwL5stsy2iKSYpnWpjGgcCxu9tNANBbTW1I/g9WURxcjQa4KSxeWcPFn+iCM8VDdcAvytYK2fN3iUyHupkeaZ9cA8+3pHqZrvhMREezV/+ZS7ZrRApmj2yU0y4983JT/H4J4ZJRd5BddHJiMX0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YIrWcMx7RwRi1aHg6dnGuGuh7s3vtfQuUXell/JUxHM=;
 b=mvDTFO+/eMwz4rNnokrDV3sHPCK416vT8eXa/uOlQabCEA3fEBo4BnuVxyDW8W392ol3HtiN7Cnh/hMbHKZdzmkhMtjZ+JUEwCHkwgoUajtw0jrqElMr1ZXhAJbMNx2F2YI4h9zjXF2x88VAUXq3xOC3tzA2cB88NsVvLkB2xyw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6451.eurprd04.prod.outlook.com (20.179.252.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 05:46:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 05:46:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH V2 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVktMk8ePu9WQHCE2BNQEucqhFbw==
Date: Mon, 4 Nov 2019 05:46:02 +0000
Message-ID: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0110.apcprd03.prod.outlook.com
 (2603:1096:203:b0::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cf1a5e37-45b3-4556-8da7-08d760ea466e
x-ms-traffictypediagnostic: AM0PR04MB6451:|AM0PR04MB6451:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB645128D6F458C30FF41C8769887F0@AM0PR04MB6451.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(189003)(199004)(386003)(4744005)(6486002)(36756003)(66446008)(476003)(6512007)(2501003)(8676002)(2616005)(256004)(26005)(50226002)(316002)(6306002)(2201001)(6116002)(6636002)(3846002)(14454004)(6436002)(64756008)(66946007)(14444005)(71190400001)(71200400001)(66556008)(66476007)(478600001)(4326008)(966005)(2906002)(102836004)(86362001)(186003)(305945005)(7736002)(8936002)(25786009)(54906003)(66066001)(99286004)(486006)(44832011)(5660300002)(81156014)(81166006)(52116002)(110136005)(6506007)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6451;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x/ni+s8d/K0BoOAhxKjmp1HRtWIoyv7HwYaFK6V46B7umJovipA2JC3PQQUOS1N57+FSS4cGlq0JvFHefmBQE5R437HVcxO7qBQq7Doy6w14uzg6UPtng4J5IYzc4Ll6omg9o/yj80jhClJ5i0YHgDd5kkP+GJzyvAkQQcmGTUzbwEe+T/m0Jd7PYruL4XcNJOUVuuayrEcH0rRSnZITW9PEjM9+y8v9GK6d7KpHefDl3tIrFOHw6jUNRfZfRU3GWsYVXkS725YDaVJfgX9IRwQCFfRZ5s3oLyZjntGGMxG3wuIjYX/61R4uwP1P/5yZGQPKzRRtfOLr8o/o2aG2ngrdixO+s6qREBAIBjNkLnMx8BUVBtF4HSlCkVVkfilqvaV7OvTNXbDP6WmX/k21N8u6Bd7XaDC2queyGH1E9HKaLcsFxZss5L0JfjAVM5RAazOGYy65bbGE9lpNOjsnHXqCZYZkT6CCiEwzuUURpiI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf1a5e37-45b3-4556-8da7-08d760ea466e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 05:46:02.0726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lXXDZ9VBetRnbwOFIMpds/EhGC3GTD9JAbAwbPGUmqWDNH9C+4IuQs/1UTnw1K4wE4CUCTNhmFYeULfkCO8GSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_214605_704933_BDFB3F3C 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>


V2:
 Add a new patch patch 1/4 to avoid build warning for arm64
 clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API

This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
based API.

Based on imx/next branch, with [1][2] applied.

[1]  clk: imx: switch to clk_hw based API
     https://patchwork.kernel.org/cover/11217881/
[2]  clk: imx: imx8mq: fix sys3_pll_out_sels
     https://patchwork.kernel.org/patch/11214551/

Peng Fan (4):
  clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
  clk: imx: imx8mn: Switch to clk_hw based API
  clk: imx: imx8mm: Switch to clk_hw based API
  clk: imx: imx8mq: Switch to clk_hw based API

 drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
 drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
 drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
 drivers/clk/imx/clk.c        |   4 +-
 4 files changed, 819 insertions(+), 779 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
