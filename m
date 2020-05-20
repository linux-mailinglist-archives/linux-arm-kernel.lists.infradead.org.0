Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB21DA7CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2txbAVmT3m478qBgwvBtJIUDANKb+qAG7GBEq2B3qqQ=; b=I7uDU+UbqRpQAb
	e66VaXg77Sf/tXrpPY9wOng7c1qeQidHW4OjECJsvUv5Zg7B6jqEd9SFIs8W5zW0Dz7UUuuDaDNgz
	MvzPK63khklGfkHRLVWL5J8CcsiHKCgv474YlEBqRSMmzSVR7rX3l7dKMmMdVysA20WkBHL5EZAtC
	1Ph/eFRMJSQyW6zV1ar4bKTkx8ArEudscdlYtKBBy9hc6TuF6axODwg+eEuEXXbnRVran+rEYpL8i
	cVV+m445+MJA/+D9nklRokTV4CQe4CKOq2re1K+PDmudfDmHOq7ahTqi/OYaIY2Px6zWhzCFaq1MG
	yBOiAkPufVa046MDzmXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEFw-0000gP-Ah; Wed, 20 May 2020 02:14:52 +0000
Received: from mail-eopbgr00058.outbound.protection.outlook.com ([40.107.0.58]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEFj-0000fb-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:14:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VPhQUUjGymYRjMc0JnY6HRDZp4qDhoWYsbWSfNHuQJlxw4YQkfjixIqC1IoQ+4CErAD+MiJR8BCzXjnAmDrUIb4ROKyPKyK7BASfDHOwfPlF/EETVPxQZey2B5LI9fAPD1BRZIFqlpZwGyzfLxMc4jMLtuAo64jfMhFuq78tJ8HSu2kjInrIGkjs0zgdXuupz22+kFSsmvRDMX/QfHOnt0oLquKRPPLzy9NRImmmM3YUPgbgurpnzNc8375g/rSFlZGrHrhPDMyDSKB4sugWLWKnqhmjk6abYnX20v9n6P7WOE226QJEhk40iFIB8lS5BQB2w1Tb7AScqnMH3OVZdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xk/rj39pKZg8xovwUA0/EQ6pM6qcUG17+dRzSdabEJM=;
 b=TUelMnQpZd9WU72/tb5ZwZF0o63Ctfp2v14/pjIdeepXhs1RBRbTxeyK0L20mvFZpo5IRc+4EDmIZo++7rae5Su69jWoPQeWMXhXbaHFmvJjo3Ffb8Hso6eZv/VuD9H+uwx7Lldq4ePV8MmZiunWF0aRmdAy8vIGNlyh51NGO7k2F8oPB2FbE4lVajWvJ7y/iV6C37sjrJZXMcu89fQuIlsJUIxqr29uZXek8qN9QqY+r4EefF9ICbttOsbMH6DsfFs0US9Yua19MKsWPjqaOk7KakCsws7tvHcy7QJ0N6uhX8LBAsE0/BVITqiHWP6UZ3G21g0qZzPW9cNTzdgqpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xk/rj39pKZg8xovwUA0/EQ6pM6qcUG17+dRzSdabEJM=;
 b=RWZwSiZx6JnCIotN62A5g8V91+qGIScAGto3dAVYBNlx1imprsH2WYcZ47aDFaj/u7RAAaf0PVr0pje2fB7Ftc/ZhxeSpLPAPD6WroQGvHdcqSM/WjCZajvRdf5jKcvQeJupxfdy4R1FTdOai8cGFQ5Dx1gSx9Xmx0QJpepCeBc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2741.eurprd04.prod.outlook.com (2603:10a6:4:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 02:14:36 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 02:14:36 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org
Subject: [PATCH 0/3] imx8m: add mu support
Date: Wed, 20 May 2020 10:04:35 +0800
Message-Id: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR0601CA0011.apcprd06.prod.outlook.com (2603:1096:3::21)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0601CA0011.apcprd06.prod.outlook.com (2603:1096:3::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.25 via Frontend Transport; Wed, 20 May 2020 02:14:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e1a315da-0846-401b-4887-08d7fc638aad
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2741C2CC2231009A232D759588B60@DB6PR0402MB2741.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3QPEnlfrlc+ptnEAnCHtD4edeAJHdmR9N49uwsTXiiw0GQDgGPZu5GrL4MdEhKp0XODbUZQOFrobdcEkW7e0sLSkWB/18IPMDGTjl8L/sgFk1dEPJVtiuoxsEZljrrz3p1Xcn2WdtHGM018zSMSV1M0RCyGaPCxGvwshO48e44/Ep09f0QKUrKg+M275V6cqI2DVU5f8Wncs9hXKF/C6G4ULdTbKISpTEcLj146ZfJkc6DSyVg8E2/xVhe8cm6OXh1nDySYzHbNoStWVtDDv+Yer1+EMZlxuHokx8njUhS43sk+PB8W8RyZekQPhXPwC0Kjjhu9fCIRfZSSn6Da2s1HSxkTkhA5pxvqoaEHmTUTgBNMlApxIkqo1EupVAf5KnioKg66bHTk8ePq/GjAqRE6o6T1YvbB4gtBdkvm84o1CDbWQVchTXrm7KN+F7XSE+gatx74XgDFWYqRV79KnVFCcgHbXu82rpFvOzD5s66GeCC55HmcHBkadSISR5qmKzmg0BIf6XW/WgQGm+QmEiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(36756003)(8676002)(6512007)(86362001)(52116002)(9686003)(66946007)(66556008)(66476007)(8936002)(478600001)(316002)(5660300002)(4744005)(26005)(6486002)(69590400007)(6506007)(4326008)(2616005)(956004)(2906002)(186003)(16526019)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: aRpp220rLt3mgWsX7e7BzB1KhlTiGBF29ULGSDZqKNEfsVqlxesdRxUgtW4ncLqjInAj2hTEOIguhTxVNTUztuRMCEAwKkRwhEsXTH1UXZACS6lZWeKEwp0aEEaChl51vKjd6aAvcCEzRc3cFrL7IaNhmqjfj3K26eQmbi2RhnqOAIN2CxM7KqmtYiz54+8wfB9t4RnX4uS6ZIJ7oxXOMgjA0/HBGggVzAaxaHWYNexUrDmfxj6kbXIUka82vgMmM0+GZ6O7NuwPZEeb06i3wtd4XfbOKeWn6NWOSQxQbaAOqsyim134hVKXFlPtHXFzmzZ8vhbSSOM3I0aCKHsf6qXSzr10HxAB4iR668eJSBgx5HhYz0pC5PO+oK8FPfyXghNqUqSugIHWWQl1opm6FJJx9ltXqvBRDIA/XuTgG22LxpsVIJPXcupRsZUs00usNbaiuz1KLNXQkjeRLZ2PH7oCl4U4CB9ddXwNifV+H8hUE/J1/YgjogMWDqp9L3e0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a315da-0846-401b-4887-08d7fc638aad
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:14:35.8546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VS2BOCuX3lj9A9qJeqDAe3E63urGfTrzzHoRfNNfygZeaJqVIZQjNVvuTvlzO9grl83piiBtRJb99+ggCAggkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191439_324647_7A00D3C0 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.58 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

patch 1,3 is to add mu node
Patch 2 is to add mu root clk for i.MX8MP

Patch 1,3 is not merged, since patch 3 depends on patch 2 to make mu work.

Peng Fan (3):
  arm64: dts: imx8m: add mu node
  clk: imx8mp: add mu root clk
  arm64: dts: imx8mp: add mu node

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
 drivers/clk/imx/clk-imx8mp.c              | 1 +
 5 files changed, 37 insertions(+)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
