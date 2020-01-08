Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0C2135028
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 00:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1UdQR/meUj6K42nfHeJEinOr2OVzMemo9NTUkNBmVw=; b=Bw1wBcQ1LT5f8C
	+KsrwFqCsve8S8gEdkn9MJYn7Zvmf7B48hKupVjPCK8Ey5c++lyr6GAThNABYWJRaI3mJpQDF9nv4
	rT9BMwHhK39ulfnNfQtrZmF6lntJUGTdNo7x0W73qRvzji3T1SdzEQVrODxiLRVoj42kKhTmeRn8b
	DfQCEYmKwiZe1r/vIVA0wSBst8VB2kzAwIO1pn//2sAHMjm6iXOchnD6iUWDeGv8RSOWPgMiB++FN
	p4a0Mvy677vlw7jduDKmYVKLA/jKrG0mYC8dGys85PYZ1fv+3GRe84vxtM8v65k11OMh2BSfOvLr+
	da2KFsRY7HP7wKAoi8pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLBK-0003FU-Nd; Wed, 08 Jan 2020 23:56:10 +0000
Received: from mail-dm6nam11on2062d.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::62d]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLA4-0000eg-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 23:54:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OHiLoU0qtsJmjW3PlDE3SgGbnE9+OBqR7EdGOgHM9Wd3uuOH6IpgOKK31pJSxoYpVVzcAbz5IK8bDQFGk7f2U7ea9cf4EH0FYueMQnHd7ZNv/4oQvxS6ulZa4XXPkyfCHInxJSGhPr6W4CNsKIiTtbqkxIlzg51g0i+nVxgdp32DIaBYQXdDFW/mPVtWYyylFXCDhHmBtQKV8RVl1NQsm5Boazg25UkSAZxaf3FNJq/WH+EB6hhFCeCb3YV8QH06JPSjz6i0O5lfF0Vy/yC3OAyCvRdO9DTqgGJwteo5gVXOUYCf2KoAOaXsowNLM50PW/qJWfYtmYtXgBv335+dCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5q7nHJuL7rNZP14poX4fUSh8K5hU0KIYUscM0OPdCe8=;
 b=awrwMQiHnDOy8oPJfLcT9/ISLw0vLPiJl2F1XepjgLwDR+L3cCF44fzXAFZJXFj9swX1PyMHVH+fibhOu3Sw3qJGLqJA4EnSj86Up0P5LNTLo/zCwhhUX+QvEV//IhZBWs6t588g1opJC1Z4oXs8sCmXaM0TpwifTBQg9S+O+wR5DZGbeD657aVx1bKyFIYXPSLNQYyklvZ5yIgnITn8ASHlkVeLz/2RO5lwWx82iAyuZiWhspmU3O164rWvX6iO0rZMzbnQ9WbDtJJdzwFWiid4B0Pl+ZwCEQRc+DxBsf5fHyo6xCKOy3iU0Ab6lPGFPrkW7fYCG/8oCE65xCRvqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5q7nHJuL7rNZP14poX4fUSh8K5hU0KIYUscM0OPdCe8=;
 b=LDM7vwp3wz4QllBJMBFT8e8pAOKRvGAZdaxyGfeymXqfjQpiy6CFEK3pY7MMqU9Hl3sfd5zNPgC7RjDQAUfOt0t0P/sRXpEFE4S/hfqD4y6OI0XcqjHI1jlPr3E/K47Mf+aLVte1Oy6Dx87rqD4gJL8vuumNfEf89h/89V9r5uc=
Received: from SN4PR0201CA0033.namprd02.prod.outlook.com
 (2603:10b6:803:2e::19) by CY4PR02MB2230.namprd02.prod.outlook.com
 (2603:10b6:903:f::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.10; Wed, 8 Jan
 2020 23:54:47 +0000
Received: from SN1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by SN4PR0201CA0033.outlook.office365.com
 (2603:10b6:803:2e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.8 via Frontend
 Transport; Wed, 8 Jan 2020 23:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT020.mail.protection.outlook.com (10.152.72.139) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Wed, 8 Jan 2020 23:54:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9z-0003pv-3Q; Wed, 08 Jan 2020 15:54:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9t-0002BN-VM; Wed, 08 Jan 2020 15:54:42 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9l-0002A4-Pp; Wed, 08 Jan 2020 15:54:33 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v2 4/4] firmware: xilinx: Add sysfs and IOCTL to set boot
 health status
Date: Wed,  8 Jan 2020 15:54:23 -0800
Message-Id: <1578527663-10243-5-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(189003)(199004)(7696005)(4326008)(186003)(26005)(2616005)(2906002)(478600001)(6636002)(44832011)(426003)(5660300002)(356004)(81166006)(6666004)(81156014)(8676002)(54906003)(8936002)(70586007)(336012)(36756003)(7416002)(9786002)(70206006)(316002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2230; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 106cecc2-cc34-41ff-f299-08d794962499
X-MS-TrafficTypeDiagnostic: CY4PR02MB2230:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2230B640631E5DFB3920ED27B83E0@CY4PR02MB2230.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 02760F0D1C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5WB9jo9cuXkMgNf/BR/KFLXlbFv4TgIdUTMEb+OhcRbvwZWIusLzKyo5cbkWx8KOPL31PHGyHu4r7hpybM+IYT3D7P4t/xZL+P4Q0kVTDylPK5fMUtTssVBwJJvFSH6XsnCiXa7qRi+FIF6vfQz/sHwiEM5mCPt0PHMeji72Z92hwvmo927eLrZKjbicRzQjKO6jmKOY2e52Lli9roYA0E8lIAtkCFVwKTq1w285tZ76G4pwHgzaSU9QpAWSC1akOglh9zzGWmdotTaGdgMlYTW81KSHeNir0rASLUaTtBdQeOm74QTV5+hINvPDTUBqDuw3vQuQTs917CHKv8nURD0ds3v6MqMCDHaL8J65XaaakF9vFXc2ntEsmR3rAf7Qq9jKXHOcSA6ZHaJnBFimRzwQEipZqswjbEZY9925JTi5DkSEEsSl5AEYIDNwTLDW
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 23:54:47.4807 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 106cecc2-cc34-41ff-f299-08d794962499
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_155452_962773_94250168 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jolly Shah <jollys@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add sysfs interface to set boot health status from user space.
Add IOCTL ID used by this interface to communicate with firmware.

If PMUFW is compiled with CHECK_HEALTHY_BOOT, it will check the
healthy bit on FPD WDT expiration. If healthy bit is set by a user
application running in Linux, PMUFW will do APU only restart. If
healthy bit is not set during FPD WDT expiration, PMUFW will do
system restart.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
---
Changes in v2:
 - Updated Linux kernel version in documentation.
 - Used DEVICE_ATTR_* and ATTRIBUTE_GROUPS macros.
 - Updated Signed-off-by sequence.
---
 Documentation/ABI/stable/sysfs-firmware-zynqmp | 21 +++++++++++++
 drivers/firmware/xilinx/zynqmp.c               | 41 ++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h           |  2 ++
 3 files changed, 64 insertions(+)

diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
index f41e9c5..3f44a3c 100644
--- a/Documentation/ABI/stable/sysfs-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
@@ -80,3 +80,24 @@ Description:
 		# echo "subsystem" > /sys/firmware/zynqmp/shutdown_scope
 
 Users:		Xilinx
+
+What:		/sys/firmware/zynqmp/health_status
+Date:		April 2018
+KernelVersion:	5.5
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
+		Set healthy bit
+		# echo 1 > /sys/firmware/zynqmp/health_status
+
+		Unset healthy bit
+		# echo 0 > /sys/firmware/zynqmp/health_status
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index ef7d107..2a77c90 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -477,6 +477,7 @@ static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
 	case IOCTL_READ_GGS:
 	case IOCTL_WRITE_PGGS:
 	case IOCTL_READ_PGGS:
+	case IOCTL_SET_BOOT_HEALTH_STATUS:
 		return 1;
 	default:
 		return 0;
@@ -861,8 +862,48 @@ static ssize_t shutdown_scope_store(struct device *device,
 
 static DEVICE_ATTR_RW(shutdown_scope);
 
+/**
+ * health_status_store - Store health_status sysfs attribute
+ * @device:	Device structure
+ * @attr:	Device attribute structure
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
+static ssize_t health_status_store(struct device *device,
+				   struct device_attribute *attr,
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
+static DEVICE_ATTR_WO(health_status);
+
 static struct attribute *zynqmp_attrs[] = {
 	&dev_attr_shutdown_scope.attr,
+	&dev_attr_health_status.attr,
 	NULL,
 };
 
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index e4f83c6..0554054 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -106,6 +106,8 @@ enum pm_ioctl_id {
 	IOCTL_READ_GGS,
 	IOCTL_WRITE_PGGS,
 	IOCTL_READ_PGGS,
+	/* Set healthy bit value */
+	IOCTL_SET_BOOT_HEALTH_STATUS = 17,
 };
 
 enum pm_query_id {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
