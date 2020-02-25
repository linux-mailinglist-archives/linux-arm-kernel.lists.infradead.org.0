Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA0816B803
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 04:23:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=omLgP25+tcXoKeeGqEyPFayGvHhaztSe11BIcwgBbPw=; b=Wm1Y7dNuB0tFak
	mjfXDV+WGL/JRL7yGMQnnMJtWh5ePn10U9wBVfzTkEW0bLX51Gyy4+VYhNB39IEbeorq01u2Y28kK
	+wmY7HC9J30l28qioaSHbzW/2Ud1YXpMZ9C9pmAC73HdwyJZPWpmXROuGlS8M7uTJhTmZWESK6oDw
	pUxpLlilzAk6KEfXPgQr7zYJ5LGzSFVpURjg1bTG1VF35nvTemgy2FJS26mmyZd/EnrkXfx2wmMTv
	1bAdPWnrn1HI96+71hZLinbF1ZL55yDTVaGSEvDQCiyS1Ip92UYZU7hPP6DTSqrqg9T0C6z40okA+
	pql0eV1XGzooOYareXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Qp0-0000pI-R4; Tue, 25 Feb 2020 03:23:46 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Qoo-0000oA-27
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 03:23:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=baKBD0/Lw+zV2o3TsHaGAviQpeGyMNI5rA0TiJi0W/1JfctgdkfyCu9RIfFeNQ4qDHUvealsswFcZihrtje16xvcRsJrJnYeJxxw3sTDv3gUh1Gd7mG/qlOWSgy8qyr55u5QfwBIidokwWPOpirufGwwIgM4gLRAPK0862bs09yC9qKdFDFiA+7cdFYC14A6HtK7s5x/ZFj6qb7PeWwiFy2eBCsmonwt21Xh6o5G354snyeyjW4S6r+i8RblTshCA4XAPzUT36Xghp6dlkxjd3KfnFtmTETFo8FGuu5ILZGja9PIePta5XxQ9snZjbxzbVRG6GofsT908AjSeL46dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=seLbO9qiGfWraA32vqLUDiLFPPAw5xqA/W/KZBMl6KQ=;
 b=GpFAAM7HwRiApMoDs31Yl2kxu9RSZN1p3NsF22izPXNNe/7ycSkdaHEdL7m7TZ3vonwcUsdB8Sez5mKtYU+1pEyqE5HOUNCz4B1DZFX1KG08mFm/aUV8I1kE+GmdnGyGkLqKC/w9G+4LrC36PoaPUuMu+4CHoqnJBpT344c0nP7sbdon42v9gKjLGm7k7OYx3i1u1CmB7p6H+tZL0vNr+tmnQYN97zel5M7R5EdrEXdZoGXOlkB28rvEFGlgaFrzdfLUGeIuTN4U1KRzVjjrZc0u89VyxvsoL1xh3cD3HdN3ampFJoZAGwjv53uAl7xMI+tUfSLIRieDVCH/jGE4zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=seLbO9qiGfWraA32vqLUDiLFPPAw5xqA/W/KZBMl6KQ=;
 b=e19+4dJPAa1PYFnzowxH7ZvYU0/SJ6rep6j+QO7BF/XQ/CMNXu6HLr/jeup35kjuG/VZIcvq8us9NWMfBoD3CudqCCiBeXwDd2bEMUj19/DIHQBOrZuAha7lEuDhW19A95+EfyAUds1EbyOVhAFeT7X3Qa9++EBS520CJeZwBhg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5938.eurprd04.prod.outlook.com (20.178.112.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 03:23:26 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 03:23:26 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V2 0/2] mailbox/firmware: imx: support SCU channel type
Date: Tue, 25 Feb 2020 11:17:05 +0800
Message-Id: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR04CA0089.apcprd04.prod.outlook.com
 (2603:1096:202:15::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0089.apcprd04.prod.outlook.com (2603:1096:202:15::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 03:23:22 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8aa062ef-16f7-4d97-0dfa-08d7b9a213db
X-MS-TrafficTypeDiagnostic: AM0PR04MB5938:|AM0PR04MB5938:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5938819F3B8567D61CD8656688ED0@AM0PR04MB5938.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(199004)(189003)(6486002)(8676002)(81156014)(81166006)(316002)(15650500001)(66476007)(66556008)(52116002)(66946007)(5660300002)(8936002)(186003)(478600001)(9686003)(6512007)(36756003)(86362001)(6506007)(2616005)(6666004)(2906002)(966005)(956004)(4326008)(26005)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5938;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fu7Fo9Q9YgCfsvTTPRx/WKq2Ui9llSeXlAlDEEpo1ItlhlM5Itmlv7IIUgPPHnrFJCuCLUWx+lI3bpZRkRmbOEO1sRJ58Kxupm1RYaZJpF59H6WuPtbm4RqQclNK/6k91psP/D8JM4qq3rLvsVW5fWYJDFNaXGu2IZKp5dg8cFe2dzaXxzr1YDjdwhFm0IVeeZPDriBPc15C5ETgdBTgdCeeOuqGHBilD5k5+5oflw1QpGnvowYOCh1btVwlO7K4KSoGKSp2DkpgUgZ8Dr3KYjJSdJuLrUudoDUenizqcXLUi7RXg++XqlRsdrnM9Kq6G+YHzgCMMAAVjpNauOQ7EK1w6yX7mf+MlbY5xre2VnmJ+JyzFPov1wTVCqpqy2PBllesd5LUK2epBTZyOOlRZNoawalU+fZYjnxGGernyGz0WMjxDLwytdyA/JaxRFN5mRVEdp2sICJZqvA3ALXxnlq//vg0wVavjNhwgVfxH1iDAF+kiuJNQhZ3Xr4quUVbZecCXTRVAhvdEA1S8Q3zZA==
X-MS-Exchange-AntiSpam-MessageData: BF0/PDAuU1FKj+iABuAs1dme1cg/heups8NxKBC1Wt4pcrG8VL2Z7qy8yzbkCo4BS7DEh2UrwoDlf7IpukdxRWI/6tXHnBY8mzLZ2ZZoVamTytwdfCC1zckAZghWfp7iInzlkDFHJgcwByODV7oGfw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa062ef-16f7-4d97-0dfa-08d7b9a213db
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 03:23:26.7316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 59mVzFiydMYMFY9zqFqH9JwmpFrvCxb0wNfnvKHObwGjycBHITrnBmQJ+EehoLt2joDzzI65J0vIMZG1Xm6RMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_192334_148959_ACA0D9F4 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Drop patch 1/3 which added fsl,scu property
 Force to use scu channel type when machine has node compatible "fsl,imx-scu"
 Force imx-scu to use fast_ipc

 I not found a generic method to make SCFW message generic enough, SCFW
 message is not fixed length including TX and RX. And it use TR0/RR0
 interrupt.

 It might need https://patchwork.kernel.org/patch/11395247/ to avoid
 build break.

V1:
Sorry to bind the mailbox/firmware patch together. This is make it
to understand what changed to support using 1 TX and 1 RX channel
for SCFW message.

Per i.MX8QXP Reference mannual, there are several message using
examples. One of them is:
Passing short messages: Transmit register(s) can be used to pass
short messages from one to four words in length. For example,
when a four-word message is desired, only one of the registers
needs to have its corresponding interrupt enable bit set at the
receiver side.

This patchset is to using this for SCFW message to replace four TX
and four RX method.

Pachset based on i.MX Shawn's for-next branch, commit fd7eba9fa1f534b710.

To test this patchset, I applied the below diff:
 diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
 index fb5f752b15fe..c5636624726e 100644
 --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
 +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
 @@ -140,17 +140,11 @@
 
         scu {
                 compatible = "fsl,imx-scu";
 -               mbox-names = "tx0", "tx1", "tx2", "tx3",
 -                            "rx0", "rx1", "rx2", "rx3",
 +               mbox-names = "tx0",
 +                            "rx0",
                              "gip3";
                 mboxes = <&lsio_mu1 0 0
 -                         &lsio_mu1 0 1
 -                         &lsio_mu1 0 2
 -                         &lsio_mu1 0 3
                           &lsio_mu1 1 0
 -                         &lsio_mu1 1 1
 -                         &lsio_mu1 1 2
 -                         &lsio_mu1 1 3
                           &lsio_mu1 3 3>;
 
                 clk: clock-controller {

Peng Fan (2):
  mailbox: imx: support SCU channel type
  firmware: imx-scu: Support one TX and one RX

 drivers/firmware/imx/imx-scu.c | 48 ++++++++++++++++++++++++++++++++----------
 drivers/mailbox/imx-mailbox.c  | 46 ++++++++++++++++++++++++++++++++++++----
 2 files changed, 79 insertions(+), 15 deletions(-)


base-commit: fd7eba9fa1f534b7102f4762e25c991f78ec283d
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
