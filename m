Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373D411CDB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LYWKIJ+duz2hecyILuZTSn2u/WWXqvUxxMh67ysSG18=; b=X3gAyMAP+UZJ32
	EqsU7ZN3i0IMOVPZnLcUSuc8h+Uk6E05N7LMJwT2NnlDUYSkm5hmcVANjAg99R/h4NQUiUnOTyixF
	qfQsaVykaSObAzig7k83poaizVKKiFhcb2Hxi9s2nXAsGwUuXZD1TInKq6Gx9MZQp3ZnDTQf/gAWO
	ZoPUF0G5jHa8ZtiJJau0iJXERnMEO3oqz/yq5zpcpflFC2INRpfQUEBOn18yBQ30Abpb80dJQRxMc
	An+6Jo1hkixoGM4Fg+h2M0B1uRwN2zKL0KXdar4t0lSD1PlUV+7vm2z6MW+FULzPhXdcDW8G4rXIS
	LdlFI7cy9C3UMGcfaCeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifO69-0005zX-3N; Thu, 12 Dec 2019 13:01:41 +0000
Received: from mail-co1nam11on2044.outbound.protection.outlook.com
 ([40.107.220.44] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifO5w-0005qo-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 13:01:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZUNUyi4qpk2XjwydW2MjacSi48ZCH+jrzzxCCV+5yLKpWTR52kqJm5PYwWeavCRLqb8tPkMdzS8uZtv60GFx4GQw0QFIIGGPeNYj83j1tR2NTvqYWQ8qm1cyCR6LWi/O2/zM4LDD+MaFyR/VgxpxeYECqi7/TtxCMuqsPvJjnrqsaJbd60GR5YV7PxpXADOPXhbc3aP8huMJlT+8A8+RAfLPIu0qQnMXJ3eufRgIUpHc77ARdQZdwnT2sPHCQXB4sKAJGfDbnpiJA4wHuGP/bySAO4sGUoI3LR/1P68uEI+i6Rcl5JRrhiqtXubI4ac0yS1p3yHd4hWa8wjvCOznw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/rPvPinEHq9E+nittqb6XQDb0zF5NzNyLm66p5zOa4=;
 b=YKXMtb5t4Kj4AuOWpOmopGMxJJY87XCKIKEbu/dfidQnRVyDrIDfaOh7vqP4i+XfqXkbYQwAJ8YX4W73HArOFlmI7hNcl/z2kdzQ3UpZxFj8LAq2KYIi+oPZ2BZKjpM/w6I1kgvx2QKrd18Jk4CoZm73Ix1iKDSy5g1W+8caNolkkPSSOmAQzC8SJd8NbzT1LxA51vH/eq279hz3Gj9e/QEfwuc9b/lFWUdyA3PhUnYWPnhKvqkbpNDaf33LBMJ5b/iHD+0OT75kbiLH/9Io7sGlPadi8zcR6ZgN3ew36rhtoYjjP+9esQTONOBW6jqKGZBd3ZHn6P5w4QCLFZrxew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=towertech.it smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/rPvPinEHq9E+nittqb6XQDb0zF5NzNyLm66p5zOa4=;
 b=O3a9gbQUnoQzKuKwNPK5GfyPGxZqi3kFeFWvkGE3pvHze66NvCiP+JyNsCReNN1Qap2Is/gYi7HmSrC2plQ0UtVgOC7hHjCG3LkWWWtEBWxcnl/wcRaUDM3QSL6bDMwVSRjyPTEp72AZCsWvj/HjEv2pi+HUoy27nZRYIEQHpzc=
Received: from BL0PR02CA0098.namprd02.prod.outlook.com (2603:10b6:208:51::39)
 by BL0PR02MB6513.namprd02.prod.outlook.com (2603:10b6:208:1c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.17; Thu, 12 Dec
 2019 13:01:24 +0000
Received: from SN1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by BL0PR02CA0098.outlook.office365.com
 (2603:10b6:208:51::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.17 via Frontend
 Transport; Thu, 12 Dec 2019 13:01:24 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; towertech.it; dkim=none (message not signed)
 header.d=none;towertech.it; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT036.mail.protection.outlook.com (10.152.72.149) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Thu, 12 Dec 2019 13:01:23 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ifO5r-00041z-49; Thu, 12 Dec 2019 05:01:23 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ifO5m-00040j-0t; Thu, 12 Dec 2019 05:01:18 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ifO5f-0003rT-19; Thu, 12 Dec 2019 05:01:11 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 michal.simek@xilinx.com, sgoud@xilinx.com, shubhraj@xilinx.com
Subject: [PATCH] rtc: zynqmp: Clear alarm interrupt status before interrupt
 enable
Date: Thu, 12 Dec 2019 18:30:18 +0530
Message-Id: <1576155618-7933-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(189003)(199004)(426003)(81166006)(44832011)(8936002)(2616005)(336012)(4326008)(5660300002)(9786002)(81156014)(6636002)(7696005)(356004)(186003)(2906002)(70206006)(8676002)(36756003)(26005)(70586007)(498600001)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB6513; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 645924df-a5d7-4604-7c26-08d77f036415
X-MS-TrafficTypeDiagnostic: BL0PR02MB6513:
X-Microsoft-Antispam-PRVS: <BL0PR02MB65131333B16F8BC942B4A85EAF550@BL0PR02MB6513.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0249EFCB0B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S7IK9iCjklnsPsahiZrf1D5LBHJj26vQ8M6Vet+K1ByOnRCauJlSfXLx1Sntz5lrn8nnqv/x/P1XKblPGM6PI91ApOFtWzET4UyxYm+UX5un6S2c0miKE75pqG870g2SJeqAggql9Y7NIabGOjO/94IesasGgkN4rA3Z5a+IdyYwO4jAVCz+nxKaDEsbBz1URIefTs4aEPf960KaixrRdixtiTlpEa7ict19z2Bhi5Vs67EHzwCUFdXXUuDkvuvm1X920hJicrypDKCq7buPI3M2RjTER/CSCbsuYaLSyJdm1SWbk1mLSu0YwIjuDE8nxBUDfl13diNdLkaeSlYEnt2J1CUb3de9yNpUXFqbUdEFrMoksql73UB19fZuf/FCthz+fH6IAYoaw3k04NJQ/6HXc8vPQihS0Q8609CQ0DsPikMILS0GFp/4Jbt0oRMR
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2019 13:01:23.5832 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 645924df-a5d7-4604-7c26-08d77f036415
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_050128_661080_4DB9E0F1 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.44 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Srinivas Neeli <srinivas.neeli@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix multiple occurring interrupts for alarm interrupt. RTC module doesn't
clear the alarm interrupt status bit immediately after the interrupt is
triggered.This is due to the sticky nature of the alarm interrupt status
register. The alarm interrupt status register can be cleared only after
the second counter outruns the set alarm value. To fix multiple spurious
interrupts, disable alarm interrupt in the handler and clear the status
bit before enabling the alarm interrupt.

Fixes: 11143c19eb57 ("rtc: add xilinx zynqmp rtc driver")
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
---
 drivers/rtc/rtc-zynqmp.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
index 5786866c09e9..d311e3ef1f21 100644
--- a/drivers/rtc/rtc-zynqmp.c
+++ b/drivers/rtc/rtc-zynqmp.c
@@ -38,6 +38,8 @@
 
 #define RTC_CALIB_DEF		0x198233
 #define RTC_CALIB_MASK		0x1FFFFF
+#define RTC_ALRM_MASK          BIT(1)
+#define RTC_MSEC               1000
 
 struct xlnx_rtc_dev {
 	struct rtc_device	*rtc;
@@ -124,11 +126,28 @@ static int xlnx_rtc_alarm_irq_enable(struct device *dev, u32 enabled)
 {
 	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
 
-	if (enabled)
+	unsigned int status;
+	ulong timeout;
+
+	timeout = jiffies + msecs_to_jiffies(RTC_MSEC);
+
+	if (enabled) {
+		while (1) {
+			status = readl(xrtcdev->reg_base + RTC_INT_STS);
+			if (!((status & RTC_ALRM_MASK) == RTC_ALRM_MASK))
+				break;
+
+			if (time_after_eq(jiffies, timeout)) {
+				dev_err(dev, "Time out occur, while clearing alarm status bit\n");
+				return -ETIMEDOUT;
+			}
+			writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_STS);
+		}
+
 		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_EN);
-	else
+	} else {
 		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_DIS);
-
+	}
 	return 0;
 }
 
@@ -183,8 +202,8 @@ static irqreturn_t xlnx_rtc_interrupt(int irq, void *id)
 	if (!(status & (RTC_INT_SEC | RTC_INT_ALRM)))
 		return IRQ_NONE;
 
-	/* Clear RTC_INT_ALRM interrupt only */
-	writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_STS);
+	/* Disable RTC_INT_ALRM interrupt only */
+	writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_DIS);
 
 	if (status & RTC_INT_ALRM)
 		rtc_update_irq(xrtcdev->rtc, 1, RTC_IRQF | RTC_AF);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
