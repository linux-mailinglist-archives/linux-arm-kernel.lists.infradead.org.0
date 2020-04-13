Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3431A634C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JljXo/wCv4fg0znJYdWEc1tuofe1snaQfnGfqRFqCFc=; b=oMDdjcJJAUM4L6
	w9q1aNSiY+ItsN+dqW3S+FpoE5zUAYed0qz7y+PewWjc1eANB8R0HMwzwg7Wu+HiPBdU8QJzGXz3O
	cXYIvPsY/VbubOg2Q4EFDNWGmOoQTRU+Z0T/5unnV/mbg7KnADSSJbNDJYu0thzRr2r4OdPryE5T8
	TN7zr/x54sPU4dFWb7pmLDz/4/sJlu1Hwinn3TvWITJzMaJ3TGeavq3vM9j2YUF8133Be8S8CetlD
	0Zlg3sE/7RY0d6u4O+c7/4cvn8aQ7giJFemuitb9SCU7eH62utfIrpCSHKcxbK1k1h8ogEvXOlxz5
	5iojkWxTudFdM5TXhLHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNt2G-0005xF-5g; Mon, 13 Apr 2020 06:57:36 +0000
Received: from mail-eopbgr80050.outbound.protection.outlook.com ([40.107.8.50]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNt25-0005w5-VM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:57:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQbbYf7Yi/5RnYO02v+ETZ308iJY1S9zJwtuY7oLfbvHxaweu23kPtfh22m3sCQMas+4mEtCbz2NgNRx0Qhig7dgLu0EFsZr3VID76In+qnRNp8DXgIjkrp/puzKTMqJg2tam5VZWLynGaHpKRLAn3XjiRGpSsz2DiWMStUML6owvIAdrnk0j0rEw1SubtaGG3trfZ0WmNMMgXNxrgza3U0srItywHvuM9CJb0p6o11J3OBANuxEi27cD1XTw/eSvDfiQ1szou/1fdx0O9FtVTjSrfQ8lZKTaB/xArRv4162as5WuKevu04BnBCiwNp4McEdhF9trwEqqO86q/m5pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09WZImW7F9OTt+B2YoruiXvoWL/Kck0AR+coDSsPfcU=;
 b=CjHCrkTN4zJzQEp/VScLUx9AerJuhieWPcmA1h3htX3voGI0voswS8DYNTCHKWasYdPnUcmEX1/rt6eTYU8qYT2D/GW5hLEANlEGjIruz3jIe8pLMtgmQD3qiAYBs5md/LjNpQkFDoUGM9bfPmOL28ePHVEiXtRAUYfOLrqBU5GYcaK5iyHYRIThgoHrnJG56a3B9qz+HaNkQFGfSg8R0/2QBgY9/o7XvPfx63gQdfwwtWFOr84pCGkF4oDNhxjn/lTH3RGS6ZAUrjxrXgE+KfB0k1gEi1ArUslSyrNgbEtTNDZtzdH6gDCVHNrStJzXmMqidnuReeQo1DjCYR6Xlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=09WZImW7F9OTt+B2YoruiXvoWL/Kck0AR+coDSsPfcU=;
 b=DM3AkMK5Tx1fFb1INlqhTpv8WBl0JHLL+irl5AhEEBLAl/38JZFsMx4SD1y90SfAoSwyxp5gpnNLYM4G0Bp86T0S5FrzJfs3PaNfvSxKjxbw01gOfb1+NpptSHS9T7/yHfwpBtDfu7AEz998C8ED6V+lIy7lZ4RuhcQo65QhL2w=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB4708.eurprd04.prod.outlook.com (2603:10a6:208:cc::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Mon, 13 Apr
 2020 06:57:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 06:57:17 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V2 0/4] ARM: imx7ulp: support HSRUN mode
Date: Mon, 13 Apr 2020 14:49:04 +0800
Message-Id: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0143.apcprd06.prod.outlook.com
 (2603:1096:1:1f::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0143.apcprd06.prod.outlook.com (2603:1096:1:1f::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 06:57:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 98149ba4-7ad5-4fce-b404-08d7df77e75c
X-MS-TrafficTypeDiagnostic: AM0PR04MB4708:|AM0PR04MB4708:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4708314FE0D8F04EDC37050788DD0@AM0PR04MB4708.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 037291602B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(366004)(36756003)(8676002)(81156014)(8936002)(69590400007)(52116002)(16526019)(6666004)(26005)(2906002)(86362001)(6506007)(186003)(478600001)(4326008)(6486002)(66476007)(66556008)(5660300002)(66946007)(2616005)(956004)(9686003)(316002)(6512007)(4744005)(966005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q+l2f3L4XTzSPd8/4TUuDh0hkbqA/QM09i3iwkd/ogcAlc6UrfxbH7iwkrddas1/2chQThIKwMExbC+Nza9r29/sJwYCSUpUok2Qpsf5OmpMVDC8pIee4S3gOY/kaDXN3qUicpY+cJgZwWnFSq9HPIVHVsHPTu533gnbrSFvgYXsklWB9i0YdsO8qB2LtnW4YL7p+fYNeT6Jhag8ZZ/IpUOybAAuTu+Lf2VlLIjPoa+gUxRbbmPBmyi1gscqTDdecHsakf7civ2W9fh/N4D8AqrCFwckgQoIh/rTeUiXytmS4PyDN7lZU+oFBADuL7NDRHjc4tqup6mcZ1fUpapoFHAnU9U+IVexQn9HqXvFPNsYDCJe0BB4GgsYCSeUe3quorBHF3AE0GNbc/z/nuQesg/Jyde7hqqtNH/Nnrjq3iMk5B9NpURbRyRE/G1RwjFye/fZ24morwBFCOO4t2gNAchr6mDgpqxtoibyeFjL5I9XoV/sCtFr2kDU4fIvyDgm63/DmVMv2K4jL/4fNvuxBwahppmCrnW0VLhS6i5nnQ03CPRGbJQOVyCLjutriieYsybTjrqw6EuVd5wZZf+FwA==
X-MS-Exchange-AntiSpam-MessageData: IjMjryRuqgdc/ODpPYPhetG07/fAFtrNKP8IyOLHdsxrZqGXZye/F3vhJr7k28EUAi47U/9j8EfuxC3hIiJ9QoI2/VBarjVN3CoSle+j2msOZ8WtUYi1tQcf02yWkLD2tZuLrVbpTcwyLMhoYUJNXQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98149ba4-7ad5-4fce-b404-08d7df77e75c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 06:57:17.5576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u/kbEL03FihgcdmpZIDcGZkg3DXMAtCRjj49/DZA9BRlRazvIYpIalC/HzEChMMUOWcqlWWwQkMeSuf50Smvjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235726_058638_58FC9F14 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.50 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Fix dt_bindings check

This is a splited part from V2:
ARM: imx7ulp: add cpufreq using cpufreq-dt
https://patchwork.kernel.org/cover/11390589/
Nothing changed


The original V2 patchset is to support i.MX7ULP cpufreq,
still waiting the virtual clk being accepted. so to decouple,
this patchset only takes the run mode part.

Peng Fan (4):
  dt-bindings: fsl: add i.MX7ULP PMC binding doc
  ARM: dts: imx7ulp: add pmc node
  ARM: imx: imx7ulp: support HSRUN mode
  ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN

 .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
 arch/arm/boot/dts/imx7ulp.dtsi                     | 10 +++++++
 arch/arm/mach-imx/common.h                         |  1 +
 arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 ++++++++--
 arch/arm/mach-imx/pm-imx7ulp.c                     | 25 +++++++++++++++++
 5 files changed, 79 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
