Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B2CE282C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e201QAUuuN31KsqyzQK2eSL15PcC3XLsoeMjFprOg2U=; b=k47KDwWkPEFJ/F
	OvypVV4ua4UB7mN9qGLgm3WP/ujrRrzhJYvNIYuhW5l24PAm73EHAVAzQAkSpysrwIoXOr/RI2klx
	ijOyL/UuJJE2Yq8OOaoPnaGyXkRX6j9CfJMeJ29FDMItwsxIKMBVf8LeO91ZpUbRvp6HCPF+pEOQ+
	dbsIPunpL3f4G4GBsYlr/lFkId8OLLRWAvI7SyJQNFmf9EUoYzJOgAVYQf0mLbtgUqwxTCZ+dkyXX
	VSSDELN2YsoGiipaAr/mdUXbUOJzwC6GLfu2gi3hkpERltnyq6xK7sLkAMuAvBQdauyCf/GCxVf0E
	CfosQjPWogZ90knacHOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSuF-000801-6Y; Thu, 24 Oct 2019 02:31:19 +0000
Received: from mail-eopbgr20072.outbound.protection.outlook.com ([40.107.2.72]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNStl-0007nC-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:30:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7/CJ3MB+50TqH9FgiIRXjZl++j7RVhEH+iZEdLRqroEk1Mx5j3NSHnqSMh1nNMnCMZWu0hlXoaZaZlXq+cFoh/JJLSeFm9kVe1jK/IJIWWAu+qkf0Gcoh/SbsRoNf5LCZ3PXShspjS9rifKW0BW3IqatxxDVTrnzaCAXeR2QL8lR/WOuu3xVHM6TUlkraIgOLD+lC1s6FPQQXNnxV3gopFS6DSFbyw9Ukc0wlPiZVePr1o61Hf0ODCJuquzujCSX+4XfJTlPi3FgxgrM0nvnhS7EQIoG8QRtpcx9SQ0IrY+flB2FBXooTPzrE8Jrv1f8REJVCl1Wj0XEwr0SY5lOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WulYEXx1tckffS41JTOkNk+Lh3iYkyPwFfydyHwiX/Y=;
 b=Mzvizwq03Q/CEKLaY+AXIY9OLcX8u6bv3RFJS8yXaGisRqZgkD3Fjz56UpPuh+bX5pFLetYoj6yeOALo0dsI8QeGMPcd78hPA0VFO5cxVvHUYcDljpDl9r12yBhxHheseHBAf52qdRs+rxdUavHHI9dVNrvdqWTNHCsgr4QYIxRubVbWBA0RvZVWXgH2JRudBXA/3ZaALMgDeJzx6Ps0uumzeYGbO3Phz1Z+KOlKVV7pszLlz6gnXRtDOJP3m6b4cA8kUkkhwPKooEd2HCSnEPQ+7zLhtrNmOjjmgsXYWCv6mMnG+bx66weJoBQg+GhPEQTMLTO1TPw8Ty6szynOIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WulYEXx1tckffS41JTOkNk+Lh3iYkyPwFfydyHwiX/Y=;
 b=Exo5F42eHCVmV3O9bO4Sy5Gd1kKJBYDSMr9asloMxI8F5vrr8tcSUQoIbHRdCnzhWqXtMWiMFrAG5YhBKG85r7V+QyxF8WBpvVBNfrYXU91vioHsTRR/KIDL/DFtMYP3yJPJuwakiaDRz91a74egEnw/zCFvYKcgPd7yQjTZXNw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 24 Oct 2019 02:30:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:30:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH 1/3] clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Topic: [PATCH 1/3] clk: imx: imx6sll: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Index: AQHVihMKzo2n8fb25U+lPu3sBErwkA==
Date: Thu, 24 Oct 2019 02:30:46 +0000
Message-ID: <1571884049-29263-2-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: a9072baa-0780-4e47-3105-08d7582a2d34
x-ms-traffictypediagnostic: AM0PR04MB5315:|AM0PR04MB5315:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB53157DB11B6CDDC31C2B91F4886A0@AM0PR04MB5315.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: rZUcBlaSOhsDiQnxTAmYu6TB9UipJwGzmrl1n00d1x2AjUqw1liTCXtgtF2ZdsOZwWrs4q62GQE7lyqN4aSpI4wrTlk4/U0d5vkdmXpkImWAzMebMW1UTiU0jFKMHBAz9ZLK0FBHm/PaXoJmlxdFl2HD1qG1vntlpwH5QggQCPSb4Izant0H0V2ZLn12oVxMhrCVA30NJ+se3yMk1sdtKH8+IY9aYFq8O4mvQj635p26Tcflgn89pJrrXeX8sEy69mEHttfEK8s+P7QlVb+QUhun/z+uu/p4RlH1MpG/Sr40CRGY99FnSoR/Xa7jfQq0xJ+X77td0n1yuTWb7kA7WndpY1sHUe2f9SHDOlbPKrXjUmWXrtzvbqk9Of2IPO4L9A+fvdrRLmhhlCDaYf7fSOiKjS+NLox+r7pwMxN72GfOV/q78Y7qmhgee6M8D75N
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9072baa-0780-4e47-3105-08d7582a2d34
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:30:46.8049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eex4RfclVtiQzZp114QTqOQiQwsz7JTCh19j15a1baRb3H7/yFl85UDUtVFqraZKQeminA8R7XAvpFPkSuIdAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_193049_649471_E9D5B631 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.72 listed in list.dnswl.org]
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
 drivers/clk/imx/clk-imx6sll.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6sll.c b/drivers/clk/imx/clk-imx6sll.c
index 5f3e92c09a5e..8e8288bda4d0 100644
--- a/drivers/clk/imx/clk-imx6sll.c
+++ b/drivers/clk/imx/clk-imx6sll.c
@@ -107,12 +107,12 @@ static void __init imx6sll_clocks_init(struct device_node *ccm_node)
 
 	hws[IMX6SLL_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
 
-	hws[IMX6SLL_CLK_CKIL] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ckil"));
-	hws[IMX6SLL_CLK_OSC] = __clk_get_hw(of_clk_get_by_name(ccm_node, "osc"));
+	hws[IMX6SLL_CLK_CKIL] = imx_obtain_fixed_clk_hw(ccm_node, "ckil");
+	hws[IMX6SLL_CLK_OSC] = imx_obtain_fixed_clk_hw(ccm_node, "osc");
 
 	/* ipp_di clock is external input */
-	hws[IMX6SLL_CLK_IPP_DI0] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di0"));
-	hws[IMX6SLL_CLK_IPP_DI1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di1"));
+	hws[IMX6SLL_CLK_IPP_DI0] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di0");
+	hws[IMX6SLL_CLK_IPP_DI1] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di1");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6sll-anatop");
 	base = of_iomap(np, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
