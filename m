Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD1114EC07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 12:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c/89R+SiU62X6WS6Ls0Hqknsqsb2MpqVlZN1IwgU/V4=; b=AyfXxo+Oaf+c3d
	vdWrUThfkkBozZGtZQNnqWwN5ARAKzDQVc2Ywa+uA4uX5Q1SxxK/V2zImB0dHFr7zaSqDfe8g61WS
	DcEqgCrWj/EVxca03pBeOR0WrrLaY06doo5Ihuoc50uWjYRXaLSSIJ5medMRKiqucCKy3HZm68X3E
	QjaJUfotLuE6S4LeEFljGqfCymnNqbs6aQGvKZCdnEHVOcuTSZx+sJGjqGyEQz+UdA9zr1iTNBXa/
	ujMtEWuEezMOdser2ngZz5/XEY+7bQPUPnTPnR43C21wnlLe2tSqdW0euX9lCbAq5fChg/6sPIuT8
	/r8ibzWeS7Deti30WPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUpY-0002TV-HR; Fri, 31 Jan 2020 11:51:24 +0000
Received: from mail-eopbgr760047.outbound.protection.outlook.com
 ([40.107.76.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUpQ-0002Sd-2x
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 11:51:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWYLaKuJIwka659sI1Z1Ri+q6LivqXQOswnwNe1LnXS4yPzQ22Gysk+ze51oJhIcH6U4TbDuxbZ8FGkXWNOdDQ8yZUihlbxFPhcv9PxirFm1i8+E2jGYd0U8OCh+bSRv4w3NkvixKbv27KSVl+xmYrBMm4IkCSoFJb5ayHliboD6nRC2qmEzS+2F534qBnFdlHMRjuWndpYXERITocfpBrrcSqaFwu2q+3PPT0Xf4dvA+HoupQna8aSD7u5j1aSYA86GjCft2rHk7rHHGRO4qVY0SzJ7DA8Q6Cid1UIFmwp5y+zWUtL7seQh/DGDFluU4emrRdh3nOzkXJj+g9ItOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m2xrN4uE6dmkEFp3QyWtvgwsddGdWcnSuq6P7Wxey6M=;
 b=RNMOha9vRjUlSopigcBSBBSrhvLasO92umKgos1tYl1nDOeKWV+0QRk65AfC+eQoRzHsp01VGeCT3wmHeQmmOZ9ImL5xAsqPl33YjotKlANI6indZG2WieV3kxPyASniQu1fvgmIwIVVmOszATzIdXN8CJoj7Si1OQS795ss/uas6BZl0k63JbIcG7YqghZZ2sSj2hx8Q06lrr4bQynoIoQySQrGftOt2VGc6BLoiG7Y4PIf8DoGMhpBWidwiShIXNaMB9o3QA3CLCc2cd8+74YaZ+E/FhgFFOS9WhSk9tlum0RUqlBeWk6Dx0RZ0oyAQ5xOkjtq+zSwoWQYGQmydg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m2xrN4uE6dmkEFp3QyWtvgwsddGdWcnSuq6P7Wxey6M=;
 b=eM3hgSIRz0f567XEAGvThLwt+han/KBKOvVVcpYraJCvixKCAVQvZA50ggFR0daf+AYGGfj0TYtRawXavhG5+2UCxWkR/bK9zHOeh/a2GDOJhNr7SI56gQHPLIEzGKWJMnFVFOEI/xujshr9roCXedAgD4MZvsrtIfNBS1n4jS0=
Received: from BL0PR02CA0079.namprd02.prod.outlook.com (2603:10b6:208:51::20)
 by CH2PR02MB6933.namprd02.prod.outlook.com (2603:10b6:610:88::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.26; Fri, 31 Jan
 2020 11:51:14 +0000
Received: from SN1NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by BL0PR02CA0079.outlook.office365.com
 (2603:10b6:208:51::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.29 via Frontend
 Transport; Fri, 31 Jan 2020 11:51:14 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT025.mail.protection.outlook.com (10.152.72.87) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Fri, 31 Jan 2020 11:51:13 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmS-0006bM-0O; Fri, 31 Jan 2020 03:48:12 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmM-0004pl-S0; Fri, 31 Jan 2020 03:48:06 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00VBm5bW012164; 
 Fri, 31 Jan 2020 03:48:05 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmL-0004ok-C2; Fri, 31 Jan 2020 03:48:05 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 83FDEFF8A7; Fri, 31 Jan 2020 17:18:04 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v3 -next 0/4] net: emaclite: support arm64 platform
Date: Fri, 31 Jan 2020 17:17:46 +0530
Message-Id: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--0.125-7.0-31-1
X-imss-scan-details: No--0.125-7.0-31-1;No--0.125-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39850400004)(428003)(249900001)(189003)(199004)(42882007)(5660300002)(4744005)(70586007)(336012)(81166006)(81156014)(6266002)(107886003)(8676002)(70206006)(36756003)(4326008)(26005)(8936002)(2906002)(498600001)(82310400001)(316002)(42186006)(6666004)(356004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6933; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a3f26fc7-00f4-4c22-849e-08d7a643df73
X-MS-TrafficTypeDiagnostic: CH2PR02MB6933:
X-Microsoft-Antispam-PRVS: <CH2PR02MB693373111E4F32C7694C269DD5070@CH2PR02MB6933.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 029976C540
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vcD+GxuiIHL4hXbgYU6TdicBtX7wwffxvbm1Lc/CDjhpuJJduHv/fPt4UCjaiZWUHwyG7Pcrh2d26BqCWOLmHJGgryWMyYG472Ewsct71RS2vktPvb7NVL5x88JDzicwVPM7a2Wdas7Zqa0O2KX5cFB640jg18T5OpVm28gGZQ9XF+n29fWE/z88wMj6wBuAkQPmhsLluOP7/Jq3BMC+mIGRBFfHQVGjoaJbTWncswG9bRYgalXyKBbQSfCmebmktGG3XyZbVOn8R3cykIoIdiHufxbFp6iUc+xWLAGwxR6JpY5nGVhkxSb65G5KSjKN67vJ9b0or5By+Xwc5o5tcr/AoXBjwY22gzL6+OEEF5vdyxpg8SPwe7t1yC4eWvdnQgGw/jfs4w4TdINN5fs+YyuH3Zis2KFzAiDl3KOqVr2QBi801NfDdRy4bcqRAvBU
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2020 11:51:13.7013 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f26fc7-00f4-4c22-849e-08d7a643df73
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6933
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035116_129828_2C433194 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.47 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.6 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: linux-kernel@vger.kernel.org, anirudha.sarangi@xilinx.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, michal.simek@xilinx.com,
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset fixes the checkpatch warning reported in xilinx emaclite
driver. It also remove obsolete arch dependency in kconfig to support
aarch64 platform and fixes related gcc and sparse warnings.

Changes for v3:
- Fix sparse warnings reported by lkp@intel.com in 
  [PATCH net-next v2 2/3] net: emaclite: In kconfig
  remove arch dependencyarch dependency patch.

Changes for v2:
- Modified description of reset_lock spinlock variable.


Michal Simek (1):
  net: emaclite: Fix arm64 compilation warnings

Radhey Shyam Pandey (3):
  net: emaclite: Fix coding style
  net: emaclite: In kconfig remove arch dependency
  net: emaclite: Fix restricted cast warning of sparse

 drivers/net/ethernet/xilinx/Kconfig           |  2 +-
 drivers/net/ethernet/xilinx/xilinx_emaclite.c | 52 +++++++++++++--------------
 2 files changed, 25 insertions(+), 29 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
