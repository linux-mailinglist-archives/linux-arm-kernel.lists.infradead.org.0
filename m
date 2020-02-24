Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9457516A608
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8BJVknDdlhTgIplW4oYAjIMfPJ1qJGJ6tCQP8Ug5tsE=; b=Fv5a1iB1V53fJy
	9WNntEkvvn+sD4ni40m83EfiG1DyLFqVx12TJ45GTjdB4jFza/CudduAi4JXNcalAlUm5NacwfQhs
	A9rW7Z/6riR6y24tawyT3CO/3WWrIKmapwnBNFeMFFzdZUngN+f0CN/hgc/vpCmus3hNC6Mppmhou
	DiBwqti78U9pacPuH8BFEKDlla6KBcYfj3O3PbG/+yMunuZ5/tAsqnjPFXdEnsVHxR5n9YFAgoB+/
	lUzt84713uSt2BLn4u+q4vNemnJVeaPWVWxce9woqGNoW9nQDrwO5Yc4VtQfuqiZ7aKKvd1NtzQw0
	oL+/Tsiw/WUBJQaXedqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CjX-0002UK-Ff; Mon, 24 Feb 2020 12:21:11 +0000
Received: from mail-am6eur05on2074.outbound.protection.outlook.com
 ([40.107.22.74] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CjJ-0002QZ-44
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:20:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRSpCH3MopZXovxP8JvDHsmVKEzoOSf4n7hR8TGepZphB/CXrJBkH/+p0F3kNmaY4/eJ5Sm3WfdZbY4fR9Qw/yKnAEp+foJYX0fK4EtXOjE3obJVmqMsnPgIjgpuXn0EkkyY0rXur1Sb0IxhakVvwRJ1cVhSd5PDeqztCff9hujlXjb8rrop6BcGT/c1lwZIZ+D1S9j9MJX4vGlyVYMxS17UgJ9FATIuNxch7o5PbE9PCHbEOSyuBgZB5+ML1/5Zv0ds2ceOISP1jYavbeDSBmuVICLB2GdMbWnldBk4OtrRDiy12RIBqDWdiI3mwPOz2a9LI7aHJnXCEEQ9C3HoRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04xwWlKpfUL5XJz/UKIeC7AAetjrv4OYHyJM2OF5ZMU=;
 b=iaxP8CKUBL96LKPuTQDNftps24L84IfeY+Jm1p1SaoagEA2FSgKwYVeKjk9GAI5OU4jhNqF2SU3WoUko9BO530buzD2vwgjvorFi11QQDUv12U1QfiyGU/6To1977ZgjSsVmeNjtZ1pwEH7De+igJ47EwUcHUVtBLoxj2WVnklSUG98FuRxhS2rAxLxybe8JQv1fAzucOdUm+gOnCGdi739ZRhgAoAGHzBT+GCrWFGnZB4Zr3ZW+eQ2IaJ6n2GldolQWk3fBk4YaECQhnhSoLnboDckrbeb8Jcw89B4TYhBXTyOWRCQCzkenzpivi0iUE900sKa/S2opQI6boakBdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04xwWlKpfUL5XJz/UKIeC7AAetjrv4OYHyJM2OF5ZMU=;
 b=qg0zf+/uM+bqT++BcdsdNRttRhHsIkmE2QtMD//FokdaafmgVGMltLQbrnV2KuFAFPptrcI7Jp+3Bzb/lkAZAYHtfomhmr2oxAf68Ub5ZUFWbWgJ8o7OoXOX+q69RDANI9LK7t6sx5N1/QY5IAfsI4g1rIZSBkeKRIfZG7+Ipas=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6289.eurprd04.prod.outlook.com (20.179.35.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 12:20:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 12:20:54 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 leonard.crestez@nxp.com, o.rempel@pengutronix.de
Subject: [PATCH 0/3] mailbox/firmware: imx: support SCU channel type
Date: Mon, 24 Feb 2020 20:14:31 +0800
Message-Id: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR04CA0077.apcprd04.prod.outlook.com
 (2603:1096:202:15::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0077.apcprd04.prod.outlook.com (2603:1096:202:15::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Mon, 24 Feb 2020 12:20:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 95d77886-9da7-46ab-f12d-08d7b923fe7e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6289:|AM0PR04MB6289:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB628992EF2030FA99A0D4875E88EC0@AM0PR04MB6289.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(366004)(376002)(189003)(199004)(6486002)(66556008)(5660300002)(16526019)(316002)(66476007)(956004)(2906002)(478600001)(186003)(66946007)(36756003)(4326008)(26005)(86362001)(15650500001)(6666004)(81166006)(52116002)(6506007)(9686003)(6512007)(2616005)(7416002)(8936002)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6289;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 806otxI4zRBdyE+kbKD4PYV8lEKZxca2OY7Zji7+Iu+xaobqdU/+fgYH9jU+8M9sUgAGdv1iDCpNacnXW66RJ1OpGUZOiVUdpI+Im5DvzWm52M/l2rqpvh3abGP6SWs0JTl4p5ONlsxXM6Ok1aEiWxJnlIfFxeLaOUyDoAJjys+NK+rRrBMkMyXYXkqyHaP4O1BsEfPh+aXqk3uz1f6vW1SMfdPo7ktsJ5xwP+jPyvYd8jL8BOwstrAOW/Dqm7CGneR5fxEu4+njsIRc6aXxJvWiHz2VyBvmd0Z+egFc2xc28Z2RvDbuOL5g3LMR+Wwk5K16kfYY5wwTTG3E5CwIwPU0GUmqUuC+Kgjp5IpiO0PFGwwF9hB2IkyqMUQkPN7+JUBi8Fq4DbZTEgl5dy5tNpuoWIyxwBwcAmtPj7uf3ga3Ei1NLYCqS7jV4DOF1zgD
X-MS-Exchange-AntiSpam-MessageData: P/bh15ORX3FvZrT4EEYcOEh5xQoHsgZICsPdmMYeDsfjTU+6bU9SvzhIqv8J3ycGSmeDd7xD96gNi3kpc+MHdr2pg5MCFnn84rKsagQWRyAuvhv7pC9s1p3QD2bVGT5esJQop/yti+7eK3H8XWp8Fg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95d77886-9da7-46ab-f12d-08d7b923fe7e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 12:20:54.3219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hB3er9aBN/5I9bN7+7Q16u0MnAHjcFuW3dryhw3op2Csq4BK9ghLCDdiOACE7csSaVT9rw1Wy8At5A6K3o28IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_042057_183440_DB4709D0 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.74 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, hongxing.zhu@nxp.com, m.felsch@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

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
 @@ -546,6 +540,7 @@
                         reg = <0x5d1c0000 0x10000>;
                         interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
                         #mbox-cells = <2>;
 +                       fsl,scu;
                 };
 
                 lsio_mu2: mailbox@5d1d0000 {


Peng Fan (3):
  dt-bindings: mailbox: imx-mu: add fsl,scu property
  mailbox: imx: support SCU channel type
  firmware: imx-scu: Support one TX and one RX

 .../devicetree/bindings/mailbox/fsl,mu.txt         |  1 +
 drivers/firmware/imx/imx-scu.c                     | 54 +++++++++++++++++-----
 drivers/mailbox/imx-mailbox.c                      | 42 +++++++++++++++--
 3 files changed, 82 insertions(+), 15 deletions(-)


base-commit: fd7eba9fa1f534b7102f4762e25c991f78ec283d
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
