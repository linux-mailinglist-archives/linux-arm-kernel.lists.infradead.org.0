Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BA161211
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8RnyJkY7yrU+0G55FQzGWKxfSn8fuC1m7XzWwQtnd0w=; b=OKpu5wuEVqcAXx
	lgx3AkIfnnfFPXETm8zGf7px7Mb8Vc3n4XMIf8xURK7nNYBARVmkTwJeXxwb/xicHfX1U3hVPZ5wn
	hSU/P1hYXZ+OtuHrsP9yn5X8XYMTPC6Giu1Q4ICCpx4utybgW2YwcpByWZ0xPyyljK3Pbxy+eWbj5
	/OTHr/IG61gLEDF0GGGSdqqh1YCanELRthqNzrjwe3yRBhEvGXSNv0I/9lPtP4De10tRgzM0XmYVL
	Xco2KI9Bx7sMbQpvyS7hsji71AW502kDpqdsTC9gKy/5WLMRyKFXUfqLkwO0o4fVykGnNtqPmVA2G
	snU8o5pUVa6lR1dAupeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3far-0000NV-1f; Mon, 17 Feb 2020 12:33:45 +0000
Received: from mail-bn8nam11on20618.outbound.protection.outlook.com
 ([2a01:111:f400:7eae::618]
 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3faf-0000ML-2L
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:33:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+TKrg33cd3kqjYe4pTdfGbqJPJJFsdV9PX7MBP3PqRCVFZdF6XRh2vIizLKk2oun240pQfmV2OqG5F+/LmzUjBqL4A0AgUHEp16PiLYWkRCvxj/cHQvKprgUUPeJXv91QDgIonflculgnuzn9blD6x7lE1LfgIetMcTkVNiVpBtvAJ1oBwptI/XTE5UzJaslvc13Zi7x2mZvtI2xAaaTynzRv9A19l2d8SMqbyIOFwBlfqB7IFllAB76hXvXLFCzwxwEYI3DydSJugsU8wg4cK2n5tH9rDJddY8Q55c43CIrNLbDGkE2RDsQgWLzr1Z7V6O1XXCavrw8bY2jfWjOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXHU+hd6mL9wRmSW/j4buXv4HtUc8Ii9PabzwNKK1+w=;
 b=HmydgbG7//6pg4pS0fxQKDHR7EZB5ROSLMWeGhAy4nG1gnnJuor6YSeOcY0vJHS2rDWB+JwbjkeLANnReC8xzYFtTrTIoEb08zsyK3d4Fhuu/VrvAkgEvNXNTmac5awZ6ADjqOg/Vll9XBaWH2X85VqOsx2x65I51DMPkMFyjtrndXOxbVdaUGWtNQ+kSILXeE4LAwIovviOqivlCoJbWSkEFvKKOYCCTvLUS/8gDD5gKXgimMHYtY++tr4z9q/TWsA2FsrSNhh3/238vltDzi6JBrPYr931vKUdjRq/MyGRWuaiKsbgiCzR9WzCl5tV1hssnZMwfMGjfOY6+BJ8Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vXHU+hd6mL9wRmSW/j4buXv4HtUc8Ii9PabzwNKK1+w=;
 b=Lvw5CC6pGWClAwI6FrV8bn1PvhphHl3u/wedzc5kSN+6pEiurCpRhlDmH3WOq0ufmbiIMgM+43vFrFs7S5hfxadU9coXDmrxlzGjGyX9AREZvII8VpQ2wnsshP4cPaN+PY2WDU6kpbhN/Kn3i5tlAwkwUnqJSXTRUUQjSVsM3ls=
Received: from MWHPR02CA0021.namprd02.prod.outlook.com (2603:10b6:300:4b::31)
 by CY4PR02MB2613.namprd02.prod.outlook.com (2603:10b6:903:71::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Mon, 17 Feb
 2020 12:33:28 +0000
Received: from BL2NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by MWHPR02CA0021.outlook.office365.com
 (2603:10b6:300:4b::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.24 via Frontend
 Transport; Mon, 17 Feb 2020 12:33:27 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT040.mail.protection.outlook.com (10.152.77.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Mon, 17 Feb 2020 12:33:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3faY-0000SD-Nz; Mon, 17 Feb 2020 04:33:26 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3faT-0001vY-Kx; Mon, 17 Feb 2020 04:33:21 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01HCXHce025810; 
 Mon, 17 Feb 2020 04:33:17 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3faO-0001uE-GL; Mon, 17 Feb 2020 04:33:16 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V3 0/7] gpio: zynq: Update on gpio-zynq driver
Date: Mon, 17 Feb 2020 18:03:06 +0530
Message-Id: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(199004)(189003)(6666004)(356004)(478600001)(9786002)(70206006)(70586007)(36756003)(15650500001)(107886003)(186003)(6636002)(8676002)(81156014)(81166006)(8936002)(2906002)(7696005)(26005)(4326008)(426003)(44832011)(5660300002)(2616005)(316002)(336012)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2613; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb251c8b-71c2-4a85-7b6d-08d7b3a596ad
X-MS-TrafficTypeDiagnostic: CY4PR02MB2613:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2613D6FB612AED7FBEF87786AF160@CY4PR02MB2613.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 0316567485
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +lBl6SW/emhQuWKh3mpGmo3ILg1gstlHmKFNQwTaMUQ3RRvFO5eoi64VVAJF9BbVzmB48iiyLMNzwjghXatVOcuehC/DQorx3GHfRMWg1SI4oahUHqM6nzKGUOIrNeCV/Q3PlJipnvoffs999CLJTEqNtkRn7SRmt2CZMeOCnbyRvVOCADtP3QSwoeWXRdZN8FfiFHpuAvT53M7+itvKVKOKDXw1r6iZTBmGBWfZ3ix2k2Y1vo481w7oLMDNp4S460mp9efZbpoeF4pHxI6ReRVhLWWPhFjK4bM/AUPOvWtMTd5Urg1fwKkVj8JH60EWOnf2CZS/VR9i9XsP6YLmogP9TsjTpdv30EmxF4Wtdvk4yRFoOcsVik3fl4nd44lX/SXsv3ZR09dPE/XvFiE/bDRQAMSNsAetfC5jh1OzOOjYvdB7dBNbacwSiSpPj9HqdAEmCQisGcO7QLkYFIgPglJQL2L8fygepx/m5TIGjVSiEXyJnAR4G29JaCli/lni
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 12:33:27.3400 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bb251c8b-71c2-4a85-7b6d-08d7b3a596ad
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2613
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043333_109874_F8DCFD28 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
-protect direction in/out with a spinlock
-Add binding for Versal gpio
-Add binding for pmc gpio node
-Add Versal support
-Disable the irq if it is not a wakeup source
-Add pmc gpio support
-Remove error prints in EPROBE_DEFER

---
Changes in V2:
- In previous series [PATCH 1/8] already applied on "linux-next".
- Fixed checkpatch warning for spinlock description. 
- Added description for Versal PS_GPIO and PMC_GPIO.
Changes in V3:
- Updated commit description for PATCH 4 and 6.
---

Glenn Langedock (1):
  gpio: zynq: protect direction in/out with a spinlock

Shubhrajyoti Datta (6):
  dt-bindings: gpio: Add binding for Versal gpio
  devicetree-binding: Add pmc gpio node
  gpio: zynq: Add Versal support
  gpio: zynq: Disable the irq if it is not a wakeup source
  gpio: zynq: Add pmc gpio support
  gpio: zynq: Remove error prints in EPROBE_DEFER

 .../devicetree/bindings/gpio/gpio-zynq.txt         |  4 +-
 drivers/gpio/gpio-zynq.c                           | 66 +++++++++++++++++++++-
 2 files changed, 67 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
