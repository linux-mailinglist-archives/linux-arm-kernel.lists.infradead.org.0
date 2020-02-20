Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F5165A39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zbDgrOS7MNFzfIWyseD1Ics7D6qiJUi3XaxJWJv+/gc=; b=HVWRlfNJkXLIkl
	K0Pp63sLE2nTCrUeYw/beXqtdDkl0e7SVr3D90zSCjSc3xkp4olkPc89EB21xogAKiOa1QfeokSpb
	TiUExoZ9Z2jZYJTHHbohVzUZ/fftT98CurS8YEb3a8pq0z9g3lX6utcTNKq6loQG8kzZV82T5uWuz
	8+sU4nrqfYEleLjUL7CMhKgYIy8c076edXQRvCRUEq04/bmbZXg4A8KfK6xO/N40s9N+pVbWapqAX
	9uDflWYwyFa5hUj0FFXrNqKIDFvpwwwoZ3XMqaAiNFbQT6gAqjDAIE618XxkTO7dyXalherIE9jTq
	rD6OfHweEg+P7llZHIWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iBx-00076r-C8; Thu, 20 Feb 2020 09:32:21 +0000
Received: from mail-bn7nam10on2040.outbound.protection.outlook.com
 ([40.107.92.40] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iBp-00076P-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:32:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCZDAENR4y143YoVtGHn0oTfmRrIvI23sELAEz0MhoOhVTNk1KvfAg/az1rJUYIsiUz/UUmE0BYA03L/DacKlLQ+wGXrFqZPUWDViyzrFX787nuD26cqIR/CToGSn+oIstj7F+8htGavtAv7vJfJpzSENGPkn5bSMaarupKF8XjeChk6B90Bpk/OwbxQ20onxmuL/me7tHm0vWdWwgWUuAasctfQVBkRvLKnNSSf1/oZv45OxLMV3py1/wD2cjI0Ds08xzBkJ2JBrwwdWleCJaIaEqhrwnYGx61A+ou6CWk29pBV6vwAFR1AfFYI+dlDiVW/mTXskVl1FNve35kIwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pt4oFgNoIYDPOjKqD2PTQdaYF/mkLL4PpREXj7qSy9w=;
 b=SPi7gv3oMgqON/VbqaDzo+AvCUcOvoy+lYkL/+Oo1El0RSXff/6MBuW+0XgU/CM8rSgiubOzTIozYYjsZz/ZN5pLX3n+j22wukVA3KOQjIpwA8gbSoDNpCxjrQnggFuJsWCGl9upLFeZEZeDc4uoU6rmpxRskvlVmIGTPl0ZlTGoa2XpDGfCP0iqgb1zGJ3L6Iu901sWN2jVyuO/k4Go79FmR4r+8WL+h3ceUur1hzY92V1sFbHE6DigCcSh1sjySaotAtN/l8cpjMmwa/C4n3IjsNz8kA9DypHm71+ox5d2vayUMo6YwUEtKzJx06NWeBd4Teo6mCdnm0lz8fXVjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=towertech.it smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pt4oFgNoIYDPOjKqD2PTQdaYF/mkLL4PpREXj7qSy9w=;
 b=fVfRouIjdC2NgVCIoHzWXXeeIZMpvy27y7JjEZIa5JuPD+i9Oho9ukB8EltSom8SYPiqnDwU7tOieI/FJI27nZ60ra63V2EpasN6PKqQsbNgARSp8bYt6lzSRaNXq2BB2CQDZVpIESxYUjzlImV/TvD3WmdwgbDWra0+7FHoRZs=
Received: from BN6PR02CA0045.namprd02.prod.outlook.com (2603:10b6:404:5f::31)
 by MN2PR02MB6303.namprd02.prod.outlook.com (2603:10b6:208:1bd::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23; Thu, 20 Feb
 2020 09:32:08 +0000
Received: from BL2NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BN6PR02CA0045.outlook.office365.com
 (2603:10b6:404:5f::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17 via Frontend
 Transport; Thu, 20 Feb 2020 09:32:08 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; towertech.it; dkim=none (message not signed)
 header.d=none;towertech.it; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT030.mail.protection.outlook.com (10.152.77.172) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Thu, 20 Feb 2020 09:32:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j4iBj-0003K5-60; Thu, 20 Feb 2020 01:32:07 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j4iBd-0003ay-W1; Thu, 20 Feb 2020 01:32:02 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j4iBU-0003WD-Jl; Thu, 20 Feb 2020 01:31:53 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 michal.simek@xilinx.com, sgoud@xilinx.com, shubhraj@xilinx.com
Subject: [PATCH] rtc: zynqmp: Add calibration set and get support
Date: Thu, 20 Feb 2020 15:01:46 +0530
Message-Id: <1582191106-30431-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39850400004)(189003)(199004)(54906003)(107886003)(8676002)(7696005)(2906002)(4326008)(70206006)(70586007)(5660300002)(316002)(336012)(8936002)(81156014)(81166006)(44832011)(36756003)(9786002)(186003)(356004)(2616005)(6666004)(478600001)(26005)(6636002)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6303; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4447bab0-e78c-4729-7572-08d7b5e7c136
X-MS-TrafficTypeDiagnostic: MN2PR02MB6303:
X-Microsoft-Antispam-PRVS: <MN2PR02MB63033723183F6279F5306D9FAF130@MN2PR02MB6303.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 031996B7EF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eGSZNQ6VCHm+qXuIv0LV+XowRyLN5O8erlPam7CPdfMmgMPujwiAoRI4uyGY03OLlYJokSNrJ4IptjnsJRypc8z0ZP+voZHvCQSFtgLTm4oY02BvRaak9XiOfddzgyFhG39aXwU4n1gTSJqwcU8LcboKmC3EpqNVFVw0JEqj1zVcJMzdAkkSo65qQEd557KsGOeGUQwqgpsTlS0twA99OIOfLm8YOw4uhGsQCgLP/wmMpF4j9wjxx6MinYAf6+Xxp9x4Zsx8ATAlA4K4U/377r/nBgvPszcmR0g/uVahm+95ztgPQF6sNagReHiNGf/UpVNOtd9BuHjtuslwm8I5WfCIqJlZNhL9uh86duUiJ1LzSCHtm6z4d4OsYGyUvPu/Gs76gCMKxbYZNL4mavp+pX0TbhpvO2IBl54qbkflO1FXMMxl1S0XnJZf4BZoG4Aa
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 09:32:07.7467 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4447bab0-e78c-4729-7572-08d7b5e7c136
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_013213_096906_9FC56B87 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.40 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Srinivas Goud <srinivas.goud@xilinx.com>,
 Srinivas Neeli <srinivas.neeli@xilinx.com>, linux-kernel@vger.kernel.org,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMp RTC controller has a calibration feature to compensate
time deviation due to input clock inaccuracy.
Set and get calibration API's are used for setting and getting
calibration value from the controller calibration register.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
---
 drivers/rtc/rtc-zynqmp.c | 78 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
index 4b1077e2f826..b4118e9e4fcc 100644
--- a/drivers/rtc/rtc-zynqmp.c
+++ b/drivers/rtc/rtc-zynqmp.c
@@ -40,6 +40,12 @@
 #define RTC_CALIB_MASK		0x1FFFFF
 #define RTC_ALRM_MASK          BIT(1)
 #define RTC_MSEC               1000
+#define RTC_FR_MASK             0xF0000
+#define RTC_SEC_MAX_VAL         0xFFFFFFFF
+#define RTC_FR_MAX_TICKS        16
+#define RTC_OFFSET_MAX          150000
+#define RTC_OFFSET_MIN          -150000
+#define RTC_PPB                 1000000000LL
 
 struct xlnx_rtc_dev {
 	struct rtc_device	*rtc;
@@ -184,12 +190,84 @@ static void xlnx_init_rtc(struct xlnx_rtc_dev *xrtcdev)
 	writel(xrtcdev->calibval, (xrtcdev->reg_base + RTC_CALIB_WR));
 }
 
+static int xlnx_rtc_read_offset(struct device *dev, long *offset)
+{
+	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
+	long offset_val;
+	unsigned int reg;
+	unsigned int tick_mult = RTC_PPB / xrtcdev->calibval;
+
+	reg = readl(xrtcdev->reg_base + RTC_CALIB_RD);
+
+	/* Offset with seconds ticks */
+	offset_val = reg & RTC_TICK_MASK;
+	offset_val = offset_val - xrtcdev->calibval;
+	offset_val = offset_val * tick_mult;
+
+	/* Offset with fractional ticks */
+	if (reg & RTC_FR_EN)
+		offset_val += ((reg & RTC_FR_MASK) >> RTC_FR_DATSHIFT)
+			* (tick_mult / RTC_FR_MAX_TICKS);
+	*offset = offset_val;
+
+	return 0;
+}
+
+static int xlnx_rtc_set_offset(struct device *dev, long offset)
+{
+	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
+	short int  max_tick;
+	unsigned char fract_tick = 0;
+	unsigned int  calibval;
+	int fract_offset;
+	unsigned int tick_mult = RTC_PPB / xrtcdev->calibval;
+
+	/* Make sure offset value is within supported range */
+	if (offset < RTC_OFFSET_MIN || offset > RTC_OFFSET_MAX)
+		return -ERANGE;
+
+	/* Number ticks for given offset */
+	max_tick = div_s64_rem(offset, tick_mult, &fract_offset);
+
+	/* Number fractional ticks for given offset */
+	if (fract_offset) {
+		if (fract_offset < 0) {
+			fract_offset = fract_offset + tick_mult;
+			max_tick--;
+		}
+		if (fract_offset > (tick_mult / RTC_FR_MAX_TICKS)) {
+			for (fract_tick = 1; fract_tick < 16; fract_tick++) {
+				if (fract_offset <=
+				    (fract_tick *
+				     (tick_mult / RTC_FR_MAX_TICKS)))
+					break;
+			}
+		}
+	}
+
+	/* Zynqmp RTC uses second and fractional tick
+	 * counters for compensation
+	 */
+	calibval = max_tick + xrtcdev->calibval;
+
+	if (fract_tick)
+		calibval |= RTC_FR_EN;
+
+	calibval |= (fract_tick <<  RTC_FR_DATSHIFT);
+
+	writel(calibval, (xrtcdev->reg_base + RTC_CALIB_WR));
+
+	return 0;
+}
+
 static const struct rtc_class_ops xlnx_rtc_ops = {
 	.set_time	  = xlnx_rtc_set_time,
 	.read_time	  = xlnx_rtc_read_time,
 	.read_alarm	  = xlnx_rtc_read_alarm,
 	.set_alarm	  = xlnx_rtc_set_alarm,
 	.alarm_irq_enable = xlnx_rtc_alarm_irq_enable,
+	.read_offset    = xlnx_rtc_read_offset,
+	.set_offset     = xlnx_rtc_set_offset,
 };
 
 static irqreturn_t xlnx_rtc_interrupt(int irq, void *id)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
