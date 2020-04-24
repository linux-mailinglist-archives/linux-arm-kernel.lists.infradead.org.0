Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98311B7D0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0PNI9uiX1JbkCdFirVSYK9GbCSCTD7cLoBLxgAMCaE=; b=s3VtSSbz+yzA1U
	IOU1WEC5HGR5qnN34aJOqv34AMIZCNMdKmedQ19jln0JihI8I7Ceyr6O/DuuG5GxxjF7ZRVJ21shm
	v29OdYin8cM6ECnpWaFXNS31HBkmPv/xHtKoRzaJGTgw2E5VC9qKiSknkcWOzfkumGedKgU27QX2N
	YLpmZGnwPAZyv+9MOf0DzDsqtW0ujDYyiPF39yZUVausVcB8MnFJv07XL+roNqwbYP/8lOENDsG44
	vLpxzQq8+MPUeb07EBkTh9/zW3KB0QmfyCFZFr4l3HH5cdz6Apk4JZNWOLgOLp1xwSwIlTQpfCLYq
	XXFNHbhj3JCR8dYrCvqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Gx-0006yd-HV; Fri, 24 Apr 2020 17:37:55 +0000
Received: from mail-mw2nam12on2068.outbound.protection.outlook.com
 ([40.107.244.68] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2FX-0005p6-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afS6U/TDgA106KxZKKrhb5R9md/xcGIPP/Xbgm1D0h1a54Tkk+sFWIP9JvlWlKIux5mg9tWPKihMZrL2BH+O/8PD9gtDjVShdX8Mp0yTxuVd/s3pf6wEbT1w8EbsFpNuV/F5PiwKjHNpbrym5rNZKTOS6kTzJdukgl5xZ/e4R6gsi/HWrY++Ft6ofaebPSGYwhQv/MUqD2zUUXOHjTWm1xoeF6oeW6mwB/+Nna2VbYjVT8NB3eCf8HrpRbhvqC1hVqXZKm6ituZzXSjH0eW0wqmll16mlMBBCmjY9fZtHyQNRl+/NLnjH1TYjfxP+ou03LnVb5lk9gCQgbpdQ7gIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Im6vNm58IRUL7abNLp8dkJVEnuq+fsWBCg9tomYcxFY=;
 b=lfWCP4BvyONWaQvEE+asFk8fv4/f5fJpkGo9oQbuOALSznPMNM6LRz+N0HJIB8IXE6NtcVr12LTuXBn4GEcQRUEhKFH5Zur8O/WWQQ/fGChkmfLIyq+EiB0rPE/l7f3ytYIbgtEPep7hzDi++yqL+A3kYJwWr0vIBL2sQjyTOhKoQhzjU/0GJbIZ99BUZl+TIXs5w0p2GiE04XFKjKoRl/PTsweCMaP4GC5a31W6C7GIJXEtHWTX0DO00W18Oj2/hgOm/U6kTWBdYVoPROZp+X5Hn8spFX2DiuJwnnbe0kx1XT08wn9GgXxfO6l7vLDRlqdUNTS6g+CO8JpXmBU+zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Im6vNm58IRUL7abNLp8dkJVEnuq+fsWBCg9tomYcxFY=;
 b=cnSRuwYOcm2Awtq6Z+MDDL0pqMYjV5hmQtjg5H9AkOtQL3l3wt4nkG57yreaSGuXRkOQTzJi03uBSDGM1tepGfnu6l7NJhXrUwNjp3HOPSBM/3mLBNzF8QJrWZHYfHvejtbgS6CTvQ8Lm+Yqcqk48X+yqRrIB5tc4GUFChkmUYE=
Received: from SN4PR0501CA0025.namprd05.prod.outlook.com
 (2603:10b6:803:40::38) by BN6PR02MB2596.namprd02.prod.outlook.com
 (2603:10b6:404:57::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 17:36:23 +0000
Received: from SN1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:40:cafe::8b) by SN4PR0501CA0025.outlook.office365.com
 (2603:10b6:803:40::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.12 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT038.mail.protection.outlook.com (10.152.72.69) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41739 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BU-Qt; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-CJ; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaBNu026368; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FG-0006h9-U9; Fri, 24 Apr 2020 10:36:10 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 3/5] firmware: xilinx: Add RPU configuration APIs
Date: Fri, 24 Apr 2020 10:36:08 -0700
Message-Id: <1587749770-15082-4-git-send-email-ben.levinsky@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(376002)(136003)(46966005)(2616005)(36756003)(426003)(9786002)(82310400002)(70586007)(70206006)(5660300002)(2906002)(26005)(44832011)(356005)(7696005)(186003)(47076004)(82740400003)(8936002)(336012)(81156014)(316002)(4326008)(478600001)(81166007)(8676002)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 368e5eba-51e0-4560-0eb4-08d7e8760199
X-MS-TrafficTypeDiagnostic: BN6PR02MB2596:
X-Microsoft-Antispam-PRVS: <BN6PR02MB259690601835F11F9E5408E4B5D00@BN6PR02MB2596.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FHCepHjpZa7siKAr+r3qODffmmXmn3lEi+TQjW7Gmv4qiFcxUqemhtQC0hmVuknpDTNpPXqTnJsnjMGOydV5UPhS+j5NbWB6LZ3fNfW65pyDAXVzvV8wGdWNj6CM8h/FObVUI3HzMMq0ZaPVq1zRno7abP/omwULk7yTOoZSOhkwrPf5xGOUOApGGQ3KjPZGFvayG+1gs8tSNCBIHA40rQfn0bfGrQEaZaJYAcCXQYrOMjKK5sFqx0+jDEehzVBRqbMjsuhF8pR5BYcw9eiQMqQkw7m+6kp0XE0AxEJqWw0dLXkmAzBvXt+36oemSWsOX27g/fsC4/hyfuhUPObUpyMpQ1NS7jyDvyZfUfpp8Vz2QOq3rfyLBS16pMh+i1bo8H938GnwJSNLKa2nICED4bVxyMyY8JpxMYuPdKhjlBDDf2jBE1kYlraTVwAI4ubWqYPDcvZL51L3hhOyT+KDv4ygxbUBleDHjukIam/FqO5pEjA9IhDyo1UD1QTnzHg2SQdRgj0h+bp4kcmICHWF6XxTGnT7wK3Ahq+dYOa9AWE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.6687 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 368e5eba-51e0-4560-0eb4-08d7e8760199
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2596
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103627_226309_86B0D8C8 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.68 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds APIs to provide access and a configuration interface
to the current power state of a sub-system on Zynqmp sub-system.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
Changes since v2:
- add xilinx-related platform mgmt fn's instead of wrapping around
  function pointer in xilinx eemi ops struct
changes since v3:
- fix formatting
---

 drivers/firmware/xilinx/zynqmp.c     | 99 ++++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h | 34 +++++++++++++
 2 files changed, 133 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 16a8d69..20c1f58 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -845,6 +845,61 @@ int zynqmp_pm_release_node(const u32 node)
 EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
 
 /**
+ * zynqmp_pm_get_rpu_mode() - Get RPU mode
+ * @node_id:	Node ID of the device
+ * @arg1:	Argument 1 to requested IOCTL call
+ * @arg2:	Argument 2 to requested IOCTL call
+ * @out:	Returned output value
+ *
+ * Return: RPU mode
+ */
+int zynqmp_pm_get_rpu_mode(u32 node_id,
+			   u32 arg1, u32 arg2, u32 *out)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
+				   IOCTL_GET_RPU_OPER_MODE, 0, 0, out);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_rpu_mode);
+
+/**
+ * zynqmp_pm_set_rpu_mode() - Set RPU mode
+ * @node_id:	Node ID of the device
+ * @ioctl_id:	ID of the requested IOCTL
+ * @arg2:	Argument 2 to requested IOCTL call
+ * @out:	Returned output value
+ *
+ * This function is used to set RPU mode.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_rpu_mode(u32 node_id,
+			   u32 arg1, u32 arg2, u32 *out)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
+				   IOCTL_SET_RPU_OPER_MODE, 0, 0, out);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_rpu_mode);
+
+/**
+ * zynqmp_pm_tcm_comb_config - configure TCM
+ * @node_id:	Node ID of the device
+ * @arg1:	Argument 1 to requested IOCTL call
+ * @arg2:	Argument 2 to requested IOCTL call
+ * @out:	Returned output value
+ *
+ * This function is used to set RPU mode.
+ *
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_tcm_config(u32 node_id,
+			     u32 arg1, u32 arg2, u32 *out)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id,
+				   IOCTL_TCM_COMB_CONFIG, 0, 0, out);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_tcm_config);
+
+/**
  * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
  *             be powered down forcefully
  * @target:    Node ID of the targeted PU or subsystem
@@ -880,6 +935,50 @@ int zynqmp_pm_request_wakeup(const u32 node,
 EXPORT_SYMBOL_GPL(zynqmp_pm_request_wakeup);
 
 /**
+ * zynqmp_pm_get_node_status - PM call to request a node's current power state
+ * @node:      ID of the component or sub-system in question
+ * @status:        Current operating state of the requested node
+ * @requirements:  Current requirements asserted on the node,
+ *         used for slave nodes only.
+ * @usage:     Usage information, used for slave nodes only:
+ *         PM_USAGE_NO_MASTER  - No master is currently using
+ *                       the node
+ *         PM_USAGE_CURRENT_MASTER - Only requesting master is
+ *                       currently using the node
+ *         PM_USAGE_OTHER_MASTER   - Only other masters are
+ *                       currently using the node
+ *         PM_USAGE_BOTH_MASTERS   - Both the current and at least
+ *                       one other master is currently
+ *                       using the node
+ *
+ * Return: status, either success or error+reason
+ */
+int zynqmp_pm_get_node_status(const u32 node,
+			      u32 *status, u32 *requirements,
+			      u32 *usage)
+
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	if (!status)
+		return -EINVAL;
+
+	ret = zynqmp_pm_invoke_fn(PM_GET_NODE_STATUS, node, 0, 0, 0,
+				  ret_payload);
+	if (ret_payload[0] == XST_PM_SUCCESS) {
+		*status = ret_payload[1];
+		if (requirements)
+			*requirements = ret_payload[2];
+		if (usage)
+			*usage = ret_payload[3];
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_get_node_status);
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 4d83a7d..0caca9e 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -64,6 +64,7 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_GET_NODE_STATUS = 3,
 	PM_FORCE_POWERDOWN = 8,
 	PM_REQUEST_WAKEUP = 10,
 	PM_SYSTEM_SHUTDOWN = 12,
@@ -384,6 +385,14 @@ int zynqmp_pm_request_wakeup(const u32 node,
 			     const bool set_addr,
 			     const u64 address,
 			     const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_get_node_status(const u32 node, u32 *status,
+			      u32 *requirements, u32 *usage);
+int zynqmp_pm_get_rpu_mode(u32 node_id,
+			   u32 arg1, u32 arg2, u32 *out);
+int zynqmp_pm_set_rpu_mode(u32 node_id,
+			   u32 arg1, u32 arg2, u32 *out);
+int zynqmp_pm_set_tcm_config(u32 node_id,
+			     u32 arg1, u32 arg2, u32 *out);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -548,6 +557,31 @@ static inline int zynqmp_pm_request_wakeup(const u32 node,
 {
 	return -ENODEV;
 }
+
+static inline int zynqmp_pm_get_node_status(const u32 node,
+					    u32 *status, u32 *requirements,
+					    u32 *usage)
+{
+	return -ENODEV;
+}
+
+static inline int zynqmp_pm_get_rpu_mode(u32 node_id,
+					 u32 arg1, u32 arg2, u32 *out)
+{
+	return -ENODEV;
+}
+
+static inline int zynqmp_pm_set_rpu_mode(u32 node_id,
+					 u32 arg1, u32 arg2, u32 *out)
+{
+	return -ENODEV;
+}
+
+static inline int zynqmp_pm_set_tcm_config(u32 node_id,
+					   u32 arg1, u32 arg2, u32 *out)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
