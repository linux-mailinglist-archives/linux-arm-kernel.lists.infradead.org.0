Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829096134B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 02:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBEmguksccTLtd+kRVgeE3s2IJzrxUPrJR3kDQ7uQsM=; b=O0HAweXV030G/W
	OZ6WUl/P07pVYw9u0RdbmSUVvr7gHXr3Tist0RRGHfZgMitjeqvMq1BsLanijZD+GpAvf0b0Mhq7R
	STgBzbrA+gHkifKKCL9BTGbGXazBtojeR1ypFKB3tzlLLmgeiAqfUZvjteunA1FqQfyewD91nBVU5
	r1i2+0QFfHj4Md1VZXsjpHTFDHNf7T4Ht/GEJ5lF3PMOYr/lJAvNeeruKyqGg0iabQXZOvsiW8IPE
	8Q3755ORbvNC11dZHQyjQEJCHRUnNwLaipiUQjsdfdgfysa/yL9Hq0Bdh9i1vIAHCCYbOJwTafQnk
	fsbYm8dj+OTos9xJUWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjuqn-00029G-D5; Sun, 07 Jul 2019 00:16:17 +0000
Received: from mail-eopbgr810075.outbound.protection.outlook.com
 ([40.107.81.75] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjuqQ-00027F-0f
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 00:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gvQRPQg7Az/O6ZGWOHhhM1XBzmELtS+utvOY8QRI3o=;
 b=l9ju0YHnog2zm0NxfRmgvtSiF5Vn0oZi3TPDdmm9v/RV0vShYV/iMFIjiZyXmCeH77q6pjHXrbVTYzYJgat5NQFZa4sZ6QjTZAxr35/jhI6/GFYXkCetNbQE/4uMZ3jI1EwOLxYU/QqQjKOSFAjrBH3cDSQpsxuqGlfvC4SPWFA=
Received: from MWHPR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:301:74::44) by BL0PR02MB3713.namprd02.prod.outlook.com
 (2603:10b6:207:47::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2052.19; Sun, 7 Jul
 2019 00:15:48 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by MWHPR0201CA0031.outlook.office365.com
 (2603:10b6:301:74::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18 via Frontend
 Transport; Sun, 7 Jul 2019 00:15:47 +0000
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
 15.20.2032.15 via Frontend Transport; Sun, 7 Jul 2019 00:15:46 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 7 Jul 2019 01:15:45 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 7 Jul 2019 01:15:45 +0100
Received: from [149.199.110.15] (port=58228 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hjuqH-0004ON-7E; Sun, 07 Jul 2019 01:15:45 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V8 8/8] MAINTAINERS: add maintainer for SD-FEC
Date: Sun, 7 Jul 2019 01:15:42 +0100
Message-ID: <1562458542-457448-9-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562458542-457448-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1562458542-457448-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39850400004)(136003)(2980300002)(189003)(199004)(316002)(426003)(54906003)(305945005)(16586007)(476003)(110136005)(60926002)(106002)(47776003)(50466002)(126002)(36906005)(36756003)(44832011)(28376004)(71366001)(48376002)(486006)(478600001)(26826003)(107886003)(4326008)(446003)(8936002)(8676002)(2616005)(956004)(11346002)(7636002)(246002)(9786002)(26005)(2906002)(186003)(50226002)(4744005)(2201001)(5660300002)(76176011)(70586007)(51416003)(336012)(70206006)(356004)(7696005)(6666004)(76130400001)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3713; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74e66050-d9a4-44bd-dda5-08d702704242
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB3713; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB3713:
X-Microsoft-Antispam-PRVS: <BL0PR02MB371384181C8BABF14DE262D4CBF70@BL0PR02MB3713.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0091C8F1EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: TSFIagzUE9QRqECP3wtH4qWtK0PqROjQcORauYMnTQHWWhM4ZfYOJc3oSdeWK4caKAhKAhkUqtlDPqMmIjIcG4jLXL3GiTIO+O3mmi2EGgpgrAwlIEbY5WnmZvqXkm2+AzYmq6uMlB0LPyH9L12A0/l0wN46ovA6zdGFoUfx4ukHS1wsxMF9clGLVhkWR19Rk5rbhZhTe3JsjioWC/wsJCdZsnqkNMFX+SjVHGRtwjV1T0ebJEjrk8HNTCnGOR++MS/1EI1SfZMXTKpkW66QgCkoJaWecF8CEm+QVW/RH11VKZHxqx2hUJ+FyCbaAcr32P+ApiIW3LYNT+wWWV8eFFuICiuJHJJtlAQnMa18ypUO+UKgzXZyJNpIORf0ql3BmnSLAqTBNs47N+1VGiKECSSet8P1e2kp2qwskhCM+jo=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2019 00:15:46.5043 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e66050-d9a4-44bd-dda5-08d702704242
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3713
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_171554_107689_18092107 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.75 listed in list.dnswl.org]
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

support

Add maintainer entry for Xilinx SD-FEC driver support.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1fc7baf..6a9db56 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17402,6 +17402,17 @@ F:	Documentation/devicetree/bindings/media/xilinx/
 F:	drivers/media/platform/xilinx/
 F:	include/uapi/linux/xilinx-v4l2-controls.h
 
+XILINX SD-FEC IP CORES
+M:	Derek Kiernan <derek.kiernan@xilinx.com>
+M:	Dragan Cvetic <dragan.cvetic@xilinx.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
+F:	Documentation/misc-devices/xilinx_sdfec.rst
+F:	drivers/misc/xilinx_sdfec.c
+F:	drivers/misc/Kconfig
+F:	drivers/misc/Makefile
+F:	include/uapi/misc/xilinx_sdfec.h
+
 XILLYBUS DRIVER
 M:	Eli Billauer <eli.billauer@gmail.com>
 L:	linux-kernel@vger.kernel.org
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
