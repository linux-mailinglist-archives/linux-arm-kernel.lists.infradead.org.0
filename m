Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE39A10EA58
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyBdBSrlaZGt3GCf2rvOfDO5O8TC17bEBhz/bQZfVzw=; b=EjXyiDAlTCTGPd
	DVxPxOZVyOtsyUCf4cz+HmdVkjoXzsQubPQCIZqyk09COgQPZpGd0QOsrbCQVN6GTIW1nAM228VTN
	XzLhogKUE0482fVTjdotn1NMiEUiCdVz3CbAAuZgj7wKsbeo4dp8PKdBKuwJ7FG55f4zzIrOGMAcR
	xTAhWGaRgm32kUxjPN982b9moAQgydQr/B/lODPwrj83mR/5cYdJeuKU1aiYlAFKPbZtSkptx+dpe
	kjmkTO/KChwXYj1+QJwg4cdVFYStFgUqoO/K6k0QnnHBfphobmbgs70hv9Q2cFFtg49hHUpBmnmPf
	xe40CkTYKDzkuzesKJ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblLu-0004UK-AO; Mon, 02 Dec 2019 13:02:58 +0000
Received: from mail-eopbgr690082.outbound.protection.outlook.com
 ([40.107.69.82] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblLe-0004OO-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:02:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpf/8jX/joIitttg2nQlHABgRjEYdf9YkQMF0+p+OUP5MHWaWvxj8m+So+WBssnMeB5hdM/YJBXidtticlOyNhTnpv8I8Fa7nWgpLZDtHONGoIeRFb6a4VSF7dnUeTNhH7aSUOp1938qW5739bIhtZNtPBCY1xRhsvc1z2aFCcrHhjO2P6KHau8j/y9Ib3e96H+NHQspWWpozNHyUTWrRwWIiSYwjC+o29oGQr79r39i/w8vNJ1KcqmO2QIwrUOEeKodjo3wZpOR1tQ/NfCK/Cb+19QqzZVaWycfLyjmsnrWwAF2SaF7LYpSCih26yfR4NrLq8TiHEAFIle6pk4hIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEpN+tToL3akOj89tbYzaSuEW/ej726mNeq6k1hUsc4=;
 b=Kc3n96Klo5FLpkw0XIpg08Y+nm9N7AtWONe7g9cgbzm1139EH54TKjTtrgMm+X4tJx6rngaxTQ2qdNVYitTQWxqKlCGm9ubXUe20+jaQbrQE/6JWs0NS6Ur2xxeEvqLP6+GZRbkt7C+fC4rZeNqMGSYG8nR/nuPV8yLZgq6nh9F9Bw5ovAFVBdN2c2IID7nrzBXJzh5jZB2b3kq3ffrY8wio15CRTV/u1HCFUst4D/7Rgzt7tkjHpSiPzWbohrKAK+VH/FEpz++4HRyNTZ8ixGeEeLot/w/BQSIBPEGUI4Df36P/7VQWz3V0wmOCVVBqDD1R9wnF6vXPno+AlBHnLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=grandegger.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEpN+tToL3akOj89tbYzaSuEW/ej726mNeq6k1hUsc4=;
 b=BUwMjrYT2BOmT5lqMykjdo83RElSUrWm759xg86U/AJNJmCIxH0VYYwN3+Hqf7FSWuLcuS/JtU23K52kp5xoTjXN9FEaFQMN+tfWS63yYkU753bykREnY4Fjcy3ojYLxywCgIigvjjpgeeVxr0zJq+hPQGBTPgJp32oNJt4ayJY=
Received: from BL0PR02CA0082.namprd02.prod.outlook.com (2603:10b6:208:51::23)
 by BY5PR02MB6115.namprd02.prod.outlook.com (2603:10b6:a03:1b2::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20; Mon, 2 Dec
 2019 13:02:40 +0000
Received: from BL2NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0082.outlook.office365.com
 (2603:10b6:208:51::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17 via Frontend
 Transport; Mon, 2 Dec 2019 13:02:40 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; grandegger.com; dkim=none (message not signed)
 header.d=none;grandegger.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT055.mail.protection.outlook.com (10.152.77.126) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Mon, 2 Dec 2019 13:02:40 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLb-00088Y-Bw; Mon, 02 Dec 2019 05:02:39 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLW-0007eF-8Z; Mon, 02 Dec 2019 05:02:34 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLL-0007b6-SA; Mon, 02 Dec 2019 05:02:24 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com, appanad@xilinx.com
Subject: [PATCH V2 1/2] can: xilinx_can: skip error message on deferred probe
Date: Mon,  2 Dec 2019 18:32:10 +0530
Message-Id: <1575291731-11022-2-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575291731-11022-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1575291731-11022-1-git-send-email-srinivas.neeli@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(50466002)(6636002)(7696005)(9786002)(305945005)(16586007)(106002)(316002)(48376002)(54906003)(8936002)(5660300002)(81156014)(70586007)(70206006)(76176011)(50226002)(14444005)(51416003)(26005)(336012)(2616005)(186003)(47776003)(6666004)(2906002)(36386004)(36756003)(81166006)(8676002)(15650500001)(107886003)(11346002)(446003)(478600001)(44832011)(356004)(426003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6115; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1686023c-d87a-48e0-ab00-08d77727e98c
X-MS-TrafficTypeDiagnostic: BY5PR02MB6115:
X-Microsoft-Antispam-PRVS: <BY5PR02MB61156E455020AF61D3F3172BAF430@BY5PR02MB6115.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0239D46DB6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FzRZLwUZUYKheN8ma0ph9iQmk9DygY6fPBQDd+Lr+M8YQpxmmjuEa2nETqm9zDQ61aaYnPbohk1/xZc8y3OZ57fTqorfJbTr+HX7DuqwcxnhCqN/zGfHNDNvD6DC9aDKoP1Ji6gegVi491Otuzb3sLF+X4eavclfl4iaTDYQsvFE2L40EeKv3suIyNmx5LpcIpCecG2BgkSQ+Yf+7jzkPblDaqJfKY4Xsv+5Eragn6Mu1UZRaktxpWwo3ClfN+bVBJF77uEILSk1d8ILgmYk1aP5AJUBHV6DCwD/shr6dXIwPqbxnIWSHmvt2VW3Cc69MNNTOUdPEgfQAWBx3MREA3y5sq77Axr3hx1RkCUMZHpmdDT1WcLr9CKB880KrxcA3QMPRKmMSH+ZIsTU6uvEBMsvwHAy2Ff6T0PeTM+Z3A/YQ5NEBWMm0QgwE2WaP3uv
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 13:02:40.0213 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1686023c-d87a-48e0-ab00-08d77727e98c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_050242_931663_64631B28 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Srinivas Neeli <srinivas.neeli@xilinx.com>, netdev@vger.kernel.org,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org, nagasure@xilinx.com,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>

When can bus clock is provided from the clock wizard, clock wizard driver
may not be available when can driver probes resulting to the error
message "bus clock not found error".

As this error message is not very useful to the end user, skip printing
in the case of deferred probe.

Signed-off-by: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Appana Durga Kedareswara Rao <appana.durga.rao@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index 4a96e2dd7d77..c5f05b994435 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -1772,7 +1772,8 @@ static int xcan_probe(struct platform_device *pdev)
 
 	priv->bus_clk = devm_clk_get(&pdev->dev, devtype->bus_clk_name);
 	if (IS_ERR(priv->bus_clk)) {
-		dev_err(&pdev->dev, "bus clock not found\n");
+		if (PTR_ERR(priv->bus_clk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "bus clock not found\n");
 		ret = PTR_ERR(priv->bus_clk);
 		goto err_free;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
