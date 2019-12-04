Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3801611383A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9lV0M08QA4E2S+MVqJLy2vlzluAlMCtXzzYfYW/Sess=; b=AfN1IGbXcV8yre
	P+6EZ8wFRGWoOmJu4Xc6MsrZToarteo/mypGjR6pX4CzfjSv5iCxEsk/dqwY1cjqJ5YveQnslViAZ
	f1vf484g7Az1WQmF3biOGpGhrJoraQxCH/Dw/CKHm7nwdZGHrMU336oanjZceN7Ii7gh56GZTGA9E
	+aZhP7O0IR9TGOmNtdmnAYNjp1tTRfwuARO7dC9AWhDi9AcX1tKD6EbKn4NW51KdQcv0eaDiGB30F
	yUMPbgaKOUkatvDq+AnnaHsU+OzeMWIz6YxvWMwljv2avXCxNSE9IVvL9nJ3Hsj6ckJK3VObRRElo
	C43qN1qEHfNw5aRcmQnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice6J-00020C-Tf; Wed, 04 Dec 2019 23:30:31 +0000
Received: from mail-eopbgr760040.outbound.protection.outlook.com
 ([40.107.76.40] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5X-0000DW-0c
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlaun8ZwESX+UFIf8DnsL/5tYV2av/PBIZrf2vI/NgL6h3woB5Fyg7c9W6E1iJD/AeTMI//DI0rdcHiECPxVNcDLAzlsdM07zOYt4f7e5QRs47i+z3roD/IqgAo2JLFCW+m4zam7XKBRnS/lWcnGxve3OQ6Yy4+MbH2UMgf5HH5LTbYeBIUxO6qS+vds3BjjD/Bunzx8kHoqVuWV93adO3X/9hbPNJVJA0vCdmiip6BAA3WPx758Pff2AjzoWtykMLVFF9Sk0zfNrtGYM1o59GUj+WbbrQsfzxqM4y6OaNa5K9znTrlANbE0oSFLyDmIVf4o37wNA/H4J6pu8M2osQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhQRQrRHXJzpymcVqd+6FVQMsZ96gqCd1J96oDRdrnQ=;
 b=Ur8Z8++jEo0PrsYPWloOOcQ1Xeyfz76MOqfzjnpJy+JOkQMfUterjHJyfWY8iriTaqiZCgNBThJjWWPNALpBP3I2wmnX9Pm0aKXtuKS1ifcw9UzI1W+A8IZgikM2ApYGM6xraDdtLA1pJAcrqy82f71Wu2M1YC+Lnwgk6F6FYwtHdKLF55GWUvAHChaJKEDnVE1oh9eDk4IogPpkSqUu5M5HrDd6eR5M1sWvvNygmFkO3+WcLHAT157V0EHf5vjwbiGgPGlXxP+oeoAYeX/sVR3sa5AQqPT4ICz6i4s0MjTM2o2AGalGZMxvLolGap4xGwL6nXqFCqUi4rF5b4oZCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhQRQrRHXJzpymcVqd+6FVQMsZ96gqCd1J96oDRdrnQ=;
 b=fLgMIXm0eXNBfC5RD0y1eHHAqDEqL5JfqvlN01kN/HJHHvmr+3cS/C5fAzPMR+vQpLnx+xtMqMh1IhEg0GDwOYmASauq3HEoIEiAI0bm/HXsHdrJt1QHaw5aVhQTZrBg0/jMvS4JfcfzUAuoKEJoOCqAMUgkggkyy/g+gwKUJAE=
Received: from CH2PR02CA0023.namprd02.prod.outlook.com (2603:10b6:610:4e::33)
 by BY5PR02MB6385.namprd02.prod.outlook.com (2603:10b6:a03:1f5::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12; Wed, 4 Dec
 2019 23:29:36 +0000
Received: from BL2NAM02FT031.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by CH2PR02CA0023.outlook.office365.com
 (2603:10b6:610:4e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT031.mail.protection.outlook.com (10.152.77.173) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5O-0005aC-Qg; Wed, 04 Dec 2019 15:29:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5J-00080R-NV; Wed, 04 Dec 2019 15:29:29 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTR2m004747; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-DS; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 0/5] firmware: xilinx: Add xilinx specific sysfs interface
Date: Wed,  4 Dec 2019 15:29:14 -0800
Message-Id: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(189003)(199004)(51416003)(48376002)(50466002)(2616005)(478600001)(81166006)(81156014)(2906002)(50226002)(9786002)(7416002)(36756003)(70206006)(8676002)(44832011)(426003)(70586007)(26005)(8936002)(5660300002)(356004)(4326008)(336012)(14444005)(316002)(36386004)(16586007)(6636002)(7696005)(4744005)(107886003)(6666004)(186003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6385; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be16e3c5-b1a8-4bd8-7e0b-08d77911d2ec
X-MS-TrafficTypeDiagnostic: BY5PR02MB6385:
X-Microsoft-Antispam-PRVS: <BY5PR02MB638588D9884BA0EC385A249FB85D0@BY5PR02MB6385.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7uPlMiUyZXpDX3fBVcEfPJXBF/zS2YEuRI9eiYyXD7k+0w6BULnN86wJuCjas7ymkxQTH6XVzSNOPAudT41avwccFOuQ0mWuhEcvYFJFVWTOjgsmTIN5WmK4nG2Z1ApRB4EQsf4IqdsioaXj/zyFSzhLMhv/UZFDoLb6XmLYgxFpdmPWwJ8th8nVjkkdcAFeYHXYJ0cdRRHDBFgWDCC6+8+EwxHvTvJN5Zu9YamzuNcBp4HnERFdnvFZH4aZecMvi5HzkVANlfZ4dap32Os7y9zhVoF95lv8lM3JzqhlcxAhFKXuhBLlTKm5IT8+Kx7dppLoqMG07dWTM9mO+IxepLELZiDlww4CCbvHYOS+T9jSK77ZeL2WAqCSJV5TzQBoadlYeCQ1Nbo0NIZ+amsC+WtU9kAyajtXBcLNDDYskno4rL3QArqeq4ZkLrUzdxmI
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:35.4612 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be16e3c5-b1a8-4bd8-7e0b-08d77911d2ec
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6385
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152943_052826_57431B0B 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds xilinx specific sysfs interface for below
purposes:
- Register access
- Set shutdown scope
- Set boot health status bit

Rajan Vaja (5):
  firmware: xilinx: Adds new eemi call for reg access
  firmware: xilinx: Add sysfs interface
  firmware: xilinx: Add system shutdown API interface
  firmware: xilinx: Add sysfs to set shutdown scope
  firmware: xilinx: Add sysfs and IOCTL to set boot health status

 Documentation/ABI/stable/sysfs-firmware-zynqmp | 103 +++++++
 drivers/firmware/xilinx/Makefile               |   2 +-
 drivers/firmware/xilinx/zynqmp-ggs.c           | 289 ++++++++++++++++++
 drivers/firmware/xilinx/zynqmp.c               | 392 +++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h           |  37 ++-
 5 files changed, 821 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/ABI/stable/sysfs-firmware-zynqmp
 create mode 100644 drivers/firmware/xilinx/zynqmp-ggs.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
