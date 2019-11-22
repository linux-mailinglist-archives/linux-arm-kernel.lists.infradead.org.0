Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDCA106BF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:48:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gh6KnBElifrlvNyK4F92yQRkC/ttoZ82rsvZEHLZ8Mg=; b=L4Pvae80B7pHwM
	6twFe50dswJHm8W9SBtIl2Gxj8ZQhWsxgqGVGVS4CMSW+nkZ3dwTwZ1heNqAUTIGjMsUZUWy56soH
	JWT4JNFaUUxGIlV3MxHvtp5B7PdLLMXapbqjqbYWugBO4rgY4YLEssv55vG5KpyltbRYXC9f5uQ1K
	wh9yy8h7IYguUngJyEmB8BBKfm0U0RdMxHPx+LJ/ObzLw+Q9i6X9Pw+3uLiDGKE6Z5WzpzV0KFzzh
	QgMar1iLH+cNXrKJriHXt1w1Kh385o9qV9p+Ckeaq8szpgC8YpKaHOcH0vOuUgl8vHXzJRekOd+pF
	zLZavCx34N9gR+yJrkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6UT-0001gm-5n; Fri, 22 Nov 2019 10:48:41 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6U3-0001cT-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STO0tRsDuDOJPhTR6LvDfpqyFGZ2S/9OpVyd0s4xYTkoUsRypkE+MOxxI/baPT6Worw7iub4855JVBuwiD6w9Pw4oyC9ROoTZ9pgvFcYxT0Mciwm98Ou34djUA+1VLN/Jf+ie5Uq3WN0DhzAmEBX0UT0N8R8mpX0Wq9nTU6gQO6N+rqZzqL2I6gktdMHVCqaxy3Soiz6b+2uER60Y4ibzBLtCNlykr1doHD2z3+rs2vaBmWiibTFLuD5nH5M5h40Fh+1G1HDt8AvGzuqmZHRF/GnYnSCPOlgsLAtUz6bHQUug/SV6Rr+6Pt6GRHhaWdrYg+WRmbFjZ0SKe94woWhgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=983v1Zvm0xIoi5pWYq0lCXT5tWHWKWUDSkM4VBAy0x0=;
 b=QmCobsPe1du6KkfDAzP9y3Qre7CXXOtLkkRnvWICn14ju+pmxS7jF/mkYjayLdWGPNiFObWRIP3HdjM/1boZM2qeVa7ms81WNJpZ2nSo6702QmPyJInwR+/w5tTdFPOgE5FBdvBClBedWSqBk8JsdtkOiwoIlzxPfMVV8Ieu01oCTaA9GCkxKDZBTVG/lC1LVEr+CvM6uqVZRt26EYCGloqFV7MfYvunF9zM454NbDBxmrbQVKHQ3tol84nixLcaY0meiFszdKR8/FKOHUs0D17EPnxGZp+8c2rk9WhkDpdtzH0oQ//AD2NZcIafGlgVenUayqEyycD/SlG/58yoFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=983v1Zvm0xIoi5pWYq0lCXT5tWHWKWUDSkM4VBAy0x0=;
 b=i4PvG4gS/nMqTL1KnWVOESSa4WIUxuO/4UC+MBJd9teA/DUy09CB/O4pNI4unXzQljeEtbjNqGqV60hKsCD/nVADtA31zmG7naHFWkNv5DmjsWDBbIy/NNXK9lz8iA8XIKTeY9R/d2KhDp95knezkXVbE2lQMKzr/Qrbx/++KvQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:10 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:10 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 00/11] clk: imx: Trivial cleanups for clk_hw based API
Thread-Topic: [PATCH v2 00/11] clk: imx: Trivial cleanups for clk_hw based API
Thread-Index: AQHVoSJU0t6T90cIEU++/WtFksK10Q==
Date: Fri, 22 Nov 2019 10:48:09 +0000
Message-ID: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:208:15::33) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b43db444-bb4a-400c-7669-08d76f397703
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6961F0C7943283B3D39E7A34F6490@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(186003)(44832011)(2616005)(52116002)(66446008)(64756008)(66556008)(66476007)(7736002)(478600001)(6636002)(36756003)(14444005)(5660300002)(6506007)(26005)(2906002)(86362001)(14454004)(102836004)(386003)(305945005)(25786009)(66946007)(256004)(110136005)(8936002)(50226002)(6116002)(316002)(99286004)(54906003)(81166006)(81156014)(8676002)(6436002)(6512007)(4326008)(71190400001)(3846002)(71200400001)(66066001)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BETWZ7KmSdCP6blPgffWB9ULmR/RDFYLSW3KYQy6ZpXLprsF4aOBTHNF5VpDJ27bQC5VL2Vod1//z7+t6+LQQMRPxT5SMIgvI2+7NGL7EjbY2fixgDfX07d6JDSLIa4AZw0ozZY30+PDfQyDXr90fM6CvPs8VHPtBskg2x+HmoChzpnSsTSANjW6tJ7aZ7tkphpC0MgL4fD8UjRD7zt0wbyzQLvF/fn2xO6ps5daPVJJ4niFS8V0uO7Ocx4f6l1fFv/gMJESg59qWv6Wuzg91lRNjazfUMZruCqscoSa13oRSu8rOIXgBQy6aowQ/QW+cA33cnsIJRaW9vtasXzWr5mHhrB0p4z1ICLORvkdUkguLYewi91rxJaqYWUp+kIVsr3sIevfs3TLFVnqUPBqRVoFQs/5j1AUmxdfC4MOJIH9zeaWgt1dGT18riu3MDXd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b43db444-bb4a-400c-7669-08d76f397703
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:09.9327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Sr1eouUP4uSqhf0WViNnDP/ZRje6FeD6ewf8iR8FYV6kF/1r+0q9qXoujdGIm4OHL7WU9AqT0gdu8o7H2Fn5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024815_886446_C607261A 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.49 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These changes are cleanups for the clk_hw based API i.MX clock drivers switch
longterm effort. As mentioned in the commit messages, the end goal here is to
have all the i.MX drivers use clk_hw based API only.

I've put these all in a single patchset since they do not impact in any way
the expected behavior of the drivers and they are quite obvious trivial ones.
More patches to follow for the older i.MX platforms but those might not be as
harmless (and trivial) as these ones.

Changes since v1:
 - added a patch that takes care of the register function handling when the
   clk based API helpers are used, as suggested by Leonard Crestez.
 - Renamed the SCCG to SSCG, as suggested by Leonard Crestez.

Abel Vesa (11):
  clk: imx: Add correct failure handling for clk based helpers
  clk: imx: Rename the SCCG to SSCG
  clk: imx: Replace all the clk based helpers with macros
  clk: imx: pllv1: Switch to clk_hw based API
  clk: imx: pllv2: Switch to clk_hw based API
  clk: imx: imx7ulp composite: Rename to show is clk_hw based
  clk: imx: Rename sccg and frac pll register to suggest clk_hw
  clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw based
  clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw based
  clk: imx: Rename the imx_clk_divider_gate to imply it's clk_hw based
  clk: imx7up: Rename the clks to hws

 drivers/clk/imx/Makefile             |   2 +-
 drivers/clk/imx/clk-composite-7ulp.c |   2 +-
 drivers/clk/imx/clk-divider-gate.c   |   2 +-
 drivers/clk/imx/clk-frac-pll.c       |   7 +-
 drivers/clk/imx/clk-imx7ulp.c        | 182 ++++++------
 drivers/clk/imx/clk-imx8mq.c         |   6 +-
 drivers/clk/imx/clk-pfdv2.c          |   2 +-
 drivers/clk/imx/clk-pllv1.c          |  14 +-
 drivers/clk/imx/clk-pllv2.c          |  14 +-
 drivers/clk/imx/clk-pllv4.c          |   2 +-
 drivers/clk/imx/clk-sccg-pll.c       | 549 -----------------------------------
 drivers/clk/imx/clk-sscg-pll.c       | 549 +++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h                | 102 ++++---
 13 files changed, 724 insertions(+), 709 deletions(-)
 delete mode 100644 drivers/clk/imx/clk-sccg-pll.c
 create mode 100644 drivers/clk/imx/clk-sscg-pll.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
