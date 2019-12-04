Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937A811383B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8d4qwQBG1/yPbRpXmJB0ltIj9Hzfqc6QHDNX1Pzumwg=; b=MtxvAoHJjTzpaE
	eKIAVKciWZRRl8IyqKe6eF2OemrsqPxZ70YDfmmHmNmuBY774nxYCtNx+JeHSjK6GAgTQmrZZRAFp
	uByjKZSs263yDygWTghORm7xSawpuVDClUn0y1U3+kmRmF1sDtpagwC3AvdlTeqj4hx3szCsj8WW9
	6nSsDz/QZa6QOwOgzaMUgDgWfV/wwol25hxf3fwxNnR18aQ1VXrT1m/rU+WC2Xzy37R0UPLs0nKR5
	K4SJ2FL7AL3XU9QBvDUnbU5hJBo9lLaQHWeu/EkOpGkalIbT6Eoe5p9jxfZWyDNfHbAuJhPZL0GHt
	3+gKsGr2NOZrnCsbHvSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice6W-0002EH-Jv; Wed, 04 Dec 2019 23:30:44 +0000
Received: from mail-bn7nam10on2060.outbound.protection.outlook.com
 ([40.107.92.60] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5X-0000E8-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avVzedjKQKMmhkIYXKW5Z2o8R6aD/s3wEGAKRcPYqH1fXKW6TnkQLF0qBsHk5o4UCRw/xa8kPE6SivGj+teLoQiT45BQ3L4fWCwQ501Ai+ptXKnB0EZzxx6arTwNUkIdcNX1lHM5UA0GxYe9/80wfHINFfGLM700JpoXsnrGnQ3HLuEBwfarsNS6vfHMYFRj1n2+HBH7J8Isetu8Oea4EIVT1HC+pvkpH0QpcvuiQXHonuFLGbTK9XJdNVj4fuO2dNoy1C+GyzJKy2SZRN0TiNCGSXDa9atIpghucnxvoBvprwkkoXWbQJ5pBOTXCaSr8aP/NxB69mPDWTX72zen8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCmv5qdk/zn8urgjXqF1Eaewb0TJHAmOdvVOYypLALA=;
 b=Ddjk/I4RLEJ8YKVDR+wClxA59Zfh37dYsF4MAIlxFX+OYM538ikBcpv4l/0oweUHZ2cbpof+xCPnPwuu1ItZujWT4AcIa5fx8Hkm2aKKo+i3LgnyRYfVBWHOoDleXYQcjXJThOke+tytfRs7ODT44ArLYZm1B3stPnw2JY+xIhZ5i3VjqSoYJBof07LAgsID6mcFHonoASmEgofS29A3SmsbXNyE4PpCWDXMELOxiO0V7TLsCZzuY9eTswe/l32pW6KFHxK6hgp2K0u5rHUibKajuBypVh/77bTOs2ZnWKW86g9AB8WkaXkvQ1cRdx5jbTZMFGMIowc/iOieULcDJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCmv5qdk/zn8urgjXqF1Eaewb0TJHAmOdvVOYypLALA=;
 b=Yc55Vgm1gwJ9Z8A1UD4wQ0vxapQSTRN9YTo+ZHJvJS9CZL0xhiqTceA3iqHYRV+7xTYLMNvO09jD7zFWKLPIMVvTlm0KpAZjylCoDvqoVx04zxe6FNa+Ok1iwgHFuUU6fH0m7iTirE88FiP8Tcm27VuqeM0QK4C5lxF3TD7rufU=
Received: from CY4PR02CA0033.namprd02.prod.outlook.com (2603:10b6:903:117::19)
 by BN7PR02MB3921.namprd02.prod.outlook.com (2603:10b6:406:f3::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Wed, 4 Dec
 2019 23:29:39 +0000
Received: from BL2NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by CY4PR02CA0033.outlook.office365.com
 (2603:10b6:903:117::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.13 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT011.mail.protection.outlook.com (10.152.77.5) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5O-0005aB-PU; Wed, 04 Dec 2019 15:29:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5J-00080R-M1; Wed, 04 Dec 2019 15:29:29 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTR6U024871; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-Mq; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 5/5] firmware: xilinx: Add sysfs and IOCTL to set boot health
 status
Date: Wed,  4 Dec 2019 15:29:19 -0800
Message-Id: <1575502159-11327-6-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(498600001)(6666004)(36386004)(356004)(5660300002)(51416003)(7696005)(81156014)(8676002)(305945005)(2906002)(81166006)(9786002)(44832011)(6636002)(76176011)(26005)(107886003)(11346002)(14444005)(50466002)(16586007)(336012)(4326008)(8936002)(7416002)(426003)(54906003)(50226002)(36756003)(2616005)(70206006)(70586007)(48376002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB3921; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2a7cc52-c5d0-4380-9a83-08d77911d465
X-MS-TrafficTypeDiagnostic: BN7PR02MB3921:
X-Microsoft-Antispam-PRVS: <BN7PR02MB3921DFE0E35AD5D1E86605E9B85D0@BN7PR02MB3921.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yAehIwUhrh2ZiSgzFcbkB9c6H7iZ0lwsg7vMh326/ZjiLZ4s1Ee+LJVkE6kSKTcpeQq82oDjBwt0Cv4MCXNPj8z0f4cZcpvfCsVM7eJN/5qH6Iy0dDvA1Z32Hk45GyjH8QcgY25TQWNZFNEl5/iRosg1v9mZLeBaKpu7jcHQto485bueeRwxwhMwPAYWT8A3NfUkdjkTM9Btvt+2/6k12KRoxrQ1GW1jdDjsekcZoNB9b0xOSF3QdlDzlUDgE5tICQ3QYpbzVGXVVmboweVbSuQzjpvg5ZNNthQA/ITCLIkTSqLN+cKsAeBT2d2C5av76cKHz4jkdL2GOb6ZyR/J8Rmi0D6m1zUGjCLdidSUpv0DYuldEEgC42BnN4i3y+5zUn+Y33kOuMkDgzwmbZODVh6I7JsQcpzJBCFuF/+0iEpWhoWUMs1pbVZOTWAp3ERe
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:36.9728 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a7cc52-c5d0-4380-9a83-08d77911d465
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB3921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152943_437553_D5730D84 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add sysfs interface to set boot health status from userspace.
Add IOCTL ID used by this interface to communicate with firmware.

If PMUFW is compiled with CHECK_HEALTHY_BOOT, it will check the
healthy bit on FPD WDT expiration. If healthy bit is set by a user
application running in Linux, PMUFW will do APU only restart. If
healthy bit is not set during FPD WDT expiration, PMUFW will do
system restart.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 Documentation/ABI/stable/sysfs-firmware-zynqmp | 21 +++++++++++++
 drivers/firmware/xilinx/zynqmp.c               | 42 ++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h           |  2 ++
 3 files changed, 65 insertions(+)

diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
index 13e4fd2..eeae291 100644
--- a/Documentation/ABI/stable/sysfs-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
@@ -80,3 +80,24 @@ Description:
 		# echo "subsystem" > /sys/firmware/zynqmp/shutdown_scope
 
 Users:		Xilinx
+
+What:		/sys/firmware/zynqmp/health_status
+Date:		April 2018
+KernelVersion:	4.14.0
+Contact:	"Rajan Vaja" <rajanv@xilinx.com>
+Description:
+		This sysfs interface allows to set the health status. If PMUFW
+		is compiled with CHECK_HEALTHY_BOOT, it will check the healthy
+		bit on FPD WDT expiration. If healthy bit is set by a user
+		application running in Linux, PMUFW will do APU only restart. If
+		healthy bit is not set during FPD WDT expiration, PMUFW will do
+		system restart.
+
+		Usage:
+		Set healty bit
+		# echo 1 > /sys/firmware/zynqmp/health_status
+
+		Unset healty bit
+		# echo 0 > /sys/firmware/zynqmp/health_status
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index b23bda4..4e497a3 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -479,6 +479,7 @@ static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
 	case IOCTL_READ_GGS:
 	case IOCTL_WRITE_PGGS:
 	case IOCTL_READ_PGGS:
+	case IOCTL_SET_BOOT_HEALTH_STATUS:
 		return 1;
 	default:
 		return 0;
@@ -886,6 +887,46 @@ static struct kobj_attribute zynqmp_attr_shutdown_scope =
 						__ATTR_RW(shutdown_scope);
 
 /**
+ * health_status_store - Store health_status sysfs attribute
+ * @kobj:	Kobject structure
+ * @attr:	Kobject attribute structure
+ * @buf:	User entered health_status attribute string
+ * @count:	Buffer size
+ *
+ * User-space interface for setting the boot health status.
+ * Usage: echo <value> > /sys/firmware/zynqmp/health_status
+ *
+ * Value:
+ *	1 - Set healthy bit to 1
+ *	0 - Unset healthy bit
+ *
+ * Return:	count argument if request succeeds, the corresponding error
+ *		code otherwise
+ */
+static ssize_t health_status_store(struct kobject *kobj,
+				   struct kobj_attribute *attr,
+				   const char *buf, size_t count)
+{
+	int ret;
+	unsigned int value;
+
+	ret = kstrtouint(buf, 10, &value);
+	if (ret)
+		return ret;
+
+	ret = zynqmp_pm_ioctl(0, IOCTL_SET_BOOT_HEALTH_STATUS, value, 0, NULL);
+	if (ret) {
+		pr_err("unable to set healthy bit value to %u\n", value);
+		return ret;
+	}
+
+	return count;
+}
+
+static struct kobj_attribute zynqmp_attr_health_status =
+						__ATTR_WO(health_status);
+
+/**
  * config_reg_store - Write config_reg sysfs attribute
  * @kobj:	Kobject structure
  * @attr:	Kobject attribute structure
@@ -1011,6 +1052,7 @@ static struct kobj_attribute zynqmp_attr_config_reg =
 
 static struct attribute *attrs[] = {
 	&zynqmp_attr_shutdown_scope.attr,
+	&zynqmp_attr_health_status.attr,
 	&zynqmp_attr_config_reg.attr,
 	NULL,
 };
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 54061de..c6f3c50 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -107,6 +107,8 @@ enum pm_ioctl_id {
 	IOCTL_READ_GGS,
 	IOCTL_WRITE_PGGS,
 	IOCTL_READ_PGGS,
+	/* Set healthy bit value*/
+	IOCTL_SET_BOOT_HEALTH_STATUS = 17,
 };
 
 enum pm_query_id {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
