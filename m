Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B86A777A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 10:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzgRgvoq1zrUE6xZINPUtSpyGOsg81IPRpH4sydIyaE=; b=SIpQglHhu9+ZxT
	fxnigPjFH4xSckQw3o5FYatI1kiyLpWRxF4+shuEGjYUqtmr9GhK86befTDvSRjmV7rWXD/Btds3A
	2OJgnjNTJA7+u5zol43ODUvvO/qz25Tj1bWgYHrMRhXKx9bYoW446+3wnNus+KYZa5xUi4hySjT46
	xhHbnLnakCIKBBijzRkCa1sW3w4gwSVkEeCtvM1RkgMjIiua2UEfQnKZd1qu0kAMxs4gYZDoUdPjP
	vDGXMKY1BVasMsnpuOwb1KDgno72wW6wmmwyXpVSaGgEhGMoOKDJ+xi0YeVnc6ii5AR5SEH/IM3oh
	xQIvwEnAcJ5L3w5LDH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrI9k-0005Zg-Dh; Sat, 27 Jul 2019 08:34:20 +0000
Received: from mail-eopbgr810055.outbound.protection.outlook.com
 ([40.107.81.55] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrI9V-0005Xg-4Y
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 08:34:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CH/Q4ZwN3ZVMqbLIvDTx7h7nOfTWUjunLBPbJvGnqV30Zkz7SAmP+j8YA48k+zJSVPGQEcXAbzLDIpwYbdWyk9uxbs4DRcagLDtj/EQ6TidrHMBhpsjfuAqAGf0lgYl5AEvg4sBStV9lOxcmhIJv1Q+xRrCyXHUTn1aShp9P+wsGwTUj5rueDk/BaTyQAWhb+nepJUPzjLtY7mjoQAOqsvBRdYj6eE0jdMVjYR3ivZjRckdGfZWL7c+8JJ7mxvk8sO7GPkCY2M1nyH1AlKwy4ol2+qENC+CNjAN4BQ65hNz8AvI4eOeQBQ5ei5cQELclOeYZ5Xbae0mvEZoH4RFagA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1lFFDBcQztCPOtm2f0DI1asaG6sJTxzW8WDwV+OwG5g=;
 b=b7RtJgabrdvntptePeB62AjeC9DsNIedhfv8edUz2MuECzBn1nz5o1IbW/KY1v9GEZ0CRAk4AyVmxJp2gxt/yeXhdopuGGyC63aEftyH6x18Ow+73SNlPX1NccsrHEyGFm9AFudDgAzJEFPsGJqXratFsxChTDLEwBG+Z0C1fNP2hf+xmu4h4Yp479qEjBau5NrzkDgjugWwzOGnIImCgy9mPDK1Cdb+tYgNeb2cOpzhJgh0OB23xq800Z/I+EUpdyoG1igqbrywaapaMSJI28zJG9l+ejLEcC1TSvjnG952nbNUyipZ/70MSzOx5rx9sslHLPxvaEkdiLPTcoAupQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.80.198) smtp.rcpttodomain=arndb.de
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1lFFDBcQztCPOtm2f0DI1asaG6sJTxzW8WDwV+OwG5g=;
 b=YRV0yeTY7gYyO4SORXjL50rXuxamRhwjKAaKLrx1G+nZJ+876vrec7SVDbfM0dgRHZM06Jsu5m4Pj1yrCMPleKT63ywhWQoNpbUH1pwCIOByt80OFV1I6PGqRi66vjoyf5gUUgZcKsCl+BCBGX04QJ2+GNDtFcIoJK5vunnhcv8=
Received: from DM6PR02CA0047.namprd02.prod.outlook.com (2603:10b6:5:177::24)
 by BYAPR02MB5111.namprd02.prod.outlook.com (2603:10b6:a03:70::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Sat, 27 Jul
 2019 08:34:01 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by DM6PR02CA0047.outlook.office365.com
 (2603:10b6:5:177::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2115.10 via Frontend
 Transport; Sat, 27 Jul 2019 08:34:01 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2115.10 via Frontend Transport; Sat, 27 Jul 2019 08:34:00 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Jul 2019 09:33:59 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Jul 2019 09:33:59 +0100
Received: from [149.199.110.15] (port=40508 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hrI9P-00027X-UP; Sat, 27 Jul 2019 09:33:59 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 4/8] misc: xilinx_sdfec: Add ability to get/set config
Date: Sat, 27 Jul 2019 09:33:54 +0100
Message-ID: <1564216438-322406-5-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(376002)(346002)(2980300002)(189003)(199004)(28376004)(246002)(9786002)(51416003)(50466002)(7696005)(76130400001)(50226002)(48376002)(5660300002)(14444005)(71366001)(2201001)(2906002)(106002)(186003)(26826003)(60926002)(76176011)(446003)(26005)(356004)(6666004)(11346002)(70586007)(8676002)(956004)(36756003)(2616005)(16586007)(336012)(54906003)(70206006)(110136005)(36906005)(478600001)(426003)(316002)(7636002)(305945005)(44832011)(107886003)(47776003)(486006)(126002)(476003)(8936002)(4326008)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5111; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3150478-9243-43bb-0a25-08d7126d2ce7
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB5111; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB5111:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5111F311A326A5D6104EDB85CBC30@BYAPR02MB5111.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 01110342A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: s5W4leV9VrF/kHgBetmQ3kTb0CCd/XeaRuMxLNkt7bCndEDfmWuWEyRC1yJCOx1ZCkHQpxZIcU8CKMOO4mm05ZCQSP4zd4/mWyAdb//AMMc8gpZnGfSN+OiEL/j2Y8xSK74srHtfpf2XlhgPRE5q9mRxA0mad77AxDkVIWawt01hfUUzVHRbB+uHMi1SF/foOvK8+CdsqpE67qPFptOVeN4wl8IRNT+vzXvkZU7JyCtmRPdaQRu8FyVcyTCFz+dLBdAvTVJvDxIwsQq1hCdrZQXknbYUl6ryEkjBbQWnlKHEen2c1UAQeeU/GgDlTUUcyVQiJAqeJmJJFY3lTXgqik0csNN5D9Hr8kQWn1Aliy5rDslD3rJV50osEZW/f9lxc9MGo6pmSZ8l2qW9++Ab+7URKBxBVxeOvmeCN8s+MVI=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2019 08:34:00.8667 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3150478-9243-43bb-0a25-08d7126d2ce7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_013405_187246_44509A43 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.55 listed in list.dnswl.org]
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
index 9be4de0..579f236 100644
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
index ce532a5..b8897ce 100644
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
