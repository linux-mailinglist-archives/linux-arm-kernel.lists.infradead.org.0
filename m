Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79901AEBFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 12:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZbHKBlMkX/OzTfEdpoLYcwNK4sroGP7IjTs0sM+fVDM=; b=bcDLX6L9d7ijtE
	KpBO+HJp26V4OTgdCy7BPKcveEgYkE5R/bjlsrLcuUiunO4P+IJJPF76GyiZqo9AcdIa9J2wsdxkT
	VXE0t+v0WnuGmYzOQBXF/og857c620JMkZyLsiVGogPxRp+1FOITW/p4tfF1XraiEW56tTCPlJTAS
	W/wOWCn1r9+3Y2L0qS1vLqK09KghN/+t7pyNkO1z9naNOmSwa5T9RN92qyV6YkclSa0JlRlpZ0J25
	XpIj2X3x8WSLOb01wxfsDhtsSTu1fh4Cap+R4BvcJCpjwY47TO1hKbAqxj7+pb+x++M82TEeTvRxd
	NxSnfvBoVpfUuh1WfB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPl8M-0005mA-OJ; Sat, 18 Apr 2020 10:55:38 +0000
Received: from mail-ve1eur03on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::60a]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPl8B-0005kc-TY
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 10:55:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8R+BnJoEUBUQpUFGbZSSf+2/vi8NKa11KOc+AVxCjVGpoXTP1Mp0zvqsq33YKxSZf5n8TIoVQEwv6v+XA/DuFPQHo49Cxb3tTSNHxPZA65nOjNmkejFGlhETlvzK+CgnApMtlX5WO6U8SvYXyLM++PEybuGU+WevtNs6F0KJiNVXTdCDqrb6EW1mmfq29Oz9LA0/Qef9tOTRNWSb0Q7auvovkrLeIViyBtekU9ydKEmdeSsnM/OQ2/k6OXUzzIXY4gnBlU5kfd06IA0A82EKJqVKzMhFbl+YjvyZhwVoosnndV1tgTAzJwzzu+5csAZ1WJMpNg4JdnywhCq+ZboIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u3pQ5qbh6fZKhTz+r3wfdBfyccKt2U9UYOERnNSZgSc=;
 b=Qz+4XwtgNPZoHj2vWXR+q9Gdv3/wtDYA1AjMsEbrLNyXt3nyQacYbs4xWf8U9yoZniV+B7u3+BxUXfEmhVrJUCZmyqTLcJdRJi/K1MYZkMeIPCjwsF6gDyDGULvwKzocT1HhkTJp1GuGgb3G2m4WQUHjTm3TBc6y58NOhO/Es5jGBCJaXNv9/8UQCW5ZBA15dWWBKKot1jgwDz2dUE8f98eUJF9kNEExgcfyBhclM0pAubl0+4vB9Q/FQJFR/3Qv9Tp3sh/ca/TX5yLiQmL3ELQXF0Qe0YyAgGI18thbMkyozSQK8s5FsWfzNwkVp2MUiO+4/yuXhCAqrWs12lVzJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u3pQ5qbh6fZKhTz+r3wfdBfyccKt2U9UYOERnNSZgSc=;
 b=IYzPk/ZsWaMtMXQ7PN9id7lUyXN8DsYdTr0PbW6TkTSlN93N242zJEPl7vFNz1SdRIesH43kPKqWyGbesAzsGvSUFPc5vukdjHsc5R8AHGij25/6uo8xYwhKc4PXz6A4+6ioxrYFFNY4BJaNI9xnl4YTjYdfpiBVRSo5KhUYJxo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6899.eurprd04.prod.outlook.com (2603:10a6:208:183::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Sat, 18 Apr
 2020 10:55:22 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 10:55:22 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>
Subject: [RFC net-next PATCH v2 0/2] ACPI support for xgmac_mdio and dpaa2-mac
 drivers
Date: Sat, 18 Apr 2020 16:24:30 +0530
Message-Id: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR03CA0099.apcprd03.prod.outlook.com
 (2603:1096:4:7c::27) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR03CA0099.apcprd03.prod.outlook.com (2603:1096:4:7c::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.6 via Frontend Transport; Sat, 18 Apr 2020 10:55:16 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5108313c-21c2-484f-288a-08d7e386fdd6
X-MS-TrafficTypeDiagnostic: AM0PR04MB6899:|AM0PR04MB6899:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6899E7CD1B0E4156B376BD69D2D60@AM0PR04MB6899.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0377802854
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(478600001)(1076003)(86362001)(81156014)(26005)(4326008)(966005)(8676002)(8936002)(1006002)(6666004)(6512007)(316002)(6636002)(7416002)(186003)(16526019)(54906003)(110136005)(44832011)(2616005)(2906002)(956004)(52116002)(66476007)(55236004)(66556008)(6506007)(5660300002)(6486002)(66946007)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dSlqQ2auVSP/DMX1X32Ou6Qh7i+eotyFL8obA5aeCX57dmqOSZV0TNEdW/doa8ACni4BLWOT12YKdbhZ9nEqf6VjBVnU/o3zJ3W1sJzYt/r9b0F6asQ4jqBFb4xTTKzNucH+alNVSSYEMSBn/lJFjZZlB7g0O+HwI35tKM0r7902GTaVQdBPVifudoWzvlzNJAuM0Scx7yrD5pICzLS9rOM/QgVsoYdXIWxJ2sUhJFbPlxhji8BMaOPcV6SxhnU5dk+OC8x5ojZu6mBJDnJdb51Jzotg+62PbskGpRYIF7T2nz/gApVPcAaGJsEBBMsjE5IJbjLFaAtoa6JzyGDBYmYeJ8w1HmIj0mA9I39QiB+L8RjAsiF3sKgEvnscVgtYUU5tx30fQKbqX1QMz9fQiElae/H0yKKmziM2JtgOFOXP02lXZJ3XiqMrsgBa7lOGsFfJYNd3MCg1cciLc2CpwU8+i+J/avS/c6I5TB9SQcVvFie3eqBXwwOa5ZTQ1hZa6fOlOH6ke9GR+XCW4Z11odOZsMeLkFuHHw8iQrGehQbuhaO8BCWvlC5JzHHc5ilNbXLzGHypvMPn9s4wayf9DQ==
X-MS-Exchange-AntiSpam-MessageData: 8oCsgWDs0f8ol1dwTAz4ib7erGi2xL+XD1nsMK6FPidAkRJhd5iBARdaUqZHzzrykcdbkB4aVkJQYQxDxtlmzFkUa92ULh9jtryMia/r1VG846kmRl7vQbFzjV2MMLKyezv1XAqaM5jOYkjTvgYxyg==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5108313c-21c2-484f-288a-08d7e386fdd6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2020 10:55:22.5115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ghnAzu4hc6cTcSkPgkCcQZs5oegK8OqL8S0AfJ6A6vf60JpIOPUrYHJo+SW9LE6xQD8myMbgH2Y31BZGqGLu7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6899
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_035528_020472_07E3E068 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:60a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following other network drivers that supports ACPI,
v2 of this patchset uses non-DT APIs to register mdiobus,
register PHYs, create phylink and connect phy to mac.

This patchset is dependent on fsl-mc-bus patch:
https://lkml.org/lkml/2020/1/28/91

Two helper functions are borrowed from an old patch by Marcin
Wojtas:(mdio_bus: Introduce fwnode MDIO helpers).
https://lkml.org/lkml/2017/12/18/211

Changes in v2:
- Use IS_ERR_OR_NULL for priv->mdio_base instead of plain NULL check
- Add missing terminator of struct acpi_device_id
- Use device_property_read_bool and avoid redundancy
- Add helper functions xgmac_get_phy_id() and xgmac_mdiobus_register_phy()
- Major change following other network drivers supporting ACPI
- dropped v1 patches 1, 2, 4, 5 and 6 as they are no longer valid
- incorporated other v1 review comments

Calvin Johnson (2):
  net/fsl: add ACPI support for mdio bus
  net: dpaa2-mac: Add ACPI support for DPAA2 MAC driver

 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  | 122 +++++++++++----
 drivers/net/ethernet/freescale/xgmac_mdio.c   | 143 +++++++++++++++---
 2 files changed, 215 insertions(+), 50 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
