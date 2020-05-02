Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC5D1C2307
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 06:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mwlipgZ6dm6QIDO5xfWqWwNbvvi00cS06AbQyLIGUQ=; b=iGZYZaZLb7xshz
	MPto4c1vCT82NRiKCTi4VAXdTqLdOMI0b8JKeBCaHyHrSEi1HVnR1JHLsuSC7p/BA1DRIYHQJHYHL
	1IDEdMUymI9V1HeKNSSdORlAhGfOGU0xaYp1lfBGdsYTOCzmmgbpvChMFhPH7qFYblILHmjolx81k
	7mX20GXukDiLFgGm19qE6E8MkWrrwjtv4ZVjvJ96IPJMuuhrJGt5Qk2UCMtpMC25aKtpojcvUncUH
	tB+y5lwAgzKamqzL3KricNfLaAyzTc4EiSPffoHAwhK8Ng94/icIJIb7KT4OPBcifUXCRM/6z9hSY
	IRoH9Q6fXWJJYov+k9MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUju3-0000x6-QZ; Sat, 02 May 2020 04:37:27 +0000
Received: from mail-bn8nam12on2070.outbound.protection.outlook.com
 ([40.107.237.70] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUjtw-0000vI-9g
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 04:37:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVWYEdWWm5r8J4302K/amhzEf3c0Mm7nUQakiGzqJmA4Sjpt8AiFHwB59qKx0EDXWvgp3ztti2GN/h9PlS/BZXvv7//YTdV8t9kuvjtmbAugDkiAWLCDrnG1WUBlizOSip1y+FxgQWCcWlUjzY4T1bjp3rzVyJGWCIJy3Q2PLeRe9RAchfEOxxRxBn70Q+OlOHEkxqzUbCSW1dmb5xLgiyWBWFwuSF2T4cqfBb5fRJIGiaQhFgDqZ9/MjvJTo7uih3fkpEa6Rn3Cz9UGh/w5UArfElIpXTWJEvDxO2+0oalA97W1psuIfmHQXGk9WfHhbYBjz3YEwcejSixWHmtdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJfiyrZ9gRa2hO4SmvSP/QAj6O9n7lxEUGz9Ogi1kMI=;
 b=En0kHX1U4Idy0pI0wMATRqGBS5ynBzjVHO45uJMgLnw1kw/QRAbrYJQXFS0hCNVcJ9yIOjnbqgubnCKkHtodeV8YBEwbg8WhNUEWmwb4y3jr/aR7y9pLpDy+apo2tIi+8ZS5swEbYbn1NVMIUNo2xhi9I6G73TkNPZ2/VcpVDtwAb+BKMTgxlgMGwCzIajae8bfYykvpBgYZ7XvofvY0GC3GsLrQvOAPuEvyRWy0dGwqpSF9lSesAF5ZQazeGh4+bjxDEHB1v2APouP73ODLoo2nCLpO6EjApvPsZ5XIdg3yFbVelyUFF1HMIRJSb48jLYYqxUtvkOq2IsB0J/k/Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJfiyrZ9gRa2hO4SmvSP/QAj6O9n7lxEUGz9Ogi1kMI=;
 b=pV8ZvRgoJGp6ocb5tBonZQiOnYxPol4QIMWLj58gPo6VQrHIW4AeSraQLaYyz3gcS1mH22rkGFfoiDJAnTlMnz49P2EtINIo+LKdniIIMlbBiQubStETBZlMi3aaQ3lqA8dmj22ZVeN6oAXYGdlXBr80D+egB4tlUSGJQlAAJik=
Received: from MN2PR20CA0014.namprd20.prod.outlook.com (2603:10b6:208:e8::27)
 by BY5PR02MB6723.namprd02.prod.outlook.com (2603:10b6:a03:213::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Sat, 2 May
 2020 04:37:15 +0000
Received: from BL2NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:e8:cafe::81) by MN2PR20CA0014.outlook.office365.com
 (2603:10b6:208:e8::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Sat, 2 May 2020 04:37:14 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT017.mail.protection.outlook.com (10.152.77.174) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 04:37:14
 +0000
Received: from [149.199.38.66] (port=34452 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtn-0002fk-Dh; Fri, 01 May 2020 21:37:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtp-0004eZ-U7; Fri, 01 May 2020 21:37:13 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0424b50g002110; 
 Fri, 1 May 2020 21:37:05 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjth-0004de-AM; Fri, 01 May 2020 21:37:05 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 3/4] drivers: clk: zynqmp: Fix invalid clock name
 queries
Date: Fri,  1 May 2020 21:37:02 -0700
Message-Id: <1588394223-257635-4-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588394223-257635-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588394223-257635-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(46966005)(70586007)(70206006)(107886003)(356005)(26005)(82310400002)(186003)(478600001)(8676002)(336012)(4326008)(9786002)(8936002)(2616005)(36756003)(426003)(5660300002)(47076004)(2906002)(6666004)(54906003)(81166007)(7696005)(82740400003)(316002)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23a80819-1019-498c-71a3-08d7ee527cb1
X-MS-TrafficTypeDiagnostic: BY5PR02MB6723:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6723DD3D84422F78A187910EA7A80@BY5PR02MB6723.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: olngKhVorikGE6Atky4gSX2JM/94fD6XF38srnqeEca/uW/ERypmHuYuM1sdNrWsLnu6OT+QYJZF3fNdKZ3Vuxn43VdCqZakk1Nz31AzpWHRgF9mLWd2N1+X8vkOse0ybNtIhuAxusyRFdSa+QMNxqONquKHmU3N1KABMdIjWsQjQp+hhwO9wkAyrrF38oYsm+mT1B7q4Xis4nW1ieQOCjc/hKfTy4CR9r6fU7xMaRsXXTPgldnj2ToX527NXPbjKFCwk13hGsX6odo9AFp87eLySACH6oIIgvO1L0aar9IGo3N9QidwdB8A14BU019ocVhx5aRQLem7edOPwZc856xcLJQ8ljzXM6Hoq/86KLdISNV/9y2y0//sNizlYB0kgv+bfHTnmoEmIQokMxtiGaK/CjaTzhfrDAo6nOUiI50C0GO6oHlaWyCaYo/A9IpAMufmR7ifCXIm+iy108SmSlzp8ce6IksoZK002ayBjO1ngZsXbUQPPdrGvQWTq9+meja26auVUw7XKPZqQaiYHllTges9phliiYy61lCFJEs=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 04:37:14.2857 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a80819-1019-498c-71a3-08d7ee527cb1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_213720_347177_7C8537D5 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.70 listed in wl.mailspike.net]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 jollys@xilinx.com, rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

The clock driver makes EEMI call to get the name of invalid clk
when executing versal_get_clock_info() function. This results in
error messages.
Added check for validating clock before saving clock attribute and
calling zynqmp_pm_clock_get_name() in versal_get_clock_info() function.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
---
 drivers/clk/zynqmp/clkc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 10e89f2..3e83c51 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -663,6 +663,11 @@ static void zynqmp_get_clock_info(void)
                        continue;

                clock[i].valid = FIELD_GET(CLK_ATTR_VALID, attr.attr[0]);
+               /* skip query for Invalid clock */
+               ret = zynqmp_is_valid_clock(i);
+               if (ret != CLK_ATTR_VALID)
+                       continue;
+
                clock[i].type = FIELD_GET(CLK_ATTR_TYPE, attr.attr[0]) ?
                        CLK_TYPE_EXTERNAL : CLK_TYPE_OUTPUT;

--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
