Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69A02A429
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUa6+X4YJweaeX2z6KD2spffRcL8uCq48t08sa6/DsQ=; b=J6mFgLcRLe/sQQ
	hVNHHtY3wQ9Yu7q3G7l4st3pd7jRhg/qHPV/kkpdefLlAoI6iDjqRk1y/fMctsag3COETiJ2y2zLg
	ldroQfFHhbPjdQVaferkbXK0BbJkVuvc9ZPYwu9JX5WlqPTIM6M/zZV3ctkgxYDonh+3ns0dfpjrf
	tCSFBvr9PnMDhTHNHfKNOBZlHR/Hn1YiK+xf2rEplt+8q0LpcRm7zzhF8vd2vxNXp3fC3uBbZPVSf
	RwzIQSyJhnJr6yCu6iD/a1g3XgyDGdDx48rGbxFXC3yHjsJCM4hvwTdzWKS2HJ5nxfCaomzCbw7kl
	0x/TBOGQt5btEGuxCf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV1P-0003V9-R6; Sat, 25 May 2019 11:39:31 +0000
Received: from mail-eopbgr770089.outbound.protection.outlook.com
 ([40.107.77.89] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzj-0001TY-CX
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ODBPcWCnW39iI6vBjeu9DHTW4Qjuha5deFPM8IWc88U=;
 b=TzYPQgnttrYj/sKTO3n4Iq+Fnpm/OwXaogsZeVPIVcfn8m1+xpa/8+KIYZHaY2qE3AIm0mxpI6grhfQopw6z6wf9don/5H2wH8TKLeXLqV8oWyOO/Jfq2en9S79+XsHKEiS3ISXctW6S2Amw5bOq1Q8y7blOzec0+eLn6dvlPvM=
Received: from CY4PR02CA0024.namprd02.prod.outlook.com (2603:10b6:903:18::34)
 by BN6PR02MB2676.namprd02.prod.outlook.com (2603:10b6:404:fa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.16; Sat, 25 May
 2019 11:37:45 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by CY4PR02CA0024.outlook.office365.com
 (2603:10b6:903:18::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Sat, 25 May 2019 11:37:44 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 SN1NAM02FT047.mail.protection.outlook.com (10.152.72.201) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:44 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 25 May 2019 12:37:34 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 25 May 2019 12:37:34 +0100
Received: from [149.199.110.15] (port=57194 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hUUzW-00058U-Og; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 08/12] misc: xilinx_sdfec: Add ability to get/set config
Date: Sat, 25 May 2019 12:37:21 +0100
Message-ID: <1558784245-108751-9-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(136003)(376002)(2980300002)(199004)(189003)(5660300002)(4326008)(76176011)(9786002)(356004)(6666004)(8936002)(246002)(50226002)(8676002)(107886003)(36756003)(48376002)(305945005)(2906002)(50466002)(51416003)(486006)(2616005)(336012)(44832011)(446003)(426003)(76130400001)(476003)(71366001)(956004)(126002)(16586007)(106002)(7696005)(36906005)(11346002)(26005)(7636002)(54906003)(110136005)(186003)(60926002)(47776003)(28376004)(70586007)(2201001)(26826003)(14444005)(316002)(70206006)(478600001)(102446001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2676; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8416e13-ee46-4378-b470-08d6e105677f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BN6PR02MB2676; 
X-MS-TrafficTypeDiagnostic: BN6PR02MB2676:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BN6PR02MB2676E2121E936E62C47041B6CB030@BN6PR02MB2676.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: bxaZPZshMOgfCochEPy9eUwcKol4PQ10f5iT55G/6UIhh/+gcB60iW4L38BhA/f2YtKvU2vw2ORja8ZgshAPhxiNsr+kxKTWJdJsMylPGhH+KNDLApf6lbtLD8ZdOhFOUZUhBYG/M8xpRAMnMb10kHsuD5u95xOKHFT4IM90KeSNSCkoCI453IaIG8uebHpf6UwcviCx1gY4+8OBcf/sUxTzbuiE/3IG7ARCSfcLNLgrKWONOt1Vymh/XzQwHkCJTzUEUfUPa6tNinVZ8GFQUW7rxj3sFTTIzB+AXf3Udt9WYsDmR+d7+lKiTFCFQUwlbngqU5DLMBf01l5wwqg43QKlhmY0z9gAdWGFfQFrTAMVg2ajqNm9l6CNyO8CDjjeyJ7SKS+IiZWxJUfYFNNcXRvGTnUZbJ9n1oXhS+1KJlU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:44.3274 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f8416e13-ee46-4378-b470-08d6e105677f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043747_842372_D79893DD 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 drivers/misc/xilinx_sdfec.c      | 99 ++++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h | 57 +++++++++++++++++++++++
 2 files changed, 156 insertions(+)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 8a84963..f1c96c7 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -275,6 +275,17 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
 	return 0;
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
@@ -601,6 +612,82 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
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
+	if (order_invalid) {
+		dev_dbg(xsdfec->dev, "%s invalid order value %d for SDFEC%d",
+			__func__, order, xsdfec->config.fec_id);
+		return -EINVAL;
+	}
+
+	/* Verify Device has not started */
+	if (xsdfec->state == XSDFEC_STARTED) {
+		dev_dbg(xsdfec->dev,
+			"%s attempting to set Order while started for SDFEC%d",
+			__func__, xsdfec->config.fec_id);
+		return -EIO;
+	}
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
+	if (xsdfec->state == XSDFEC_STARTED) {
+		dev_dbg(xsdfec->dev,
+			"%s attempting to set bypass while started for SDFEC%d",
+			__func__, xsdfec->config.fec_id);
+		return -EIO;
+	}
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
@@ -686,6 +773,9 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
 	}
 
 	switch (cmd) {
+	case XSDFEC_GET_CONFIG:
+		rval = xsdfec_get_config(xsdfec, arg);
+		break;
 	case XSDFEC_SET_TURBO:
 		rval = xsdfec_set_turbo(xsdfec, arg);
 		break;
@@ -695,6 +785,15 @@ static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
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
 		dev_warn(xsdfec->dev, "Undefined SDFEC IOCTL");
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
index bebaf0b..82e58b3 100644
--- a/include/uapi/misc/xilinx_sdfec.h
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -296,6 +296,19 @@ struct xsdfec_ldpc_param_table_sizes {
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
@@ -308,4 +321,48 @@ struct xsdfec_ldpc_param_table_sizes {
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
