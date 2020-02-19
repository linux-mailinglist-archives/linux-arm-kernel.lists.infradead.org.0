Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A05D163E8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbRi43Oe3Xm2JNH6pq7eIZzXeA007AGRA3aVSuMKe/c=; b=hh0MZ2zo9ETFkR
	wuMPt8U81hYzM6VbC/qnRWb82Snp1fECQiTY/4zxoMZ0ciZvXux/OE2FziyyudIYL3vkHJhHwt9Wf
	qgj6bjQhf6m/wPYbo1VX3/7u6dvQIDSCut1rScOQp8R6+t41Oqq2qnNDoxy/2uVtUf0d7Q4aByYce
	SjD5MIBhrK9vyKMm/PCoeq1C+0D5O03Ld3l/8rI0onv/JVmOFYJeC14U3KgwySUdSd5OXT2KL6eOL
	wetzSmm3mSla4/MVSCrrERie9Kpi2VIqj40+yp7x7mPQlg3/i2Cz8z1J/EkZQiFXjYlN/XXxHqwog
	J3bI53Ccz1rRzEPB9YHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KPO-00034O-5y; Wed, 19 Feb 2020 08:08:38 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com
 ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KNh-0001sJ-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sls1BjaDYpTjS4jLn5S4DNKDk3//061JBVCQG8yIQVTWRnw03tLeFO2GIWRiC3JrJ81KaMhLwhSb1bLWLn5f/BFFOW7xWNG/l+0PoqUmit6pzjqScfXe8wicH0bZ//TicrLyynjpRDx4GzewzAL3wtZ7LsaqexwFWMQdmn/TOTSuxo4gN89IKoI4nDjsoujKrlplYD+8DWJ+4WO47Ae8KaVJ3P3Moh7428legVP7c/z8fhhEUoyHuz6TcIhd1lEjlrp65cAj0IC7ROSmF0Fhmz9KUTWE9NOuK0LH8NMfs9AZXW6zEg9HJ6rorB7RVtabMRi0L4Vz3b0ynXb2amocKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3r7WCLHcLFoWwVpV/BiXpejvT75R7f1kQDkx6C1M2tg=;
 b=LV26fxUnSfhBjBIHoInk10VAClcwHVRzQLPAGnz6QR0YIxyOQOrTO+hNe+FkYaCsahMdAhZrhHRKpDTnH03/Fyp3MFyPd+efWaNmPefARbsHtV6C/M55LAmJ93G00CRys14io03wtu5CinH2Xi90uqCBI/gQozALQ18JLPmojNkYYEXo6uNy3aaU5lh1p/RCbnntMgK4bjiT7jE2Qhah20vZuv0VuNd2tZ4dYFgBRs+zkW/6+MuX5sY14GFrvBUUwg6yFFZo7lCMYjMD2o8NtrPpam5yVjZERVCcKusC5uT3lViwkOA8Wf6ROwFt4JOXMYovrTwyMhhC2hZIXgCjWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3r7WCLHcLFoWwVpV/BiXpejvT75R7f1kQDkx6C1M2tg=;
 b=UH/m6HkxqPNChT7oy7I/lP0OQSsKDjRwmiVa7IJM1naeLPdXxPH4wGXu37sePgTxl1dNMdBBQKH4a792llLtxt6J0aqOrt7Z69mPr6RIm2Qga4bSaqesqqtWCWjoYoofqWi1NF7Yz/tJhkSCnLOEir0g2v4aM3NeUOP/wUIamMI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4132.eurprd04.prod.outlook.com (52.134.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:45 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 10/14] cpufreq: dt: Allow platform specific intermediate
 callbacks
Date: Wed, 19 Feb 2020 15:59:53 +0800
Message-Id: <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
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
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:41 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5902c768-1b67-498f-3e68-08d7b512a95b
X-MS-TrafficTypeDiagnostic: AM0PR04MB4132:|AM0PR04MB4132:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4132D27315568A9B5826BD1388100@AM0PR04MB4132.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(9686003)(6666004)(2906002)(6486002)(6512007)(316002)(478600001)(69590400006)(2616005)(66476007)(8936002)(86362001)(8676002)(36756003)(81156014)(186003)(7416002)(81166006)(52116002)(5660300002)(66946007)(4326008)(6506007)(16526019)(26005)(956004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4132;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x1K7IRFX4w4fYMdwS1znpcJVk1Bl7ifCqzur54bBHl4h4VuLZSLNCKXGjGtMXSE+SMBmMsiX4xpOpJrjNKCAYCqBXV8mDfexvc3cRDggQsda8k4NdYVzLyxVBxOoQNhl5prZRKvYh/bZTmeZ+pAb2SLD9bQCW3nl5ZVwJMes+KIeWuAMFkU7tTtam1TvlwzKRgaTTNZZJZAI6gsnULIR6+2hUOCDKyiJI5congpnRnOE/aAeZle2ylZnVCOXzZkQ1OApQ+Cwr109bs49/6vnzxMLbLRqMOwtJ7WQfQPegoZ4agBiJgNq+eaOmEXre4BXxPCym0F+v83hYk435g+3hP55FmhW95oRZUhX7JVtjYxWxiXEWO2HIKCSWcMqMOhr9jdvIkpjdchJJBmAAaJq29z9yfcKYJuB372B7cEtky4ai2oJ/vozDz7dyUZEYbtzO+QUYq35/ug96ngy+ORo8yM37jmnJXGaxLCFQUIP72G45nGSxeHvXrU4WPG83bI7GNf2nvnfAqt+utMS41BfOiAreRZRQBq4yVKTLPD+TvQ=
X-MS-Exchange-AntiSpam-MessageData: SpsyFl3uGQJx8LZxofr0nAuaFq0RgZvkF25ytLd347yPD6TAtqMdDatzN2HbfPfsVAfegizawR21JfNGiBb+C/k0bCC8ASmHiHZ7LPFKHh8GKzzjp1OFWDUfAAD3COA877mlvert2GVMYMeFPrIskg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5902c768-1b67-498f-3e68-08d7b512a95b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:45.3611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wMmSl0QvVuUwQ8nMI4B0kTGdQhk7IKn+f+J5U9bYnaUNJn4644w8VWcGpA3Oma0yfWmHVuKP36n68MNV/DkwbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000653_414428_DC173628 
X-CRM114-Status: GOOD (  11.12  )
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

Platforms may need to implement platform specific get_intermediate and
target_intermediate hooks.

Update cpufreq-dt driver's platform data to contain those for such
platforms.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/cpufreq/cpufreq-dt.c | 4 ++++
 drivers/cpufreq/cpufreq-dt.h | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
index d2b5f062a07b..26fe8dfb9ce6 100644
--- a/drivers/cpufreq/cpufreq-dt.c
+++ b/drivers/cpufreq/cpufreq-dt.c
@@ -363,6 +363,10 @@ static int dt_cpufreq_probe(struct platform_device *pdev)
 		dt_cpufreq_driver.resume = data->resume;
 		if (data->suspend)
 			dt_cpufreq_driver.suspend = data->suspend;
+		if (data->get_intermediate) {
+			dt_cpufreq_driver.target_intermediate = data->target_intermediate;
+			dt_cpufreq_driver.get_intermediate = data->get_intermediate;
+		}
 	}
 
 	ret = cpufreq_register_driver(&dt_cpufreq_driver);
diff --git a/drivers/cpufreq/cpufreq-dt.h b/drivers/cpufreq/cpufreq-dt.h
index a5a45b547d0b..28c8af7ec5ef 100644
--- a/drivers/cpufreq/cpufreq-dt.h
+++ b/drivers/cpufreq/cpufreq-dt.h
@@ -14,6 +14,10 @@ struct cpufreq_policy;
 struct cpufreq_dt_platform_data {
 	bool have_governor_per_policy;
 
+	unsigned int	(*get_intermediate)(struct cpufreq_policy *policy,
+					    unsigned int index);
+	int		(*target_intermediate)(struct cpufreq_policy *policy,
+					       unsigned int index);
 	int (*suspend)(struct cpufreq_policy *policy);
 	int (*resume)(struct cpufreq_policy *policy);
 };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
