Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83B22A42B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7x3DqsPYeJ35IRkOGJh5aLJXlwY6TgAqETXKdZVe0ao=; b=PLv2XWYeKPq80J
	z0vzCgBt9y0wZUz+rhqh89udT8NvI8csqTs7vgCifV0shb1F9YnVatASD/OcU2Okvj2gCBqzzW5XT
	ACL0i5hyeWJhpgyxKEQ5McRb33ZJ39kBoMl6fYhkaLSgQ8XT6gnSGGsfmfpq7Obvvpk9gASjBkSiM
	l620l4z8uCNDEJ0vS78PtlMwpZ/Ts/EzrftvE8nVHX03LtAZmYjIThUgWP5mBv7E7uhFxxJEiYKtm
	O8SiJqdhElNnetjSQoGHM6jfz9WF64ZEEBmaSpd2jSpXvQ3WRQVX2ABhG4ZmT7GqwFMI2hDan67DP
	jI5WJgJLg0qHVmVBZfTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV1k-0003zj-W6; Sat, 25 May 2019 11:39:53 +0000
Received: from mail-eopbgr710064.outbound.protection.outlook.com
 ([40.107.71.64] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzr-0001Up-8I
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4hjqJyf9U47Y9Mq3PANrHJbeTaLRGGAiKMEfWT1UBvM=;
 b=o6lz4sv15RmAw/9GoAfqcReqUQzpjCpapx2j9pwf0Sj5M1lBbEv3pW/ERAYtbq/B5gVL8Sws2JMy0FGqjJDF/E7bURD+VLKG7Vks3LGaQfzlRN+o9qh4zIKDU7b09Y8Tjbb73Z5LrekejcYGhiX5cZA80QVudZxenCYfCJ4e14c=
Received: from CY4PR02CA0002.namprd02.prod.outlook.com (2603:10b6:903:18::12)
 by BN6PR02MB2673.namprd02.prod.outlook.com (2603:10b6:404:fd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.16; Sat, 25 May
 2019 11:37:48 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by CY4PR02CA0002.outlook.office365.com
 (2603:10b6:903:18::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.17 via Frontend
 Transport; Sat, 25 May 2019 11:37:47 +0000
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
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:47 +0000
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
 id 1hUUzW-00058U-S8; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 12/12] MAINTAINERS: add maintainer for SD-FEC
Date: Sat, 25 May 2019 12:37:25 +0100
Message-ID: <1558784245-108751-13-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(136003)(39860400002)(376002)(346002)(396003)(2980300002)(199004)(189003)(36756003)(50226002)(486006)(50466002)(28376004)(7696005)(9786002)(51416003)(356004)(76176011)(8676002)(54906003)(2906002)(36906005)(106002)(16586007)(4326008)(76130400001)(8936002)(110136005)(316002)(6666004)(26826003)(478600001)(5660300002)(4744005)(70206006)(107886003)(26005)(44832011)(246002)(336012)(2201001)(60926002)(71366001)(126002)(186003)(7636002)(956004)(446003)(48376002)(70586007)(476003)(426003)(305945005)(11346002)(47776003)(2616005)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2673; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a833c740-0cc2-4f7a-911e-08d6e105694b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BN6PR02MB2673; 
X-MS-TrafficTypeDiagnostic: BN6PR02MB2673:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BN6PR02MB2673A287139FE155DA2DD7CCCB030@BN6PR02MB2673.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 1CCc9GSr/WXwhCM2gfGORLl6Srzz0Z7pO3GiQEt+O3OxSkWECC/U46iPv2Muu+0Q4JLwY8vzWK+YQ4kOmXv3OvYDf/qi/ikkEiZQMkWJ7P+HSllvgkVY3+gZ19Kn8j6OiBCsRfSGSZvrYeruGyCOAM9tz7EcZ1SuG9IbTxlXN5JW+N7UQvgqDc4qI2N5h9h+ff8fGb0E5LkZ1AHgMKo8Yeky2uwHbwu8GV6hYWWFHR67Qnl2/ivZNygtH7rAJgMs1LlMtoWMuohCB6GPk/cJCgCBEXLzuWXoYCFJd1pQTcv2kCplN0Ncf3zzZzSZdQHqqbaASsQUVren+vLiGiX3Q6+NPMkV4hnAsYXwH3wTFPVPK6AiAbbTv7wmLZx6l6wEqnUDd91eGmIoJnSYLh/TPkc55ZGyunYvsXPypvxZOxU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:47.3415 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a833c740-0cc2-4f7a-911e-08d6e105694b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043756_045353_3455CD22 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.64 listed in list.dnswl.org]
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

support

Add maintainer entry for Xilinx SD-FEC driver support.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4..6e558ae 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17345,6 +17345,18 @@ S:	Supported
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
