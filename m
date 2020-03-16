Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C782186752
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3YdaEJvppkY50gAnNw+ndDRDW1WruJYdR3P1f+7+LFk=; b=iSIs7VHM8ihB8n
	Fe/1kRvS6quIdQVYNTluwBdjORRu96+YAvKxInXlHIfa/dGlHOYZwpKKxqxcTNJrJBsOuTQyIW0Zg
	6zPVSuCojPHr1S1GE+GxEy/qSd5MWh4y4qNqAj9oF4XFZsijCiEwTvpN7M79B2o7wJFjl1Ln6sRRg
	VE5bM7+caQRcvdPzXY3AdL9bFr1NnjObnmDYa/vfQD8E/j26xWI3RR/dfBryYa7ji6rGGe8AoP4Zn
	DSPc52RCC4PPJpeZ2NG4rcTOoqXHWCVeHkaYGwpwqX6e8iEtAR3lJ6QdZrAZ/nLIBP/YfRoPjOwC/
	k90OtdAuKpmrtfCDzS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDle8-0007wW-SV; Mon, 16 Mar 2020 09:02:52 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDldw-0007vK-LU
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:02:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgq/Sa2/ffztvPXhoQr+mcp2/tUTZ+GMAseQSNvjm0yLS6B8erAlsFzvb10oworc146FGmu0cAwjWdvctUqRo8U3RG9UDtFD+RsxZ6lVS6px9bTP9ifUH6pvW45KC8IBHHbKV/K73YsHo1PJzA0nM+7Sz2hREpmV1f3AMA7fP5IHpg8uIBLMr5o0Zr5HnjGSyy5x+30N23Zr+3ZsEJrsfUI1aGOkm7w2wRADojNz1ptUx8Soaq5Cv1Hs3EmiV88d5nsZFGlAVduPi8PJ8q59nFwncRs1IRFRDIX41xxnFkiCrHtjR7LYedq7l233huNCQM9ptGZ4+C9SGibrJ0EcKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qpd9L9SgSY1N3Zm6JZQ454retwPpG5K8MbfRs+j/FuY=;
 b=R023f4xHzUbNO/0Y1VdiZSzy/cFI/qi7hDi5xCEpkkn3ikbOyAJ3ZzKtgjZrB0+oP7gkCEBMHPmeW/wteV/bksul8SwQx4R9iLQKQzynkN9n9gOFd77Hpf/m1OEA/1y9EasoR/4Ld20e+yHRsLIOfukimSR7EpshaWW2isIKU+Gy1ggRQgbQ0rulAPnbyNlG2sYLnqv49JrDzoJz12oGxyUm6+YbVdOE9WcgZ+krZuMS1mR1s7Mxgmkes0+ARCGxTkOeSyuu+K0Df0mzhTZl3+74DxHJuor9FnzAO7GqqNY/OFZNI4IEbiXpr6z674iZTgbMzM9bk8gHi8R95SwM+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qpd9L9SgSY1N3Zm6JZQ454retwPpG5K8MbfRs+j/FuY=;
 b=NIjuoNhna9xJCfOQhDizp8hL1MYks+dQhvKD/U0apdLbYldc1Pluooq4R79o+of08L6isk9ugW9sfM3rLAjhtNmz+63TeT7/Ny0FGt+Zr3GZGyNNJiQeN7NnH41KnLi/HG4GWKgcvodJIFWR/w6eBoLyZqVrWcAqlpOZvB0RaT0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7169.eurprd04.prod.outlook.com (10.186.130.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 09:02:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 09:02:35 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH V3 0/4] ARM: imx7ulp: support HSRUN mode
Date: Mon, 16 Mar 2020 16:55:40 +0800
Message-Id: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.18 via Frontend Transport; Mon, 16 Mar 2020 09:02:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b632aa70-847c-4022-a731-08d7c988c48f
X-MS-TrafficTypeDiagnostic: AM0PR04MB7169:|AM0PR04MB7169:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB716949DCF5AFE2B1BD39B9C088F90@AM0PR04MB7169.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(9686003)(6512007)(4326008)(16526019)(8936002)(81156014)(81166006)(8676002)(2906002)(86362001)(316002)(26005)(186003)(956004)(2616005)(69590400007)(6666004)(36756003)(4744005)(6506007)(66946007)(66556008)(66476007)(478600001)(966005)(5660300002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7169;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5U+lBGTBdnXM/g33M1YNLpVc0O3okTjM813cg4FIqcrPcupVPbFE1FPMIhKPjyCQKIZyGeufFo+IAzHTELjvJCI+Wx0gfNxbgsTDe87IT/PhgqKJWarT15vy4C7GDqpPl10HeDiOerGe4xATOzZRPnPAYOzGj6MIux2TobKGmvPMwzHMobeeg9Rw1h7QpafgI9OZk3tchKkAns2pVX6Fr1ZUkDH+EJBEy85WQWv/fLZaS4T5reMOyJu738YlpHX/TuB/ckWbiERUfqOioYyytdLJw/hIPYqqRkQgXzwFu2WYZxhJN+EVfR5VbjflKenhwcbywWEm8iMsR7SLjgjpk39/UGc1LDcWNRUHGfCbbs/15wGvdlSnyWAQjO8ljyl/dI3mEmUTUcwAa5Qs+Kg3gLBe3gb32kHQNGxlp0HcXCcuIZH/T2VkbqqkQquhALuE1kl7w30JFXzp9tNUYAC4O51Czs3RP+sfvcAGt+FgFsgiIZ44yqUBlYb7Dziu+kvEuk5gYyJ4k+goqZ+mHSIFTJNYK3R3l+wH26AbiA3ogv73wplCrnOhSOQGkQWpwunFA8Nxg6tK1tu6Or+zhd0qRA==
X-MS-Exchange-AntiSpam-MessageData: fUIn+BwH9ZDk0DuRYFaeGbFcLI6X+Vphwdx0wIXcaBUPm2425lkJZeYXAm608rYqCi0K0Lm5LY9hj0JeMteWV42GG4uYx00oIbRDuSTvcUr/fR0adGqLPGt3UDI7yXZbn1IdJGMm2MydFiXbO5byWA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b632aa70-847c-4022-a731-08d7c988c48f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 09:02:35.0016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EXyfJexwOW2brU/+gXztr9VtRckGFAeQstLzgxeiCyVYpaXZfvEzaK8LTnozKy9rF1ILPGI8jS04UAWiCYUEIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020240_706670_EE72F48C 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This is a splitted part from V2: 
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
