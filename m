Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995D61AA1C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SGmoVP37/hCzGMDcf+S13NZo+DmHcLb7bUcsl+JwpBg=; b=GKxkz3PrB7TW1q
	pUEpZoe8qSj057QHXczxj99inFHOknWNAj129AhKo8iIu0aZiZ/NxJrycmfJhegzK+GenR2TCp/zQ
	VKqq57dr1TqxvIw+PAlkxD9hAaXXNVVgEImlOX7gRtV8fyN6sZY9DL5ISOeCVoqzjiK4T9rY0Bl+t
	u9ZuwP41+Dr9n04mFg+DKbpjVDybTsP9bHvkDhyFzQhSyCGeMNojgqbNWBPPDnnFrXFpwV+Ju3UkZ
	qK1hjTuhLqUtX3COgyNXAivzJo7w6fqIkFWr4nWJl7z8USRlB3oFVLBRUNUWxle8fGzzxqPrsQ9kN
	rT6T5Fx3Ps5INZJ323lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhTj-0003A6-RK; Wed, 15 Apr 2020 12:49:19 +0000
Received: from mail-vi1eur05on20621.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::621]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhTa-00038j-A1
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/gz7f+ztMBvqDACi+7S/4cYNpqSHInu2w0+5DM5GRc+Zoj1eY4/is4iKA+RMv1NUYXIfxfvXcTRAE1cBuoJjnf9uq0Mqo06TLh076E4KSyN0fLqFQHrTDiCEeLOtVmtve/0AIEc4/bgQLOTljN6gjyUNTUVGUK3X1D+QtO+k2d/g6noinTwJw+zDmzWy9INZLL2I2LaNZRVWVzn0CDxEz96vcTcBxZnhGfBM+5kmyFM8aPPpNqZPD2Vs51fiHSzH+T2H7ph2gPBhFEnsFtYyuT41HgcR8tfauBujynWdf7griUKo4bktO3gdrQjLFrUf7eRW82ATOFYRHCktpMADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CIEvLfEbCBne0yrheUJUTQlFVtJK1ofjZg0FllMfg9A=;
 b=PUGD+PZTQYBYiQ7EJX6FvMKQfZycuepNA6XbrHcNSbJqGKa81zSrtTsc2zowh4fEalxsml5D7ka0yCgeT3l0nSsKt8TEGoiRr4U7l6y2NyTAUnGHLxHRRhxcNkOUA+5XD7bTDjz8fikZiin9SLfFxZ7GpS6K+mgdfgxr/AzbOne59JWAVBk76CAvzIZTXb2Os6J8qRo+qTd4eHourMM8DevfMH1k0TRl11cXcureRYMTqAZ9QZUUgoRzP1LzvL/nkj92lHGYeia9XMM6mjEdN13yMFrYdZ4pYn41FrZ492Gchv/JdWus1/jKe/qkFF3P+1y3VNfynIoxqnW74j7LPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CIEvLfEbCBne0yrheUJUTQlFVtJK1ofjZg0FllMfg9A=;
 b=PUs3FG9uRYqIr+DDBO2KAebw77M8bGyqr036MxhHF7Y7nR7asjIulCCgVmYeDLCdeHOgYPjJnDHbbj8EFv6OQMl98ON37XR7yVHt6CrndPjhtS9B3ek/I7P8+IbTV6hm4iJWk33W8dW8awzMBtDRxFiEol77+sdA+HMNEvtb3ew=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 12:49:05 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 12:49:05 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode
Date: Wed, 15 Apr 2020 20:40:45 +0800
Message-Id: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR02CA0098.apcprd02.prod.outlook.com (2603:1096:4:92::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.17 via Frontend Transport; Wed, 15 Apr 2020 12:49:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04963e18-88ab-4d00-26e1-08d7e13b6162
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:|DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2856A023DF2AC95AE1F0E84E88DB0@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(6486002)(66946007)(26005)(186003)(52116002)(16526019)(6506007)(956004)(5660300002)(2616005)(6512007)(4326008)(6666004)(2906002)(316002)(8936002)(966005)(69590400007)(66556008)(9686003)(36756003)(81156014)(8676002)(478600001)(86362001)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LEbg8EuudIuM4/rnOgjGDDhyqX9CYGRVY1pz0p0M5xlGeyH0I1mHLapKvd6FElTbbaLZR7xnNW2DmMCSd91EnasB84e0nx3Ew+nndkO9gp9XWP2pIfqYJVywPC5FG58Av9wJ+zruw2IChT3lbFdutT8ScoqryyDKLqQWJv8v3fog3wRQoB0jFhiD6FKmNq8UopQKL/D4QVHdhdtSw+C0N7L42M8x/4Z/leg0BHyMnDQI7KODUDSOrMgMNhTuiKqP0LJyT+c9GpKF6UKR3rLADpSEb94hiFzFvbGoG+rAjhNcDbOqbBDK3vFw+9iMqZNhTZcDvXIXSFShq3xPVXatwOQPyyVIsG2De/BKFKZ3vZ3vJSSMEOJK6nO4zx3+6CN4x42AFt6U0TYtvPI0MR+pC8WO60qT6e/mK9P8UWjbyTEVU2RuT5F871zxrFvnRsrFpVHva7hfMgC7rqxew+Ult6ed9I9sSdDEsK15qK54kiVcgedaOx4fvN1Ca9P8NiIH1GI4mzH6fsQEAQIN2gSPhbFPCmGpusAZq2iRjq91K6ZGkkyEPz9EK5e/cDkY4G/l1+M7AAGmcYi5qakGajIjPA==
X-MS-Exchange-AntiSpam-MessageData: GpCtVy5EZMcR7cXx5YNzlGk21DiTbh22AE4lxOeQpkg/HFgoxGMxI87ZdoZEZqpVaOvbORCh43OOxk8v9p6BH0kTYgsm0ybm1ohgedm2JUuUJu4JgrrOAHMAG/UkH4xlvoFEuS2aznAN6AdnLsxKSg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04963e18-88ab-4d00-26e1-08d7e13b6162
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 12:49:05.3645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 07q4yyGNAs2ekuccTaR69yGGekr9iCi3WMFGnk/hyj99aapjjF/7MZnn/oZRofamZ39M1Vemz/c4LfsGEPqjFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054910_424341_B9901138 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V4:
  Fix dt_bindings check
  The same patchset was wrongly posted as V2, 
  https://patchwork.kernel.org/cover/11485107/

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
