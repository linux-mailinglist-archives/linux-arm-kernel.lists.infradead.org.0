Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A9B49F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JuJAbItLK3W6H6axF9FtKZZsiYrVMWzRdjtaSPq7lw=; b=PwpMrHP3bGXBhx
	Z7WR15UHD8JPhUGyMSptBMgVLXZdTqgLMHKR1IpLgBHuoOsJhvb9D2InlG4THLkiZNcf1lFU/+myH
	AoOVjpWDcRmyN/6LKZ61G17y+sAx/WxNBr2bDf9a/4GrbAgonlEEy3hikE65KEhzuUws+RkvFuvyR
	qQzd7+vyXcpiGPM/qiZEnVLUUNuWfH6llAqx7c/7+pu/U4crS5tEg2xQtRZsy+KL+XMWlqZCEJwF6
	89KGpEp3wje3EHOb+xwpwPOiEDo4p1YJXrVKEXiNF3X/8EFzrtRZjBfK4QEUcbTWkRPdTHOHbrQbS
	odMBmhgRvU4Jn0MXuBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVTv-0003Aa-CS; Sat, 27 Apr 2019 22:07:39 +0000
Received: from mail-eopbgr750059.outbound.protection.outlook.com
 ([40.107.75.59] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRs-0000bY-3Z
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tMJRIynxqQf5thN4/TWKI3rE21V6IP0fJI8MvgSh6wo=;
 b=JSAu+tSSjSvrKmh2hDNr3BCYsiBVb4kzd/xkWRAoUfj5LMhV2VwDtxqbxn1yWQ4mHGXdyos3tkQkNDhnF8IElTuVycBjoav00FqkcSByGjr7jCbN6kI+U2hVf0SwWkPaIUr/9tkN9I3tXC0gqPUGJCJYB2R6NxcDXU2gl8JobuQ=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by CY1PR02MB2012.namprd02.prod.outlook.com
 (2a01:111:e400:c5ab::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1835.12; Sat, 27 Apr
 2019 22:05:27 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 CY1NAM02FT061.mail.protection.outlook.com (10.152.75.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:26 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Apr 2019 23:05:12 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Apr 2019 23:05:12 +0100
Received: from [149.199.110.15] (port=52636 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hKVRY-0002Gu-9c; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 12/12] MAINTAINERS: add maintainer for SD-FEC
Date: Sat, 27 Apr 2019 23:05:06 +0100
Message-ID: <1556402706-176271-13-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(136003)(346002)(2980300002)(189003)(199004)(60926002)(47776003)(186003)(16586007)(956004)(4744005)(106002)(246002)(26005)(336012)(2201001)(70206006)(36906005)(356004)(6666004)(316002)(126002)(71366001)(11346002)(4326008)(70586007)(50466002)(2616005)(36756003)(446003)(426003)(5660300002)(476003)(28376004)(76130400001)(48376002)(93146003)(486006)(44832011)(107886003)(26826003)(9786002)(478600001)(110136005)(305945005)(51416003)(54906003)(7696005)(2906002)(76176011)(8676002)(8936002)(50226002)(7636002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR02MB2012; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e20cd607-37e8-41b5-f30a-08d6cb5c74b9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CY1PR02MB2012; 
X-MS-TrafficTypeDiagnostic: CY1PR02MB2012:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CY1PR02MB201243442047103C90CF09ACCB3F0@CY1PR02MB2012.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: DVPzSicVVO6iyumx9Zx1Ii6y+STx3o27ZSspBBi7VM62wJMELm7al32M5fKLlNt7gPjggnGMAD3lI2ixqGzjxST5mnNgyhxa5zLyDzrD4Yj/0RhgHwMJEykggBS9ip+vb5F/P4nryMC95ZkA/w91QTWcih/aBf6bmW4nY+N/bBgPXPysxj+qDnBw93cUOj43rex1hqfqWj+sXQPEfiS1cD+B3gA02wOFLaVTJSTIrJ+3ZJ26yr6OikFi4xxra0ezCbyvVr0b4xhlZrFplOcsIkqL/8v3Juxz59RYWUBdgKdlCLFA1DCoIc0+U9eux9oWRk20KmaOhCqZi+kpDN+ATvh0lmUjQiVdxXrNJzLF+eQvCDzzk2svKJd0t8BhZBl7Q46Vi9wA0dwN/10l9nznuIYZSMktSuHspoyXJunYMcQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:26.9222 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e20cd607-37e8-41b5-f30a-08d6cb5c74b9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB2012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150532_290884_B9CA7672 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

support

Add maintainer entry for Xilinx SD-FEC driver support.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b8d72ee..14e9335 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17116,6 +17116,18 @@ S:	Supported
 F:	Documentation/filesystems/xfs.txt
 F:	fs/xfs/
 
+XILINX SD-FEC IP CORES
+M:	Derek Kiernan <derek.kiernan@xilinx.com>
+M:	Dragan Cvetic <dragan.cvetic@xilinx.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
+F:	Documentation/misc-devices/xilinx_sdfec.rst
+F:	Documentation/misc-devices/index.rst
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
