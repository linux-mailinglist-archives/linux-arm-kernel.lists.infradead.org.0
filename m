Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1144177060
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:49:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2P7XW6euXh4ShZKON6VciSWryk0v1MEdVbHsl4WKWA=; b=CNOZ0Nj3utlI2P
	j5+qTSpOjkGYQiKkv1pWhaM5J9yib/4Z/j2JOfSqiJrbK8VjLOWX7BFGPnpit/Wwlr/7KVs0x+EqV
	MG6CRbnUyMVibFj/GAHQXeA0MXX3gotJckd5cHIczs8NN8LM7CyhKGtpIjjTKIQ3RTwnRkyh9c8/t
	3cxkboUatVJVlqZnv/UpjGmtjXxl5tBl6P+fqdThqcdTA2VWp4W64DkTQa+48KMRkhc1VTvZ3GHVL
	fxlUaLjiMWypq3ejJ4bor5Dpr1kGoAlcfdjgpn20teYI+Ij8VaW53o5b6lcH7TIMyNJYH1oYZcRY8
	o56WaEyi/tJy+icphG6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92J3-0002rK-Pz; Tue, 03 Mar 2020 07:49:33 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Ih-0002hm-QF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:49:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaA6kqm5JxinSPSiCHaCnqJAnunHSpCYAvksx798iMm5mThs0vI8HleJyXEnuu6tvA7fNKWxetV+zcZEI4TqvXrsTGDMPjVcDBp35qDx6SdNEyMnIOmUhHk3CeobxnKzunNpXvG5zFuSr9d6QxREYec7m5frnWWIaDEHM9dkGgd6+5JaGumwL9w6gox051amHw1CYVVkciqrNTKHXsTJMOhdLkcLYxlDzBZ87g3y6zHCZviUYlpP1vuxXwP030Areh1gGzZyqQ8Vy8Z3RVxZcaABCVtiA2EzPFmzf0pMPncaLAGf1K2PEPRM6/W2Y9049+1Gu+D6eFSOkD1W6EzkDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P0ilMC45hFArsUfA3cj3I7Yny8LoukivuI7X2yeQuUc=;
 b=VfGDC+pCSRcLGwZTozBl4lKQMVQ0T6o4GUfobPxeF5VxxucN2yXJ4OS2M7oV0cQKwYte4j9OebplokTxIS/UAu3MfO3lLMolzAHNJxhIuuC5MRE+5yz7nKZEZbMAqsNOpRsIyaE3ayLgNbjyS4MYYmGtp0Od3EZQlBFMFsLbStqUVoX7nM0oEYuqcDVd1I29bdBoYz0HV9bnPxjAaECmotyH5cYiLe0i3OxSxfPSPNEYJj8Gm8+qf3BDKssNCF6s7S2d94xN/R6ZGBzBWGjxf+mr4cq4bgIgAKiBs1IzYf+5BhIwROdb8dvYHeAww8RpYwgeTt1RlXueXCmnceZ00w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P0ilMC45hFArsUfA3cj3I7Yny8LoukivuI7X2yeQuUc=;
 b=a75aZgZ0VGF/PvuxpoGxC3xPztivXf4ZVgjA1YGwgsRStt7yaxSm9nEg2vxVzkW8B1z7kgVcAbKFnBU7YtHzrBIg8pAikbxU18m0zEHyV0bSpBBwVqrmR4dSnbYOMxud67MbYqTOI4ITlLSk1nxrfbKeQJLahAOV4pqDoVaLigQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4114.eurprd04.prod.outlook.com (52.134.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 07:49:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 07:49:09 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V5 1/4] dt-bindings: mailbox: imx-mu: add SCU MU support
Date: Tue,  3 Mar 2020 15:42:36 +0800
Message-Id: <1583221359-9285-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0250.apcprd06.prod.outlook.com
 (2603:1096:4:ac::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0250.apcprd06.prod.outlook.com (2603:1096:4:ac::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 07:49:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3c41d93a-52d1-4246-1634-08d7bf475b80
X-MS-TrafficTypeDiagnostic: AM0PR04MB4114:|AM0PR04MB4114:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4114FD0D0C77DB97011BA62288E40@AM0PR04MB4114.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(8936002)(69590400007)(52116002)(9686003)(6486002)(5660300002)(6512007)(8676002)(66946007)(81166006)(66556008)(66476007)(81156014)(26005)(36756003)(6666004)(956004)(478600001)(86362001)(4326008)(2906002)(2616005)(316002)(16526019)(6506007)(186003)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4114;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LLx4xmkKI1ZUO7sLDbzxBj4f4sEJuH4qnEnLbkJaGU/YIKWtxmboUAR/WMQlsuMnv94IsfYiGjTahTEFS9IVt8LSSgemxGV36X867fhaJaLuFVl+FCf46podqQJnjFoR3pIyPaC8jmXBX5uFDCt+IftEsqALXdOwidLgstPCYQA9SPVkaKn5I8VPFr0ZzMSRjf7h2AOaga8E4lnXSolUCqPGaH6CvqPUt0/t2P3cfE0kXYsGlBTbIyg2E0VGZAaNse/2AT7S4OJhsPdwGncatiG7gykKCti8mB5Z9dC8tArWXW+lIEEoWvTdwGEiwCgq1J6i2pYSaQX7bHwVG5KyAkwa1UvBNo9l9X4nW8SDIidclfMpoWdj1pxTexKqek+ar3WEa/g7NsAfCKxbq/Uv7H0CmIRCcgxRIc6ZVGV2nAd31YkWKO5DzFRd8yrigBkuhfun1i3mC1rEvhFpL/bgb4flAOWOe4axoopQc7h6Zw2jciuQGAGPxEPq3uQXlpPf
X-MS-Exchange-AntiSpam-MessageData: bM2OCBepqOo9RDZ9FIV4ru4VEzksmYUzp1x8BoYtlwdLMd+gG/8D1mw46w8N4CY2x1llmIzraMEOiBrgOwgv65GHTgBaSl/QOq7C2cv92G4UHCkr9gEu2ATVNgs713ekbIkbXoTcnCukCRAEVuIgyw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c41d93a-52d1-4246-1634-08d7bf475b80
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 07:49:09.8606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bSpfhZ1FuvGC3EOYRep+dGsPCz5U4BUqGZW89JAmZro/U61ClFqrKlAenEwdOJHRdW+tTeq+7jU7hZ+mEW3SEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234911_848742_DCA9FCB8 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.79 listed in list.dnswl.org]
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

V5:
 None
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
