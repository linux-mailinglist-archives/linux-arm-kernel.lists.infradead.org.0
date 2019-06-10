Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A273B65A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIjSWXxujfsfCTv8hNsJmtO1YXF6/dkoKdhblnTCaO8=; b=POdnLUKPS9wP5l
	E/vawESsXbVI81XAz2pwrNSDRmOW4+FzfiWv9B2QYHn1FWbgCZ00de+i9WJUPhg+lpHXIctjYavaZ
	f9zqOoWHBMg+zaGP23FzlEKscwDLnfgIjdHOa+f1QbmTlhVjAYBP1m6Fwq7OUiQZZzHoTek3mxPV1
	0sbRs5lz1Fgxj3/rRipK03mc+WMolRvTSlC/ZaXqd/wEHBHjNLpqZfdo74WyOYIUhnB+9OPFQsu2K
	kHYVKn15nRoJzll7tvlMTNuM/PaHL3e22jm5+Hm9uYXQDD96Z/8qb3pcELG7C4GfAluHDXpvddSn1
	YwyzmMYyJNg00ZQBYQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKdM-0005MJ-Bs; Mon, 10 Jun 2019 13:46:48 +0000
Received: from mail-cys01nam02on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::614]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKcF-0004Ws-P8
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wf4fGS5YwaVbK+ZyRGE02u+VGUWPOY7u/wQIVleAlKo=;
 b=Rb5rm5o1OX+pdWvFzx28S4/1lMOf+hLURvb+KAb+4xGHWWGjDYPjTWlkU+j4COk06mSnGkjAj4nY0gDPzcVugGk/vBhBAKpaG0G9hyXtTe4cRH56G/T+FP2U3Jyu5EDN3g3G1b/Hr2x4htA/Z8g2Q8lGXg42j7YXNvndJlz8nng=
Received: from MWHPR0201CA0021.namprd02.prod.outlook.com
 (2603:10b6:301:74::34) by BL0PR02MB4932.namprd02.prod.outlook.com
 (2603:10b6:208:53::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Mon, 10 Jun
 2019 13:45:37 +0000
Received: from BL2NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by MWHPR0201CA0021.outlook.office365.com
 (2603:10b6:301:74::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.15 via Frontend
 Transport; Mon, 10 Jun 2019 13:45:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT036.mail.protection.outlook.com (10.152.77.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Mon, 10 Jun 2019 13:45:36 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Mon, 10 Jun 2019 14:45:31 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Mon, 10 Jun 2019 14:45:31 +0100
Received: from [149.199.110.15] (port=49286 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1haKc7-00074r-Ff; Mon, 10 Jun 2019 14:45:31 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V6 07/11] misc: xilinx_sdfec: Add ability to get/set config
Date: Mon, 10 Jun 2019 14:45:10 +0100
Message-ID: <1560174314-124649-8-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560174314-124649-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560174314-124649-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(346002)(376002)(39860400002)(2980300002)(199004)(189003)(70586007)(486006)(426003)(476003)(7636002)(70206006)(107886003)(28376004)(8676002)(44832011)(246002)(50226002)(8936002)(126002)(9786002)(446003)(11346002)(305945005)(2616005)(956004)(336012)(106002)(54906003)(110136005)(16586007)(36906005)(316002)(36756003)(2906002)(60926002)(186003)(26005)(51416003)(7696005)(76176011)(71366001)(47776003)(356004)(6666004)(5660300002)(2201001)(4326008)(48376002)(26826003)(50466002)(14444005)(76130400001)(478600001)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4932; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa4f92b2-eabe-4784-42ac-08d6eda9eb07
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4932; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4932:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BL0PR02MB493283C4C183493307B54E41CB130@BL0PR02MB4932.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0064B3273C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: tP4Upityy0H/J+mdx7TUkuWmpvlJwxKDSjSeFzVISSyVduFXOIGIi5WlriMDqULpaJ8gxv3+Ug7iV1BYY8vX9YWIQnxQ39g2KIbzmXV0pYTOfSYtzdBDKkAAz4/EuEOH3NyADlkTufL9ntAi+3DaG7rvx560HOfzYZQkmI8R1+GsJzFZkxD49xVy2HZUSwI8dPVdRhGZIwt3iQilc66r6t4pbjXYnWuzt/84C0I0KlxcoP6OG0xEs2VMbGSXhTpdKeBhNPWYsrKYubOeXtoZC1ebgnlO5+Im6bnFgSdAvx6evi3OSRdoMUtkfSpuOEVNVbNynmJO93miTOCSNnNLhUjBW8rgGDDMTdeFzERL0oULW+u4bvY0F8e8POrFWl8ivP3NoIREC45MelPMikymg4B1Te5g71P0zRCdkNCCBaU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2019 13:45:36.6270 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: aa4f92b2-eabe-4784-42ac-08d6eda9eb07
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_064539_852026_213F69F8 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:614 listed in]
 [list.dnswl.org]
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Add capability to get SD-FEC config data using ioctl
XSDFEC_GET_CONFIG.

- Add capability to set SD-FEC data order using ioctl
SDFEC_SET_ORDER.

- Add capability to set SD-FEC bypass option using ioctl
XSDFEC_SET_BYPASS.

- Add capability to set SD-FEC active state using ioctl
XSDFEC_IS_ACTIVE.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/xilinx_sdfec.c      | 88 ++++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h | 57 ++++++++++++++++++++++++++
 2 files changed, 145 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index b2b16771..83de77e 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -273,6 +273,17 @@ static void update_config_from_hw(struct xsdfec_dev *xsdfec)
 		xsdfec->state = XSDFEC_STOPPED;
 }
 
+static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	int err;
+
+	err = copy_to_user(arg, &xsdfec->config, sizeof(xsdfec->config));
+	if (err)
+		err = -EFAULT;
+
+	return err;
+}
+
 static int xsdfec_set_turbo(struct xsdfec_dev *xsdfec, void __user *arg)
 {
 	struct xsdfec_turbo turbo;
@@ -591,6 +602,71 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	return ret;
 }
 
+static int xsdfec_set_order(struct xsdfec_dev *xsdfec, void __user *arg)
+{
+	bool order_invalid;
+	enum xsdfec_order order;
+	int err;
+
+	err = get_user(order, (enum xsdfec_order *)arg);
+	if (err)
+		return -EFAULT;
+
+	order_invalid = (order != XSDFEC_MAINTAIN_ORDER) &&
+			(order != XSDFEC_OUT_OF_ORDER);
+	if (order_invalid)
+		return -EINVAL;
+
+	/* Verify Device has not started */
+	if (xsdfec->state == XSDFEC_STARTED)
+		return -EIO;
+
+	xsdfec_regwrite(xsdfec, XSDFEC_ORDER_ADDR, order);
+
+	xsdfec->config.order = order;
+
+	return 0;
+}
+
+static int xsdfec_set_bypass(struct xsdfec_dev *xsdfec, bool __user *arg)
+{
+	bool bypass;
+	int err;
+
+	err = get_user(bypass, arg);
+	if (err)
+		return -EFAULT;
+
+	/* Verify Device has not started */
+	if (xsdfec->state == XSDFEC_STARTED)
+		return -EIO;
+
+	if (bypass)
+		xsdfec_regwrite(xsdfec, XSDFEC_BYPASS_ADDR, 1);
+	else
+		xsdfec_regwrite(xsdfec, XSDFEC_BYPASS_ADDR, 0);
+
+	xsdfec->config.bypass = bypass;
+
+	return 0;
+}
+
+static int xsdfec_is_active(struct xsdfec_dev *xsdfec, bool __user *arg)
+{
+	u32 reg_value;
+	bool is_active;
+	int err;
+
+	reg_value = xsdfec_regread(xsdfec, XSDFEC_ACTIVE_ADDR);
+	/* using a double ! operator instead of casting */
+	is_active = !!(reg_value & XSDFEC_IS_ACTIVITY_SET);
+	err = put_user(is_active, arg);
+	if (err)
+		return -EFAULT;
+
+	return err;
+}
+
 static u32
 xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
 {
@@ -681,6 +757,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	}
 
 	switch (cmd) {
+	case XSDFEC_GET_CONFIG:
+		rval = xsdfec_get_config(xsdfec, arg);
+		break;
 	case XSDFEC_SET_TURBO:
 		rval = xsdfec_set_turbo(xsdfec, arg);
 		break;
@@ -690,6 +769,15 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	case XSDFEC_ADD_LDPC_CODE_PARAMS:
 		rval = xsdfec_add_ldpc(xsdfec, arg);
 		break;
+	case XSDFEC_SET_ORDER:
+		rval = xsdfec_set_order(xsdfec, arg);
+		break;
+	case XSDFEC_SET_BYPASS:
+		rval = xsdfec_set_bypass(xsdfec, arg);
+		break;
+	case XSDFEC_IS_ACTIVE:
+		rval = xsdfec_is_active(xsdfec, (bool __user *)arg);
+		break;
 	default:
 		/* Should not get here */
 		break;
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index 7443ed8..163dff6 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -288,6 +288,19 @@ struct xsdfec_ldpc_param_table_sizes {
 #define XSDFEC_ADD_LDPC_CODE_PARAMS                                            \
 	_IOW(XSDFEC_MAGIC, 5, struct xsdfec_ldpc_params)
 /**
+ * DOC: XSDFEC_GET_CONFIG
+ * @Parameters
+ *
+ * @struct xsdfec_config *
+ *	Pointer to the &struct xsdfec_config that contains the current
+ *	configuration settings of the SD-FEC Block
+ *
+ * @Description
+ *
+ * ioctl that returns SD-FEC core configuration
+ */
+#define XSDFEC_GET_CONFIG _IOR(XSDFEC_MAGIC, 6, struct xsdfec_config)
+/**
  * DOC: XSDFEC_GET_TURBO
  * @Parameters
  *
@@ -300,4 +313,48 @@ struct xsdfec_ldpc_param_table_sizes {
  * ioctl that returns SD-FEC turbo param values
  */
 #define XSDFEC_GET_TURBO _IOR(XSDFEC_MAGIC, 7, struct xsdfec_turbo)
+/**
+ * DOC: XSDFEC_SET_ORDER
+ * @Parameters
+ *
+ * @struct unsigned long *
+ *	Pointer to the unsigned long that contains a value from the
+ *	@enum xsdfec_order
+ *
+ * @Description
+ *
+ * ioctl that sets order, if order of blocks can change from input to output
+ *
+ * This can only be used when the driver is in the XSDFEC_STOPPED state
+ */
+#define XSDFEC_SET_ORDER _IOW(XSDFEC_MAGIC, 8, unsigned long)
+/**
+ * DOC: XSDFEC_SET_BYPASS
+ * @Parameters
+ *
+ * @struct bool *
+ *	Pointer to bool that sets the bypass value, where false results in
+ *	normal operation and false results in the SD-FEC performing the
+ *	configured operations (same number of cycles) but output data matches
+ *	the input data
+ *
+ * @Description
+ *
+ * ioctl that sets bypass.
+ *
+ * This can only be used when the driver is in the XSDFEC_STOPPED state
+ */
+#define XSDFEC_SET_BYPASS _IOW(XSDFEC_MAGIC, 9, bool)
+/**
+ * DOC: XSDFEC_IS_ACTIVE
+ * @Parameters
+ *
+ * @struct bool *
+ *	Pointer to bool that returns true if the SD-FEC is processing data
+ *
+ * @Description
+ *
+ * ioctl that determines if SD-FEC is processing data
+ */
+#define XSDFEC_IS_ACTIVE _IOR(XSDFEC_MAGIC, 10, bool)
 #endif /* __XILINX_SDFEC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
