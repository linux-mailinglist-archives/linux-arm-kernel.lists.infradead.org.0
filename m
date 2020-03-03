Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EBA176A8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kFOoFxikQH2vqhFjfi2IqITc9iJlT/OtI4Xo2WaOK/M=; b=oDmNXdb7YmuKM/
	s7bwc9NwkGJD2iqSE56F4MKCAUVPd/N+8iUGvK8YFsxyUBjWEl+jkWEp0AI5G5yyRoEnDpP1A9CMH
	sKvola0/2iWfrS4/B+SWPY4Lk41DKlUibsBYmlJh4v7C4ZZfw6RdBZMQdl6QtSxzNrYFS29bejRTT
	yMYFTPNdKOROv5wbxKNoxaQnskyCNAH0XwJ3k7S6AOfewaWbVfYnNqmF/NhMFlEIbSHanWuUSz9fP
	RT+k/oPWm9A+Kl/7PSY3sF7zTdREWAW3CbBn1O3jLgBLF5YTloUWSNyrK9wzHaR/0XYdbdOTFBZyJ
	F2SIZR3pbOjydOa4SjtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xBM-00045y-Dk; Tue, 03 Mar 2020 02:21:16 +0000
Received: from mail-db3eur04on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::62a]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xBF-00045a-Is
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:21:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jDjCHQqJBrEqxtWxDNzUyN/a9sCSCuFasUf1LnezEYFJSr6xb8s0oYyA/XkqafOxCrsgxXYIIBlmmTJDrw6KrcETaJt22vKNJlkBGGlG6RFVJNGqTqvj0CWUwepV59eZp8bn7AJcZdJLlNg96hjHnEx5M1HZl+2ToprKba2vghGhJga/dS3L0DQ2Ej9Hea1sa45V17V4oB8+TK4nuU7yyys4Uo9xT/OedsBvMoONMsejmLr9GJmOeIUAA45SFIVfo4sfILezqw6YBvSLSV0Vl2sJUqNHYKJ4XlzTxzKH99aZ6VDMsXW2ClxJC12/o8bqvtHT03mTxU5W7uAcvcRj3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApoxnE+7GTMgREW8eu4JqW5FNpwlkH/KHHDvdbtOE5M=;
 b=dHsFy/WT/VGGmAOLgXANSnA6ZkaQYcSHMztbI4oPGGAw7ql5l/8IuDB/ZTRbSrd1LkW9un8CDjRPGxyU5CJUcAyiNeMOlS+eD/navK6UMQFEueZMrgpJ0rU0UQaPp/yP7R4y/0eTlUOy7oMytA/KlODVGWJ6/ZwWVvzZ9k7eO1or9NrMimXo6hN3V95DeyHRSvdvajM5m3khzB5YVORS5l6/64zi+0OH8kNx54GSRJTPsTqGGs9+oaP/Y+T/iMZF8w820hHcYIJ3ehBWW7vaz8GCJ/Zh3A8G65ZARS8p7E0RdTBjfA6XFYmAe4M37jZbrRvK0cJYWYImtZWb4jHg9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ApoxnE+7GTMgREW8eu4JqW5FNpwlkH/KHHDvdbtOE5M=;
 b=NAjgJSPMBDZlyaqPtA7EaHeuqQ5vKlY+wHXBoLDHI2oV9tSXoErTaeUDaqE7gl4bf1dqobwegehYf6ADUGAWhtmZ50pT6NGPnzftmaze25+3nUQIxmzJmx48F2QvXQ9CNdMWjmWIf+3RdCZSDzwsIoBKDHDZLz70S0V1EM1KyX8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5283.eurprd04.prod.outlook.com (20.176.215.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Tue, 3 Mar 2020 02:21:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 02:21:05 +0000
From: peng.fan@nxp.com
To: viresh.kumar@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
Date: Tue,  3 Mar 2020 10:14:47 +0800
Message-Id: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2P153CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096::28) To
 AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2P153CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096::28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.1 via Frontend Transport; Tue, 3 Mar 2020 02:21:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c2baa6eb-8d74-433a-156e-08d7bf1986f1
X-MS-TrafficTypeDiagnostic: AM0PR04MB5283:|AM0PR04MB5283:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5283337F8D4E1A3968E2FA7188E40@AM0PR04MB5283.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(69590400007)(36756003)(66476007)(66556008)(66946007)(2616005)(956004)(52116002)(6486002)(6506007)(5660300002)(6512007)(6666004)(9686003)(16526019)(26005)(8676002)(186003)(478600001)(8936002)(4744005)(7416002)(4326008)(2906002)(316002)(86362001)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5283;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ekH41jHyXN0igscOxIVJgyBw3BDW6k2qN8vP5NoD3ckNdDvN+c6VS329QREjRkJK3W1Su0KI6fE0CfqkgZ734tyVcmRQELrARDbF6JEVE9cSBDrcFScjSwKwHTR02UB9KyE/u27yUo1KbQCkNj4NspPF/P/mhvJ+In3+7+4P9lJq8ub2AAP6T2slsc29oxf9AyNEbogzJnIwH23VFQc5v9hW6taN6envNuvOf9LuRtEo8Pa1h6rIXJED4UD1iQKlreMFY7M4MzshlQmfS4dPRhnnKqcRVGaM3Lbr79nKbwtQJ0ryvWEklKNY/RYeEuHcosVAxpxe/k3i1NhGX6dJOidzHAAQXVznd+L1D9UxaJuquS2NBW4UN2+6p2mU34gH7HQ91zV14xIPm5OEalb+G5NjD3/Y7/N1zqfua2L1qRRfxMX/QzbjxoBzI/zNJRbaZc1qmCMhEvcZr4mbMAO1fjogYylqheEKY0VHmCQs7Vpoej99VX8aXKiob3n/7cd3
X-MS-Exchange-AntiSpam-MessageData: ijboTv6KsbF9/a4BKYW/AI0toUVaNOG3aq9REOs/RSauqBRGw8oYryYPwG+NE8AgWIjbnJ63sXWLjCBzItGZS6fOli7g14PNzxZto3Xry5e4HuSaK0gw/rTGll5BXpxoWhzdVkH02Mgif+r26B575w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2baa6eb-8d74-433a-156e-08d7bf1986f1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 02:21:05.8616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6gScQPUapxuE2uHUo+3/Jg4ow9MTqCkHDY5vnqNR5dRfkie0+OEIAcQYCWhZgT/iv8TUOZkbNoEyabl8cQFr7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_182109_625234_96A525CF 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:62a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
 Anson.Huang@nxp.com, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use nvmem API is better compared with direclty accessing OCOTP registers.
nvmem could handle OCOTP clk, defer probe.

Patch 1/3 is dts changes to add nvmem related properties
Patch 2/3 is a bug fix
Patch 3/3 is convert to nvmem API

Peng Fan (3):
  ARM: dts: imx: add nvmem property for cpu0
  cpufreq: imx6q: fix error handling
  cpufreq: imx6q: read OCOTP through nvmem for imx6q

 arch/arm/boot/dts/imx6dl.dtsi   |  2 ++
 arch/arm/boot/dts/imx6q.dtsi    |  2 ++
 arch/arm/boot/dts/imx6qdl.dtsi  |  7 ++++
 arch/arm/boot/dts/imx6sl.dtsi   |  9 ++++++
 arch/arm/boot/dts/imx6sll.dtsi  |  6 ++++
 arch/arm/boot/dts/imx6sx.dtsi   |  6 ++++
 drivers/cpufreq/imx6q-cpufreq.c | 72 +++++++++++++++++++++++------------------
 7 files changed, 73 insertions(+), 31 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
