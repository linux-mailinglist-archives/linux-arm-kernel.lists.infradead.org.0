Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523C81B7D25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miQz5ebagVK7R5l974jQiuA6GNN0cjhwrj5UwltjN6Q=; b=cl9YONQOJRFS0I
	5OtARFAR+xVTfB3Tx7J1F3BqNnVDRWFi3/b+xgYWDjKO0kNwaWX3Mac09oaM3qZrTNNByUHpXDICg
	TLYCSMH7E24OJSn0Mikeacz7m6iWrAdIdqT0kQEQC3gJnSyrDz8MMnd3iVq7Mae+C5jY1KA8uMYom
	EC3DlwtRH3+H/z+w42/Hfetng7pofjOnMKA34SHYKIV4XfiBD0b8ZlXDRBwCE3uYS3/KJiLSsO/J+
	5+nZhIwugsAER31RnbqJ1iRePsyQ9gnWyUP+lSEUwxD/eW8Mtt5hxb6DKp6tvTJE5AsMSpr/D+19m
	2YwhpoidpS1uWFFigx7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2KA-00048B-Hi; Fri, 24 Apr 2020 17:41:14 +0000
Received: from mail-dm6nam12on2062.outbound.protection.outlook.com
 ([40.107.243.62] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2GX-0006eJ-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:37:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUIXJJrZeRLlC+Ke0UHZcgwoybQFsdCiNuD11TDDjhspf0bGoIO5GPr5gGb/DnCvrmYcU6brMD3FuXbKGvkmfg8Z2Jiz3og+Svfw+OMjgSXfSHGEXvOlKzNXXbsmaTj6pIRBgBh3frQOCDMBoqJ7qpyRCD3bEBNl/nfMG9PnWXdsg6BeDiDgDsGGfcEkpCyScXXecH6+m+/uuMDhrHCpEkS2cTFCI/lI15O9kcE5gxhpvFRQAojwAzvRRWQnAFJY3H9CuoveLkpwt8B/f93zoca1XkRUFTxBILWuVb1ZX11aRsZ16Xbc170E81lerQj/6MJWWIeUlF7wqwNhhUOvJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZGzeW9tMkMNj2D0ViJ7vCkM0kYBnkkBORL3P+YUuLt0=;
 b=dVw5O79tnzwgXEir6FaBTnwV6UtyIF/HI5D51cFoxSXm8EdzpOLYaugGD8ENdWJdNO6lFeKRzGiaTI1XSgK5Sx+5eXOPxGJHr0BTXRBJrP2CRbQ44rUy0zLjQwHNlVQEc7/qEkdAUAOypAVadp3mERX83SsfdQdfwugjvR4nQ00WDdHMIIT9oZRmTij0XFWkY5o114fgcllyDhMvV1SmPZWpNVfAM1TU+/NvkWmnvIiMr9OlDlOzCgIyDVsGqbgeL2xEEV9/u2EndySxrnArhazzXtnzh7vQSgLF1pPp1DYHL5vDJJ38pr7GjQFG4U3+StmIynqo/2LLuLv/hMAStg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZGzeW9tMkMNj2D0ViJ7vCkM0kYBnkkBORL3P+YUuLt0=;
 b=CSnyULYkcmUtr4MkKlU/sPdb/zvFsvH17vGsF99TEe8A8/iQzASnVz+jsp7jehZzNXuWjJgl/ppazyBkOzFI/boQEbb9wpg5GxkHjqbmE2I+s5PWpNn2ZiyG8Rf5aaQ6LKzhgMeTYUAKwrZ5WRYG/Snb0KnC9cStvL1cdyClyoQ=
Received: from SN4PR0501CA0064.namprd05.prod.outlook.com
 (2603:10b6:803:41::41) by BN6PR02MB3283.namprd02.prod.outlook.com
 (2603:10b6:405:64::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Fri, 24 Apr
 2020 17:36:23 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:41:cafe::c9) by SN4PR0501CA0064.outlook.office365.com
 (2603:10b6:803:41::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.7 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server id 15.20.2937.23 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41708 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BJ-J4; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-4n; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaBHR026372; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FH-0006h9-1r; Fri, 24 Apr 2020 10:36:11 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 5/5] remoteproc: Add initial zynqmp R5 remoteproc driver
Date: Fri, 24 Apr 2020 10:36:10 -0700
Message-Id: <1587749770-15082-6-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(46966005)(8676002)(70206006)(2906002)(9786002)(82310400002)(356005)(8936002)(4326008)(81156014)(316002)(7696005)(54906003)(5660300002)(82740400003)(81166007)(47076004)(36756003)(107886003)(26005)(44832011)(30864003)(70586007)(2616005)(478600001)(426003)(336012)(186003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5b96777-f83f-496c-142b-08d7e8760176
X-MS-TrafficTypeDiagnostic: BN6PR02MB3283:
X-Microsoft-Antispam-PRVS: <BN6PR02MB3283E2B86CBC7BCD32F4B30AB5D00@BN6PR02MB3283.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:94;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b/R6f1e3tq3m4cZ2jUb+EMX40ERMgPNLi+6MXyXEj/GWEfZAbk2EPfkIMI4/4KeuPsHepxKy4VAjUnrKTZ/OfVxqfGYytWJd+YVGMDO+e7h+RVGmS8o53E7GCvhno1Ww02mYJh6UJktX1K7FY5GOjHqnrxV1LgwFveR60CPYL/ppskOJG75gmwKHdbpbfx3hqxMKotCf3OKmWvPmJA5ER6JmQV1uLFRjPRDPsdOER1qFDDlTqFzpghlsuaLRGvpzenOXtkj2ffMk+OGxRXRC11wFTFhZIgWEcwdLWfk66zeCu4HDBZUMCjVUOM3A+k95afd5Iu/1+lCAE9bCrisBRHu3sxNkneaKyMx68WMAIasvQBpkRlaUxUojbOaLBv76oGLPNP6Npl2wgOQASGyu07G6P0OLhcUi+yB8Valoanz6KX+Ic3BPXwMuS008DVXeNd2R8YlY7Z6aTTAqPwOmaXFySHX2tcJgxET2roUOYodMDhiRAgdVPN+Ixj0QvX7xhTlLQ7miqrwL1MAKQ9JboQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.4175 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5b96777-f83f-496c-142b-08d7e8760176
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB3283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103729_324775_852188E5 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.62 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Ed Mooring <ed.mooring@xilinx.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wendy Liang <wendy.liang@xilinx.com>, Jason Wu <j.wu@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R5 is included in Xilinx Zynq UltraScale MPSoC so by adding this
remotproc driver, we can boot the R5 sub-system in different
configurations.

Acked-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
Acked-by: Ben Levinsky <ben.levinsky@xilinx.com>
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
Signed-off-by: Wendy Liang <wendy.liang@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Ed Mooring <ed.mooring@xilinx.com>
Signed-off-by: Jason Wu <j.wu@xilinx.com>
Tested-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
Changes since v1:
- remove domain struct as per review from Mathieu
Changes since v2:
- add xilinx-related platform mgmt fn's instead of wrapping around
  function pointer in xilinx eemi ops struct
Changes since v3:
- fix formatting from checpatch.pl --strict
- update commit message

---
 drivers/remoteproc/Kconfig                |  10 +
 drivers/remoteproc/Makefile               |   1 +
 drivers/remoteproc/zynqmp_r5_remoteproc.c | 902 ++++++++++++++++++++++++++++++
 3 files changed, 913 insertions(+)
 create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index fbaed07..f094c84 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -222,6 +222,16 @@ config ST_REMOTEPROC
 	  processor framework.
 	  This can be either built-in or a loadable module.
 
+config ZYNQMP_R5_REMOTEPROC
+	tristate "ZynqMP_r5 remoteproc support"
+	depends on ARM64 && PM && ARCH_ZYNQMP
+	select RPMSG_VIRTIO
+	select MAILBOX
+	select ZYNQMP_IPI_MBOX
+	help
+	  Say y here to support ZynqMP R5 remote processors via the remote
+	  processor framework.
+
 config ST_SLIM_REMOTEPROC
 	tristate
 
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 0effd38..806ac3f 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -27,5 +27,6 @@ obj-$(CONFIG_QCOM_WCNSS_PIL)		+= qcom_wcnss_pil.o
 qcom_wcnss_pil-y			+= qcom_wcnss.o
 qcom_wcnss_pil-y			+= qcom_wcnss_iris.o
 obj-$(CONFIG_ST_REMOTEPROC)		+= st_remoteproc.o
+obj-$(CONFIG_ZYNQMP_R5_REMOTEPROC)	+= zynqmp_r5_remoteproc.o
 obj-$(CONFIG_ST_SLIM_REMOTEPROC)	+= st_slim_rproc.o
 obj-$(CONFIG_STM32_RPROC)		+= stm32_rproc.o
diff --git a/drivers/remoteproc/zynqmp_r5_remoteproc.c b/drivers/remoteproc/zynqmp_r5_remoteproc.c
new file mode 100644
index 0000000..e3fb4fb
--- /dev/null
+++ b/drivers/remoteproc/zynqmp_r5_remoteproc.c
@@ -0,0 +1,902 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Zynq R5 Remote Processor driver
+ *
+ * Copyright (C) 2015 - 2018 Xilinx Inc.
+ * Copyright (C) 2015 Jason Wu <j.wu@xilinx.com>
+ *
+ * Based on origin OMAP and Zynq Remote Processor driver
+ *
+ * Copyright (C) 2012 Michal Simek <monstr@monstr.eu>
+ * Copyright (C) 2012 PetaLogix
+ * Copyright (C) 2011 Texas Instruments, Inc.
+ * Copyright (C) 2011 Google, Inc.
+ */
+
+#include <linux/atomic.h>
+#include <linux/cpu.h>
+#include <linux/dma-mapping.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/firmware/xlnx-zynqmp.h>
+#include <linux/genalloc.h>
+#include <linux/idr.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/mailbox_client.h>
+#include <linux/mailbox/zynqmp-ipi-message.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/pfn.h>
+#include <linux/platform_device.h>
+#include <linux/remoteproc.h>
+#include <linux/skbuff.h>
+#include <linux/slab.h>
+#include <linux/sysfs.h>
+
+#include "remoteproc_internal.h"
+
+#define MAX_RPROCS	2 /* Support up to 2 RPU */
+#define MAX_MEM_PNODES	4 /* Max power nodes for one RPU memory instance */
+
+#define DEFAULT_FIRMWARE_NAME	"rproc-rpu-fw"
+
+/* PM proc states */
+#define PM_PROC_STATE_ACTIVE 1U
+
+/* IPI buffer MAX length */
+#define IPI_BUF_LEN_MAX	32U
+/* RX mailbox client buffer max length */
+#define RX_MBOX_CLIENT_BUF_MAX	(IPI_BUF_LEN_MAX + \
+				 sizeof(struct zynqmp_ipi_message))
+
+static bool autoboot __read_mostly;
+
+/**
+ * struct zynqmp_r5_mem - zynqmp rpu memory data
+ * @pnode_id: TCM power domain ids
+ * @res: memory resource
+ * @node: list node
+ */
+struct zynqmp_r5_mem {
+	u32 pnode_id[MAX_MEM_PNODES];
+	struct resource res;
+	struct list_head node;
+};
+
+/**
+ * struct zynqmp_r5_pdata - zynqmp rpu remote processor private data
+ * @dev: device of RPU instance
+ * @rproc: rproc handle
+ * @pnode_id: RPU CPU power domain id
+ * @mems: memory resources
+ * @is_r5_mode_set: indicate if r5 operation mode is set
+ * @tx_mc: tx mailbox client
+ * @rx_mc: rx mailbox client
+ * @tx_chan: tx mailbox channel
+ * @rx_chan: rx mailbox channel
+ * @workqueue: workqueue for the RPU remoteproc
+ * @tx_mc_skbs: socket buffers for tx mailbox client
+ * @rx_mc_buf: rx mailbox client buffer to save the rx message
+ */
+struct zynqmp_r5_pdata {
+	struct device dev;
+	struct rproc *rproc;
+	u32 pnode_id;
+	struct list_head mems;
+	bool is_r5_mode_set;
+	struct mbox_client tx_mc;
+	struct mbox_client rx_mc;
+	struct mbox_chan *tx_chan;
+	struct mbox_chan *rx_chan;
+	struct work_struct workqueue;
+	struct sk_buff_head tx_mc_skbs;
+	unsigned char rx_mc_buf[RX_MBOX_CLIENT_BUF_MAX];
+};
+
+/**
+ * table of RPUs
+ */
+struct zynqmp_r5_pdata rpus[MAX_RPROCS];
+/**
+ *  RPU core configuration
+ */
+enum rpu_oper_mode rpu_mode;
+
+/*
+ * r5_set_mode - set RPU operation mode
+ * @pdata: Remote processor private data
+ *
+ * set RPU oepration mode
+ *
+ * Return: 0 for success, negative value for failure
+ */
+static int r5_set_mode(struct zynqmp_r5_pdata *pdata)
+{
+	u32 val[PAYLOAD_ARG_CNT] = {0}, expect;
+	struct device *dev = &pdata->dev;
+	int ret;
+
+	if (pdata->is_r5_mode_set)
+		return 0;
+	expect = (u32)rpu_mode;
+	ret = zynqmp_pm_get_rpu_mode(pdata->pnode_id, 0, 0, val);
+	if (ret < 0) {
+		dev_err(dev, "failed to get RPU oper mode.\n");
+		return ret;
+	}
+	if (val[0] == expect) {
+		dev_dbg(dev, "RPU mode matches: %x\n", val[0]);
+	} else {
+		ret = zynqmp_pm_set_rpu_mode(pdata->pnode_id,
+					     expect, 0, val);
+		if (ret < 0) {
+			dev_err(dev,
+				"failed to set RPU oper mode.\n");
+			return ret;
+		}
+	}
+	if (expect == (u32)PM_RPU_MODE_LOCKSTEP)
+		expect = (u32)PM_RPU_TCM_COMB;
+	else
+		expect = (u32)PM_RPU_TCM_SPLIT;
+	ret = zynqmp_pm_set_tcm_config(pdata->pnode_id,
+				       expect, 0, val);
+	if (ret < 0) {
+		dev_err(dev, "failed to config TCM to %x.\n",
+			expect);
+		return ret;
+	}
+	pdata->is_r5_mode_set = true;
+	return 0;
+}
+
+/**
+ * r5_is_running - check if r5 is running
+ * @pdata: Remote processor private data
+ *
+ * check if R5 is running
+ *
+ * Return: true if r5 is running, false otherwise
+ */
+static bool r5_is_running(struct zynqmp_r5_pdata *pdata)
+{
+	u32 status, requirements, usage;
+	struct device *dev = &pdata->dev;
+
+	if (zynqmp_pm_get_node_status(pdata->pnode_id,
+				      &status, &requirements, &usage)) {
+		dev_err(dev, "Failed to get RPU node %d status.\n",
+			pdata->pnode_id);
+		return false;
+	} else if (status != PM_PROC_STATE_ACTIVE) {
+		dev_dbg(dev, "RPU is not running.\n");
+		return false;
+	}
+
+	dev_dbg(dev, "RPU is running.\n");
+	return true;
+}
+
+/*
+ * ZynqMP R5 remoteproc memory release function
+ */
+static int zynqmp_r5_mem_release(struct rproc *rproc,
+				 struct rproc_mem_entry *mem)
+{
+	struct zynqmp_r5_mem *priv;
+	int i, ret;
+	struct device *dev = &rproc->dev;
+
+	priv = mem->priv;
+	if (!priv)
+		return 0;
+	for (i = 0; i < MAX_MEM_PNODES; i++) {
+		if (priv->pnode_id[i]) {
+			dev_dbg(dev, "%s, pnode %d\n",
+				__func__, priv->pnode_id[i]);
+			ret = zynqmp_pm_release_node(priv->pnode_id[i]);
+			if (ret < 0) {
+				dev_err(dev,
+					"failed to release power node: %u\n",
+					priv->pnode_id[i]);
+				return ret;
+			}
+		} else {
+			break;
+		}
+	}
+	return 0;
+}
+
+/*
+ * ZynqMP R5 remoteproc operations
+ */
+static int zynqmp_r5_rproc_start(struct rproc *rproc)
+{
+	struct device *dev = rproc->dev.parent;
+	struct zynqmp_r5_pdata *local = rproc->priv;
+	enum rpu_boot_mem bootmem;
+	int ret;
+	/* Set up R5 */
+	ret = r5_set_mode(local);
+	if (ret) {
+		dev_err(dev, "failed to set R5 operation mode.\n");
+		return ret;
+	}
+	if ((rproc->bootaddr & 0xF0000000) == 0xF0000000)
+		bootmem = PM_RPU_BOOTMEM_HIVEC;
+	else
+		bootmem = PM_RPU_BOOTMEM_LOVEC;
+	dev_info(dev, "RPU boot from %s.",
+		 bootmem == PM_RPU_BOOTMEM_HIVEC ? "OCM" : "TCM");
+	ret = zynqmp_pm_request_wakeup(local->pnode_id, 1,
+				       bootmem, ZYNQMP_PM_REQUEST_ACK_NO);
+	if (ret < 0) {
+		dev_err(dev, "failed to boot R5.\n");
+		return ret;
+	}
+	return 0;
+}
+
+static int zynqmp_r5_rproc_stop(struct rproc *rproc)
+{
+	struct zynqmp_r5_pdata *local = rproc->priv;
+	int ret;
+
+	ret = zynqmp_pm_force_powerdown(local->pnode_id,
+					ZYNQMP_PM_REQUEST_ACK_BLOCKING);
+	if (ret < 0) {
+		dev_err(&local->dev, "failed to shutdown R5.\n");
+		return ret;
+	}
+	local->is_r5_mode_set = false;
+	return 0;
+}
+
+static int zynqmp_r5_parse_fw(struct rproc *rproc, const struct firmware *fw)
+{
+	int num_mems, i, ret;
+	struct zynqmp_r5_pdata *pdata = rproc->priv;
+	struct device *dev = &pdata->dev;
+	struct device_node *np = dev->of_node;
+	struct rproc_mem_entry *mem;
+	struct device_node *child;
+	struct resource rsc;
+
+	num_mems = of_count_phandle_with_args(np, "memory-region", NULL);
+	if (num_mems <= 0)
+		return 0;
+
+	for (i = 0; i < num_mems; i++) {
+		struct device_node *node;
+		struct zynqmp_r5_mem *zynqmp_mem;
+		struct reserved_mem *rmem;
+
+		node = of_parse_phandle(np, "memory-region", i);
+		rmem = of_reserved_mem_lookup(node);
+		if (!rmem) {
+			dev_err(dev, "unable to acquire memory-region\n");
+			return -EINVAL;
+		}
+		if (strstr(node->name, "vdev") &&
+		    strstr(node->name, "buffer")) {
+			int id;
+			char name[16];
+
+			id = node->name[8] - '0';
+			snprintf(name, sizeof(name), "vdev%dbuffer", id);
+			/* Register DMA region */
+			mem = rproc_mem_entry_init(dev, NULL,
+						   (dma_addr_t)rmem->base,
+						   rmem->size, rmem->base,
+						   NULL, NULL,
+						   name);
+			if (!mem) {
+				dev_err(dev, "unable to initialize memory-region %s\n",
+					node->name);
+				return -ENOMEM;
+			}
+			dev_dbg(dev, "parsed %s at  %llx\r\n", mem->name,
+				mem->dma);
+			rproc_add_carveout(rproc, mem);
+			continue;
+		} else if (strstr(node->name, "vdev") &&
+				    strstr(node->name, "vring")) {
+			int id, vring_id;
+			char name[16];
+
+			id = node->name[8] - '0';
+			vring_id = node->name[14] - '0';
+			snprintf(name, sizeof(name), "vdev%dvring%d", id,
+				 vring_id);
+			/* Register vring */
+			mem = rproc_mem_entry_init(dev, NULL,
+						   (dma_addr_t)rmem->base,
+						   rmem->size, rmem->base,
+						   NULL, NULL,
+						   name);
+			mem->va = devm_ioremap_wc(dev, rmem->base, rmem->size);
+			if (!mem->va)
+				return -ENOMEM;
+			if (!mem) {
+				dev_err(dev, "unable to initialize memory-region %s\n",
+					node->name);
+				return -ENOMEM;
+			}
+			dev_dbg(dev, "parsed %s at %llx\r\n", mem->name,
+				mem->dma);
+			rproc_add_carveout(rproc, mem);
+			continue;
+		} else {
+			mem = rproc_of_resm_mem_entry_init(dev, i,
+							   rmem->size,
+							   rmem->base,
+							   node->name);
+			if (!mem) {
+				dev_err(dev, "unable to initialize memory-region %s\n",
+					node->name);
+				return -ENOMEM;
+			}
+			mem->va = devm_ioremap_wc(dev, rmem->base, rmem->size);
+			if (!mem->va)
+				return -ENOMEM;
+
+			rproc_add_carveout(rproc, mem);
+		}
+		if (!mem)
+			return -ENOMEM;
+
+		/*
+		 * It is non-DMA memory, used for firmware loading.
+		 * It will be added to the R5 remoteproc mappings later.
+		 */
+		zynqmp_mem = devm_kzalloc(dev, sizeof(*zynqmp_mem), GFP_KERNEL);
+		if (!zynqmp_mem)
+			return -ENOMEM;
+		ret = of_address_to_resource(node, 0, &zynqmp_mem->res);
+		if (ret) {
+			dev_err(dev, "unable to resolve memory region.\n");
+			return ret;
+		}
+		list_add_tail(&zynqmp_mem->node, &pdata->mems);
+		dev_dbg(dev, "%s, non-dma mem %s\n",
+			__func__, of_node_full_name(node));
+	}
+
+	/* map TCM memories */
+	for_each_available_child_of_node(np, child) {
+		struct property *prop;
+		const __be32 *cur;
+		u32 pnode_id;
+		void *va;
+		dma_addr_t dma;
+		resource_size_t size;
+
+		ret = of_address_to_resource(child, 0, &rsc);
+
+		i = 0;
+		of_property_for_each_u32(child, "pnode-id", prop, cur,
+					 pnode_id) {
+			ret = zynqmp_pm_request_node(pnode_id,
+				ZYNQMP_PM_CAPABILITY_ACCESS, 0,
+				ZYNQMP_PM_REQUEST_ACK_BLOCKING);
+			if (ret < 0) {
+				dev_err(dev, "failed to request power node: %u\n",
+					pnode_id);
+				return ret;
+			}
+			ret = r5_set_mode(pdata);
+			if (ret < 0) {
+				dev_err(dev, "failed to set R5 operation mode.\n");
+				return ret;
+			}
+		}
+		size = resource_size(&rsc);
+
+		va = devm_ioremap_wc(dev, rsc.start, size);
+		if (!va)
+			return -ENOMEM;
+
+		/* zero out tcm base address */
+		if (rsc.start & 0xffe00000) {
+			rsc.start &= 0x000fffff;
+			/* handle tcm banks 1 a and b
+			 * (0xffe9000 and oxffeb0000)
+			 */
+				if (rsc.start & 0x80000)
+					rsc.start -= 0x90000;
+		}
+
+		dma = (dma_addr_t)rsc.start;
+		mem = rproc_mem_entry_init(dev, va, dma, (int)size, rsc.start,
+					   NULL, zynqmp_r5_mem_release,
+					   rsc.name);
+		if (!mem)
+			return -ENOMEM;
+
+		rproc_add_carveout(rproc, mem);
+	}
+
+	ret = rproc_elf_load_rsc_table(rproc, fw);
+	if (ret == -EINVAL)
+		ret = 0;
+	return ret;
+}
+
+/* kick a firmware */
+static void zynqmp_r5_rproc_kick(struct rproc *rproc, int vqid)
+{
+	struct device *dev = rproc->dev.parent;
+	struct zynqmp_r5_pdata *local = rproc->priv;
+
+	dev_dbg(dev, "KICK Firmware to start send messages vqid %d\n", vqid);
+
+	if (vqid < 0) {
+		/* If vqid is negative, does not pass the vqid to
+		 * mailbox. As vqid is supposed to be 0 or possive.
+		 * It also gives a way to just kick instead but
+		 * not use the IPI buffer. It is better to provide
+		 * a proper way to pass the short message, which will
+		 * need to sync to upstream first, for now,
+		 * use negative vqid to assume no message will be
+		 * passed with IPI buffer, but just raise interrupt.
+		 * This will be faster as it doesn't need to copy the
+		 * message to the IPI buffer.
+		 *
+		 * It will ignore the return, as failure is due to
+		 * there already kicks in the mailbox queue.
+		 */
+		(void)mbox_send_message(local->tx_chan, NULL);
+	} else {
+		struct sk_buff *skb;
+		unsigned int skb_len;
+		struct zynqmp_ipi_message *mb_msg;
+		int ret;
+
+		skb_len = (unsigned int)(sizeof(vqid) + sizeof(mb_msg));
+		skb = alloc_skb(skb_len, GFP_ATOMIC);
+		if (!skb) {
+			dev_err(dev,
+				"Failed to allocate skb to kick remote.\n");
+			return;
+		}
+		mb_msg = (struct zynqmp_ipi_message *)skb_put(skb, skb_len);
+		mb_msg->len = sizeof(vqid);
+		memcpy(mb_msg->data, &vqid, sizeof(vqid));
+		skb_queue_tail(&local->tx_mc_skbs, skb);
+		ret = mbox_send_message(local->tx_chan, mb_msg);
+		if (ret < 0) {
+			dev_warn(dev, "Failed to kick remote.\n");
+			skb_dequeue_tail(&local->tx_mc_skbs);
+			kfree_skb(skb);
+		}
+	}
+}
+
+static struct rproc_ops zynqmp_r5_rproc_ops = {
+	.start		= zynqmp_r5_rproc_start,
+	.stop		= zynqmp_r5_rproc_stop,
+	.load		= rproc_elf_load_segments,
+	.parse_fw	= zynqmp_r5_parse_fw,
+	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
+	.sanity_check	= rproc_elf_sanity_check,
+	.get_boot_addr	= rproc_elf_get_boot_addr,
+	.kick		= zynqmp_r5_rproc_kick,
+};
+
+/* zynqmp_r5_mem_probe() - probes RPU TCM memory device
+ * @pdata: pointer to the RPU remoteproc private data
+ * @node: pointer to the memory node
+ *
+ * Function to retrieve memories resources for RPU TCM memory device.
+ */
+static int zynqmp_r5_mem_probe(struct zynqmp_r5_pdata *pdata,
+			       struct device_node *node)
+{
+	struct device *dev;
+	struct zynqmp_r5_mem *mem;
+	int ret;
+
+	dev = &pdata->dev;
+	mem = devm_kzalloc(dev, sizeof(*mem), GFP_KERNEL);
+	if (!mem)
+		return -ENOMEM;
+	ret = of_address_to_resource(node, 0, &mem->res);
+	if (ret < 0) {
+		dev_err(dev, "failed to get resource of memory %s",
+			of_node_full_name(node));
+		return -EINVAL;
+	}
+
+	/* Get the power domain id */
+	if (of_find_property(node, "pnode-id", NULL)) {
+		struct property *prop;
+		const __be32 *cur;
+		u32 val;
+		int i = 0;
+
+		of_property_for_each_u32(node, "pnode-id", prop, cur, val)
+			mem->pnode_id[i++] = val;
+	}
+	list_add_tail(&mem->node, &pdata->mems);
+	return 0;
+}
+
+/**
+ * zynqmp_r5_release() - ZynqMP R5 device release function
+ * @dev: pointer to the device struct of ZynqMP R5
+ *
+ * Function to release ZynqMP R5 device.
+ */
+static void zynqmp_r5_release(struct device *dev)
+{
+	struct zynqmp_r5_pdata *pdata;
+	struct rproc *rproc;
+	struct sk_buff *skb;
+
+	pdata = dev_get_drvdata(dev);
+	rproc = pdata->rproc;
+	if (rproc) {
+		rproc_del(rproc);
+		rproc_free(rproc);
+	}
+	if (pdata->tx_chan)
+		mbox_free_channel(pdata->tx_chan);
+	if (pdata->rx_chan)
+		mbox_free_channel(pdata->rx_chan);
+	/* Discard all SKBs */
+	while (!skb_queue_empty(&pdata->tx_mc_skbs)) {
+		skb = skb_dequeue(&pdata->tx_mc_skbs);
+		kfree_skb(skb);
+	}
+
+	put_device(dev->parent);
+}
+
+/**
+ * event_notified_idr_cb() - event notified idr callback
+ * @id: idr id
+ * @ptr: pointer to idr private data
+ * @data: data passed to idr_for_each callback
+ *
+ * Pass notification to remtoeproc virtio
+ *
+ * Return: 0. having return is to satisfy the idr_for_each() function
+ *          pointer input argument requirement.
+ **/
+static int event_notified_idr_cb(int id, void *ptr, void *data)
+{
+	struct rproc *rproc = data;
+
+	(void)rproc_vq_interrupt(rproc, id);
+	return 0;
+}
+
+/**
+ * handle_event_notified() - remoteproc notification work funciton
+ * @work: pointer to the work structure
+ *
+ * It checks each registered remoteproc notify IDs.
+ */
+static void handle_event_notified(struct work_struct *work)
+{
+	struct rproc *rproc;
+	struct zynqmp_r5_pdata *local;
+
+	local = container_of(work, struct zynqmp_r5_pdata, workqueue);
+
+	(void)mbox_send_message(local->rx_chan, NULL);
+	rproc = local->rproc;
+	/*
+	 * We only use IPI for interrupt. The firmware side may or may
+	 * not write the notifyid when it trigger IPI.
+	 * And thus, we scan through all the registered notifyids.
+	 */
+	idr_for_each(&rproc->notifyids, event_notified_idr_cb, rproc);
+}
+
+/**
+ * zynqmp_r5_mb_rx_cb() - Receive channel mailbox callback
+ * @cl: mailbox client
+ * @mssg: message pointer
+ *
+ * It will schedule the R5 notification work.
+ */
+static void zynqmp_r5_mb_rx_cb(struct mbox_client *cl, void *mssg)
+{
+	struct zynqmp_r5_pdata *local;
+
+	local = container_of(cl, struct zynqmp_r5_pdata, rx_mc);
+	if (mssg) {
+		struct zynqmp_ipi_message *ipi_msg, *buf_msg;
+		size_t len;
+
+		ipi_msg = (struct zynqmp_ipi_message *)mssg;
+		buf_msg = (struct zynqmp_ipi_message *)local->rx_mc_buf;
+		len = (ipi_msg->len >= IPI_BUF_LEN_MAX) ?
+		      IPI_BUF_LEN_MAX : ipi_msg->len;
+		buf_msg->len = len;
+		memcpy(buf_msg->data, ipi_msg->data, len);
+	}
+	schedule_work(&local->workqueue);
+}
+
+/**
+ * zynqmp_r5_mb_tx_done() - Request has been sent to the remote
+ * @cl: mailbox client
+ * @mssg: pointer to the message which has been sent
+ * @r: status of last TX - OK or error
+ *
+ * It will be called by the mailbox framework when the last TX has done.
+ */
+static void zynqmp_r5_mb_tx_done(struct mbox_client *cl, void *mssg, int r)
+{
+	struct zynqmp_r5_pdata *local;
+	struct sk_buff *skb;
+
+	if (!mssg)
+		return;
+	local = container_of(cl, struct zynqmp_r5_pdata, tx_mc);
+	skb = skb_dequeue(&local->tx_mc_skbs);
+	kfree_skb(skb);
+}
+
+/**
+ * zynqmp_r5_setup_mbox() - Setup mailboxes
+ *
+ * @pdata: pointer to the ZynqMP R5 processor platform data
+ * @node: pointer of the device node
+ *
+ * Function to setup mailboxes to talk to RPU.
+ *
+ * Return: 0 for success, negative value for failure.
+ */
+static int zynqmp_r5_setup_mbox(struct zynqmp_r5_pdata *pdata,
+				struct device_node *node)
+{
+	struct device *dev = &pdata->dev;
+	struct mbox_client *mclient;
+
+	/* Setup TX mailbox channel client */
+	mclient = &pdata->tx_mc;
+	mclient->dev = dev;
+	mclient->rx_callback = NULL;
+	mclient->tx_block = false;
+	mclient->knows_txdone = false;
+	mclient->tx_done = zynqmp_r5_mb_tx_done;
+
+	/* Setup TX mailbox channel client */
+	mclient = &pdata->rx_mc;
+	mclient->dev = dev;
+	mclient->rx_callback = zynqmp_r5_mb_rx_cb;
+	mclient->tx_block = false;
+	mclient->knows_txdone = false;
+
+	INIT_WORK(&pdata->workqueue, handle_event_notified);
+
+	/* Request TX and RX channels */
+	pdata->tx_chan = mbox_request_channel_byname(&pdata->tx_mc, "tx");
+	if (IS_ERR(pdata->tx_chan)) {
+		dev_err(dev, "failed to request mbox tx channel.\n");
+		pdata->tx_chan = NULL;
+		return -EINVAL;
+	}
+	pdata->rx_chan = mbox_request_channel_byname(&pdata->rx_mc, "rx");
+	if (IS_ERR(pdata->rx_chan)) {
+		dev_err(dev, "failed to request mbox rx channel.\n");
+		pdata->rx_chan = NULL;
+		return -EINVAL;
+	}
+	skb_queue_head_init(&pdata->tx_mc_skbs);
+	return 0;
+}
+
+/**
+ * zynqmp_r5_probe() - Probes ZynqMP R5 processor device node
+ * @pdata: pointer to the ZynqMP R5 processor platform data
+ * @pdev: parent RPU domain platform device
+ * @node: pointer of the device node
+ *
+ * Function to retrieve the information of the ZynqMP R5 device node.
+ *
+ * Return: 0 for success, negative value for failure.
+ */
+static int zynqmp_r5_probe(struct zynqmp_r5_pdata *pdata,
+			   struct platform_device *pdev,
+			   struct device_node *node)
+{
+	struct device *dev = &pdata->dev;
+	struct rproc *rproc;
+	struct device_node *nc;
+	int ret;
+
+	/* Create device for ZynqMP R5 device */
+	dev->parent = &pdev->dev;
+	dev->release = zynqmp_r5_release;
+	dev->of_node = node;
+	dev_set_name(dev, "%s", of_node_full_name(node));
+	dev_set_drvdata(dev, pdata);
+	ret = device_register(dev);
+	if (ret) {
+		dev_err(dev, "failed to register device.\n");
+		return ret;
+	}
+	get_device(&pdev->dev);
+
+	/* Allocate remoteproc instance */
+	rproc = rproc_alloc(dev, dev_name(dev), &zynqmp_r5_rproc_ops, NULL, 0);
+	if (!rproc) {
+		dev_err(dev, "rproc allocation failed.\n");
+		ret = -ENOMEM;
+		goto error;
+	}
+	rproc->auto_boot = autoboot;
+	pdata->rproc = rproc;
+	rproc->priv = pdata;
+
+	/*
+	 * The device has not been spawned from a device tree, so
+	 * arch_setup_dma_ops has not been not called, thus leaving
+	 * the device with dummy DMA ops.
+	 * Fix this by inheriting the parent's DMA ops and mask.
+	 */
+	rproc->dev.dma_mask = pdev->dev.dma_mask;
+	set_dma_ops(&rproc->dev, get_dma_ops(&pdev->dev));
+
+	/* Probe R5 memory devices */
+	INIT_LIST_HEAD(&pdata->mems);
+	for_each_available_child_of_node(node, nc) {
+		ret = zynqmp_r5_mem_probe(pdata, nc);
+		if (ret) {
+			dev_err(dev, "failed to probe memory %s.\n",
+				of_node_full_name(nc));
+			goto error;
+		}
+	}
+
+	/* Set up DMA mask */
+	ret = dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_warn(dev, "dma_set_coherent_mask failed: %d\n", ret);
+		/* If DMA is not configured yet, try to configure it. */
+		ret = of_dma_configure(dev, node, true);
+		if (ret) {
+			dev_err(dev, "failed to configure DMA.\n");
+			goto error;
+		}
+	}
+
+	/* Get R5 power domain node */
+	ret = of_property_read_u32(node, "pnode-id", &pdata->pnode_id);
+	if (ret) {
+		dev_err(dev, "failed to get power node id.\n");
+		goto error;
+	}
+
+	/* Check if R5 is running */
+	if (r5_is_running(pdata)) {
+		atomic_inc(&rproc->power);
+		rproc->state = RPROC_RUNNING;
+	}
+
+	if (!of_get_property(dev->of_node, "mboxes", NULL)) {
+		dev_info(dev, "no mailboxes.\n");
+	} else {
+		ret = zynqmp_r5_setup_mbox(pdata, node);
+		if (ret < 0)
+			goto error;
+	}
+
+	/* Add R5 remoteproc */
+	ret = rproc_add(rproc);
+	if (ret) {
+		dev_err(dev, "rproc registration failed\n");
+		goto error;
+	}
+	return 0;
+error:
+	if (pdata->rproc)
+		rproc_free(pdata->rproc);
+	pdata->rproc = NULL;
+	device_unregister(dev);
+	put_device(&pdev->dev);
+	return ret;
+}
+
+static int zynqmp_r5_remoteproc_probe(struct platform_device *pdev)
+{
+	const unsigned char *prop;
+	int ret = 0, i;
+	struct device *dev = &pdev->dev;
+	struct device_node *nc;
+
+	prop = of_get_property(dev->of_node, "core_conf", NULL);
+	if (!prop) {
+		dev_err(&pdev->dev, "core_conf is not used.\n");
+		return -EINVAL;
+	}
+
+	dev_info(dev, "RPU core_conf: %s\n", prop);
+	if (!strcmp(prop, "split")) {
+		rpu_mode = PM_RPU_MODE_SPLIT;
+	} else if (!strcmp(prop, "lockstep")) {
+		rpu_mode = PM_RPU_MODE_LOCKSTEP;
+	} else {
+		dev_err(dev,
+			"Invalid core_conf mode provided - %s , %d\n",
+			prop, (int)rpu_mode);
+		return -EINVAL;
+	}
+
+	i = 0;
+	for_each_available_child_of_node(dev->of_node, nc) {
+		ret = zynqmp_r5_probe(&rpus[i], pdev, nc);
+		if (ret) {
+			dev_err(dev, "failed to probe rpu %s.\n",
+				of_node_full_name(nc));
+			return ret;
+		}
+		i++;
+	}
+
+	return 0;
+}
+
+static int zynqmp_r5_remoteproc_remove(struct platform_device *pdev)
+{
+	int i;
+
+	for (i = 0; i < MAX_RPROCS; i++) {
+		struct zynqmp_r5_pdata *rpu = &rpus[i];
+		struct rproc *rproc;
+
+		rproc = rpu->rproc;
+		if (rproc) {
+			rproc_del(rproc);
+			rproc_free(rproc);
+			rpu->rproc = NULL;
+		}
+		if (rpu->tx_chan) {
+			mbox_free_channel(rpu->tx_chan);
+			rpu->tx_chan = NULL;
+		}
+		if (rpu->rx_chan) {
+			mbox_free_channel(rpu->rx_chan);
+			rpu->rx_chan = NULL;
+		}
+
+		device_unregister(&rpu->dev);
+	}
+
+	return 0;
+}
+
+/* Match table for OF platform binding */
+static const struct of_device_id zynqmp_r5_remoteproc_match[] = {
+	{ .compatible = "xlnx,zynqmp-r5-remoteproc-1.0", },
+	{ /* end of list */ },
+};
+MODULE_DEVICE_TABLE(of, zynqmp_r5_remoteproc_match);
+
+static struct platform_driver zynqmp_r5_remoteproc_driver = {
+	.probe = zynqmp_r5_remoteproc_probe,
+	.remove = zynqmp_r5_remoteproc_remove,
+	.driver = {
+		.name = "zynqmp_r5_remoteproc",
+		.of_match_table = zynqmp_r5_remoteproc_match,
+	},
+};
+module_platform_driver(zynqmp_r5_remoteproc_driver);
+
+module_param_named(autoboot,  autoboot, bool, 0444);
+MODULE_PARM_DESC(autoboot,
+		 "enable | disable autoboot. (default: true)");
+
+MODULE_AUTHOR("Ben Levinsky <ben.levinsky@xilinx.com>");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("ZynqMP R5 remote processor control driver");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
