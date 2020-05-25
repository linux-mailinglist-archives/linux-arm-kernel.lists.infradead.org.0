Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFE31E0BE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6WWsvdKxlYijxGJviS27Odmo+aEJ0IiLEjUelJz/d8=; b=biAsRFDtfy3fgg
	DV4aa1954z6FgiDsfcNQFYJkzIpXI2A/zMnz5TK7SQ3A/tqp6mNdJUdB838WbIksvI6J20eP7XgNl
	GtPpLmQtE3BG5+hQM4ujXNaQR/j3ZRfHoFqRenbAfNKJ7LqeHmdk4RmkT9Ni0al6no6ijfUToVNEa
	LxjY7JTbYNTdoIJ3FGkpVTAZ3KE4LJh0vz9evhgl+RWCYoq3F7KMbhCuwza8mTl9JzyoS5sdvme2c
	SAj83vOnVXCv4Yss0uSKTXATBhokREqWHNy+rDovj5jxVDYs8OIGWmp1eQHgFtUCSdypYYAOXBZYM
	1DVa63Eh/FOZfzvysLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdATu-0006h7-SJ; Mon, 25 May 2020 10:37:18 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdARk-0002ck-RK
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:35:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BF14f/XkNYFWt/j2+kuuh4vKgY8COxKK3maAZ0cuKkjLsT2It0ZieP+1SWty+edgPxG3Fd/h39IaPX65uhzqaJRz11SwrPw524oFcZYK3ptcTpwnenWIso6aNUi1sl2t4ef9qi8CIMHRPOSwnpIIbsyWQs6E7MwLVsrjABwUkL6hREgyt2QrFn9LkGgLa/jKx750kmezbTjTqQ9XmSWWJH8bYxCovO9vIDbSdAh4C4Ip8Yq3MRGinKbqiAEZfbi6cdGXaCgJinsIPF6ZxRNAYbl02mlJTxd5S3ifY0m1i8xtAbUVBgDdBQvMIEM/F5MjCLUeXKurZ7NtWvuPXw9/oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gdHSPFyBhZiQv0mE0PxTJJlUABUrU8MFGvcM7UfAeXA=;
 b=GJlUarOUQHZ2Wb5yfwH3jhVIxqeo0S6bHJpw0kZKJZ7dR5B8esW3A8A78IO3FAtGIK5Ykp7EC/sKBcX9ynkF2OFJZE0xrjWTA+u5Cdsc0mIfPXXTfTem3IFrdLlj9yGtXqOC0fhz9zOB9mxAQ//bYZ/EKQHJGyyh4773XopI/2BkGW6fCsosczuTuDq4RKOyrk5En8mDZh8buwueizFhKSOTQjatAy2AYxcDnaZaHeteRXAgKTQ16HnsLLMb3pBuyo6Gyk+AeRwm7Mwgk2cVSVyY6pSkXHfBYa49gMHtbrdVOWOOVeO4fwSXFVAL119stW2PKrejyxtZfEJO+rwmQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gdHSPFyBhZiQv0mE0PxTJJlUABUrU8MFGvcM7UfAeXA=;
 b=Mn1Dmlch1FbcGo9Fn7JJ/+4CDsrhxNEbm79PLxKoMtOIyfgjdrK0gll3gsCIndDP2SxzgJPyo/ZIEFzsymLMVIsC6qvfOdmS/gl7/267a71a5ukB+GwJj1OWffAQ+01W8FuxMOpH3BwUeKMudOgItX4TbaEa+ucFhdHT4nyDAJI=
Authentication-Results: st.com; dkim=none (message not signed)
 header.d=none;st.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3383.eurprd04.prod.outlook.com
 (2603:10a6:209:a::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 10:34:47 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 10:34:47 +0000
From: Fugang Duan <fugang.duan@nxp.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [PATCH net 2/2] dt-bindings: net: imx-dwmac: Add NXP imx8 DWMAC glue
 layer
Date: Mon, 25 May 2020 18:29:14 +0800
Message-Id: <1590402554-13175-3-git-send-email-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590402554-13175-1-git-send-email-fugang.duan@nxp.com>
References: <1590402554-13175-1-git-send-email-fugang.duan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0180.apcprd06.prod.outlook.com
 (2603:1096:1:1e::34) To AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b38611.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0180.apcprd06.prod.outlook.com (2603:1096:1:1e::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.23 via Frontend Transport; Mon, 25 May 2020 10:34:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f9044387-9f90-4478-ee92-08d800973ecf
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3383:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB33839B68B9E1183C5FFF3EFFFFB30@AM6PR0402MB3383.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fJGgArq+t/Pc9Tm9Eu5qVS3p7ZsUDWVH5ZrIjzvFYfDTr7EW7f4SK6LWmfloj7bfS9+c5KFEjsbunIQS5DopnMMXRSEV43Z55h5kU8455Ub60TBoMG85twZUuEiIR2IQ2pTGQLHKL8gUy1b4yYXl+sbMpC0Llpps3mltclgWYuaPm3Udp6NPcUuplH0+Zo5jhw7SnFKG3noC6a9/dFfkVlezqnEQcgbk6SW1sLYBCMyddlJCWqjixZIIdhAbKq48rWLtIOTy0I+Alck3OLtFnI3T6LITEhQYmENMRUGMrq3ob5zHZmz5rcs0Aw3S/nOKa1I3r7x93k9r4ww0EVQTQA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(2906002)(4326008)(6486002)(2616005)(36756003)(956004)(44832011)(8676002)(5660300002)(8936002)(186003)(16526019)(6512007)(478600001)(66476007)(66556008)(52116002)(66946007)(26005)(6506007)(316002)(7416002)(6666004)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Hlqva7zzCxYp422J5en7b25vTU6NIzbhUgZonYqXShiBDq2uWJJomO8SKz2LsDioJXFxgsG0lnZ0i/SJxb74ZTXUJxCx7w6dDIFuVtmnb3lyhzd48bFxNfcRB+UpbSOObtdzXWAJG2AMPqYhDaOK7nZFRL/fIdEn2J3AiHiF45L5a6BYYc/Ec4cP0nAcahmeeP19+K26wzlMFuekdLxiR0UPcJzDVao55gm386P3OY7WkE8lEgeDVeIJgsnKVubk8J7Unt/7m0ce85P0lb6TNGrnz4+U5xCEaT87fKps1tcSV6P1AENX8qoY7T1k1NeCJQIVHrkhJaK3u2YYyJQozDwI3Rp8jyUuUus3qjY+g7Rd3kTWhOIdzZbF7od5H6E8M+gTNzcCeRLVJXzZn82iFz/ABtCNeOo82nvEo5+/JU8dGal0k0oNIewpPmHlOZ1gyZLRZ+WmrP+SJMrpHiNcMxtVMCSdM/NmBWMRg9tuJhie8ej8DocC5SiRwAgEO8y1
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9044387-9f90-4478-ee92-08d800973ecf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 10:34:46.9189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xdvt1tckgTipEPeZrnWnKoyTirshvchfIJ3tw1f04/X19rFc0oSEiKyMPJvBcUDOCa0nx8KlTRSBQv+NRJuLTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_033505_142556_BE32E40F 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: fugang.duan@nxp.com, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add description for NXP imx8 families like imx8mp/imx8dxl
that integrate the Synopsys gmac IP version 5.10a.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 .../devicetree/bindings/net/imx-dwmac.txt          | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/imx-dwmac.txt b/Documentation/devicetree/bindings/net/imx-dwmac.txt
new file mode 100644
index 0000000..921d522
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/imx-dwmac.txt
@@ -0,0 +1,56 @@
+IMX8 glue layer controller, NXP imx8 families support Synopsys MAC 5.10a IP.
+
+This file documents platform glue layer for IMX.
+Please see stmmac.txt for the other unchanged properties.
+
+The device node has following properties.
+
+Required properties:
+- compatible:  Should be "nxp,imx8mp-dwmac-eqos" to select glue layer
+	       and "snps,dwmac-5.10a" to select IP version.
+- clocks: Must contain a phandle for each entry in clock-names.
+- clock-names: Should be "stmmaceth" for the host clock.
+	       Should be "pclk" for the MAC apb clock.
+	       Should be "ptp_ref" for the MAC timer clock.
+	       Should be "tx" for the MAC RGMII TX clock:
+	       Should be "mem" for EQOS MEM clock.
+		- "mem" clock is required for imx8dxl platform.
+		- "mem" clock is not required for imx8mp platform.
+- interrupt-names: Should contain a list of interrupt names corresponding to
+		   the interrupts in the interrupts property, if available.
+		   Should be "macirq" for the main MAC IRQ
+		   Should be "eth_wake_irq" for the IT which wake up system
+- intf_mode: Should be phandle/offset pair. The phandle to the syscon node which
+	     encompases the GPR register, and the offset of the GPR register.
+		- required for imx8mp platform.
+		- is optional for imx8dxl platform.
+
+Optional properties:
+- intf_mode: is optional for imx8dxl platform.
+- snps,rmii_refclk_ext: to select RMII reference clock from external.
+
+Example:
+	eqos: ethernet@30bf0000 {
+		compatible = "nxp,imx8mp-dwmac-eqos", "snps,dwmac-5.10a";
+		reg = <0x30bf0000 0x10000>;
+		interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "eth_wake_irq", "macirq";
+		clocks = <&clk IMX8MP_CLK_ENET_QOS_ROOT>,
+			 <&clk IMX8MP_CLK_QOS_ENET_ROOT>,
+			 <&clk IMX8MP_CLK_ENET_QOS_TIMER>,
+			 <&clk IMX8MP_CLK_ENET_QOS>;
+		clock-names = "stmmaceth", "pclk", "ptp_ref", "tx";
+		assigned-clocks = <&clk IMX8MP_CLK_ENET_AXI>,
+				  <&clk IMX8MP_CLK_ENET_QOS_TIMER>,
+				  <&clk IMX8MP_CLK_ENET_QOS>;
+		assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>,
+					 <&clk IMX8MP_SYS_PLL2_100M>,
+					 <&clk IMX8MP_SYS_PLL2_125M>;
+		assigned-clock-rates = <0>, <100000000>, <125000000>;
+		nvmem-cells = <&eth_mac0>;
+		nvmem-cell-names = "mac-address";
+		nvmem_macaddr_swap;
+		intf_mode = <&gpr 0x4>;
+		status = "disabled";
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
