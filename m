Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142431039A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 13:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5uk7hdQCOClZ++zYb/erTuxsHdsm7c0eLhJhcZz380=; b=ub4ztIIq9FV1cA
	SKc2zuAl+cZQsMIu7zUNXywNmKC7t43cjqMhOQuFv3ukhuqJTRQ3Wl4z6JD36i60ugZRXwoWGlLfy
	4Kjau+9XTLCPKB2aIgWcpZ+hTE2XBTlXSuv0clBjgDGib/Dv8oSghjZqo/bzfFqkxwf23apDWwMyJ
	CrGsWTgL0MkEQdrnuEB8saGYs6LAlZTXTllRZc0kxazrEs449uk8pzQJkDVUltPhiyfrrzVmqJNSH
	nKHlk22z54hMW9rGe6klzCVdXHKbn004PwXKDRXjUruYcz61SeGmwo1Pg99guHIZ4SEU14bmyGi8h
	CdihD6QUfnPWMQ0CkITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOpx-0000f5-T7; Wed, 20 Nov 2019 12:11:57 +0000
Received: from mail-eopbgr790052.outbound.protection.outlook.com
 ([40.107.79.52] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOpp-0000dV-Jp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:11:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZY3H94tfRxAGwSdb+FQANv9PzC1/PRfxSncUzomqRvc1O3AROD7BbJ3+8so1ulyAJdmG6m7DoRUHL9gOza50vZZbt8QFAxnNOYkuKq4sstS432MNa7nsHrjDUSs2SYTJ6QjutUTSaufweiz8QS3AjYLyT08E0fXv4PhNsq8KMyvikHkapocMleR91wfGBi/Jq+KOprBEtzJ5ahV/Gb1z9gHLxyFnt+Warrmu/3ZH2rOkImTdzNEDy4UtdnKPtgQSh+2kAakiYamJEB6Jv2FgdXj530M1Coa1lang/KiqacekDcjF56AmrUc9aHMHDhEoqzTrkZbGMR3uAXsq8ewTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTflLLVt7NRRSD5Auyb4CK2zSwT3eVPAtuFZwsFFYwA=;
 b=Nnxu/zuC72E4jk2VdaMmOAf4gDuWm963+hvTFBr1SSwIT30RsTjxI1zYN7ojYMZJ/4qs7yJkBCL+FtzgsoHw2Wo+rXDZxiuKDBzZfoVuwESF/tUKv5HoY5C4lie0VPhCaakd0I/jFFADEe3vhmQjv7T7I1wQk4mHGzMyidZzABHQbxKwClVMLQ2MgXCMVEimPjxgnfUHw0EVGYzANaBtMdCvL79OrpMzvodHeeReM8wBH/yYL1hh5zKAVFXz1KhvOkw2elEHL+xylmpnHVPPsXiLqbVGQb9nsuJ4m2Q0XySgPlcUe405rl8QpfNl5MTBteT0robPhyjHwaJQXe6NMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=grandegger.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jTflLLVt7NRRSD5Auyb4CK2zSwT3eVPAtuFZwsFFYwA=;
 b=G8a1i8uQBt6F/1OaZOKM3FCW5m7SLUKWvFJF5LgSdTCWr7Oaed3ADFERb1veuK5CtO9Hj48pw3tVlGylccpVpw4fBQgvWNVenHFBE5kyaxInjqlfKmuD+8OSYjl662cWeupYGoB09x10yb/lmkCr/yYXuOw4q4QV04FJ6gPttEM=
Received: from DM6PR02CA0119.namprd02.prod.outlook.com (2603:10b6:5:1b4::21)
 by SN6PR02MB5038.namprd02.prod.outlook.com (2603:10b6:805:67::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16; Wed, 20 Nov
 2019 12:11:45 +0000
Received: from CY1NAM02FT034.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by DM6PR02CA0119.outlook.office365.com
 (2603:10b6:5:1b4::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.27 via Frontend
 Transport; Wed, 20 Nov 2019 12:11:45 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; grandegger.com; dkim=none (message not signed)
 header.d=none;grandegger.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT034.mail.protection.outlook.com (10.152.75.190) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 12:11:44 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iXOpk-0000ga-9i; Wed, 20 Nov 2019 04:11:44 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iXOpf-0002gB-6O; Wed, 20 Nov 2019 04:11:39 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iXOpb-0002fi-AQ; Wed, 20 Nov 2019 04:11:35 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com, appanad@xilinx.com
Subject: [PATCH 1/2] can: xilinx_can: skip error message on deferred probe
Date: Wed, 20 Nov 2019 17:41:04 +0530
Message-Id: <1574251865-19592-2-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574251865-19592-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1574251865-19592-1-git-send-email-srinivas.neeli@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(199004)(189003)(316002)(9786002)(26005)(186003)(5660300002)(47776003)(11346002)(107886003)(81156014)(8676002)(51416003)(7696005)(2616005)(50466002)(4326008)(48376002)(478600001)(14444005)(36756003)(50226002)(6666004)(356004)(16586007)(6636002)(305945005)(15650500001)(2906002)(54906003)(81166006)(446003)(106002)(126002)(476003)(486006)(44832011)(426003)(76176011)(336012)(70586007)(70206006)(36386004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5038; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 109d125b-3e66-497f-6c05-08d76db2cf7b
X-MS-TrafficTypeDiagnostic: SN6PR02MB5038:
X-Microsoft-Antispam-PRVS: <SN6PR02MB50382A642E1FABF5A1AF56AFAF4F0@SN6PR02MB5038.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cMJ2x88RAudW8Bvgfxrj8mRnmqcN90L29p3V8kNkxExu/3HezvsEH9sGjSkfUhmFW7VnTKvIevOuNh+UI9L8oMr2PP60Y6ipA2pDc/+443gczspAy1NVZcczQpSJPpZTgiMtlGsgb6/1KBprTcN1ZCpVY0DUtcNMNETWRo768p5ygf3RZi22atXTjFlYlwlY4HHwrQIApc6TuPUCCAx1e4AuL2NoUgfWxc62ziKYNZIJHTRkrGkPrRxOUN7PnUc6hNxea+WIB4EJEl0Ho49Co5aM434/QES/7JlFhKMgb9U7KAKB6pDKwYfk7fqIMxM2SwDyzXIDfL8JTGi/ZGQXfDokojJ6o5aZrT68BIoXvV8lVNlmw2N/biezdyxllDRPYqUVj1Z/Em2lOcTP9VfPuAcCg/YjveJgRy/mkv+dIJ+ImRQmKRxLlpvh5exLmz4L
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 12:11:44.7502 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 109d125b-3e66-497f-6c05-08d76db2cf7b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_041149_711221_10E13AB8 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

When can clock is provided from the clock wizard, clock wizard driver
may not be available when can driver probes resulting to the error
message "bus clock not found error".

As this error message is not very useful to the end user, skip printing
in the case of deferred probe.

Signed-off-by: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
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
