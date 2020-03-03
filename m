Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E10176A92
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87o24JWhFNK2x82h/BQcbM92na0tB+OA6H2/ytjItT4=; b=dHrnseshpdpRGS
	+uV1iwJ9Q2fWTM0p4mjgUavJBVC0nExR3muCuWWFhIIrmoOD5Y6yVz1qYam+vS1GmiTp7qIefygBw
	nePQpWGhOa21j5JD2Zro3tB6sx3KhpdX9aBoryqJ6mTJYABd8u9qGpWfAloXRAehFh5GVCvL8WmpA
	Axri3DzH45VgC6fvj+3palqUWLnVZzTYPbcA4e/h9QnKasw8GWcMbkDuvlwjJP78BZurcZ5FZPhEm
	CYb3Q7dSnskLKwPFj/h462NPYFx3aLHrer5gQiQDgF3DP2wtfZD3pvlAkfckKhdEvTsKJlrPd+RQo
	sQU6Q6WIii3RouL9IvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xBz-0004mA-Ht; Tue, 03 Mar 2020 02:21:55 +0000
Received: from mail-eopbgr10049.outbound.protection.outlook.com ([40.107.1.49]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xBN-0004C3-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:21:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1AQFoueGloaMmptVBsM77jo5YGEkdxQrMcQjwpNOZTHlOL68l3xns/7UqpZBGi2GVudlAtIvdHnPdAjDfqcXZQY7cSwaRvF0Lx/Izj9Pgv9DBolI9NtIR0ptZyVuZ/dH1UJx/faoJ8kqjjlrDZ4UYfqu8+e7x3xEjrK2MVoX1f0G64wTVpSpE6YstwWz5/UIPjC+C1YiJpvE6LH2a7ku0ISWg2uBHhkSOwxNhZtKgYvva2XinLJRlk7mUgMgJttdXWrqc1zJTwCtij4TMKlkFPwQQiupt7+wnKN6rANJXlVNmKJ0y8zM+IQGNgDNEkbVbYEGI/UsIs2B2Au9tP9Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNlA0OCnPTptS4fdXh7mXivtjAf/lGmp6g0bhe4T8Bk=;
 b=MML0i71p3f64Q46mmN0fEato2WKXgo+/BEib45zUAKXvuGtllZIRWMOIukRmmAO2S2OpQnP6zbhG0ag86tpm14yvrTSAP1hQ4he6mSNG9p0kpeqRSuYeObj62UxPrav0xHi3QrE24vw/oM+Z2Y26oUrpDyGh6SMxlGexVJdtlqCtxiW1gmuf+Zg171aDV+EVgKcKFaowr9X3V7m1n7K4QjbF31e3f3dfA++Ygt132VHlWFTKkidS+dxyKbuYencaVt73jX9rTxQwO6Nx/DYllIvdMvC0vL1TwbklEAt/zAh/miKfY6Gu+W/KvbmQYRypl709Zh4cp49FEb3/F/75zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yNlA0OCnPTptS4fdXh7mXivtjAf/lGmp6g0bhe4T8Bk=;
 b=RUKUWUQrhzkA5DZt9arIqtvUK+tbnTbb7ioleOuDKVrDT/ftZuGRjANaKfaPXRPtPtsm//4PXDlYc5Bh99ymvK7xWyrfzbvsfEls5jxHsIG187BbZYrO9al9C7HgKe+eTpRgIqW4VCauvnAs7ZeImHQMOM252tZ7FFUyJhcY1ec=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5283.eurprd04.prod.outlook.com (20.176.215.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.19; Tue, 3 Mar 2020 02:21:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 02:21:14 +0000
From: peng.fan@nxp.com
To: viresh.kumar@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 2/3] cpufreq: imx6q: fix error handling
Date: Tue,  3 Mar 2020 10:14:49 +0800
Message-Id: <1583201690-16068-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
References: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2P153CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096::28) To
 AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2P153CA0018.APCP153.PROD.OUTLOOK.COM (2603:1096::28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.1 via Frontend Transport; Tue, 3 Mar 2020 02:21:10 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 21d5fd73-d1ff-4b71-6050-08d7bf198be2
X-MS-TrafficTypeDiagnostic: AM0PR04MB5283:|AM0PR04MB5283:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB52831F3F1CFE0B70937BB07A88E40@AM0PR04MB5283.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(69590400007)(36756003)(66476007)(66556008)(66946007)(2616005)(956004)(52116002)(6486002)(6506007)(5660300002)(6512007)(6666004)(9686003)(16526019)(26005)(8676002)(186003)(478600001)(8936002)(7416002)(4326008)(2906002)(316002)(86362001)(81156014)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5283;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tF9eEmdmuFXp4FsiK2RDX6TW+4CX/ygDW3hPFZ4FMgzQJcpOx4SH4eb8ed/wCTVHoOuA/hfovWTL8/PTBvc0HT0SlZp8bZArSUD+/ja8f7iy5yRfSq6PJGqT8dpLJWjTlOZB7JnQSbNbncA9P0q+CNTiB5x3p1qnf8AjX/rAFO1gDZAgAJXVyZdh9V3KBkCofno3CGyUyQD3JtZmqZgBNSh+ux3VeSESTzd4P/s/2xMUyZHO76uT+YyHE1QC6wWSY0BVtePjef+CPKUxZh2QU6HvhHYshq9mvK9aZe0J5quMQ53LypZOF82zGW6OqWNKa1oo0yTZNiHSQVcYtwmYyf5gCTqwMLRP29PDdrmpzl8Ia3egM5zIfxD/C7vbDjKfvs0zNhYwtvuparawCG5N1amIL5iviBpm8RuNWkAw0aUZxgR1Gh7azGFKM87Gv2VnkWi/8JelIVHyqNZYmV5AL5PEYDdw/Txd5rO8OvUmVzDYzoiiuZFXqTeY4QU9DXrrBwfxTtkP3j+trKnroheELA==
X-MS-Exchange-AntiSpam-MessageData: TL8uyB9Fwa8c+3urxkcJroY++al98I4rQsqujmcjZbgT1s//luJdhdNufrnLozco9pNKFC2mEwAc99QexHXW3fCEqxeSF6iLjNmlqvKc9HEYM4b3CGnHVa1l/D2iOrF+rLH46NjLRuzwAMsfgcQiJg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d5fd73-d1ff-4b71-6050-08d7bf198be2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 02:21:14.1968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XbLSbltwPoe93/gjqNC6q4B8z1LLGkjrkyA0VAeWgFY5B8AqXPasb0lHoXRImyotBCaIVLebAaXzDHoc0XmVPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_182118_130831_40EA21FA 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

When speed checking failed, direclty jumping to put_node label
is not correct. Need jump to out_free_opp to avoid resources leak.

Fixes: 2733fb0d0699 ("cpufreq: imx6q: read OCOTP through nvmem for imx6ul/imx6ull")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/cpufreq/imx6q-cpufreq.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
index 648a09a1778a..b634a73d1f8f 100644
--- a/drivers/cpufreq/imx6q-cpufreq.c
+++ b/drivers/cpufreq/imx6q-cpufreq.c
@@ -378,23 +378,24 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
 		goto put_reg;
 	}
 
+	/* Because we have added the OPPs here, we must free them */
+	free_opp = true;
+
 	if (of_machine_is_compatible("fsl,imx6ul") ||
 	    of_machine_is_compatible("fsl,imx6ull")) {
 		ret = imx6ul_opp_check_speed_grading(cpu_dev);
 		if (ret) {
 			if (ret == -EPROBE_DEFER)
-				goto put_node;
+				goto out_free_opp;
 
 			dev_err(cpu_dev, "failed to read ocotp: %d\n",
 				ret);
-			goto put_node;
+			goto out_free_opp;
 		}
 	} else {
 		imx6q_opp_check_speed_grading(cpu_dev);
 	}
 
-	/* Because we have added the OPPs here, we must free them */
-	free_opp = true;
 	num = dev_pm_opp_get_opp_count(cpu_dev);
 	if (num < 0) {
 		ret = num;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
