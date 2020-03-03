Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE75176A4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uka12FERDBIy4ZUGMK4lmaSaFdxXz4LD7RHJKFgoAnM=; b=G0TvTIde9BwiqP
	JLLD/eygwPfaiZ+u5S5rTk/KG3ciYokpOFF3PYOTifalhCaeZ1OSoDeLk/h/oXN5mrY1QzdLNEJwv
	A+dYzcVWszannSZ6XJeodVNJ7jLkcICfN/cC2r5gWSbgYzz5gJf78NrWJxUWNtP11T/DuJRdgtlDg
	x7bizabTJrGsm5pWcskVoJDQ7D4i5wmI3xEFrWBI4LwkTSywLVkf2m/vVLjDyP8uazqu4B94pyFDG
	nCXJ9ZhI9r75/uj+BdkhaFAt1jWCblh2Hl6IBwZrWm8fN1q3MMDDCGUGmM7MLLnx+wfo/ycp7vH0f
	Ds8xlLFZWKPPQGNJs0jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8wqe-0002hP-1B; Tue, 03 Mar 2020 01:59:52 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8wqF-0002Tj-Mm
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:59:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnxaoXMZjSrr9GEHn+tRIiO04LrvK9XSoSlrAdF2pH88WHVbi7T5FJtbfxNkKNGcyNJoKMqgl//rrNge87cnNmxnwz7DKrkId3owfMB3EXo7l3KfrNcDCEhhV8NIqxw4eEL1gHIaTJFhRUf5Bla/OV0q4DNW0phOdzpDVQKgeTbfpELLXDtX6Y4q29OjtfTMD/99plUCyJU6e5ZBCiLLC093q5W9XW+nIxIyysr63GnjnbIiBMbX1lUpdeep6gn/siXAs5NIYnKn9vuONWm9GqkZslKIfvizkbRgIF8LABGLqbhNEc06I0qLgXNHwXKMp1VzYbrZWVwuA/KnplHTig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHIhPwQSPZ86lHfegvZEMamGMqxcR3dtyjGOfGNmch8=;
 b=UUIiAVuxPXoiaQBE2pyxYQFMj+jpZo/6O6JvYlRG6S09+lgQ0bitZj3QRRt2uR3+W0koPXhmtyxGu+ub6a+cKhjkaYrjOozvR/qbsSGWNG8rjs/lKOerLJQDvUmEF7Ibs3NTOBYxzInSltgqbcVOI9hr1F92dR+X5STncb2SBsJ7c5doXD+B8VSI5fozJ8wM/2a6SN3ixgjl8/5Ff/kl2cbBs8Pld94Q84A55AJxWX4K7L7Jd7CCwo9CXWvnad3Bupjm3PnELrPdc3Y6em5wnu/CxWZDeMQK3TLflfeHO7KUaEuP/sHObVxJ4uaOxfRNGGJmSxPGiMYUN/ndKpqdCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QHIhPwQSPZ86lHfegvZEMamGMqxcR3dtyjGOfGNmch8=;
 b=HjHnUVdLA1CznkrpGXwRpvYPEcjZ1NTX655DHoem+GdaXO7hPGGBpIWbeH/uUkGYa5JxK3aTOtSLDu42QX2cplKRU4ByT0kkbMSzjG2owmI5BH3NeyKO+Bb5+bxvZu65dWcXB065tLweOqdM6eWN3bJxY3WMGz+NQgn5KRpqFbM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7057.eurprd04.prod.outlook.com (10.186.131.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 01:59:22 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 01:59:22 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V4 1/4] dt-bindings: mailbox: imx-mu: add SCU MU support
Date: Tue,  3 Mar 2020 09:52:57 +0800
Message-Id: <1583200380-15623-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0147.apcprd04.prod.outlook.com
 (2603:1096:3:16::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0147.apcprd04.prod.outlook.com (2603:1096:3:16::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.18 via Frontend Transport; Tue, 3 Mar 2020 01:59:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ead3c55a-0ea8-4385-1680-08d7bf167dd5
X-MS-TrafficTypeDiagnostic: AM0PR04MB7057:|AM0PR04MB7057:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB7057DB5B809316489115F3CE88E40@AM0PR04MB7057.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(396003)(376002)(189003)(199004)(9686003)(6512007)(2906002)(15650500001)(6666004)(6506007)(26005)(956004)(81156014)(81166006)(8936002)(52116002)(186003)(6486002)(2616005)(4326008)(16526019)(69590400007)(66946007)(66476007)(8676002)(478600001)(66556008)(86362001)(36756003)(316002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7057;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cFQsO2Cefm2OOwAvsTMFzVWGfcJ1bfcMMutm2akE2ZphN3/pCXd75KvbE+p7zTYI6lzmuoG8htGL4LlAGdb2ArvNidUKVc462oR5BRmLkyy68UvwJS8lFPwvHuPRSNGDClN2uSAKGk7u+umt6Q0RyzFYWpLIMLNVhBYH3W7ttNeGqjgKCVEC82MtKgt6E12PghhcYnBBeITEleoHPewocRlsPRhbeKU/A7Ox8PaS5aX4CdqoeEbKUR1C233N3zbRx8DEMDGxIGwu/D36XoGABHFCSkUtt7Bp0Ioz4+nsfxeQ9A/hMlgXhrHcAYtUfFyx67S4MUExgLKpTatQpcDRl+SOLTMxb7Gp+/K/jUGdYNjSBZLpQJoiF7e51aGgO0B6arXQAVjG3LwQPYuPugj8wygwcmNylRkrYFTX+OBly8LJyVZXSb0+gB3jnSS5fnmHa6kqKjzeUGMBnRFsnjiC0+u9O6nBEcnUXwG4lN4KETvh03uitzyxw/BWjTY/c8zu
X-MS-Exchange-AntiSpam-MessageData: jJfxCLEMr+eOibuBaqXtGQB/GvrScWNatq8hnQpH4i4duosxp4Z/PHyUHkPelkhx2TbJy5iP0un/7z3a5OSx4pzOTB0m4FhUWDbYbwvWINeV1ntHTMBNucyfr9qnKaKIq2n91oFEq0011beFpVVuYA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ead3c55a-0ea8-4385-1680-08d7bf167dd5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 01:59:22.1025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: renoiHUZ/zeE6ezYYwUo2gmAamOCV5NgDn2MMNc+UzFsahqdNeHHk7sLWzEnz3eXH4IE0pNLhvmlRn/VRIXMsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_175927_744157_C5213B41 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

i.MX8/8X SCU MU is dedicated for communication between SCU
and Cortex-A cores from hardware design, it could not be reused
for other purpose. To use SCU MU more effectivly, add "fsl,imx8-scu-mu"
compatile to support fast IPC.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V4:
 None
V3:
 New patch

 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
index 9c43357c5924..31486c9f6443 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
@@ -23,6 +23,8 @@ Required properties:
 		be included together with SoC specific compatible.
 		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
 		compatible to support it.
+		To communicate with i.MX8 SCU, "fsl,imx8-mu-scu" could be
+		used for fast IPC
 - reg :		Should contain the registers location and length
 - interrupts :	Interrupt number. The interrupt specifier format depends
 		on the interrupt controller parent.
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
