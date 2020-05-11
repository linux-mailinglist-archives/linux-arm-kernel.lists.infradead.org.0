Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973C11CDAA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En7Qs1HmaCx+pyBuu7DoiXo9OJ/9R7pzMgAV/knsAbw=; b=Q9y0clNcIQUoZw
	80SbkXH+PqcbdlmHQXpw54B0zGi07NXFp6XamRaPzA+fDe36S9oBd/LddTThr66O3ainaL1qVB/vT
	K7XyKmU/P8F4RmfUHkrGBz6KMQA7lMsBJjb9aG9/mGDN7KxLgP/GqWp3cCgsLZkxMsge35Gmc+LOa
	AyLUPZGSK1iQoZ2v+5AdoheS2C0cwHpfFn0RDEUJZbWh/NHEtxpYQJtsXGZ7HOoE3NLrfNW81Q+qp
	xIlUIZVWM9u5/MDCQW1tu0RsZxLfmiUgg7xmDtDA2Q4IKR1Nr8fRZsQTIF3ytUjQsv0ZA8BNX5SFW
	uyfmfUGfmz+GnUzuUWPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY83K-0004bn-Fd; Mon, 11 May 2020 13:01:02 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY82j-0004DF-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:00:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNOrgC3QLvqJcL7oQGs1wNNyHKzQOzzabnFEDoA6mvi8Gc9cujs8n7VAGPpXdfkEHpuzBpb1aXUy3byKjCpGE6Z/W6SgwqhHWDOiBEU71ALI0Kxez8ZV8Ncf2O7r9xgswQBrNDuy0C8FreSXlhwmmtbNer60sKpla+/7UaQVgA+MG8pXiGXryhu9uG8j4S4B+PdRhpoHzsw0K9POBVGZRiapB7z94kTCSbMH58ArUYbOxKASEjH6ltvUv+oHgaKkdrjmYHrqh0JDHk4JMeIjC1JZ/yRZ00UXQ8YpsYYPRXW83X+l0CeNOOF+x2uuFWy6uS+3HERhHJHN9HiAqQrDKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qXpk3f7GEj/8kB6yyCCTcK2F26QP3Dy1CslqVe3tmys=;
 b=GOvwvFUPLBbj2KSCk/5mb3towf7I2783p6nSA+AvMeNg1KSrxjPMdcptkUanla2/0MqpB4mSNvmzcAMkxaJM1cDDY4MaYlDhjF5Di3zrsHPdkYcTCzq36IUSDxx9CMKGmRdsix68n0EjHMo6Qu0PJ0VTTpMHKDZQuvbiH5gnw7buF4Agtg6P4mlerTZW3zymvop+ZahQARnNx1XNpHEBOLb+7ClwtX4mRx7uSuIUQf5wMxRXxTxf9B2lJpfG9xd2H6pM0adyXyDz7HwGFUdoWhIQfXBcmb4ggAS1Q9xq0Y6ITuSyjrwC2TK2abA42+oFoY+Y69DGpb4mIVw5gPHV6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qXpk3f7GEj/8kB6yyCCTcK2F26QP3Dy1CslqVe3tmys=;
 b=h4OJIUkrH+Ygn0SOC5aLKnP0COhr8Q7Vh+e3iTvqZavkZcfQanIpWM2iNeX/YCvDpVskWmo3nbKE4stICmxeZ/MFZTbPhwukPRHndv9lGrcRVS8OL+6SE8mphS/9Gdk4mXDn/yk1Gz2zijgwqDYDAYz3CFaGymIFFeATNJ8nicY=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6491.eurprd04.prod.outlook.com (2603:10a6:10:10f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Mon, 11 May
 2020 13:00:23 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:00:22 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V1 2/3] bindings/perf/imx-ddr: update compatible string
Date: Mon, 11 May 2020 20:57:12 +0800
Message-Id: <20200511125713.13536-3-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
References: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36)
 To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Mon, 11 May 2020 13:00:20 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ceacccdd-ea43-4cc4-3279-08d7f5ab43c6
X-MS-TrafficTypeDiagnostic: DB8PR04MB6491:|DB8PR04MB6491:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB649110CA53023DEBDB48DBE6E6A10@DB8PR04MB6491.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:473;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ruNx/fNoTgludmbAxCmp4nnuhZ7aWFQ0R7culb3cnpO4at5KRK7Zyf0mVe4lbOrdtkoecjC/w/h35UcW6rIYAJllFO3Tc7R5jRdQRNVvGth3gQexa4coaLwjZvl+sg3f4+MMXNWtqcXX+s3zQVULWgE1k7gV5VwCSkhAl4UbivsFAVQAykJMzrZk3rGXQr44ZLfOODN4U1FZi7h1wk8EWXqC99u6j4KE7IghHH3bBsHFyQPmul5KwBdtH9JRMmMZyTuZdVVmH6iO9Du7Bqf3RAE9cyjmyisCqkgQKC0eVsklfgpmdYtmlwxPoSA4s9tkRjGa+TU4NphXr6ieoDXY+MaJShcvtMjbjWXux7JSZ7KNlcwt1UB+yXpUqyuu2flbvdbZfRvuxm4z1h6tNU6NI1w56tQovudts9yMCmX1v1Y+2n5YuvKyTbKpb75EJ3RFJcetkX99o6go5meJviyvm8HdmcuQ3laPc0IiNoZ/GcwK8xOXoA/mkKNLITE4Jr72dxq9MT58suKQe1rW6dOC1TqNJZVsWjAgLtvD1pDt43SLYXV0ZdVHMYeIO/Q7qJZn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(346002)(366004)(376002)(39860400002)(33430700001)(66946007)(316002)(8676002)(6486002)(6506007)(86362001)(52116002)(4326008)(8936002)(69590400007)(66476007)(66556008)(6512007)(6666004)(33440700001)(2616005)(36756003)(1076003)(478600001)(16526019)(4744005)(186003)(26005)(5660300002)(15650500001)(956004)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 9C3SzgjJClcau7f257Qp6DO05vQ/8pQrXvW/K648LF+h0avvxDidla68MOR/W/J10Y0zHYVx0FzMTkBk42JpNu0Y7RE6uU+d84LDktslfeJxpNFV4gdmUj5Qq4+oB0OfQB+vYYjcWIUP2yRW/JG5Jt9aB20uQVr2Dcqo0NkbSX8AK9eltRIlBvc3mYaO0Cs4Ddtzn4jfS09MYDWIvYISsWt66U0aki1x78s7cb9MhCrnbuF/tG+vGxI9k4ETUg6hqgaJ4uyJ43edXIMHySjd2xbh4pliyx8Tv6oclORu/Zj7242Vu8ExUweSec9pEOyHKurp7OvKKtwL8C1qMUeZy1M3bQkbCrhZCq1JdPJYfoOI85mztdecDT4nT4nLvXSoEuMWnj2Ht7Vsth+DEyvmH4ypSPqz7EOlhZeFG3wDutQp2xOr/sJibWqPMBlPEBmYMIxa9HcazA5Ls8i1xXjYxQN4WCgGawEWP5/66dBC7pI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceacccdd-ea43-4cc4-3279-08d7f5ab43c6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:00:22.5213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hVM37XM2JBtJ5nddWgzDjP6Ya29/75DkdXTsRn/aLSsTtFYSa7nkUyz8kHxfxTG5UJ7ts/8gA+7Kk3LhbaaWLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6491
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060025_629748_F851FCA8 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update compatible string according to driver change.`

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
index 7822a806ea0a..b27a1d4fec78 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
@@ -4,7 +4,9 @@ Required properties:
 
 - compatible: should be one of:
 	"fsl,imx8-ddr-pmu"
-	"fsl,imx8m-ddr-pmu"
+	"fsl,imx8mq-ddr-pmu"
+	"fsl,imx8mm-ddr-pmu"
+	"fsl,imx8mn-ddr-pmu"
 	"fsl,imx8mp-ddr-pmu"
 
 - reg: physical address and size
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
