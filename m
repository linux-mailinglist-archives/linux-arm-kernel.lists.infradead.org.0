Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D221A7E29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b3loWrjbiGE4fwHOV/lTwNSwEpA3W9WbLmHR9XGsyA=; b=p9Y5bQOyrNpYH7
	C3veuo5ZYYvetvOvgwChvNhZCoEXvVw6wbg/jYf73Fb7qoStJSNd8OLcdxzh2mn9hGV68qiOTBs2K
	SDOxd66+aoUV49ZzyQ/4UVL6kRFJIWjPWAdfdRlR79lthh/w64BxC0mbvBaK0f8pQyw1miMnkmp13
	lqrqJr22tNqhOXuglyv06oG4e9D7AcQ0+asnJPYFoNC/i+PCrnqxPDoTDhnLGTGGgRhEoU5UuDdW6
	1OcaL8uK/NMUWFSbj+bqZmI89q8IEXXo9xi7GqZv/DlTv1JlO7FrnMpkEgUawxz//lude0WoZMrlG
	NXS7T+rxstsV6SaCY8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLgr-0006jK-Kt; Tue, 14 Apr 2020 13:33:25 +0000
Received: from mail-am6eur05on2057.outbound.protection.outlook.com
 ([40.107.22.57] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLgV-0006Z2-Bd
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:33:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYVr0b8CBeye+NiPTj5SkaORkeba5IEIFqNIHU64u0nTNe+5Pj5bH6lboq816IAm3gY8jp06ABe1rwrjj1JUP2p9ldqB+8zqX135gO2hPY+bJ5vAHZUWUWAmiELTWJdWuoOOTgHbK61cj8xccZerpX6emls8K1bcVciTy7hkIMKqvNYlvFKLAuWkxDImKt16QI13+wqFmEvzZhc7DBEIQzCYGCEp1TBkMUCllMJEaJNpSX1rGlVvTYoyVHoXr93ZiarVzZxglBbpdUzADohetJRMsK6GjTu2A+E00Clu2eGDb90xoramNmqdpw1IfzkbZAbzlha+XtuWsip2Ru5Vsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NL8sIrTPMTjTw9dEwdqXWMZa6J4Z+Xvn3kfU2jnW7ZU=;
 b=lnlDz3in/ET3LOcvPudKu+Sjk3EOKnm+E4UmUp1crGWEEZWdBiT7TV93Xhu4cL5sutxVr3q7un4r9VAHksRMaqWqfDVwVoU9KiRk6iwdBWhFhKoIt4PtFZCof7kEB29/E7H9G9gB6vP4QtiIjLPrcIjBNvNirAZK0plBgmQhOaGD612FiAO/Wbj8GHvc+LrgdQ15kD3tXDPeOt2q2ZFZwkifqtPdwJCOCdr3q7SGYTBGzPtUlF+zeURBFmkh3f7up/zCHlgBCPpbY5cYSRhggBjTJlPQHO+Vz0E+8hFBY6KpewTLqfv/ZnjxfNTQ8WHnFRaLLxl4uSW4VvkT7ITVng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NL8sIrTPMTjTw9dEwdqXWMZa6J4Z+Xvn3kfU2jnW7ZU=;
 b=iYJPYjzb1rLswxH7HXZUp6Cvpkmtg7NTqi3Fm5N1GdT4WoRVc7OK+mip2KONWIhalCIbqAdZFih7pW9CQIZJTx8BpwGMMd4Yb6cMeDC8Uyz3aTCHjtIUmq2+GUJr1L8SjrBq1+P44LzOqEg2DlUNSIZcXS+pu7G5YF2YYNzadRs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB6868.eurprd04.prod.outlook.com (2603:10a6:208:18c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 13:33:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 13:33:00 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 jaswinder.singh@linaro.org, linux@rempel-privat.de
Subject: [PATCH 2/2] arm64: dts: imx8qxp: support scu mailbox channel
Date: Tue, 14 Apr 2020 21:24:28 +0800
Message-Id: <1586870668-32630-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
References: <1586870668-32630-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0118.apcprd03.prod.outlook.com
 (2603:1096:4:91::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR03CA0118.apcprd03.prod.outlook.com (2603:1096:4:91::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2921.12 via Frontend Transport; Tue, 14 Apr 2020 13:32:57 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2a184a8c-946a-4af0-0999-08d7e07859f5
X-MS-TrafficTypeDiagnostic: AM0PR04MB6868:|AM0PR04MB6868:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB68688E76B335E4772DF9956988DA0@AM0PR04MB6868.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 0373D94D15
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(2906002)(16526019)(7416002)(5660300002)(956004)(2616005)(15650500001)(6666004)(26005)(69590400007)(86362001)(316002)(186003)(8936002)(966005)(6506007)(6486002)(478600001)(4326008)(52116002)(81156014)(9686003)(66556008)(8676002)(66476007)(36756003)(66946007)(6512007)(32563001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jcr7FG5oesmp6OUNXN+9PqqSFhXw6dR4chiSvm7Rwmn2y7JWSetwNFu1MUe2PZv2XcjPG1NDxEua7VCzeZOVOeZ31Y53Xp0XfIo40vyyc39QWlA2P85qimvisO6OgkfA5rZSe/Xv0QtaiqGEstF9u5klvIRkHCG90mzMZ4+Dz1d6lDF5m5x1E2j1ij2dsVdqSBTvVEBHYeZ+EwPVDSooUaZQClfrBKMZV/38Qrdone+X7m8SmaoSFgkXwlbylq+GXvTD0+vWyNlDDM8zTn4tGksiZaVmMy+cDSmOZ1phAStY+X+8p4jks5t1iqq6ON24Hzl7qg8p9kyBHtr/tkEpthTOEfkS/kukN4GJ74k9xxf93rH0CM2K8wQemMA26tTvlUocCWHY7nRMSfOXRnguyn1ozdbLr7St09hlXpclt9VsDU4cmpWjYSCk1BHpLFCwyy0eCBxR5+jatd5ZIzaonU3mHfgKgGQ9Y607h4Iwg+HutqlW2XqupfJJ42EgHOLROZW2Xtc6zRn3R+4xVxljvt9/wH+G6w/7gDjEqIYW+LVnNSMZ3hL0xbGw2xa8bLkpx7DesZ9aZFhjJRPwpAvKnB3bqR36mtV5kWTGZzqvVmg=
X-MS-Exchange-AntiSpam-MessageData: vvT2gq6wM7azpESHDRLspFcLfgxsnKZFi3DiUGIoO3tjsNYXHXRCSQN4VrH5c0lZLMqvdRoR/Vs2fR2eAvbiE4zPvu22RZ9pr+a5RPiW0+TktP9mMz59f/ngGfGb3hBAHagIIXlvlmf2COKOn5s2Ow==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a184a8c-946a-4af0-0999-08d7e07859f5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 13:33:00.7971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1dEZexGQXlb590SyZt4PKbI/tXqi/N+/XSiSkzgOSksO3omwvwVnqA5jqdT65AcAiI+RzXWGzYyRe2mkaUa3oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063303_410984_AD317879 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

With mailbox driver support i.MX8 SCU MU channel, we could
use it to avoid trigger interrupts for each TR/RR registers
in one MU, instead, only one RX interrupt for a recv and
one TX interrupt for a send.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

Note:
 This patch needs https://patchwork.kernel.org/patch/11446659/
 The other three patches in the patchset has been in linux-next

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index e8ffb7590656..d1c3c98e4b39 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -141,17 +141,11 @@
 
 	scu {
 		compatible = "fsl,imx-scu";
-		mbox-names = "tx0", "tx1", "tx2", "tx3",
-			     "rx0", "rx1", "rx2", "rx3",
+		mbox-names = "tx0",
+			     "rx0",
 			     "gip3";
 		mboxes = <&lsio_mu1 0 0
-			  &lsio_mu1 0 1
-			  &lsio_mu1 0 2
-			  &lsio_mu1 0 3
 			  &lsio_mu1 1 0
-			  &lsio_mu1 1 1
-			  &lsio_mu1 1 2
-			  &lsio_mu1 1 3
 			  &lsio_mu1 3 3>;
 
 		clk: clock-controller {
@@ -548,14 +542,14 @@
 		};
 
 		lsio_mu1: mailbox@5d1c0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 			reg = <0x5d1c0000 0x10000>;
 			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
 			#mbox-cells = <2>;
 		};
 
 		lsio_mu2: mailbox@5d1d0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 			reg = <0x5d1d0000 0x10000>;
 			interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
 			#mbox-cells = <2>;
@@ -563,7 +557,7 @@
 		};
 
 		lsio_mu3: mailbox@5d1e0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 			reg = <0x5d1e0000 0x10000>;
 			interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
 			#mbox-cells = <2>;
@@ -571,7 +565,7 @@
 		};
 
 		lsio_mu4: mailbox@5d1f0000 {
-			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 			reg = <0x5d1f0000 0x10000>;
 			interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
 			#mbox-cells = <2>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
