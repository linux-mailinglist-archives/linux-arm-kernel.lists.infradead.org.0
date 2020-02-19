Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859EE163E92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opsdUPgXQGI/1N8eHuhGyYSFzwZYujvhN6jmo7WtNq0=; b=GY2BmurWjFJRiv
	zU1bKuUOX5V5+4/4vTQji2tbkGbhCTTB5eYHER0w0JskRtWp/ExD7UWojGQupJb7kiAkid/eRo4li
	ULsUb8zWKu/Ltm8jakDCVZPFTWpQ6idiURg21+Iscm8bVs58QGqFuC3AMu0Syas58wFrdNdmtpX9J
	IwPELbXquHfjaEG0w4nUgBz3nUDzMQYKqOBQYJ3ffmwXZqURThbNvoYtRyQOO8jx4dhk0/dNIQfup
	vsKDJQlzQsook2sx2YBWFqZdGNSL/mAiYMiUoxaWz2bwVuniEVigaWkqPaMd7DHlIscOokFLOlbO3
	qvFbQXIBRPnDXUO6suBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KPg-0003Kv-Ru; Wed, 19 Feb 2020 08:08:56 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KNj-0001sJ-Tg
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRh9h24utZ+kVvr8SjZEquonjt+pSxmrG7OQo7T1Y4aaTD+w4UDtobR/4mWMt/fh43uQcQrNxvmFbiZyV/Vb82AWY2DFdx7AMscfwAPwU7c/JB6RoPTKZw1F6Ni0qMy1Dapa5Os/3mwLd9g0Znoxci6OisaahMQ5a9MmqPcI/OrYz+uAYKBi0NdISn8Agw4oTqlguNweZhCYWtTzs+BiCQT+/upCFoY0vLSgKxuefwZen7OmXy49L0LhtZxWB5WlzXWNfO3xD7K1bBL38FUenC3TmCm8gbgA/i2w7QUsEQwacxt5TfO+yPO0SFnXVs2lUTBMevaQnSQyBr8stBZRwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LVcgaf8jpiBTV547GYcI2YyP5upfet9JUNsfoiAGReI=;
 b=aE4ae0BX1WzwnQVypj8uL0BNYgfe6Ly9s369cA7R+15R0lqH5Kl8eOFZrsvh/JwA3Q4x76KW3Ye1D1piv0hZfZhnBJ4AU3/9WBLw9ggX+6IkEEDrukxHJ6KLrIJ7C7rHCQvJ4S+82oCS3dbpUwIRWF3fTKdykRUSpxpeMrwftMx1/A2h5RTK162Iyj8vKOYKUk3JGWEkMG3A6cnZkdtYNfjOktjw/Jwe3pzsUylKDLFcvVbUlSszpiYHAurqXsmfmpP63+rLkpfPYjGdSvVg2LQ+N/rW+wcINC3lkvmzNURzXONK6rBl8NLCoa7jl1hXuMWdxcIar/y7KZ8lS4qKVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LVcgaf8jpiBTV547GYcI2YyP5upfet9JUNsfoiAGReI=;
 b=p8U4i301K67pEvEUK2KcSUxHFKSlCQy0SMUlo6V1K+ymhgrrpYTZHzQi16FuNXkHqeTtXzpLlz7mBW4OFjTO9fA4wHMmDLVImDKdZXi5jq1M4xQID6/Qkft69sb1xzvxdJ0c71p9yjbXPc6dhoZybQ59pKA+6MBAA9CixW3UkJQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:50 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 11/14] cpufreq: Add i.MX7ULP to cpufreq-dt-platdev blacklist
Date: Wed, 19 Feb 2020 15:59:54 +0800
Message-Id: <1582099197-20327-12-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1fb630a4-b787-45db-70d7-08d7b512abeb
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132E95C279F4D8EA0A360C988100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:285;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(4744005)(9686003)(6666004)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PDEoqn4A3fDUFr2xiYFxjLBlfk/kkJ2+TewAMpjscH2C0q4BSbH8ZqVeFoUYLZ2mqVu22ogTfeU6R2EmhhoKr+vxo0Nj/Di9PeZHhdJS3ihsVVRd/22Ze84Qq/bxc/IM7mOiWUyutOqdpXfhxH2sJRbomHgn6o2stQGIjITIOUjzVUFr/LIGLMm/EIGnkGx8AgbxcRKh5K2PxQ+8t7fN9lVFuSdLlKEy1GYV0QbrxF9gzdHmd0TEW1ZigFquLzN291PYB0ZN6iUIIL/vutnJJdjQLa5vo6cv8YfeFgf94YQmbTg1OnM55sZTOkPYlriIE0Nd7xTIuzBhhvX3CInNxiGkI2v9lrK9eXSljPAZkplRbXPHpaxT4OTr7ruZgBt1iVT70xBbltY2kLDkTywxOfyvFSt1BBkbwHbRJBf7+vWvaYZse66Zk9nIOyr12UHOqhywjop+xj8jApIpHh5qR5JLPvO6TWztpp0M8AolALTU5FckNIi3jV9xPT0DRPhPAj8ARYYj4Vdi++NS1WfNdInmv+8yHzLV7oiutOu1yrA=
X-MS-Exchange-AntiSpam-MessageData: 34ccNp7S+ZdLOMpKvdSa3Loe91Qy4j4+cK4JHVc9oacmzs6bFVbFNuFxrpMyKSffYsaNtuZBB3tvOF0LqebSc7NCI1vlKEPBGK+6M53IqFqnOaMg7PdI4uHVUOaWtvdPId2fkaAfXETmW+8m1c0/JA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fb630a4-b787-45db-70d7-08d7b512abeb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:49.9414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i7anS3wjmF7EUhAlhrDGO1iiVGRrF+h0OdAMTklayFeJ2JArCBQ3QHhu57GWKSkx0inF6dbDfZEXgaaTWDzoFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000655_979350_47E8335E 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX7ULP to cpufreq-dt-platdev blacklist.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index f2ae9cd455c1..648dffdbafa5 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -105,6 +105,7 @@ static const struct of_device_id blacklist[] __initconst = {
 	{ .compatible = "calxeda,highbank", },
 	{ .compatible = "calxeda,ecx-2000", },
 
+	{ .compatible = "fsl,imx7ulp", },
 	{ .compatible = "fsl,imx7d", },
 	{ .compatible = "fsl,imx8mq", },
 	{ .compatible = "fsl,imx8mm", },
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
