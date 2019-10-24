Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D04E2832
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puT96QeMepOowjS27/C/4fDXGX0Fb17ftpfa9vXJf+E=; b=WjfOsdk3ZvbhDQ
	pionVOD2YPMDqS7hAYXCacOg2dVAxOJf6TFAA/ifjWB/6I8OZmrgX5VsWS0G1rGo2YKhXXJbrUsTe
	jQ8St0YIIrrIyKkfMK8bWq88vBxx9brXlJ6UpbrhC9W4qPNaiwV2EGOA6OqW2iQlhYlhm09VkAN+t
	bWvNtUtRnqUrChw94a/zeyi/Ew7KFeEHJGPHyrIcR7NQuWk+TrnxTQOcmvHgI7yHUj1UM6Dg7LxUe
	HJpncF1LvtmzPN0OAIW0k7DkwnYAIWEuUN3+8r6SYRNXOq+8/IZLzDozLE6A8+nNqRgkdMVFwESyP
	nDuwWSL1hlnujT/7vgxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSug-0008Sg-0Q; Thu, 24 Oct 2019 02:31:46 +0000
Received: from mail-eopbgr10055.outbound.protection.outlook.com ([40.107.1.55]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNStv-0007vO-Sh
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:31:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlyZCvE698wyhB+LgH9xI+GlPgNteaSVgdwMT0MqGQxr0FF7zdbeTwWSUePQ74SEFYB4SXSZgE0zEk3w42D4DvoDYQE0ksBRX41krEsxkDk3T7mPlBL8vpBDKg9RDUkQzpkW5H5lMc2W4zN8LlEBNHB38LuCkj0C5SSRYcgGt2i4fFbeJ258VqoUIZx0fifbJGLyNKZx4mSybF0FVqmA3M8yT8JShQOcq1PtpzjKeu9TfFswvMkBFZsn+Ty1KFk1C54vW7bGxpFaPQtS1XNn0jyMW3BNzku6BvlJFoKgYCi15RfeE5SSdevzQ1Od0E78sN8ncTNorwV8yq1pq5/EFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bI9tTg17t8EgZCrbJoJol28GjuuJsBUZnFzIqIKwFhU=;
 b=A/rBUM+5F7x9R7gYRpbmES/EqNXozwY7s48csmb8H8JCt4IZeUUTSUmGGa3+j6uqxo9SDftVVPz755soTarLd8l1ENMbOr26S6N5b+vTAprS2X7ffvXkrG8WvTBYtCuToiWeoeLV9JJZxjIwasVK+ZShXyHY2Id3ift1FEYZuEPyUKNVHM59P9GQZ1fvWNs7bgDaZYSxVwyiWSUITafLYOFBAlL0FWo8tVIxg8lx55P9dkElNgHRYmMtAX8e5vCCelApjz+43NteHHLphpgKRMvTKg6Acm96fm1bPjdBQZg8kuGmXoyoJMOjlqv38YAf+TYAZiNmcAIEEpFPPT4dzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bI9tTg17t8EgZCrbJoJol28GjuuJsBUZnFzIqIKwFhU=;
 b=pr31gBgbSh+NyUWyr1xv4opVkL0hj4LoTxaPXEqsQoVI9+R1cFaeYLnkmZChcsPiN9mEjMw9w7mOnQLZg5cOaAqxZDjS6FuYqlBXhR7kFzArFtCJf3JhqkNUtg+r+LOOf7NzfSGpEdrO4nikpqJsxds2XTEkFIyBDma8G7iFReI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 24 Oct 2019 02:30:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:30:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH 3/3] clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to simplify
 code
Thread-Topic: [PATCH 3/3] clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Index: AQHVihMQWUCjM/gMv0eoOrW/rlEoYA==
Date: Thu, 24 Oct 2019 02:30:56 +0000
Message-ID: <1571884049-29263-4-git-send-email-peng.fan@nxp.com>
References: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571884049-29263-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0200.apcprd02.prod.outlook.com
 (2603:1096:201:20::12) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc6d7540-35a9-4478-48e3-08d7582a333b
x-ms-traffictypediagnostic: AM0PR04MB5315:|AM0PR04MB5315:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5315B526923280B146F5FB2E886A0@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(256004)(99286004)(6512007)(52116002)(3846002)(4326008)(476003)(76176011)(446003)(8936002)(2906002)(5660300002)(6436002)(11346002)(50226002)(6116002)(6506007)(486006)(7736002)(71190400001)(71200400001)(386003)(305945005)(86362001)(81166006)(81156014)(2201001)(8676002)(66066001)(110136005)(26005)(6486002)(54906003)(2616005)(102836004)(478600001)(316002)(66446008)(2501003)(66556008)(66476007)(64756008)(44832011)(186003)(66946007)(25786009)(36756003)(14454004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nidm5K3oYVUfPR8gqSfFIQ20UdFZYHfPvyCch23p7iJMdpRtZ9uYIBaLRR/TrA3Hw6ik47AAG7fkWMX/M8uwSuJCcXK679/ClI0MEKafyyBNOKdPYZ09pGnX5RhBPMj7k4ZDgEyAg74d+vAwbdzdYAT3N2vcpqMnX5DWr0yawH4mjpEqYcgMsGDK61C8ixKTVH/pzbk9jG230i9kf3/Lgo2u9Ommr5uNLnXpLckslrZRBrrTNT5cJ26eDZ6sqitOpWTAZWc5sWNcpFTuTjYqWZOcZ7Ygnv89UaNHnONimDb+Ey9f9AxY9eQ/8uwQoUa9IQU4hKRRIqLb0+cYPNIDdRC1d77xeuE1+bbmGN9abxhjltgpBUi8+RUjKzmRWZ8zNa7Tn4mcarXo2bbpeHpcgZugub3O46LJ5IBDH5cbj+y1Fc8Zl6ZL5cHqilceQS1E
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6d7540-35a9-4478-48e3-08d7582a333b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:30:56.9137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qStNSryXhqk4EIIst/zLh8afk36pvzBB/xBgLQ4XcOgVMYqwFEBaf0HzjN5foC4GYO94tfp75mTs6u5YXkvpNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_193059_977253_EB46DBD6 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.55 listed in list.dnswl.org]
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

imx_obtain_fixed_clk_hw could be used to simplify code to replace
__clk_get_hw(of_clk_get_by_name(node, "name"))

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx6ul.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index bc931988fe7b..46a8a20e891d 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -126,12 +126,12 @@ static void __init imx6ul_clocks_init(struct device_node *ccm_node)
 
 	hws[IMX6UL_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
 
-	hws[IMX6UL_CLK_CKIL] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ckil"));
-	hws[IMX6UL_CLK_OSC] = __clk_get_hw(of_clk_get_by_name(ccm_node, "osc"));
+	hws[IMX6UL_CLK_CKIL] = imx_obtain_fixed_clk_hw(ccm_node, "ckil");
+	hws[IMX6UL_CLK_OSC] = imx_obtain_fixed_clk_hw(ccm_node, "osc");
 
 	/* ipp_di clock is external input */
-	hws[IMX6UL_CLK_IPP_DI0] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di0"));
-	hws[IMX6UL_CLK_IPP_DI1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di1"));
+	hws[IMX6UL_CLK_IPP_DI0] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di0");
+	hws[IMX6UL_CLK_IPP_DI1] = imx_obtain_fixed_clk_hw(of_clk_get_by_name(ccm_node, "ipp_di1");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6ul-anatop");
 	base = of_iomap(np, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
