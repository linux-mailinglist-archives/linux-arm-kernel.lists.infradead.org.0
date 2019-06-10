Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CD83B662
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4Iy3LXVvsJ1+Sd0V2XTf1ZeISdRCMR2Xsq4f2Jw5Qo=; b=TQC8ek03JVyInC
	N4XOhYLr12CKAXcOChnMP9UzXcAR3jixSH8VKVYW9tKOvL0FOrexldpJJxDkhn+VjrXVntp+ojnen
	kn5v9rwQXid3/L7i0DbKdExQ1ps7lARbth8Rc7L/pfVic9tGIMZaJ7eXEKToxTQLMor9kvE8GC6Fs
	CEGeTGBf4Qq6Ov0luxDfcOD3rrnoK+JAToN8ek/i9DT/9+NR8GQ7qYy1W0OZOJ6ygXqZ0RcKbNap+
	Ss62N0ddnvIHWqv4ITfFRjqULV+Zh0gX+7Tpik0vvYGFPKbko/YfUSqOzrdnpMpSraZDGrH+8y5Mn
	PmIH6hHz2Ir2KEjwTyyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKfC-00077J-0V; Mon, 10 Jun 2019 13:48:42 +0000
Received: from mail-cys01nam02on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::619]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKcH-0004b0-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:45:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9W8ol28YE2CqSuPc/m8fmI/Wka8vmjamOSybBa3E8U=;
 b=Tja+z6uiL1QkSJsDbK0BDG1jlNd2K9C4OIYu/nw8KjUAshRTrk/MzU7uyCFEVgeI/J1WRDhdcf1ZHwdTWTZCRQQnp2onEELBo+SLLFP3TmuHqNvE1/xEQ3YTNUxLf7g4Xe2APGp5UiGNm+7zLMVM1XjiGXsuGBQTIMNnyoYgv7Q=
Received: from BN7PR02CA0034.namprd02.prod.outlook.com (2603:10b6:408:20::47)
 by DM6PR02MB4940.namprd02.prod.outlook.com (2603:10b6:5:11::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Mon, 10 Jun
 2019 13:45:39 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by BN7PR02CA0034.outlook.office365.com
 (2603:10b6:408:20::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.14 via Frontend
 Transport; Mon, 10 Jun 2019 13:45:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Mon, 10 Jun 2019 13:45:38 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Mon, 10 Jun 2019 14:45:31 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Mon, 10 Jun 2019 14:45:31 +0100
Received: from [149.199.110.15] (port=49286 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1haKc7-00074r-Ic; Mon, 10 Jun 2019 14:45:31 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V6 11/11] MAINTAINERS: add maintainer for SD-FEC
Date: Mon, 10 Jun 2019 14:45:14 +0100
Message-ID: <1560174314-124649-12-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560174314-124649-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560174314-124649-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(396003)(346002)(2980300002)(199004)(189003)(26826003)(107886003)(50226002)(8936002)(478600001)(8676002)(246002)(70206006)(70586007)(76130400001)(26005)(446003)(110136005)(2201001)(305945005)(7636002)(4326008)(426003)(11346002)(106002)(2906002)(44832011)(71366001)(60926002)(54906003)(476003)(2616005)(956004)(486006)(126002)(186003)(336012)(47776003)(36756003)(356004)(6666004)(48376002)(50466002)(28376004)(4744005)(76176011)(16586007)(36906005)(316002)(7696005)(9786002)(5660300002)(51416003)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4940; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 116e6343-3b84-4856-c0d6-08d6eda9ec8d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB4940; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4940:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB4940BE8E37B91074326DB072CB130@DM6PR02MB4940.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0064B3273C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: RndKSi/INkUNZbTBAoapDx7NCLMmlpTdYT0Z9cugUbvLc/Rld8SLWQTtvZ7P8eVuD2tjTYP4WB0gSnESVdZt2BpxCOG+EhJT02/U/nfx/CqTYgkjVdHJTaqJs03AsqIXxaDa3Wji7ttDvn8Dgo5ZwgwbVXYp759qYUUm+egDGuW89N5hTXCvOPps523/iSnEW07Yrws//NanJyBZJt4l4P2nKZTScar5fgMmPnHf47qjt9NfeZJVgTyggz4qui+AcNbtxMmCKx78kyQ55awKHxn+JwzM49sXxuKMX4RytOAPusXK0x9O9/OrCSSoKThd57ocFbYyOYXCVVsJ4UeK32MW16gzIVMDy+YkbxDxhllYl+G9pRZS4PuKByScOR/oGCceL1551OR/+6XFOl/49GObS405Oz+3r8j0qiDH0kA=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2019 13:45:38.7407 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 116e6343-3b84-4856-c0d6-08d6eda9ec8d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4940
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_064541_686847_8566E597 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:619 listed in]
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

support

Add maintainer entry for Xilinx SD-FEC driver support.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index bfe48cb..2b754a8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17345,6 +17345,17 @@ S:	Supported
 F:	Documentation/filesystems/xfs.txt
 F:	fs/xfs/
 
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
 XILINX AXI ETHERNET DRIVER
 M:	Anirudha Sarangi <anirudh@xilinx.com>
 M:	John Linn <John.Linn@xilinx.com>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
