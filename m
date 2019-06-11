Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7DE3D434
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ox+2LvhA1kPLWVTmAGbJPRq0SI8fPJxH/MZk93doYRk=; b=ZCKsjI9wfDKGbm
	3Mg7/+C/g1KuZksqEn2boNSG4zDRn35UegwfwNtlS0edVOnrTPzwv+CVqD9aMKmjLMNdbRpsNgeZE
	+rvRCLbzzqnVmd0VEt6mV/TmbVPLEli6X3JKHBIY0GZvfsbV8Xze4rZsstwmf4XeyxAP9u63b3Gj1
	mbgYbAfltMH0+NqkVyDGnK/AzuMKgTvZdzDe2SmOAC2kXIORN5DR1ZOKBwsfE/tjetU5urf1j8fTv
	/OIjkVaedrpeSmf6hW6Pj0XscbwQts7/pLkWP0hJ0hoACrpTUZ595VtjLexDHsVt4IKysT0PpVbvj
	a4EO2UaFzv6/J10cJYbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakc0-00006U-VL; Tue, 11 Jun 2019 17:31:09 +0000
Received: from mail-eopbgr700078.outbound.protection.outlook.com
 ([40.107.70.78] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakap-0006gV-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DqP+Z9XGiyJYY/FubOBjc7rK1Xg2and/BaFlgFZYcA=;
 b=BP/JzHHSUCJpCcwn2vztfEfuQ/OVqSYPidXFCjA9qV3Nks/5TSNUEqxhNC9uI0whFSyloLLP0h/UJyMFZA1WhFPiTyy3hf3JKhJaZHJeC/DTAoxJAXVOpwqTfkuxzP2flOiFQgu2C2m/taECWuhbvejsOG/kAlQuz5wcjq1bcuk=
Received: from BN6PR02CA0089.namprd02.prod.outlook.com (2603:10b6:405:60::30)
 by DM6PR02MB4937.namprd02.prod.outlook.com (2603:10b6:5:11::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14; Tue, 11 Jun
 2019 17:29:53 +0000
Received: from BL2NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BN6PR02CA0089.outlook.office365.com
 (2603:10b6:405:60::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Tue, 11 Jun 2019 17:29:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT035.mail.protection.outlook.com (10.152.77.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Tue, 11 Jun 2019 17:29:52 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Tue, 11 Jun 2019 18:29:48 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Tue, 11 Jun 2019 18:29:48 +0100
Received: from [149.199.110.15] (port=50346 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hakai-0002MF-KF; Tue, 11 Jun 2019 18:29:48 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V7 00/11] misc: xilinx sd-fec drive
Date: Tue, 11 Jun 2019 18:29:34 +0100
Message-ID: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(39860400002)(2980300002)(199004)(189003)(54534003)(8676002)(305945005)(246002)(356004)(50466002)(76130400001)(478600001)(36906005)(14444005)(106002)(126002)(316002)(110136005)(54906003)(956004)(28376004)(16586007)(486006)(2906002)(47776003)(2201001)(71366001)(107886003)(2616005)(476003)(44832011)(60926002)(4326008)(186003)(426003)(966005)(70586007)(336012)(6666004)(26005)(8936002)(70206006)(26826003)(36756003)(48376002)(7696005)(6306002)(51416003)(50226002)(7636002)(9786002)(5660300002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4937; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 537b90fe-5ed4-4146-ca51-08d6ee9269a9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB4937; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4937:
X-MS-Exchange-PUrlCount: 7
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB4937991249DA04555CDCFBE1CBED0@DM6PR02MB4937.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-Forefront-PRVS: 006546F32A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 4IB/cFTabnBDxwCgjV7vMhVs1InEwxOSQhVG1bqMqEj+d9TcOmTh1CSgzROHsP5qq1XKYzglMYAExtnQs0vQM6+rGO0++BqDfAfkkcsO9W9z8FC8KJmidqlJqRNZSWaUOVWz37lBhCBy3NiHcol8EpLyf5Uv9e50VL5gvFamJnwv5qoToIraBzVXm+Q1MSRlB75TlURQWmkG9oq0wyib8XP0w1ygV/Rlfe5Mgle5giAG7kvYnwPs1vAVRS+gDmsIAtmp7zqwf7+4wBYXYcXGw2Ivy80wGFoQ3yQRqDPALds9on6ufkNcPxDna8zjwq/JbTGNLpjmEVuSjd68bhijrrgnA2MevbUXF8l0+YaHWsyPgz68KmhKXmS+X4S5f4xIkB4/JW5c6ZA2v+rf+cA27gWRMrV9ATDA8zhau1C9ndw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2019 17:29:52.3263 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 537b90fe-5ed4-4146-ca51-08d6ee9269a9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_102955_387826_A2F24DD1 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.78 listed in list.dnswl.org]
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

Changes V5 -> V6:
- the kernle/user space variables convert enums to __u32
- put device ID under IDR

Link to V5 patch series:
https://lore.kernel.org/lkml/1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com/

Changes V6 -> V7:
- Fix maintainers list

Link to V6 patch series:
https://lore.kernel.org/lkml/1560174314-124649-1-git-send-email-dragan.cvetic@xilinx.com/

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
 MAINTAINERS                                        |    9 +
 drivers/misc/Kconfig                               |   12 +
 drivers/misc/Makefile                              |    1 +
 drivers/misc/xilinx_sdfec.c                        | 1516 ++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h                   |  448 ++++++
 8 files changed, 2336 insertions(+)
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
