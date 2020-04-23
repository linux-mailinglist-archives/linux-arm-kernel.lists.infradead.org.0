Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED951B552D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D8MRyL0xA9xeqZZPyTUWHKT/fLbVzETiP1ueX4FWcEI=; b=dcCwMD0d+EAIhg
	wjCFpgVeWTrwG+q+GvV0d9aAVMxwOF5Ni0geXTHd2kQlwNm3zrJzyfp3clbMWCcUKKL8vVVgA5/ya
	g3ZAKGNPVKKJ6ib1YOeWbTBBabrrMEdX0O7WMbHpRa/xU9SHXXZDWwmaMVhHIQi9r5gtrRTCgZUQN
	UDof3ai0/p61zJmcJgG3qk1C9ygo2CQTCUHTRcZVskOSaiSr93c9UMZ0OV5waiEaN7pFx52kxm8S2
	MRVvUi4A8Sgj5Co15HWzfttKELxUBUXOxBG3GiSraR/a/H7pbtXYO6LJpkdh+s27QCTCNsJcVT/wS
	pj8zwcXPf2tRsVcbMnxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVyF-0003kP-Rl; Thu, 23 Apr 2020 07:08:27 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVy7-0003jA-Ef
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:08:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DvhlERXeRZdraXgxVHAwsZVM4AU6DVw9X/JP75DOLp5J0rvaf3A61qe9Gg7GAoKRpvn/d5WApofhnBamorqKddLM2brsr+QITCLh7L2BgQqfzT3qIi2QCR/xjQkzKHrwFIJxPFopEwe815aJtW5dNIQqCKADY2rz6dgFuaRPLpMV3fK/Qp/xl47FjbBEXde9KM/ZYlanrzjFvGNFMVmrgkxA7wj7SfvbGcYFxS4gVq1KxxtLH/bObS28vHh1/HEMncb4TSVotyZWj76SIWEcUXGg3RnekoC4ARG5g2bEBj35udDF0+jUAdeItkrzk8Iz6Fj+lEL6/xe9/lUgBlpDoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uhit6daLgvESWY1lrdlhIsSktyAJRnbDk/MGaZUCvhs=;
 b=W4h76e1AtEfIlwMVnje8h8DKW5Snu5POo/eqr/ewbQKqAmQmnYNttUSxXIGH3BXVisdJwJdDZRXLoAmLbr8eFSle16H2eV6AhH9eC32oPrjEW+UGjHAYBFh2c1IlpLqImpNINm8e0lz6tocLaoT39MAbnSdW8C4pjYBLS0ck+IRRdOOJj5xvBgrGviOl18N7FthMeWXZ9zbtP6xnbxGcdt7YWR+aKKhr0JhSQgLY5UuZYDANocWDntjRZHX2RStB+Xn5kjeTYbz0cl5K1ig6XXSrGh4kf5CStPINKMD0z+o+ffWHLvxqHbmw77M0jYev2BDlNyMnX1A9qRTMPIWybg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uhit6daLgvESWY1lrdlhIsSktyAJRnbDk/MGaZUCvhs=;
 b=YrOYNPBuayxsrKGJ3IlQA2mF4vImy5aAyxNjTuni1a0kgsA+qD4gpSlE0XE+3nSe8q/e4ceYPCuMTXEX2Fr0J2odPeRFm6VTQxPVAbeesXrOUZrEcYWR7iEBDEuADmjOqYD91uj6MKXPwBdSFbyq/q+GNkd4R2K4NfZplcRjQlw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2855.eurprd04.prod.outlook.com (2603:10a6:4:98::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 07:08:16 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:08:16 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 0/4] firmware: imx: fix/update cm4 and add resource check
Date: Thu, 23 Apr 2020 14:59:30 +0800
Message-Id: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0149.apcprd04.prod.outlook.com
 (2603:1096:3:16::33) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0149.apcprd04.prod.outlook.com (2603:1096:3:16::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Thu, 23 Apr 2020 07:08:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9fac8b1e-7964-4b18-05d9-08d7e7551811
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2855:|DB6PR0402MB2855:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2855FB28E991D7D7EFB1E59B88D30@DB6PR0402MB2855.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(26005)(66946007)(4326008)(6512007)(9686003)(66476007)(4744005)(6486002)(66556008)(69590400007)(6666004)(5660300002)(86362001)(8676002)(81156014)(6506007)(52116002)(15650500001)(16526019)(8936002)(2616005)(316002)(2906002)(478600001)(186003)(956004)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jWu0appVmtPulYUS7mE+yZVKOJwig2OWwJcRSV7HZbjj/4//MJSxlo1Um/NTCxSru01mMq4/wwcd606+nZXc12mdCWGk1OEBCNKzjK2iXKV+dpQ19vF9NELH1REBeVzYD6mwFY+EDT0cj+2lO94vy9+qRwgl664rYbVCNXYJ0MvvFQaeIqdrBMkdUmiF96rGmPE5aWe0OFyJCAe8MRwcx9nlw8ZoIBbQ+jU5Sa7Pf7klNEuk8+Pdhu1wKYLnvq6cjiKd5DTYNepC/HKhKbuNVxCdb+TP1cZjsSAtaJlLkc9je4Xsx2pfOruAsY/7ZP+RKew04AcXFuQQTeZcSfEQhAOCU7FFjMyXZ5yYMU31wdPU+Whs83JubKyECCEFUF9VP3LxuMslFfDVj1bPexYfIOTPrbZVHZU0MGHkQ1sFB9aOtUrN9X2Qls1shzLRNlZBxuV9VxCXY0nhjy2enueZOxuq4UTqEjIl5G9a02Pp/7QGfj8Nx0mhkF1UrOlLWiLp
X-MS-Exchange-AntiSpam-MessageData: JqbybHz4PQJWJHGSe1r8qWKsH4tOQS5AdAMt9GdRidEqYdZRd010Ra/Dz78aUqUN6+oQdFdv7ZUrAnhtZiUW8dwLKZZqhJetxawnEWrdgRxI4U9Mvg07lxZxLPhGHYvPKO8QoxMpDZpJ17GcoRR1Lg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fac8b1e-7964-4b18-05d9-08d7e7551811
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 07:08:16.1458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uI76JPivXexzYeFYPtWsm3KCi9tcWt+M2IQLbPfn6DQJ5aKVwlgNPqbCLN24skUpNALPIwggkcaQ/zoRH/BwuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000819_494433_41F3EE14 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, festevam@gmail.com,
 qiangqing.zhang@nxp.com, linux@rempel-privat.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Fix cm40 power domain, update to add more cm4 resources
Add resource owner check, to not register if not owned by Linux.

Peng Fan (4):
  firmware: imx: scu-pd: fix cm40 power domain
  firmware: imx: add resource management api
  firmware: imx: scu-pd: ignore power domain not owned
  firmware: imx: scu-pd: add more cm4 resources

 drivers/firmware/imx/Makefile       |  2 +-
 drivers/firmware/imx/rm.c           | 40 +++++++++++++++++++++
 drivers/firmware/imx/scu-pd.c       | 18 ++++++++--
 include/linux/firmware/imx/sci.h    |  1 +
 include/linux/firmware/imx/svc/rm.h | 69 +++++++++++++++++++++++++++++++++++++
 5 files changed, 127 insertions(+), 3 deletions(-)
 create mode 100644 drivers/firmware/imx/rm.c
 create mode 100644 include/linux/firmware/imx/svc/rm.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
