Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CF8E288E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hTqixwYNS9VyjIeh4AAqPuJ5Ed1KT296foSh5OosSsg=; b=K1pUlqAj4GF1YX
	6b6fbgcqKxj86HRSkVmKUzTF9l19lmCdGS5zHL50xdBZp8poxu8baz2nmTFtdp1FcL/x13Ixce6sW
	vx4EJy16ehBWfsBP2RJF6N5ldKaJzL/lGormn1cKtSxR7zKncxQeio9UpHZHln9l6vKp2b+1aUBDB
	45QAH6SfG1HQzlNwL+DkNiBYgKylvjJzSQllP3OR136yoVwbkXcAaHcp0AuBME4mj/V2H1/G3bJrP
	+SU8Zj7UBVHunRi3U/g9gGpbUdF5PV2PguypVZexQIDDszGeY+ZEI2OCcybbJ3GNE6eHMnrxRVjgV
	5mn6cSdC3XRmct6p03FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTLo-00025k-HZ; Thu, 24 Oct 2019 02:59:48 +0000
Received: from mail-eopbgr40055.outbound.protection.outlook.com ([40.107.4.55]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTLX-00025H-2x
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:59:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cy9i2600yu0UxDre7zlEohnyQwcq5QFxuOAXAzVn5+UYuUlEVv6D0PYAImbMl1k1lBcNd8rmakwoO2M9bsEPMwQ5VS82jFi341dmblk85eAGLAu4htz8vYmOl8080BKbkxirAbi9gL3ux9lNVUXidqHPDXdW0dAZ7TxHL0dWAmYYEKvddf1USotqnQXg9K6GXBNgJvWU252QmQZxXzs/T4fiOfVhxebMboPiRqWKeQBWBulSfa8+k0UH9hp6iFi/wWZBOPu7lbuoydva3VLovhFHtWouytbuhuDThliQxF8Zo169IQlT++8QXxqhNqdr37Mqqm19Hx2wfF/IF48i8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cKfJ4NB//dX5j9IX+aiNdydpw0vImDIASWHDiZjjO0=;
 b=Mn2EWTG6p5/rKmTiN6ijQc4UEvdYTiUx03sMywq89wTqUV+jBfuaEdrwsUEnBryYjGTCNB6BPAt9cUkbDea5ohH8FCilfUd3C1jQePDx1s1K4lkpMfi1AeNtrS/RO0PZlibdKzmRMVPJ76eqzqkP4hK/MtMk00ji//TLC4Upx+OMlkYvLslcXUMQeUD7CkVmfWz0UZJ83ZGp5AJFAfba8HgHl6uzSG2m5aSEUyQ4ryIVO6vnL11T+PkNucxTmgH19BUtPT7f8mKrhViUWXiMmNF3MPs9Tt2rYlMoHgZNzV+X3Y9eaFp/kMODqOPzYakK59LPFUYvvg1mUXF8eFylNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cKfJ4NB//dX5j9IX+aiNdydpw0vImDIASWHDiZjjO0=;
 b=JcSLQqua8fGhxosmQO7lPLmvW5MEGrZnF2W7ziji+QYdbvWJhh39vewymuJXzoXLr7+yZyl984riNijTYfYahHhC5v4wDiF06RuDjdw//YPQ3bR48vdtrQCDCn/AAjui4WgW1eB9UTwZYy38yHYryBKvDMhZF20AJXpIW092r2s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6609.eurprd04.prod.outlook.com (20.179.252.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Thu, 24 Oct 2019 02:59:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:59:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Topic: [PATCH V2 0/3] clk: imx: imx6x: use imx_obtain_fixed_clk_hw
Thread-Index: AQHVihcMCyVyBO8P90OFvE9yw3nYaA==
Date: Thu, 24 Oct 2019 02:59:27 +0000
Message-ID: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0081.apcprd04.prod.outlook.com
 (2603:1096:202:15::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 68fb0353-7f99-4abc-ca2c-08d7582e2e7d
x-ms-traffictypediagnostic: AM0PR04MB6609:|AM0PR04MB6609:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB660926BD0CE1FA1ADA5B904F886A0@AM0PR04MB6609.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(199004)(189003)(305945005)(486006)(26005)(476003)(102836004)(2616005)(44832011)(52116002)(7736002)(6506007)(386003)(71190400001)(64756008)(71200400001)(66556008)(66446008)(66476007)(66946007)(316002)(186003)(54906003)(5660300002)(256004)(110136005)(86362001)(478600001)(99286004)(25786009)(14454004)(2501003)(4744005)(50226002)(2201001)(6436002)(6486002)(2906002)(8676002)(81156014)(81166006)(66066001)(6512007)(36756003)(8936002)(4326008)(6116002)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6609;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: llX0PxsWsIw5VvHnELZYPiBcEMlm6dF2qELCdoIF7VCXGXfbA/oAlfBdOIa0C31vSVw+2jV8vi5VUsuuK18ktBIWckDtX1UE+dJ9MEEkUvv3hvf/8/C5HIfemF+/CnhJ8R6UO1833oZJrsWSfWmaKu2TOrG5Ujruh0nHCEPmWnxtkz+p93KxmdKIjbmsLpPB6ypUIbCACMHOdzTPYbfwn9ER/D4w3zgYaYGZkUyH9dGsfYthummwgC/gwqkCn9YqJbKEU9oDF02ogrFMxRIXHJiTu8TNAUOPr9Uojy4FoQ8O2tv7o/08KdIGeTLEzGVYIsOvIJqNeMlF2LTKBB99ZKn8xccLOFPzNkbsOBV1FcetUcfAcMLWz6kow6akgugZKjBTeobl0wfsIpkINQllLMWTsjvhDg0waI2HPAjKwG/TSUvYvyX3hC0VGdwdL1TM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68fb0353-7f99-4abc-ca2c-08d7582e2e7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:59:27.1647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mhy7KhrBGIUYwwQalqj55WIsMuYrptiBTiYIW+03j0xegjQrTwavmun3EXTaggB5Zh+uh9/SaqVaO23w8hFxBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6609
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_195931_218317_770BD854 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


V2:
 Fix imx6ul build
 push botton early and forgot to add this fix.

This is to use imx_obtain_fixed_clk_hw to replace
__clk_get_hw(of_clk_get_by_name(node, "name")) to simplify code.

Peng Fan (3):
  clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to simplify code
  clk: imx: imx6sx: use imx_obtain_fixed_clk_hw to simplify code
  clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify code

 drivers/clk/imx/clk-imx6sll.c |  8 ++++----
 drivers/clk/imx/clk-imx6sx.c  | 12 ++++++------
 drivers/clk/imx/clk-imx6ul.c  |  8 ++++----
 3 files changed, 14 insertions(+), 14 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
