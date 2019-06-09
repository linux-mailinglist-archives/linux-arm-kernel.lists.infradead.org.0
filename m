Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4F93A29F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MJgFbR7PiQQMbP6wz8Ibl2M7Unp+MGJinlkw2D387o=; b=j5BhZ4DO5bNnqH
	CgMSpgKJd0P6YqhOnW0TtN/9m3fm+xZcWw1Bp2oxqVtk+B/HeEstlt8TOjcxI81xigW8AnFqv5xtN
	XGRCUmQAamYYhOvWB++dykL9+PpYbxPs4akdOIzhGhFqCkyQsu/9o/Qez+EQey1HZ+UonFNACHwnF
	yZxKijpkFp4pA3AlxIbCzzFuO9Vm/U0ugbElVCHN0SYW/2oX71DAIWzHtRauc7LGGwpT0WWexYI8W
	5mWq3pOfbCIkx4VlrDzOWofZcg2wbDa5Qo4KLBCdsN3QWV26KK6sBMN3Vu0P6HqGu/kbqABnUiHXJ
	n8/HfvylWMRqbp0p1B3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlNC-0001ev-Fy; Sun, 09 Jun 2019 00:07:46 +0000
Received: from mail-eopbgr710071.outbound.protection.outlook.com
 ([40.107.71.71] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK5-0006a1-HY
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qh2jW16gPA0Bf28c9FxfM2ZL4qlsykx3cxASQhjWgfE=;
 b=UhqmA6VRBciZ7p4nNg8l7mC7W6ucjVHqOxvEdfME4x9Nm6sMHi/N4rET80B5jNfATMk6HH3CvLy+r97NViJD7vF1Gl97AZDyLq/iNlbSD57yhpzW0B3eLFsMMLTcnJpBwRpqLK4vDFlnSwbx5azsmGaEOGC37Rsqhvd3UqN/w4w=
Received: from BL0PR02CA0074.namprd02.prod.outlook.com (2603:10b6:208:51::15)
 by CH2PR02MB6231.namprd02.prod.outlook.com (2603:10b6:610:d::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.15; Sun, 9 Jun
 2019 00:04:31 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by BL0PR02CA0074.outlook.office365.com
 (2603:10b6:208:51::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:30 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 9 Jun 2019 01:04:24 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 9 Jun 2019 01:04:24 +0100
Received: from [149.199.110.15] (port=48046 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hZlJw-0001PN-DX; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 10/11] Docs: misc: xilinx_sdfec: Add documentation
Date: Sun, 9 Jun 2019 01:04:15 +0100
Message-ID: <1560038656-380620-11-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39850400004)(376002)(136003)(2980300002)(199004)(189003)(60926002)(48376002)(426003)(8936002)(106002)(7636002)(28376004)(478600001)(71366001)(246002)(8676002)(70206006)(76130400001)(356004)(6666004)(70586007)(9786002)(2906002)(36906005)(6306002)(305945005)(50226002)(30864003)(4326008)(14444005)(36756003)(336012)(47776003)(476003)(186003)(76176011)(316002)(486006)(44832011)(16586007)(110136005)(54906003)(7696005)(26826003)(2201001)(26005)(956004)(51416003)(5660300002)(107886003)(2616005)(446003)(11346002)(50466002)(126002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6231; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c4490b33-097f-4132-9c8a-08d6ec6e0bff
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:CH2PR02MB6231; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6231:
X-MS-Exchange-PUrlCount: 2
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CH2PR02MB6231EAB5C434BA60F08187E7CB120@CH2PR02MB6231.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 69g4fmV7CYkMhAb9X73rrZkv5pN169laCwaPLfOCwo79n6R+xV9jEgBYqdt2iEJSYTfJP+HhWerZ/yeFvbumGlSTkCjE8d1Nr9Y8L5Mje6NPnb8c4AV2RI5f8FYssX93FzqXsPYR6vdb79OQYYX0YwX/Jpg/wYp3/Kcfdhiezw0TKfYuiNL5wSH7WxJD138Rk24OD/OZpEtHqhTMajAOQpzrV2WBtmL0cWHafPyJIFQDdLWSSN9qF1IgGOJTtiAJa0Dwzt0Ycs4S4He1z8pa1Ght4glYTLDW/TMC74J9pvKnJ66n9EcZjd9L/w8ErqmPJi9/dre4ydVexpv94Ag1Ej4yPAQ90IpKE00k2NV3eaoPcABZriUn+3xSrwqSIGcuF9RR8Gd41GMEbVOCNR8RLIWpa5Jd9YqzF1vnHAFTj5s=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:30.9741 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4490b33-097f-4132-9c8a-08d6ec6e0bff
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170433_591117_09AEB3D8 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.71 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.71.71 listed in wl.mailspike.net]
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SD-FEC driver documentation.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 Documentation/misc-devices/index.rst        |   1 +
 Documentation/misc-devices/xilinx_sdfec.rst | 291 ++++++++++++++++++++++++++++
 2 files changed, 292 insertions(+)
 create mode 100644 Documentation/misc-devices/xilinx_sdfec.rst

diff --git a/Documentation/misc-devices/index.rst b/Documentation/misc-devices/index.rst
index dfd1f45..b5b4757 100644
--- a/Documentation/misc-devices/index.rst
+++ b/Documentation/misc-devices/index.rst
@@ -15,3 +15,4 @@ fit into other categories.
    :maxdepth: 2
 
    ibmvmc
+   xilinx_sdfec
diff --git a/Documentation/misc-devices/xilinx_sdfec.rst b/Documentation/misc-devices/xilinx_sdfec.rst
new file mode 100644
index 0000000..87966e3
--- /dev/null
+++ b/Documentation/misc-devices/xilinx_sdfec.rst
@@ -0,0 +1,291 @@
+.. SPDX-License-Identifier: GPL-2.0+
+====================
+Xilinx SD-FEC Driver
+====================
+
+Overview
+========
+
+This driver supports SD-FEC Integrated Block for Zynq |Ultrascale+ (TM)| RFSoCs.
+
+.. |Ultrascale+ (TM)| unicode:: Ultrascale+ U+2122
+   .. with trademark sign
+
+For a full description of SD-FEC core features, see the `SD-FEC Product Guide (PG256) <https://www.xilinx.com/cgi-bin/docs/ipdoc?c=sd_fec;v=latest;d=pg256-sdfec-integrated-block.pdf>`_
+
+This driver supports the following features:
+
+  - Retrieval of the Integrated Block configuration and status information
+  - Configuration of LDPC codes
+  - Configuration of Turbo decoding
+  - Monitoring errors
+
+Missing features, known issues, and limitations of the SD-FEC driver are as
+follows:
+
+  - Only allows a single open file handler to any instance of the driver at any time
+  - Reset of the SD-FEC Integrated Block is not controlled by this driver
+  - Does not support shared LDPC code table wraparound
+
+The device tree entry is described in:
+`linux-xlnx/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt <https://github.com/Xilinx/linux-xlnx/blob/master/Documentation/devicetree/bindings/misc/xlnx%2Csd-fec.txt>`_
+
+
+Modes of Operation
+------------------
+
+The driver works with the SD-FEC core in two modes of operation:
+
+  - Run-time configuration
+  - Programmable Logic (PL) initialization
+
+
+Run-time Configuration
+~~~~~~~~~~~~~~~~~~~~~~
+
+For Run-time configuration the role of driver is to allow the software application to do the following:
+
+	- Load the configuration parameters for either Turbo decode or LDPC encode or decode
+	- Activate the SD-FEC core
+	- Monitor the SD-FEC core for errors
+	- Retrieve the status and configuration of the SD-FEC core
+
+Programmable Logic (PL) Initialization
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+For PL initialization, supporting logic loads configuration parameters for either
+the Turbo decode or LDPC encode or decode.  The role of the driver is to allow
+the software application to do the following:
+
+	- Activate the SD-FEC core
+	- Monitor the SD-FEC core for errors
+	- Retrieve the status and configuration of the SD-FEC core
+
+
+Driver Structure
+================
+
+The driver provides a platform device where the ``probe`` and ``remove``
+operations are provided.
+
+  - probe: Updates configuration register with device-tree entries plus determines the current activate state of the core, for example, is the core bypassed or has the core been started.
+
+
+The driver defines the following driver file operations to provide user
+application interfaces:
+
+  - open: Implements restriction that only a single file descriptor can be open per SD-FEC instance at any time
+  - release: Allows another file descriptor to be open, that is after current file descriptor is closed
+  - poll: Provides a method to monitor for SD-FEC Error events
+  - unlocked_ioctl: Provides the the following ioctl commands that allows the application configure the SD-FEC core:
+
+		- :c:macro:`XSDFEC_START_DEV`
+		- :c:macro:`XSDFEC_STOP_DEV`
+		- :c:macro:`XSDFEC_GET_STATUS`
+		- :c:macro:`XSDFEC_SET_IRQ`
+		- :c:macro:`XSDFEC_SET_TURBO`
+		- :c:macro:`XSDFEC_ADD_LDPC_CODE_PARAMS`
+		- :c:macro:`XSDFEC_GET_CONFIG`
+		- :c:macro:`XSDFEC_SET_ORDER`
+		- :c:macro:`XSDFEC_SET_BYPASS`
+		- :c:macro:`XSDFEC_IS_ACTIVE`
+		- :c:macro:`XSDFEC_CLEAR_STATS`
+		- :c:macro:`XSDFEC_SET_DEFAULT_CONFIG`
+
+
+Driver Usage
+============
+
+
+Overview
+--------
+
+After opening the driver, the user should find out what operations need to be
+performed to configure and activate the SD-FEC core and determine the
+configuration of the driver.
+The following outlines the flow the user should perform:
+
+  - Determine Configuration
+  - Set the order, if not already configured as desired
+  - Set Turbo decode, LPDC encode or decode parameters, depending on how the
+    SD-FEC core is configured plus if the SD-FEC has not been configured for PL
+    initialization
+  - Enable interrupts, if not already enabled
+  - Bypass the SD-FEC core, if required
+  - Start the SD-FEC core if not already started
+  - Get the SD-FEC core status
+  - Monitor for interrupts
+  - Stop the SD-FEC core
+
+
+Note: When monitoring for interrupts if a critical error is detected where a reset is required, the driver will be required to load the default configuration.
+
+
+Determine Configuration
+-----------------------
+
+Determine the configuration of the SD-FEC core by using the ioctl
+:c:macro:`XSDFEC_GET_CONFIG`.
+
+Set the Order
+-------------
+
+Setting the order determines how the order of Blocks can change from input to output.
+
+Setting the order is done by using the ioctl :c:macro:`XSDFEC_SET_ORDER`
+
+Setting the order can only be done if the following restrictions are met:
+
+	- The ``state`` member of struct :c:type:`xsdfec_status <xsdfec_status>` filled by the ioctl :c:macro:`XSDFEC_GET_STATUS` indicates the SD-FEC core has not STARTED
+
+
+Add LDPC Codes
+--------------
+
+The following steps indicate how to add LDPC codes to the SD-FEC core:
+
+	- Use the auto-generated parameters to fill the :c:type:`struct xsdfec_ldpc_params <xsdfec_ldpc_params>` for the desired LDPC code.
+	- Set the SC, QA, and LA table offsets for the LPDC parameters and the parameters in the structure :c:type:`struct xsdfec_ldpc_params <xsdfec_ldpc_params>`
+	- Set the desired Code Id value in the structure :c:type:`struct xsdfec_ldpc_params <xsdfec_ldpc_params>`
+	- Add the LPDC Code Parameters using the ioctl :c:macro:`XSDFEC_ADD_LDPC_CODE_PARAMS`
+	- For the applied LPDC Code Parameter use the function :c:func:`xsdfec_calculate_shared_ldpc_table_entry_size` to calculate the size of shared LPDC code tables. This allows the user to determine the shared table usage so when selecting the table offsets for the next LDPC code parameters unused table areas can be selected.
+	- Repeat for each LDPC code parameter.
+
+Adding LDPC codes can only be done if the following restrictions are met:
+
+	- The ``code`` member of :c:type:`struct xsdfec_config <xsdfec_config>` filled by the ioctl :c:macro:`XSDFEC_GET_CONFIG` indicates the SD-FEC core is configured as LDPC
+	- The ``code_wr_protect`` of :c:type:`struct xsdfec_config <xsdfec_config>` filled by the ioctl :c:macro:`XSDFEC_GET_CONFIG` indicates that write protection is not enabled
+	- The ``state`` member of struct :c:type:`xsdfec_status <xsdfec_status>` filled by the ioctl :c:macro:`XSDFEC_GET_STATUS` indicates the SD-FEC core has not started
+
+Set Turbo Decode
+----------------
+
+Configuring the Turbo decode parameters is done by using the ioctl :c:macro:`XSDFEC_SET_TURBO` using auto-generated parameters to fill the :c:type:`struct xsdfec_turbo <xsdfec_turbo>` for the desired Turbo code.
+
+Adding Turbo decode can only be done if the following restrictions are met:
+
+	- The ``code`` member of :c:type:`struct xsdfec_config <xsdfec_config>` filled by the ioctl :c:macro:`XSDFEC_GET_CONFIG` indicates the SD-FEC core is configured as TURBO
+	- The ``state`` member of struct :c:type:`xsdfec_status <xsdfec_status>` filled by the ioctl :c:macro:`XSDFEC_GET_STATUS` indicates the SD-FEC core has not STARTED
+
+Enable Interrupts
+-----------------
+
+Enabling or disabling interrupts is done by using the ioctl :c:macro:`XSDFEC_SET_IRQ`. The members of the parameter passed, :c:type:`struct xsdfec_irq <xsdfec_irq>`, to the ioctl are used to set and clear different categories of interrupts. The category of interrupt is controlled as following:
+
+  - ``enable_isr`` controls the ``tlast`` interrupts
+  - ``enable_ecc_isr`` controls the ECC interrupts
+
+If the ``code`` member of :c:type:`struct xsdfec_config <xsdfec_config>` filled by the ioctl :c:macro:`XSDFEC_GET_CONFIG` indicates the SD-FEC core is configured as TURBO then the enabling ECC errors is not required.
+
+Bypass the SD-FEC
+-----------------
+
+Bypassing the SD-FEC is done by using the ioctl :c:macro:`XSDFEC_SET_BYPASS`
+
+Bypassing the SD-FEC can only be done if the following restrictions are met:
+
+	- The ``state`` member of :c:type:`struct xsdfec_status <xsdfec_status>` filled by the ioctl :c:macro:`XSDFEC_GET_STATUS` indicates the SD-FEC core has not STARTED
+
+Start the SD-FEC core
+---------------------
+
+Start the SD-FEC core by using the ioctl :c:macro:`XSDFEC_START_DEV`
+
+Get SD-FEC Status
+-----------------
+
+Get the SD-FEC status of the device by using the ioctl :c:macro:`XSDFEC_GET_STATUS`, which will fill the :c:type:`struct xsdfec_status <xsdfec_status>`
+
+Monitor for Interrupts
+----------------------
+
+	- Use the poll system call to monitor for an interrupt. The poll system call waits for an interrupt to wake it up or times out if no interrupt occurs.
+	- On return Poll ``revents`` will indicate whether stats and/or state have been updated
+		- ``POLLPRI`` indicates a critical error and the user should use :c:macro:`XSDFEC_GET_STATUS` and :c:macro:`XSDFEC_GET_STATS` to confirm
+		- ``POLLRDNORM`` indicates a non-critical error has occurred and the user should use  :c:macro:`XSDFEC_GET_STATS` to confirm
+	- Get stats by using the ioctl :c:macro:`XSDFEC_GET_STATS`
+		- For critical error the ``isr_err_count`` or ``uecc_count`` member  of :c:type:`struct xsdfec_stats <xsdfec_stats>` is non-zero
+		- For non-critical errors the ``cecc_count`` member of :c:type:`struct xsdfec_stats <xsdfec_stats>` is non-zero
+	- Get state by using the ioctl :c:macro:`XSDFEC_GET_STATUS`
+		- For a critical error the ``state`` of :c:type:`xsdfec_status <xsdfec_status>` will indicate a Reset Is Required
+	- Clear stats by using the ioctl :c:macro:`XSDFEC_CLEAR_STATS`
+
+If a critical error is detected where a reset is required. The application is required to call the ioctl :c:macro:`XSDFEC_SET_DEFAULT_CONFIG`, after the reset and it is not required to call the ioctl :c:macro:`XSDFEC_STOP_DEV`
+
+Note: Using poll system call prevents busy looping using :c:macro:`XSDFEC_GET_STATS` and :c:macro:`XSDFEC_GET_STATUS`
+
+Stop the SD-FEC Core
+---------------------
+
+Stop the device by using the ioctl :c:macro:`XSDFEC_STOP_DEV`
+
+Set the Default Configuration
+-----------------------------
+
+Load default configuration by using the ioctl :c:macro:`XSDFEC_SET_DEFAULT_CONFIG` to restore the driver.
+
+Limitations
+-----------
+
+Users should not duplicate SD-FEC device file handlers, for example fork() or dup() a process that has a created an SD-FEC file handler.
+
+Driver IOCTLs
+==============
+
+.. c:macro:: XSDFEC_START_DEV
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_START_DEV
+
+.. c:macro:: XSDFEC_STOP_DEV
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_STOP_DEV
+
+.. c:macro:: XSDFEC_GET_STATUS
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_GET_STATUS
+
+.. c:macro:: XSDFEC_SET_IRQ
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_SET_IRQ
+
+.. c:macro:: XSDFEC_SET_TURBO
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_SET_TURBO
+
+.. c:macro:: XSDFEC_ADD_LDPC_CODE_PARAMS
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_ADD_LDPC_CODE_PARAMS
+
+.. c:macro:: XSDFEC_GET_CONFIG
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_GET_CONFIG
+
+.. c:macro:: XSDFEC_SET_ORDER
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_SET_ORDER
+
+.. c:macro:: XSDFEC_SET_BYPASS
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_SET_BYPASS
+
+.. c:macro:: XSDFEC_IS_ACTIVE
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_IS_ACTIVE
+
+.. c:macro:: XSDFEC_CLEAR_STATS
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_CLEAR_STATS
+
+.. c:macro:: XSDFEC_GET_STATS
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_GET_STATS
+
+.. c:macro:: XSDFEC_SET_DEFAULT_CONFIG
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :doc: XSDFEC_SET_DEFAULT_CONFIG
+
+Driver Type Definitions
+=======================
+
+.. kernel-doc:: include/uapi/misc/xilinx_sdfec.h
+   :internal:
\ No newline at end of file
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
