Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A8E15A641
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRkStL7kEzVVNHfbfoGti/6IfSXXgcHgG0BBXIurqzk=; b=h6oIk64+FhS8E5
	btd/cD3c4/yviUofrNTY0bCVsVIhQGZJlT2MqbavHsUbdmsOMRbz/hP01/BneSMRRN6WSZS2kja34
	4778gIoF56bedb1Qy/nRo3fP+4DobdRvPP/+G8MGb+lclUWNxlpCbuCcDIz7nWaCfY+0bhYZvkE2b
	lZVXJ0ySiFXg/GdIMZ3XFjA5EWESvjJxwIx0YdyXJX+h/iKqMaWiUSrE+D96upVKMklA9XdZn1tKE
	Shqpnc3WUndqM46wTDZ6DsVI/fQqTcc1ymg9yxYuyiFxUHFYThuE3zVHLQTldi4KNzzZE/CN/ss4p
	0oxdvFO6Ty9RF8S6bxVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pCn-0006Ve-Gp; Wed, 12 Feb 2020 10:25:17 +0000
Received: from mail-mw2nam12on2057.outbound.protection.outlook.com
 ([40.107.244.57] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pCX-0005l5-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:25:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTxLgDZYQOgZH1aOOXB/EYXgbxKTTAXUng4LinGEAjBFfyKHtZhjeYsBBYYFVC0lF7H2/o76Wn9v8FGY1kfNnTX5sPY1RmBXABBkJNffrzkkhKD29IKnjAwDGx04zH6ni5J1/7OEi+vIVZqUy1nuaDUJhcUi5SgOlpUvblwChSqnN8UBFeLgnblGdpzUZKbDKxYGWnXf6bHNZDXo+uZKPSrXhoNae/6R/+iQFLlrGtJ1yk/8nmrBX/4fZIVcuPYQ41lY/oURHFVpq7gP48mb4gq249QE5lDRQ2Xnk+jsbYZJle9QaIcwBHRlF0UDWdZF+gtTifMmLwWc/U29gG4rgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L5PQ0RqpC2Wpwqq+ketZzRjv26UCHXVFgynBJbfC4rE=;
 b=f6CrdV2MRpVzZiuNJDsNQtFWmB+ueEEFjSH8NJUoh9Y6tNQ3CvA/45A9LcObYTfe6UyopBDAHhpdY8ceNOGjNNMaBwvuntvAoVjCesqWliXJcj9sHvyX4sdb0MoO+9lf1oex/uDlUFM3koTRyff0sm8mpKUIOc6cs4H+AckJy0jZ0QJilpuqGNLjsZV5Kkl1uCF4VrH+8X33sg5ZLxV0sTDFapDvPGT4DLtHAsSf/HvyTNzKoE65jVzj5qoMITyv2SdZ668hsDsM4lk1MVpJli8s8S6nWpHqOsrJA5WPXvaLTMEwU6Se3KyYL9/DhEIebvx09Gi5k/VPrsHZ4QC7/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=towertech.it smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L5PQ0RqpC2Wpwqq+ketZzRjv26UCHXVFgynBJbfC4rE=;
 b=d/R3EY4OqW5BdutpvTrVSI+7/ldOMDlD4BmDe2twKCTSLsqYUn/mQKh7TI5RG2Q3z2yCia3oNGCZmCPTaIc1j5VkSyxfdsKvjNo0OkbW6Rfm9xHtMPpxzR3sMRryyMaNlf5jFGuiKaBrwokNOYo+AcHvyVCOjPrWUeNLC2UOHvg=
Received: from BYAPR02CA0065.namprd02.prod.outlook.com (2603:10b6:a03:54::42)
 by DM6PR02MB6988.namprd02.prod.outlook.com (2603:10b6:5:22c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21; Wed, 12 Feb
 2020 10:24:58 +0000
Received: from CY1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by BYAPR02CA0065.outlook.office365.com
 (2603:10b6:a03:54::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.29 via Frontend
 Transport; Wed, 12 Feb 2020 10:24:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; towertech.it; dkim=none (message not signed)
 header.d=none;towertech.it; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT031.mail.protection.outlook.com (10.152.75.180) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Wed, 12 Feb 2020 10:24:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j1pCT-0007tp-1J; Wed, 12 Feb 2020 02:24:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j1pCN-0002z7-SP; Wed, 12 Feb 2020 02:24:51 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j1pCE-0002xF-Vj; Wed, 12 Feb 2020 02:24:43 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 michal.simek@xilinx.com, sgoud@xilinx.com, shubhraj@xilinx.com
Subject: [PATCH v2] rtc: zynqmp: Clear alarm interrupt status before interrupt
 enable
Date: Wed, 12 Feb 2020 15:54:39 +0530
Message-Id: <1581503079-387-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(346002)(189003)(199004)(70586007)(70206006)(8936002)(2906002)(316002)(4326008)(81166006)(356004)(81156014)(9786002)(6666004)(8676002)(44832011)(36756003)(2616005)(6636002)(336012)(107886003)(26005)(7696005)(5660300002)(426003)(186003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6988; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6978c83d-203a-4334-7012-08d7afa5cf21
X-MS-TrafficTypeDiagnostic: DM6PR02MB6988:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6988640173A63626683324D7AF1B0@DM6PR02MB6988.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0311124FA9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GJGRO5dcrSFeo+TKf4Sk2P2Sd3u1zwA3PVxaji0o470JB3taNwXKPtZYetBktCY/IL6LsuuUP5fAaq880Gbwk1MR0rIj96WrzC6o6Ptg6emssC8rWxmaAit5SjIioeVRlO4x46BPvnl3EdjrJ8IPHLBdzB3xoo0ZNZNV2FmfHtE0KwekAWd1sBCOVaCmxl0GtXMzJHGqWU3seySdB67CmJXQFvj4xltkDsCQyt78dU4aG2PmvvZn+lD7qbnPwLuccct9gvpoBmzTzYhJVr6w7DgSKgeYNCx6glmoH5hTiAlcQJf89oQJTvTqN1McTtMsjbKS7hAreI0etfootKrq14Oy8QbJTpekzPCvflhZGfNl0iH3gHmYVxnnVgblFCrM7f4TomamlKrUCOYxn5NhZPvIxwKkK/B0iOPpbNBefueRPWxKSCF2JwmgUstQ6Jbq
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2020 10:24:57.4463 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6978c83d-203a-4334-7012-08d7afa5cf21
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_022501_235649_9CFCAF2C 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.57 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
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
Changes in V2:
Addressed Michal Simek comments
 - Removed new line in declartion part.
 - Added new line before return.
---
 drivers/rtc/rtc-zynqmp.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
index 5786866c09e9..4b1077e2f826 100644
--- a/drivers/rtc/rtc-zynqmp.c
+++ b/drivers/rtc/rtc-zynqmp.c
@@ -38,6 +38,8 @@
 
 #define RTC_CALIB_DEF		0x198233
 #define RTC_CALIB_MASK		0x1FFFFF
+#define RTC_ALRM_MASK          BIT(1)
+#define RTC_MSEC               1000
 
 struct xlnx_rtc_dev {
 	struct rtc_device	*rtc;
@@ -123,11 +125,28 @@ static int xlnx_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 static int xlnx_rtc_alarm_irq_enable(struct device *dev, u32 enabled)
 {
 	struct xlnx_rtc_dev *xrtcdev = dev_get_drvdata(dev);
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
 
-	if (enabled)
 		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_EN);
-	else
+	} else {
 		writel(RTC_INT_ALRM, xrtcdev->reg_base + RTC_INT_DIS);
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
