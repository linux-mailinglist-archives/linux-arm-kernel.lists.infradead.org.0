Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1920C13DBC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asuoUCN4bhMO4tF6uf+Hcv2oDExih+l0lZxim88wEeE=; b=XBCFCQkPi5Vu2b
	ZhoQfXUsJymCqdcoLhqkve/yIYwiWpcnS9mPDjNaYq133dGIYb4dS9wZGsIqrM2lHalldf2zbVmwy
	39J43s9LLAqyo3I3TKf8MnxZeKD46LEFYey20GzeCJwXis6EtjMSJHp83bbxbqFJdo4clHSkmUXu3
	KImS2kDhIy0GKyq0W9stAqpLcw2FBmGtwd2mV3NRhjU9fJo+jN+yGcFYUQH894R6vV3gh9tFfoKl8
	SYE+vYIcVSXL1LFJNAvxNjIjmFgRTSUwy3q0P/0wnhLUVYXUJdBwvhKJ5pfAV/z9TpDGCMkTRNwD4
	qGYQQF8EGmLeU+Ei+QCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5CL-0000UT-3c; Thu, 16 Jan 2020 13:28:33 +0000
Received: from mail-eopbgr760082.outbound.protection.outlook.com
 ([40.107.76.82] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5BF-00086R-Su
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXZ0tIsX4BOucsqjx2jY6JAT+tBS5tDR2+DrSL4OiCR9F7m6t1H3RIRKuyXaTQ8uygp7G/u4N3wzj3V1m1UI+Yw+MlvVN1LkiOMmSolezFwE1sDstzz85VxJvq4MZ6137LJhqBxWnZpXuxyMnnVrdUMotkTswbVQsE+fGdnpkP0bsDnDwT9lcWPYfIcM534JtOIUQQC13tnrNNI98awnAPgSQT5AdnTNsZcJSiv4UwciXMYq9e9v4mNo2YQ+6ISPsAAklqNKJ1C+NJRVfUo/IHwq7VIK7bmeZxTDVmZB50GgE5ST+h5xpSkTHtfS44dIgroHVaAwHO3w5mRTamviIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SohAmnEleKXC9cfOGrkhl6a21KPcCXdeTpPDjGU32OI=;
 b=kib0qf1kilsEshKjKY51zJYEOoD18+lRd7EZa/mV8PRGIGhQLjeZsFjZ7GIBMIQ9GZPQ7Gdq8Oa/ZgM5JXTPRfLa1to9mjxLttbCXsI8arr3hHq5qTGMCENbY8AqEnEd6rScGuAkD1/koDS8TVOLABWplk23uPi6oryncSZxLA+6EwMueMgN4/tg0jyzomFN90rzZD31Qy2oAUT+qaH9AK0IRd5ssZ/BbG5FFn0r4vqJDJgb1dDXcZN82zWE96ZAcmz3z0/onCTXZF3mLmqIZRb+/XMBrsmgM2T73IUZnLGP425xxt6qpmzoc3hz+kFGwEHjvsHZ9xZGP+6tkXhaeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SohAmnEleKXC9cfOGrkhl6a21KPcCXdeTpPDjGU32OI=;
 b=YoHEr+KvoyYl3w8j7xaKyFqy6qb6Fssih+b4IknCE6lIyesLqsvdEdl9RGmsZ79DPHSeHAyUnVWNbAyJQWDLRqivHGynFO0pMlxwLDYDV65P1bIu0/9fH3iB8q2yBMalgImSCxlhUxbpjPrgiR2jY+ri4g0P0IHwsngY746xHEs=
Received: from BYAPR02CA0056.namprd02.prod.outlook.com (2603:10b6:a03:54::33)
 by BYAPR02MB4693.namprd02.prod.outlook.com (2603:10b6:a03:4d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Thu, 16 Jan
 2020 13:27:22 +0000
Received: from CY1NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by BYAPR02CA0056.outlook.office365.com
 (2603:10b6:a03:54::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.15 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT013.mail.protection.outlook.com (10.152.75.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Thu, 16 Jan 2020 13:27:21 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BA-0005vG-Kr; Thu, 16 Jan 2020 05:27:20 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B2-0001BU-Tu; Thu, 16 Jan 2020 05:27:12 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDR3RD015649; 
 Thu, 16 Jan 2020 05:27:04 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5At-00018J-5C; Thu, 16 Jan 2020 05:27:03 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 1/9] watchdog: of_xilinx_wdt: Add comment to spinlock
Date: Thu, 16 Jan 2020 18:56:49 +0530
Message-Id: <1579181217-31127-2-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(189003)(199004)(2906002)(426003)(44832011)(107886003)(26005)(7696005)(36756003)(4744005)(2616005)(4326008)(316002)(70206006)(6636002)(186003)(9786002)(6666004)(81156014)(81166006)(356004)(8676002)(478600001)(70586007)(8936002)(5660300002)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4693; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39afc424-1e31-46fb-293a-08d79a87d0e3
X-MS-TrafficTypeDiagnostic: BYAPR02MB4693:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4693CDD8922922468408C064AF360@BYAPR02MB4693.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pd6iULf1Oc31wda139h2d8k6hnWfUDTQV77RBl6woLkD4zWlVUFVOW5y3tSSEEFxd4+Zh+plPr964bc+i3FePk7P3Kgykhfz5z6Iv02fOo/7NIRyrzTeAF2FVCkKmCteIB5vlSo2JRLmW76CHqrudopfnSZXm2qk98m+61qG+lRNCB5F+DwLkmxZclKkfZKFN+tjQxwNBhKff2aMCEKH9gjNuWQqOW2cLNCJEr6eTH1mPVOfasz6q3jLd2jzqVK5VWINvEy/0H0oFZ0EIkh4exi/kkyD6uhzSTWdQJat2bGrXWSClbHwTSvrBRnU1BERe4bnMkeEkJxNu4axI6jWu4Le+pQXdq0kBXY5MmUBFnk1hR5tHxcuKo0q0rKOWA6ybIw7Ml6D7XpBDPeCtXs2XnCvOwdNrXWTWNAtujfJn75Heg5jaVPg0l+BKHdrz3hK
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:21.0744 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 39afc424-1e31-46fb-293a-08d79a87d0e3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052725_971096_8F1294C5 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Goud <srinivas.goud@xilinx.com>

Based on checkpatch every spinlock should be documented.
The patch is fixing this issue:
./scripts/checkpatch.pl --strict -f drivers/watchdog/of_xilinx_wdt.c
CHECK: spinlock_t definition without comment
+	spinlock_t spinlock;

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/watchdog/of_xilinx_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
index 7fe4f7c3f7ce..00549164b3d7 100644
--- a/drivers/watchdog/of_xilinx_wdt.c
+++ b/drivers/watchdog/of_xilinx_wdt.c
@@ -40,7 +40,7 @@
 struct xwdt_device {
 	void __iomem *base;
 	u32 wdt_interval;
-	spinlock_t spinlock;
+	spinlock_t spinlock; /* spinlock for register handling */
 	struct watchdog_device xilinx_wdt_wdd;
 	struct clk		*clk;
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
