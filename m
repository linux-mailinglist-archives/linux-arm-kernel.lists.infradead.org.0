Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5D0ED8AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 06:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEuT4EzbAtj34y1bB+PDNzyLZNfrGHj6M4HJaY2JPFQ=; b=hXV7DZdR3HjmKW
	a4ov+EWiTSOxxAQvJHVy+eW8INwK7vf449c6Zyv4ynJFgSoA8aCNPmMt5rOdqlRYm283kJa1hBduH
	KIfST6kBcWuVEQ+0NzRwAmWXxE9tf5gFEQk3EsE3BrkYf3FTVnSbKCg8FJ+SQt5pcW/lO611lSN3B
	mr4iXhO3jYYvYb9O8mgcTc16jtTlwzt0IYXvobQSfcH5w477VxPvl4REzdXUAR3elCW9/H5xtoXVR
	rJhHn9lz/bEViiAHNsf+9iknJewq/ejduwqfzpzynXvEv+f3eo83Bs/9GAHp/cJ4dux7l/8BeIKzh
	mclV1IE9tHOg1X9pv58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRVCA-0005xG-JX; Mon, 04 Nov 2019 05:46:30 +0000
Received: from mail-eopbgr40050.outbound.protection.outlook.com ([40.107.4.50]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRVBw-0005n5-Mo
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 05:46:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=befiu6mDXcU8Xx15Pm3tVdPtyBRZS1tinJKNx374UZk5qR3B4m2Qd/QMbSPnGr98O4v2iBwlUqdT6TXfL+fTfdTi5+y4C/RIy5M+LY75y/U9iQTqVWhMjzNR0MesBr8/fq3iHOX/xpG2YCYyLiZdiOCwGvjeLPQLM2stIZ3jBduOUnvDHVoZfrH+clmFg7g03qfdTlJM92+kpbxYrgKw2AJZ4YPFQ2dUL4RTe4CrdbtAUro157I75aiGTXNegWrckatSaS/BpTMMcC0EeZqemB/C7XcG98+iV8GWe8SFJ0iTnr7S8VPz+T+lsSQNUtejfxKd6hfmx+7/NpMdTOhE8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=mjMGKtM8CSdQtZ3gPz7NXzVRjzKSJwvbatAup4nqNYQvr1DiOcMqMVWNmIAvsemL0BO8BnniOXU72fiHaPg2acC6eZAvCVnCFVF2gV6htqi93aZGIUJL0Bwj36KvBrrxxSbcCVJ50sDSRDmlO6KlIH6kzgGaIyogFIAlMyyTCQyAm8bqojmaBr5ZuZ1CYOqDM2YPRmcG2PUx+ett+cyqfm4vm5vugPUyFRYFn5y3tgzGzbUtR0YdESUgMTCX66tv+WnOMd0rIwqA3HDPdnoBff41FXx/FFju8RtwANJO0e9WxVPK/HrwVklmHu9WqlwL+TctTx7v6LOYntvwpxpSXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=oTFgvoATujPgmTfT4ug+XkRGiinqIo5SWKr5+tM2fLk60TimoZYAIIHHeFCT7LhvBV4lFsRK683hfd3BE0V+aAwQZAYyPQgZBIo+FvquelyAi2VPZdaYIftup3bVcXXxdox1SIsc8hAIf9nKw/7I1XFM3tj20NLpY4xMawu0cbA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6451.eurprd04.prod.outlook.com (20.179.252.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 05:46:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 05:46:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 1/4] clk: imx: Remove __init for imx_obtain_fixed_clk_hw()
 API
Thread-Topic: [PATCH V2 1/4] clk: imx: Remove __init for
 imx_obtain_fixed_clk_hw() API
Thread-Index: AQHVktMnGVylTOmyPky7I+IXKHDRpA==
Date: Mon, 4 Nov 2019 05:46:07 +0000
Message-ID: <1572846270-24375-2-git-send-email-peng.fan@nxp.com>
References: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572846270-24375-1-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: ea94b1b7-3fa9-4ec3-badd-08d760ea4995
x-ms-traffictypediagnostic: AM0PR04MB6451:|AM0PR04MB6451:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64518D738AC45CA3E9C1DF72887F0@AM0PR04MB6451.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(189003)(199004)(386003)(4744005)(6486002)(36756003)(66446008)(476003)(6512007)(2501003)(8676002)(2616005)(256004)(26005)(50226002)(316002)(2201001)(6116002)(6636002)(3846002)(14454004)(6436002)(64756008)(11346002)(66946007)(71190400001)(71200400001)(66556008)(66476007)(478600001)(4326008)(2906002)(102836004)(86362001)(76176011)(186003)(305945005)(7736002)(8936002)(25786009)(54906003)(66066001)(99286004)(486006)(44832011)(5660300002)(446003)(81156014)(81166006)(52116002)(110136005)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6451;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CPMbxo6lfKuJCePra66PlIrmYBLyDgJF2A7ISopXfufeUS5fnhtuoSEGBVbG9zvWCfOgoYhDWQ0xpIAOS9mvmUHlZ1X97z6K6emRvq19X7vQQza41b7T/4zwsP2meWWvwqmbb8JWlN+R08ncqkLyejOgmKSBgyy3Qgd0O0HO590JB5Ke9xd1ed03Ak3CF+lyv3FbR1MzDvqIOU0XqJXrD0H79ZloxbLFU4aXXyuGTyb7qV0Wh2/ndx1tqNRQndtqLGEil+fzGTuJCwki+DQQO9n7opbM+fXbDkNaaFpUdR1hiLCZYJ/EPnAHCznhPeh8a3sm+rGU3mdnUmsTZRbKO6XesGIAy68LbbPqBUfIMz2+wZrR+qaXy6Sde+Bw9/2VN7osz2j9rjSx+0eOuXWY7qXo4+LgvHD3lGRVjfeAXtlHGQMhdSPvuUWsdCejcNlZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea94b1b7-3fa9-4ec3-badd-08d760ea4995
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 05:46:07.3515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O4ZBFDsEzsm96uUOxzzAmTfqf61o9/0xVaFTU+ZbjvJEp6jQvY2md/4CNzGrge85eDI6UbNavifbk5HIiCuDmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6451
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_214616_761957_D2DF4CAC 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.50 listed in list.dnswl.org]
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

Some of i.MX SoCs' clock driver will use platform driver model,
and they need to call imx_obtain_fixed_clk_hw() API, so
imx_obtain_fixed_clk_hw() API should NOT be in .init section.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index d0ce29f2c417..87ab8db3d282 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -102,8 +102,8 @@ struct clk_hw * __init imx_obtain_fixed_clock_hw(
 	return __clk_get_hw(clk);
 }
 
-struct clk_hw * __init imx_obtain_fixed_clk_hw(struct device_node *np,
-					       const char *name)
+struct clk_hw * imx_obtain_fixed_clk_hw(struct device_node *np,
+					const char *name)
 {
 	struct clk *clk;
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
