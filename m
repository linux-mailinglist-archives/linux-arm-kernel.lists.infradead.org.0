Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736363A290
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sDXIJQEgzRoyW6N5xsatURKdAthdAfmOR029VxKrXUg=; b=cEWvgu6kdYNdkd
	Yr2r2tn7OV4wRHnaIcih4w3psrL2DLS5lE6WaucluNvfCrKNNUs51iUO1yDGn8anFEsTVX/QQoYwo
	OBa5AqLXLGNUPVanQsUcQE/vy9xUswetynBFXdOiP+MF47aWDUWsqVuL49JmdfzNDpKDlA97OOaMr
	Hq60TKcx6GnHD1sMRUUrX9e3221a+bsVj+UZV66RmJtjm0rD91LiGi4+xOPCjgmKxI8jipaUMYE8B
	PRPSRUWlH4YkpVn69J8J4LbMLsqnGDpEdBb4G259j2BCQiratXbHGvGHkP1Cl8q/hXrdelxwPgBvj
	4DUfF0l6QTZhd5gc51Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlKx-00087A-UI; Sun, 09 Jun 2019 00:05:27 +0000
Received: from mail-eopbgr750077.outbound.protection.outlook.com
 ([40.107.75.77] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK2-0006Y5-FC
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sUiJZfns/jm85hjwk3+pNAmROPmpkrmOcInRJiafUNQ=;
 b=vPfhCTc1Do6QGErV8nRDMBWQSWE61dw1+/sYjvg+Sb12ZIDiyY4Gr92FhmF7tCsMRWURsJ98BShYM45LArXEt1SEMwbfoRYIgIe+HSvQUhVv4+9bVCjRBVdFLVRBiZSROVa2KiBr5s1w72hBJ4Ev2AjNrUBuUdAv7jvv/9edNxc=
Received: from CY4PR02CA0048.namprd02.prod.outlook.com (2603:10b6:903:117::34)
 by CH2PR02MB6229.namprd02.prod.outlook.com (2603:10b6:610:d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Sun, 9 Jun
 2019 00:04:27 +0000
Received: from SN1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by CY4PR02CA0048.outlook.office365.com
 (2603:10b6:903:117::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 SN1NAM02FT053.mail.protection.outlook.com (10.152.72.102) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:26 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 9 Jun 2019 01:04:24 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 9 Jun 2019 01:04:24 +0100
Received: from [149.199.110.15] (port=48046 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hZlJw-0001PN-5I; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 00/12]  misc: xilinx sd-fec drive
Date: Sun, 9 Jun 2019 01:04:05 +0100
Message-ID: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(39860400002)(376002)(2980300002)(54534003)(199004)(189003)(70206006)(14444005)(28376004)(51416003)(26005)(106002)(76130400001)(70586007)(6306002)(7696005)(36756003)(6666004)(356004)(47776003)(9786002)(2201001)(71366001)(60926002)(476003)(126002)(26826003)(44832011)(478600001)(426003)(50226002)(486006)(54906003)(16586007)(110136005)(956004)(966005)(2616005)(7636002)(36906005)(4326008)(8936002)(107886003)(8676002)(50466002)(316002)(48376002)(2906002)(5660300002)(186003)(305945005)(246002)(336012)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6229; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33ebcdcd-bb17-4c0a-735a-08d6ec6e09ad
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:CH2PR02MB6229; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6229:
X-MS-Exchange-PUrlCount: 5
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CH2PR02MB62292F039AAC55899F5DACD8CB120@CH2PR02MB6229.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 7IwgdPpCCJ+OcChI8PM0V+fW7KSGxGLKdP3T7nAi3GaEztEoiXrGt4ya4f56LirY6D9g8TjyjlvwGpYFW9LAfiYDu4/8qtTeA5/vSAdUB3GxeKWcZ63f/gmHnQrXpul97IjGuukpMNBDGsaBvRYlSW+1dzBR+C7P+11APDmbrdI6nEw9e5MMmHOGDqR8r8uIeYRQwzYMeVzgYKVqmDr6VxnRIFjjwocwSaq+cUlJDRkYZeR16oBIatgPrDl4YZsBRXpLGrBoLpjxWC+mhrBTZIU58mRlpqpVJyPqcUiO7T1ggGEMIv1ogRxGNoJ3W/iG1sdHDOO1MZzQsW/4scoK5I73yPa8pcMAAlMVezVn9W7/zmVYwhjL+SkPYuXhd80raFQ4Ze9B2woMiPIqaVx0btaMaNa4eg7fCFXZmBm88A4=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:26.8720 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33ebcdcd-bb17-4c0a-735a-08d6ec6e09ad
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170430_510396_CA9296D1 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.77 listed in list.dnswl.org]
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

This patchset is adding the full Soft Decision Forward Error
Correction (SD-FEC) driver implementation, driver DT binding and
driver documentation.

Forward Error Correction (FEC) codes such as Low Density Parity
Check (LDPC) and turbo codes provide a means to control errors in
data transmissions over unreliable or noisy communication
channels. The SD-FEC Integrated Block is an optimized block for
soft-decision decoding of these codes. Fixed turbo codes are
supported directly, whereas custom and standardized LDPC codes
are supported through the ability to specify the parity check
matrix through an AXI4-Lite bus or using the optional programmable
(PL)-based support logic. For the further information see
https://www.xilinx.com/support/documentation/ip_documentation/
sd_fec/v1_1/pg256-sdfec-integrated-block.pdf

This driver is a platform device driver which supports SDFEC16
(16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
Turbo code decoding. LDPC codes can be specified on
a codeword-by-codeword basis, also a custom LDPC code can be used.

The SD-FEC driver exposes a char device interface and supports
file operations: open(), close(), poll() and ioctl(). The driver
allows only one usage of the device, open() limits the number of
driver instances. The driver also utilize Common Clock Framework
(CCF).

The control and monitoring is supported over ioctl system call.
The features supported by ioctl():
- enable or disable data pipes to/from device
- configure the FEC algorithm parameters
- set the order of data
- provide a control of a SDFEC bypass option
- activates/deactivates SD-FEC
- collect and provide statistical data
- enable/disable interrupt mode

Poll can be utilized to detect errors on IRQ trigger rather than
using looping status and stats ioctl's.

Tested-by: Santhosh Dyavanapally <SDYAVANA@xilinx.com>
Tested by: Punnaiah Choudary Kalluri <punnaia@xilinx.com>
Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Changes V1 -> V2:
- Removed unnecesary comenting from the commit messages.
- Removed error log messages which can be triggered from user space.
- Corrected the SDFEC table end addresses.
- Removed casting between user pointer and kernel pointer.
- Corrected definition of ioctl command code, used a corect type for
size parameters.
- Changes to declarations of IOCTL that pass structures, i.e. do not
use pointers for sizeof as prevents compile time checks
- IOCTL size fix, using a paging to manage a memory. Implemented a big
tables transfer from user to kernel with get_user_pages_fast().
- Removed unnecessary check after container_of.
- Removed not needed ioctl code checkes inside ioctl handler.
- Implemented compat_ioctl.
- Updated reviewer and tester lists.
- Updated documentation, added Limitation chapter related to fork()
and dup().

Link to V1 patch series:
https://lore.kernel.org/lkml/1552997064-432700-1-git-send-email-dragan.cvetic@xilinx.com/

Changes V2 -> V3:
- Corrected a licence in xilinx_sdfec.h changed to uapi licence format.
- Corrected driver variable data types into user space data types.

Link to V2 patch series:
https://lore.kernel.org/lkml/1554804414-206099-1-git-send-email-dragan.cvetic@xilinx.com/

Changes V3 -> V4:
- Migrate to simplier misc driver
- Fix DT example
- Remove helper function
- Remove unused open_count variable
- Remove some logs
- Change log level to dev_dbg in the most logs
- Change spin lock to spin_lock_irqsave/spin_lock_irqrestore
- Correct a licence date in xilinx_sdfec.c
- Add PTR_ERR in clock handling

Link to V3 patch series:
https://lore.kernel.org/lkml/1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com/

Changes V4 -> V5:
- change atomic variables to c type variables
- align spinlock name to better description
- correct a logicla error in LDPC algorithm
- remove log messages
- remove useless if statements
- remove not needed fec_id variable
- squash commit 4 with 6

Link to V4 patch series:
https://lore.kernel.org/lkml/1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com/

Dragan Cvetic (11):
  dt-bindings: xilinx-sdfec: Add SDFEC binding
  misc: xilinx-sdfec: add core driver
  misc: xilinx_sdfec: Add CCF support
  misc: xilinx_sdfec: Store driver config and state
  misc: xilinx_sdfec: Add ability to configure turbo
  misc: xilinx_sdfec: Add ability to configure LDPC
  misc: xilinx_sdfec: Add ability to get/set config
  misc: xilinx_sdfec: Support poll file operation
  misc: xilinx_sdfec: Add stats & status ioctls
  Docs: misc: xilinx_sdfec: Add documentation
  MAINTAINERS: add maintainer for SD-FEC

 .../devicetree/bindings/misc/xlnx,sd-fec.txt       |   58 +
 Documentation/misc-devices/index.rst               |    1 +
 Documentation/misc-devices/xilinx_sdfec.rst        |  291 ++++
 MAINTAINERS                                        |   11 +
 drivers/misc/Kconfig                               |   12 +
 drivers/misc/Makefile                              |    1 +
 drivers/misc/xilinx_sdfec.c                        | 1476 ++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h                   |  448 ++++++
 8 files changed, 2298 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
 create mode 100644 Documentation/misc-devices/xilinx_sdfec.rst
 create mode 100644 drivers/misc/xilinx_sdfec.c
 create mode 100644 include/uapi/misc/xilinx_sdfec.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
