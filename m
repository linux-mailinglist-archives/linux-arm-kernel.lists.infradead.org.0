Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D71A1EF92C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdxPBCFQLFIMQVGgIvSas7BEUYtPc77ObYddgMDAvfA=; b=Pg/VKhXF/8glMU
	pWjyElbSnJyCVoTrbXfLHljWZlIxMjwd00tvwxckPEQbptl+sQJ+b7tz2JY8VNNlmhMz+7X+80QE1
	nQT9gBhui8+Hhe1gK3Dp9+KMa958LkplPtXh1YBCg6BM1m8mC/AFuMHiFqD3M3yPy6cRfkrxdsCvn
	hUGvw01/ujMZcVorZ5idGXl9zTdW1oE4ftuHIPvIOZQfrpvkOY5WawPTIKgKyRtQ7BueVIYCqv6Y2
	TkTBio5citaHgzYl7qo/+osTX8kLK/d6T/2oNbIjtvdPjrdshu9RLQFpOPIf3TwtCIOXH4o2nZTXG
	oU9Ge3m31N25/Nfo/RaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCT4-0003nd-Bd; Fri, 05 Jun 2020 13:33:06 +0000
Received: from mail-eopbgr60084.outbound.protection.outlook.com ([40.107.6.84]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCSY-0003dq-Ur
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:32:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJXDa+C3M6tkNpndcrR6Md4tzhaN1LjT7OUtN7VFO48tYYI3dhwlHqZkSmHj/plFzgPl+wm5iZ8xm5pTlOT3UbhXvTBowijqyBNx7gxr3Z2cNcHw+t11kVVHnV0RmgXjJYx2hALZeBHsv7Oqtvqzd7PHSkWJC+cfdvBWTGT8tpP3VYfCrBK5YpSjm9DGIqOL/MvZFk+tW/S12K4+4HOxw6+PbkiON0HfgT43Xn8NoJ4IM9EMW/60vH1Jup1ncb6hzTh0QW9RpL0Q3LfpM5JKJoe4b/e6vQJpO/D6P9XDo/mNt4t74mWTZTy+F+iydq3FZ7We/AxRdfpBUWEgf00lOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0izcWiIsFhbVumJfO4SdrrpucrmDe3nP9In+ncyqnZw=;
 b=kJwifkXD2PK/8KJHg/kex0xnGBcsj6rAF1iQUM8sn2O6jsY9YyvEZGDXgHx5q/06JC5/tF6eQY37zKCEmXxCCWJO0pfThzwil8wZDWK2o3o6fWWaju45S8AprT1O5bU2o0AqVXjiOUF0YY2aUOkT3ah1L+0lFfK3ygcEAn5fdquAyxmb1DNl4rQLZodoThG2/L61zmUNRV4+ssbf1GzQ2EjwXlEIvhpQXN/N8ZUoqmD7+0HvlNdEQNLe49pveZg9yO5Vg1o8iohJvnO3AFpY16vYOFsqhByM66X5krqYhYqf6YFVZNC/bdl2QSY4mB7HWp/HMuRhn5ichBEpgCZWMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0izcWiIsFhbVumJfO4SdrrpucrmDe3nP9In+ncyqnZw=;
 b=EvYtOi9f1LvGWWR+R9swn10/AHnpy+ReGKqOptym7Qyt2io0cKxXOeG/dvOKy8FFJtPGT1vxgSvCVOhXvv/gLCyUXUodVr3KMGz/SJaVyC7wQJ3Fzy7dVVmfqYnIAEZRggqy6QfGIzpc/p463rtIG7nJk/uRRZcISjY4Hi+Ixp4=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6702.eurprd04.prod.outlook.com (2603:10a6:803:123::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 13:32:30 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 13:32:30 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v9 01/14] Revert "ARM: dts: imx6q: Use correct SDMA script for
 SPI5 core"
Date: Sat,  6 Jun 2020 05:32:22 +0800
Message-Id: <1591392755-19136-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:3:18::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.20 via Frontend Transport; Fri, 5 Jun 2020 13:32:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 53c68dce-7ae0-417a-a0f5-08d80954e56d
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67026FE212817760F5D5FBD989860@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f1y4cn+y1ipE6RQHnGnvE4zsUMd68j6uqE/rqnKmQHHetSDuKN7awNCNNaK5JTPWnx69kNgI7zTc79TfhFqrGsTlx+9XaHuaD5QNrtFHZvK+UmyE3ER1Far5we8F7mejJrJkgQi3sPagLD5Cxfq8SziJRr72GKAhuvhNA/r9O4ak4avqWGx5YOT1nQwcnsPTKrXAqEBKVqUC0uDn+gtRQtpXpcWltzrGV05pclqMWrAhzFg+LCZERkEynpBunF8Qgz78FkhPoH3woDv1avld+UgfTj+bA3l0ITau2ThlR7NOHEhf6ymKFNqaDZx3Wq3LUFpq6beBcDJUfTgEweUqJTKNQ/X/3KvYZMtQeO8G3MI/Mg4iW6fLSxCE3627sZRizkWTRcr+Siz5C3bp0UdRljhAuiaSYg6YfBXRaheI6i2IMpzkfTCerjV9L91QZc6Y73Y4TeUbMIcHEvx+5Kw0vDkDjzaynSjJGn2oZj5n1uc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(6486002)(52116002)(2906002)(316002)(4326008)(6506007)(5660300002)(26005)(66946007)(2616005)(956004)(478600001)(66556008)(186003)(8676002)(16526019)(7416002)(6512007)(6666004)(36756003)(8936002)(83380400001)(86362001)(66476007)(32563001)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Hfw2QgbLAPtfMIJuttTdIR/ItmSh+r3FcjHWtqESnepLDemnD5eTf9SevRGv4jsdl4mET1bIZXbdX3W5O0MZhGz6sT8BGxO5EdBxlMjgKZb9XJBWInv7RnW3FnSYQSU/gxrbeuxnhEXyUjXkwVvKPRtVec4qheF45HF/qpU/AoEwZeyM04pXg9CHghvDD4/9Mf96cmEJIgYz0vtJmowwVTXkiPl3sdYCL5UDqtA7Jy+BrE4gbESfOqPG9l+EReC9J37AvSxgBIDvHrkIU24VCjwNDAQ2eObVmkH7o3WKFqly6mQh+eJqLAwhQOdw6wzpKlICYug2hn1Jeebmt76wPmonwBE6hQuzjlDTkR5G/9coX9CMjgHOCwip34BwJKyFiuXqWpcu0Uj5ca9FBEAbUtUwiKK7F3ix9DfkEpiVKXab76AFz5GAFNt6ZrXGzWo/pIZ1n2aRxaCM1fKT83IC7E3/VdIAu5NZ+k3uQk5DG6Y=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53c68dce-7ae0-417a-a0f5-08d80954e56d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 13:32:30.6553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lqq1e7vOavquFrhI45NeEsknbCwJL27zxdKO159qIVMVgjQhk0y7EQuFic4gBfBhvg8eyo7yQ51VVP/p7Dy+DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063235_000661_EC2881B7 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.84 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.84 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  There are two ways for SDMA accessing SPBA devices: one is SDMA->AIPS
->SPBA(masterA port), another is SDMA->SPBA(masterC port). Please refer
to the 'Figure 58-1. i.MX 6Dual/6Quad SPBA connectivity' of i.mx6DQ
Reference Manual. SDMA provide the corresponding app_2_mcu/mcu_2_app and
shp_2_mcu/mcu_2_shp script for such two options. So both AIPS and SPBA
scripts should keep the same behaviour, the issue only caught in AIPS
script sounds not solide.
  The issue is more likely as the ecspi errata
ERR009165(http://www.nxp.com/docs/en/errata/IMX6DQCE.pdf):
eCSPI: TXFIFO empty flag glitch can cause the current FIFO transfer to
       be sent twice
So revert commit 'df07101e1c4a' firstly.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boot/dts/imx6q.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 78a4d64..afdd9eb 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -177,7 +177,7 @@
 					clocks = <&clks IMX6Q_CLK_ECSPI5>,
 						 <&clks IMX6Q_CLK_ECSPI5>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 11 8 1>, <&sdma 12 8 2>;
+					dmas = <&sdma 11 7 1>, <&sdma 12 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
