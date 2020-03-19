Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2935018ADCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:59:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3W9JZNp7+C6acs0gqXz52ZMDjLARuu/Fv6/JWoIgGf0=; b=g4M2DMupmSwGqk
	FVVajYROQb/TzSJPiA4l+k3m83idYd+ZOzkeCzv+d6yx4cCX2EiwxvH684kLIFXMKXEX1kUMiY311
	dXhrGX85t0IudKFmXhWCjQejEW2NiiUptBJYoAbacrNLbAt9ePSBr+htdHoQ28klJQgFx6FSmZrfL
	zKL662JLBrRJDd00hPcfmIpr/8mZgDMUZD25zBONsgJUzbIOhDY5qccPINcqVX7ZixPHuZ5E9jOdJ
	5ZAkpmvbsWxQvwEgaDqWpzx70zCUt5jLFt0kOR4pCr/XfHwaq+xxWyRw1NwOsA63Vx47LVvF0novk
	4QApyi4whDml+qV+K5ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq4s-00042B-Hc; Thu, 19 Mar 2020 07:58:54 +0000
Received: from mail-vi1eur05on2051.outbound.protection.outlook.com
 ([40.107.21.51] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq3i-00032n-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:57:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljCWULdegx1MalgwONbgFI83BIwv7TFJIJoVFemjprXuxYfjE7R5avFJNw44/Vg7BYXKAPjHRGok1JsIQsQn9F3UiFwilDHDcV9+qD7KU35RAzazNu3otyPkvNt2L90Q0RWJK7QCxBZTfZyAbAA3K6+nJMklmNuovEehB0z2weXqt1P4ium2G8IBM4fcr+rN1bRJV2+LyaQ2sYLKEvsDUzssMw5UMvC6k1JV9umXvX+VSd/h6YlwXJavJNlb4UTi+TW+Rrz6jw+CMyyD3lMNrZNV7tI2EgctzSSOYTSP823KG33++VTfbFY9ssOsUbVjLcB9ygLpO4+6rpFvzi2mDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfYC0tiDswtEMx6MuvV2P75/ztzxCNZ6JuOk4Hi8kOI=;
 b=gGyL04RG7JKk125DE4Q8z84FXnrDzozDg/qz2aMr0rNSzBSpeoK1TQR72dmknOP/nNQRFbNl9yFjHjvG3PjxQSJU2M+wQVVxnedFTHNFDWIr6peOiOYPeqvq77+sx2Xgy94REVldCV2MxlZXcu9CevQ+DvPUsW94EiqV5BNVxPUwIUwmM20UTdJpld3eldFZQzNfMPIwgpGv/RuYROGS/Ab7D5nJNqEFqSok+YPIi69BE2HyetD+G3T18X1rMDmqQQ1xjcnzrqEqvemlkmP2S92pQTlpexrJkPI+MQhiLhX4xTmJKTExop5/LE9X6CKmOUh8eGyjJAEFZ9hRbYfKyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfYC0tiDswtEMx6MuvV2P75/ztzxCNZ6JuOk4Hi8kOI=;
 b=DfoaqiFk/t2cGhhqF4CVKka+b95HTRdbYNSnK4pk06n1lMCt8w7K1z8bHPmEqwnN2vc36fGRiEfEqXgu4ZWK+TNtnho42wZg4CMDfhvTBGXJyC6FU3FGxu2aBRF10weGnzi7C8QjDtcOfE/Gj2BTYegRNSOgSPH8dRXiPijQpSA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5956.eurprd04.prod.outlook.com (20.178.113.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16; Thu, 19 Mar 2020 07:57:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 07:57:19 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, leonard.crestez@nxp.com
Subject: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
Date: Thu, 19 Mar 2020 15:49:49 +0800
Message-Id: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0118.apcprd02.prod.outlook.com
 (2603:1096:4:92::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0118.apcprd02.prod.outlook.com (2603:1096:4:92::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.18 via Frontend Transport; Thu, 19 Mar 2020 07:57:15 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 670f7893-d165-473c-63b6-08d7cbdb25bf
X-MS-TrafficTypeDiagnostic: AM0PR04MB5956:|AM0PR04MB5956:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5956FE72AC87321B3694B80E88F40@AM0PR04MB5956.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(199004)(26005)(36756003)(86362001)(316002)(2906002)(15650500001)(52116002)(6506007)(66946007)(66476007)(66556008)(9686003)(6512007)(8676002)(8936002)(6486002)(5660300002)(81166006)(478600001)(4326008)(6666004)(81156014)(966005)(2616005)(186003)(16526019)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5956;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZCmKmWbI+T6EJ0PTiwK3zkNEBjtyDetRANmY2RQtVkcYrx6PGSFils5DcJZsrajvZIETtBfphYYc0O1Sm0AQaRYBhvZN6/70rrRRqO+vfxtFfzvjOb+CT1HD0mAH7PQfOn5LtU4L3NTFOFKQQIUxKziOtEc/3EkMTADpBFh9JgFdA1OL/s/Z/eieCNeoot6jPrJ+58PBqyoixk7AutzjQ7xrTx/D30FfPMZ0kfLkExqOYWywQClvaVRXp+mg7r2CdcKByx7YxDxi2qBhm2Eq3qJz5iDU478VM173OlypgMkyHvVNJsnBfL8GpZDz8WwbU6tKTBoJatynCqhaor9t64oWyq0lsp7YWw+tDP1GOwT2V4COlxsdS12uQAccLGGl8dJ8fm5Qo53p9O64BW82bsKXD8CiNfbT0B5CM5X/xa9RV9lzfVKgiBcRL5VwTbRG2XngHWQQ7c744B/Z9lvYXq9lzS04L25IppAoekR1ZNQ9aiT8VvOYYO+poOFo7gW49EWntG2OKLmQI8v2f9z1rg==
X-MS-Exchange-AntiSpam-MessageData: Rl/yRLZCLwdHUNn27ySrwqOjm+soKECVu7qlZq8UIL/+/8nmubIFwsgn5+TPsfmtLNbx6g/bmk8qijUmv6cj8IadSJbVFBPFxt9oN3j1SaUV1aq9QRjK2UGLVQmwNIYl16Mnvcvv+QwBpvYdEo6rEA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 670f7893-d165-473c-63b6-08d7cbdb25bf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 07:57:19.0609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wref0OrskCtBNLZw5zaTnSavSWj9h4i+GwHexzxo1hW0d+B3IRKO1+/KuSNUml8VUEvAMDc4anVZmsHdQF/muA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005752_401717_21219DE9 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V7:
 Per Leonard's comments, added check for TE/RE
 Passed test from Leonard's https://github.com/cdleonard/imx-scu-test

V6:
 Add Oleksij's R-b tag
 Patch 3/4, per https://www.kernel.org/doc/Documentation/printk-formats.txt
 should use %zu for printk sizeof

V5:
 Move imx_mu_dcfg below imx_mu_priv
 Add init hooks to imx_mu_dcfg
 drop __packed __aligned
 Add more debug msg
 code style cleanup

V4:
 Drop IMX_MU_TYPE_[GENERIC, SCU]
 Pack MU chans init to separate function
 Add separate function for SCU chans init and xlate
 Add santity check to msg hdr.size
 Limit SCU MU chans to 6, TX0/RX0/RXDB[0-3]

V3:
 Rebase to Shawn's for-next
 Include fsl,imx8-mu-scu compatible
 Per Oleksij's comments, introduce generic tx/rx and added scu mu type
 Check fsl,imx8-mu-scu in firmware driver for fast_ipc

V2:
 Drop patch 1/3 which added fsl,scu property
 Force to use scu channel type when machine has node compatible "fsl,imx-scu"
 Force imx-scu to use fast_ipc

 I not found a generic method to make SCFW message generic enough, SCFW
 message is not fixed length including TX and RX. And it use TR0/RR0
 interrupt.

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

Peng Fan (4):
  dt-bindings: mailbox: imx-mu: add SCU MU support
  mailbox: imx: restructure code to make easy for new MU
  mailbox: imx: add SCU MU support
  firmware: imx-scu: Support one TX and one RX

 .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
 drivers/firmware/imx/imx-scu.c                     |  54 +++-
 drivers/mailbox/imx-mailbox.c                      | 288 +++++++++++++++++----
 3 files changed, 281 insertions(+), 63 deletions(-)


base-commit: e506dba69a5e9aaff20fd73a108639f84e2c39d9
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
