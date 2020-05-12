Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2107F1CEE25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bIajXHZBANJuEoY0GZm0h5PCac12oGCBl6YZGYiI27s=; b=UlO+fFFrmmZqAQ
	6cteGjhVm9A6XUuCG8bwLvMhL4SgHoKFcCveqL/Ukvua5G5Crjtt70xG3fqfLKYhVi9Ux3a2cUJR6
	ZsXdD6B5l5hY6KAQgfKXLaRxZU0tAe+CVaVv6A3dXV/Tal7lGfHoSpl74U9tR15deW2nxYcX/JLRP
	Excs5ghjg5at7lJAyA0kfrEPfUXDbrbaXl6d6+vCDLn1DJ/JWS8t+mxTDjD0cjSTVM+H9pFVrNQan
	FUOivsDbMZaXOMZCco9jHADkzEETr6UB4eV3sZh1QaE1qXsywWj8QpfILAr3ZYh3Pv4Y6FUVw4gji
	BVwFgEMhFWTyzZHasInQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPS0-0000Sv-5P; Tue, 12 May 2020 07:35:40 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPQx-0005bi-J7
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:34:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JktY3AWo3Nh+CSIMyDL8eTzmXiUqbS2HTq8txn4wuEz9jUIqZUmy53z3Fl7gbnal1FNy5CquMG2+z+ebnctwqtQ47V9Kt+5Zh/bxx9bG2aIGf5htykI01OdGGX17iwuIew/b78v2OdGugv3zvFp2GGIqby9CjJk8xBwULsZx5sbIaBHbjbrjudcC2eQH4PZxSBZcWynlI1MUOCFUzGC8UzLJu+eMUjfCmOISOonNKwEMWYnmsTb2dr0/6CHsl62I9WeYSGQiSqWEq7iOCBSP0OCY2RJF62IfEGgOai/NYPgHPCCyu10p+K9Ce2pSKG3Po7AR0RlxXWxjN1qV1A2IAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDEdStoExKChGrIbKEwGNeUsZgdSI0qsSzHI3jcegnU=;
 b=h6rDdl8BRhDKskLgjnqx/bd4/GVLhC0FIQ+QWzLHAj6yT38CSvNwMZPOv4/ECMmtLM0qc+H78UR3RuhE/0opYWKmDigxsc8PpkyREETgtNxGQ3BwB8HcRFdssXBAvHrJwd/aS8scdqPGYhu1qMIauB6+34X2nTdnsFpFzb+ozqoPv2w7ECdZt8kvlw7x2Bgy45/NRMFVWbMDGSMOzr2QI7NI+VbdYc7SHtAomgsCvlqMLIaeJS3j4nrYJyheu4Y+rKlwrL0ujzlH4yfMfU4FYG0ahkv7mHAoysFgi++bYKbldxE8Q6/6Bb46d8pNp1/RX5oE6sw0uElavRbjgray1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDEdStoExKChGrIbKEwGNeUsZgdSI0qsSzHI3jcegnU=;
 b=h5kS3iThMgex4zB9q1m04v+htIMYn2KzuInW4oyBC4gYjcGRjuv1BFyuk1APSFbqToW51N5S/tYgkZ7Wl403DegDoyi8qjZYVJhZu8xYC9RDGEkg0+n/gM0whAqLVkEJxq0GmN7GDINcmxBzbidtUw3hMkmX+b3/CBf16GlNFNg=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB5882.eurprd04.prod.outlook.com (2603:10a6:10:ae::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 12 May
 2020 07:34:31 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 07:34:31 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH V1 RESEND 0/3] perf/imx_ddr: Add system PMU support
Date: Tue, 12 May 2020 15:31:12 +0800
Message-Id: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR0401CA0006.apcprd04.prod.outlook.com
 (2603:1096:3:1::16) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR0401CA0006.apcprd04.prod.outlook.com (2603:1096:3:1::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Tue, 12 May 2020 07:34:24 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 59d91777-be81-411c-9a69-08d7f646e66f
X-MS-TrafficTypeDiagnostic: DB8PR04MB5882:|DB8PR04MB5882:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5882D668DA478F5358403DA5E6BE0@DB8PR04MB5882.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S4zxrimVU2z8nduCyUJXA1fQVmmraSxv279zF6d8Hx2dB9Rm1Yl/GGlzR+Ud861c6DGe1Xk5ZZQvzQ9mqKxaq2dnWz7jvwHUvu0w3PRhVLbw8z0Dpy+UTCHD3YkjMXugN1VvXubhR3R52d2znsg7BgYwQ/TpTLUPHhoJUelk2yczJ3wywhsJPqr3uDBXT5ITomcssxNL34K9N+P5TdbpgqjfV8lKb6/HyGwngNxP4Yfxj9FZae4ZS+Fo7O3ZcVs2S5bA1pb+G7LJd0bFbbI9e6eo4tEO2zCB5ZYJStK08EvVd9Mv3jmrXQceyOxAwfgocvliqW6tJcbmaZlahv4PCJ8sZQ43pTPCJ+HfeIxTd9nJ+LssIog14AY0suuoFs9+tvLrGOWV4V9YfO9XInzzYqGjUVp67gAl90/gpyH/NXD6pgnetOO0u0IhzAD2SPkmn95xSALWVeG3SmPWQYX8x2S6QmaA4A7q2EkM8wNK7dsRabtEV9RKI7cUq84Aba8K+EnFYLsrT/1CCuamVh0SZVctVSqZq3JpB3RM7qpKg7aRfqlFYe/X97FPnp3tQA4w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(33430700001)(8676002)(69590400007)(33440700001)(5660300002)(66476007)(36756003)(66946007)(1076003)(8936002)(66556008)(186003)(4326008)(86362001)(16526019)(6666004)(26005)(4744005)(956004)(316002)(478600001)(2616005)(6512007)(6506007)(2906002)(52116002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: J2fPxGs/sGCzx+GlU65MIvgSmQ1zGNh1z2MHnvEr4Gh613l6ZWPacQVZ55//nlUwdXLaUQEwMg2N1ijdUmoF4B8pGSKTO8FcW/1tQ69eMVdm+5X0NoCf6o0+hwIZOv3sXc94YByVxTHtqk9ecvYlPxK+PrT4niqdWSq9JjaONVBSUb50E4djNBdef2tuj4I7/Z3UsXNpf8lbPlIy+JC2ii/cRUDG5QGXtD7MTq/oWZAxfhLyGazH2PCJTQ7qLR0Nog6qg32HI2L3VoQXulDKCIvSU1VBYw1BwwLFUi3tPLTeS0HjiHqX2+4rGQ3avtAKi+m/Bu66cITj7TijMMTdcaQigg9kBbhwJzd3DeiNdiznkp3OQeWCWfrbv1gGHRhBe/gocIwU8ROv5IwGA/uVRxdDQQ3FD/aSvYP6oJqAYPWMP5CDdNJHizRMXb5BlKhN2fp4Q6L9zK9/YXuIeYHryJmGkBNiG0c7qjtAltn2FqQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59d91777-be81-411c-9a69-08d7f646e66f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 07:34:30.9798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lm3JJQzr6ePDeemw1RaJWsD7rHfrITnAeYP4XLXKigZhDlFCIR6F3EkRCJMqWVV5aaA+yZPebpiftZiRrV25YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003435_737893_6401065A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch set adds system PMU support for i.MX8 DDR Perf.

The sysfs location for userspace to get the PMU identifier under the
directory:
	/sys/bus/event_source/devices/<PMU DEVICE>/identifier

Joakim Zhang (3):
  perf/imx_ddr: Add system PMU identifier for userspace
  bindings/perf/imx-ddr: update compatible string
  arch: arm64: imx8mq/m/n: remove unused compatible string

 .../devicetree/bindings/perf/fsl-imx-ddr.txt  |  4 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 drivers/perf/fsl_imx8_ddr_perf.c              | 45 +++++++++++++++++--
 5 files changed, 48 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
