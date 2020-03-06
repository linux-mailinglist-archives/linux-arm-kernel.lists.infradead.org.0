Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D817C90F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vT3R1ZmaJixvN0oFtXDv42XfeqeRczCA5TtLZzvS8Y=; b=cBXOCSLfzNlS8g
	y6XZ1P0YQ8qbZlbZAUo0rkC7+uBYrCsC4kMaE/TOBjryhJzLOqL+h3zvzyFUNe/d0Rjn4ktkLvdzq
	M/2qB4mSchSb8QmtmHekrSa52i/QqdMGAla/FdU6bcMERpwehNKGNxIaBZJ2D3TLsh+fsfxmXr9DB
	MAawBdHGa3Yw0tHSpzu3pY9q4uUvGrqNwTLfpl23JPGw/Yd5cU4KPbtLM5uTijTNLt8DXTsE1wVIO
	haSOKZ+VplTq7gMKxdwdfVzBpphU2RJGeZ/Mjwy8Agwq+hMjttbZo1c58fZfayzXaXCblS7d06dPc
	NBm4YHFtOrb6SauShV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMkh-0001T0-56; Fri, 06 Mar 2020 23:51:35 +0000
Received: from mail-bn7nam10on2089.outbound.protection.outlook.com
 ([40.107.92.89] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhF-0005zQ-FU
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOOSUcPDBsoLzqdisvm35p500w0YBTMyGyViuxcOdl2B5bU7hBlyV82FoZ+IxJcG2kafr7g7gd3V9hky7YIFltx9EBZd3jScXzqdrpgJNGcVFVJTYxykdO0pVoAOV2qKY56NkcNYbEYORn4sEpAE/YgT0pDq1RQYEWIY++NFsTqxMv3ikJWZ0F3JFHwpMxdpHR7ZYo5R2D5XohzNYV1vkIvALEM5Ytu+Ob13JQCsRhLqO013AKNEY6TgxqmCofifTrxGmJrswPJY6kGT+bg0vNxf9v/d94yb97CKMGQKnGrF9ZS7J+5FqZyYt3leawcT5ROgkSXe/SCS5jGSGEkJVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ARfBCYbaIkACVcxwYHH6q85GhI6mU0qHdEfiyx8T5o=;
 b=NpgpUynT6N3IJDYIfZr0+jx/4YjXvg4klVoYrLuMTkjhDexEG7qoQcuJlTyLmGXBz/Qf5JGKsM5EM2SQXsOoXRnsSmkwLHmeb4uyxnzA23YgHbvB85P6JiRnyLwwXg0ESweW9SLQuNstOUxJtH2IARR0HY96v5aSTfesGO4HDQoAqGRU97qugOISzB+9NzcyKQGOamCr/0aSrr7ud+LBiSpIKR0iEUN6G4ChoTXb8F4FHnAvIaqgFOwS5e3w66sI+GcIk6ev9qwmKFX7IUc9pZXJgk198QhU5qewbP0drC9pV98zPYJyfBBkcrZsFTbbJwf8e3N3QwfVNQX5FL71xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ARfBCYbaIkACVcxwYHH6q85GhI6mU0qHdEfiyx8T5o=;
 b=PiOWT47yR7mL4QVmloixvbF5Oj0KnHiUJbJYRBh78zb+ABmSau/5Nit8+5tGtUl4hGxFVw4/wGzDdmzhY1V82Vs+hHRTjujbw0T5wv51SjdLLdlm/65qoeWiyU08gM24bJUkony6sgJUm98zC6Z7Pm9hujCZdhibtYvA+ko+azE=
Received: from SN4PR0501CA0012.namprd05.prod.outlook.com
 (2603:10b6:803:40::25) by BL0PR02MB4546.namprd02.prod.outlook.com
 (2603:10b6:208:26::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:58 +0000
Received: from SN1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:40:cafe::7f) by SN4PR0501CA0012.outlook.office365.com
 (2603:10b6:803:40::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.7 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT008.mail.protection.outlook.com (10.152.72.119) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q3-81; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-4W; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlkav001021; 
 Fri, 6 Mar 2020 15:47:47 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-SK; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 21/24] firmware: xilinx: Add sysfs interface
Date: Fri,  6 Mar 2020 15:47:29 -0800
Message-Id: <1583538452-1992-22-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(39860400002)(346002)(199004)(189003)(478600001)(70206006)(2906002)(54906003)(2616005)(6636002)(9786002)(70586007)(426003)(107886003)(8936002)(7696005)(30864003)(44832011)(6666004)(336012)(81156014)(7416002)(356004)(81166006)(4326008)(8676002)(36756003)(26005)(316002)(5660300002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4546; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b784a20-3aea-418f-5b4e-08d7c228cc53
X-MS-TrafficTypeDiagnostic: BL0PR02MB4546:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4546EFF204F62E6F698F95E3B8E30@BL0PR02MB4546.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YYmeK0aU6RvrZHpreDIs8r3gFAvlxFVjtpFH5O72arbu3Oda4vCI+pBJUwlYC67NCHfmoOn3Z/PVgq5t38W/LFEn3r64s1wGgzN/zop2OQ6I4vBwgzRi0YIKhGpNcgDzTr+Cz4fVIAhYJMdsBelF4DvzL7UP9UZ3UJa51jzfRphvEjHA6Ih4zMy5jHVaGyATCBGmsOJmtCOgBxQG9scVYPBJ/MK0ScQLWt4A08GCr9aozgMhufZi9xp7NrBNZmTnO18Q0r52eW1HTOpn9gLujAtCSpV0kasQpsgf09u/5q0wONSTfiLIi5nxlmKaVHoZHemcdf/woQ/5YZtE/2zA81GKsgl+7Uz3nJOmbPkPlXF/Yi/sDEUvpakmEV5CENKgzcK6Epq6D82fVRiF4frRmGN4nj2CT7OFGrWUurQ+nv+v79wddYxZwRE3FoBLjLXY
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:57.6878 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b784a20-3aea-418f-5b4e-08d7c228cc53
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154801_583378_26CD3040 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.89 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add firmware-ggs sysfs interface which provides read/write
interface to global storage registers.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../ABI/stable/sysfs-driver-firmware-zynqmp        |  50 ++++
 drivers/firmware/xilinx/zynqmp.c                   | 319 ++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h               |   4 +
 3 files changed, 372 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/ABI/stable/sysfs-driver-firmware-zynqmp

diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
new file mode 100644
index 0000000..7fd6e70
--- /dev/null
+++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
@@ -0,0 +1,50 @@
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/ggs*
+Date:		March 2020
+KernelVersion:	5.6
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		Read/Write PMU global general storage register value,
+		GLOBAL_GEN_STORAGE{0:3}.
+		Global general storage register that can be used
+		by system to pass information between masters.
+
+		The register is reset during system or power-on
+		resets. Three registers are used by the FSBL and
+		other Xilinx software products: GLOBAL_GEN_STORAGE{4:6}.
+
+		Usage:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+		# echo <mask> <value> > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+
+		Example:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+		# echo 0xFFFFFFFF 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+
+Users:		Xilinx
+
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/pggs*
+Date:		March 2020
+KernelVersion:	5.6
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		Read/Write PMU persistent global general storage register
+		value, PERS_GLOB_GEN_STORAGE{0:3}.
+		Persistent global general storage register that
+		can be used by system to pass information between
+		masters.
+
+		This register is only reset by the power-on reset
+		and maintains its value through a system reset.
+		Four registers are used by the FSBL and other Xilinx
+		software products: PERS_GLOB_GEN_STORAGE{4:7}.
+		Register is reset only by a POR reset.
+
+		Usage:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+		# echo <mask> <value> > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+
+		Example:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+		# echo 0xFFFFFFFF 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index de99613..f671b6b 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -2,7 +2,7 @@
 /*
  * Xilinx Zynq MPSoC Firmware layer
  *
- *  Copyright (C) 2014-2018 Xilinx, Inc.
+ *  Copyright (C) 2014-2020 Xilinx, Inc.
  *
  *  Michal Simek <michal.simek@xilinx.com>
  *  Davorin Mista <davorin.mista@aggios.com>
@@ -833,6 +833,322 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
 
+/**
+ * ggs_show - Show global general storage (ggs) sysfs attribute
+ * @device: Device structure
+ * @attr: Device attribute structure
+ * @buf: Requested available shutdown_scope attributes string
+ * @reg: Register number
+ *
+ * Return:Number of bytes printed into the buffer.
+ *
+ * Helper function for viewing a ggs register value.
+ *
+ * User-space interface for viewing the content of the ggs0 register.
+ * cat /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+ */
+static ssize_t ggs_show(struct device *device,
+			struct device_attribute *attr,
+			char *buf,
+			u32 reg)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	ret = zynqmp_pm_read_ggs(reg, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+/**
+ * ggs_store - Store global general storage (ggs) sysfs attribute
+ * @device: Device structure
+ * @attr: Device attribute structure
+ * @buf: User entered shutdown_scope attribute string
+ * @count: Size of buf
+ * @reg: Register number
+ *
+ * Return: count argument if request succeeds, the corresponding
+ * error code otherwise
+ *
+ * Helper function for storing a ggs register value.
+ *
+ * For example, the user-space interface for storing a value to the
+ * ggs0 register:
+ * echo 0xFFFFFFFF 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+ */
+static ssize_t ggs_store(struct device *device,
+			 struct device_attribute *attr,
+			 const char *buf, size_t count,
+			 u32 reg)
+{
+	char *kern_buff, *inbuf, *tok;
+	long mask, value;
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	if (!device || !attr || !buf || !count || reg >= GSS_NUM_REGS)
+		return -EINVAL;
+
+	kern_buff = kzalloc(count, GFP_KERNEL);
+	if (!kern_buff)
+		return -ENOMEM;
+
+	ret = strlcpy(kern_buff, buf, count);
+	if (ret < 0) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	inbuf = kern_buff;
+
+	/* Read the write mask */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &mask);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	/* Read the write value */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &value);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = zynqmp_pm_read_ggs(reg, ret_payload);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+	ret_payload[1] &= ~mask;
+	value &= mask;
+	value |= ret_payload[1];
+
+	ret = zynqmp_pm_write_ggs(reg, value);
+	if (ret)
+		count = -EFAULT;
+
+err:
+	kfree(kern_buff);
+
+	return count;
+}
+
+/* GGS register show functions */
+#define GGS0_SHOW(N)						\
+	ssize_t ggs##N##_show(struct device *device,		\
+			      struct device_attribute *attr,	\
+			      char *buf)			\
+	{							\
+		return ggs_show(device, attr, buf, N);		\
+	}
+
+static GGS0_SHOW(0);
+static GGS0_SHOW(1);
+static GGS0_SHOW(2);
+static GGS0_SHOW(3);
+
+/* GGS register store function */
+#define GGS0_STORE(N)						\
+	ssize_t ggs##N##_store(struct device *device,		\
+			       struct device_attribute *attr,	\
+			       const char *buf,			\
+			       size_t count)			\
+	{							\
+		return ggs_store(device, attr, buf, count, N);	\
+	}
+
+static GGS0_STORE(0);
+static GGS0_STORE(1);
+static GGS0_STORE(2);
+static GGS0_STORE(3);
+
+/**
+ * pggs_show - Show persistent global general storage (pggs) sysfs attribute
+ * @device: Device structure
+ * @attr: Device attribute structure
+ * @buf: Requested available shutdown_scope attributes string
+ * @reg: Register number
+ *
+ * Return:Number of bytes printed into the buffer.
+ *
+ * Helper function for viewing a pggs register value.
+ */
+static ssize_t pggs_show(struct device *device,
+			 struct device_attribute *attr,
+			 char *buf,
+			 u32 reg)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	ret = zynqmp_pm_read_pggs(reg, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+/**
+ * pggs_store - Store persistent global general storage (pggs) sysfs attribute
+ * @device: Device structure
+ * @attr: Device attribute structure
+ * @buf: User entered shutdown_scope attribute string
+ * @count: Size of buf
+ * @reg: Register number
+ *
+ * Return: count argument if request succeeds, the corresponding
+ * error code otherwise
+ *
+ * Helper function for storing a pggs register value.
+ */
+static ssize_t pggs_store(struct device *device,
+			  struct device_attribute *attr,
+			  const char *buf, size_t count,
+			  u32 reg)
+{
+	char *kern_buff, *inbuf, *tok;
+	long mask, value;
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	if (!device || !attr || !buf || !count || reg >= GSS_NUM_REGS)
+		return -EINVAL;
+
+	kern_buff = kzalloc(count, GFP_KERNEL);
+	if (!kern_buff)
+		return -ENOMEM;
+
+	ret = strlcpy(kern_buff, buf, count);
+	if (ret < 0) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	inbuf = kern_buff;
+
+	/* Read the write mask */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &mask);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	/* Read the write value */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &value);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = zynqmp_pm_read_pggs(reg, ret_payload);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+	ret_payload[1] &= ~mask;
+	value &= mask;
+	value |= ret_payload[1];
+
+	ret = zynqmp_pm_write_pggs(reg, value);
+	if (ret)
+		count = -EFAULT;
+
+err:
+	kfree(kern_buff);
+
+	return count;
+}
+
+#define PGGS0_SHOW(N)						\
+	ssize_t pggs##N##_show(struct device *device,		\
+			       struct device_attribute *attr,	\
+			       char *buf)			\
+	{							\
+		return pggs_show(device, attr, buf, N);		\
+	}
+
+#define PGGS0_STORE(N)						\
+	ssize_t pggs##N##_store(struct device *device,		\
+				struct device_attribute *attr,	\
+				const char *buf,		\
+				size_t count)			\
+	{							\
+		return pggs_store(device, attr, buf, count, N);	\
+	}
+
+/* PGGS register show functions */
+static PGGS0_SHOW(0);
+static PGGS0_SHOW(1);
+static PGGS0_SHOW(2);
+static PGGS0_SHOW(3);
+
+/* PGGS register store functions */
+static PGGS0_STORE(0);
+static PGGS0_STORE(1);
+static PGGS0_STORE(2);
+static PGGS0_STORE(3);
+
+/* GGS register attributes */
+static DEVICE_ATTR_RW(ggs0);
+static DEVICE_ATTR_RW(ggs1);
+static DEVICE_ATTR_RW(ggs2);
+static DEVICE_ATTR_RW(ggs3);
+
+/* PGGS register attributes */
+static DEVICE_ATTR_RW(pggs0);
+static DEVICE_ATTR_RW(pggs1);
+static DEVICE_ATTR_RW(pggs2);
+static DEVICE_ATTR_RW(pggs3);
+
+static struct attribute *zynqmp_ggs_attrs[] = {
+	&dev_attr_ggs0.attr,
+	&dev_attr_ggs1.attr,
+	&dev_attr_ggs2.attr,
+	&dev_attr_ggs3.attr,
+	&dev_attr_pggs0.attr,
+	&dev_attr_pggs1.attr,
+	&dev_attr_pggs2.attr,
+	&dev_attr_pggs3.attr,
+	NULL,
+};
+
+static const struct attribute_group ggs_attribute_group = {
+	.attrs = zynqmp_ggs_attrs,
+};
+
+const struct attribute_group *firmware_attribute_groups[] = {
+	&ggs_attribute_group,
+	NULL,
+};
+
 static int zynqmp_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -910,6 +1226,7 @@ static struct platform_driver zynqmp_firmware_driver = {
 	.driver = {
 		.name = "zynqmp_firmware",
 		.of_match_table = zynqmp_firmware_of_match,
+		.dev_groups = firmware_attribute_groups,
 	},
 	.probe = zynqmp_firmware_probe,
 	.remove = zynqmp_firmware_remove,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 725dccf..8ccaa39 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -13,6 +13,8 @@
 #ifndef __FIRMWARE_ZYNQMP_H__
 #define __FIRMWARE_ZYNQMP_H__
 
+#include <linux/device.h>
+
 #define ZYNQMP_PM_VERSION_MAJOR	1
 #define ZYNQMP_PM_VERSION_MINOR	0
 
@@ -42,6 +44,8 @@
 
 #define ZYNQMP_PM_MAX_QOS		100U
 
+#define GSS_NUM_REGS	(4)
+
 /* Node capabilities */
 #define	ZYNQMP_PM_CAPABILITY_ACCESS	0x1U
 #define	ZYNQMP_PM_CAPABILITY_CONTEXT	0x2U
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
