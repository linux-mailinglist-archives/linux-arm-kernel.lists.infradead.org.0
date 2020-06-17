Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36001FCC79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wcO88lmWTXzn4OawdeTH4Z2yI5dmNfNlPC1xD580Aqw=; b=C23B7Kd8u0NH7j
	b/qnKcD8eZJjBWcywiFK1BuBV6MsF9tWOAD5W7C5aMXpWr3Hc0e8uyxsqNERKQLBTzQOmdoVKQn+p
	HsSKWtDgTDlNatmqDSBTbBYrbq1y3ETRR+sytfDpt/uYdY7HCa/cWFTCQ4czFgHOxPtwq1Azt/a2t
	sJYmf60tGu0zu77+PnlPUlu23Ll7wh2GxLrBOx55K9jRG1wjfoa8NxyPkJLAc8BdwSvP4uj5/1XZr
	eG1nUM0isYPjIYG2a6PyJ1l9ISalZm3BVPJjFigyDTg4Foiq0Et8e0oOiOHre7yIrmC/RjtWcks25
	YvlL7KaqjiKXzEw7n9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWOZ-0001Ez-03; Wed, 17 Jun 2020 11:38:19 +0000
Received: from mail-bn7nam10on2063.outbound.protection.outlook.com
 ([40.107.92.63] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWNz-0000zP-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:37:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UT3LVo6mh+1OnWbVEo3OU3ef1lq3YhrziyRzM6V95PBiS8kv/xckuasQsRgw1qDmuozt+EhBuugjKsGpAaTja7aA9u4tEAmZ/T3nljvajtsEqaIJBckidJSQGmrXryjl9irxDP4cGtcrN8rEZC9XGYAzKrwMFRUFsZkEAfOuSAjEUAX/6l99Mo2CAuOwurf1QGxdyKw/Tvxm82JvocgMzjWtKb67pEIW4o9mvdQiCAs8ly+6UHeIVd6trotBEw/u1Dcdc9j5QljcrC0CB7E5lVcaXEUvqvF1vO+0sv64k6c/JvENl6nV3zcZ2v0C9oiK7KJ24IM3o0kMD94o+AlG5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kCLDLDK8GNAsRPQHb48AEdaj6H8+DPmwV6z5eKEpG6I=;
 b=MwqPHBw5hAvITH8EMiUfdhWND8bbgAbM/6R+A+A8nyADOesnLPZsCn+MzyinatoHo0r5r0Yq9bDJEKsePEjFcbMUNT6iGpizJtiqR7G4xO9Pe4kJNqkCb5ts+tlAYdjb4LHwb49MR9/pOmd0m0U9DDLwrhWMRG0BUFwTBo4W4dtp5KrqszovH/PJzsHqBz8MYywE0+b+HuHGA4rMrL7uuCRdqSaqaeyIS2AgVFbkiz8CTwZviRozSK3Ldr35eVKaWwSPumMYHvPw45YpVMauyHC61QenMDOvTGFMKCdckefh8ymAUrA+6qxNS87NyIMdcqnioLaciCgdAWEpQ7FvcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kCLDLDK8GNAsRPQHb48AEdaj6H8+DPmwV6z5eKEpG6I=;
 b=NapejguyG9tMc6I6yjXuUOuTDs3cNIb8vR0LNjCvV8OOH0Stc1ACaTjusY3x/08scuIENXUgrRGd+bkkn8eZCs2Xm1tCdrESnN/h6T6ZT/2CL3d+EWO4woGtWur7vG3YBf6rsURbCxX5khwrYFjNCp9xLo23S13q/FRHSzdZIks=
Received: from SN4PR0701CA0014.namprd07.prod.outlook.com
 (2603:10b6:803:28::24) by BYAPR02MB4264.namprd02.prod.outlook.com
 (2603:10b6:a03:16::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.25; Wed, 17 Jun
 2020 11:37:40 +0000
Received: from SN1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:28:cafe::c1) by SN4PR0701CA0014.outlook.office365.com
 (2603:10b6:803:28::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21 via Frontend
 Transport; Wed, 17 Jun 2020 11:37:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT059.mail.protection.outlook.com (10.152.72.177) with Microsoft SMTP
 Server id 15.20.3088.18 via Frontend Transport; Wed, 17 Jun 2020 11:37:39
 +0000
Received: from [149.199.38.66] (port=36024 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWMt-0001HX-5l; Wed, 17 Jun 2020 04:36:35 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWNv-0007Wp-Fz; Wed, 17 Jun 2020 04:37:39 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 05HBbUYo032503; 
 Wed, 17 Jun 2020 04:37:31 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1jlWNm-0007TR-FN; Wed, 17 Jun 2020 04:37:30 -0700
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
Subject: [PATCH V4 0/7] gpio: zynq: Update on gpio-zynq driver
Date: Wed, 17 Jun 2020 17:07:20 +0530
Message-Id: <1592393847-1415-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(136003)(346002)(39860400002)(46966005)(83380400001)(316002)(81166007)(47076004)(8936002)(107886003)(26005)(8676002)(82740400003)(9786002)(478600001)(186003)(336012)(426003)(82310400002)(7696005)(4326008)(5660300002)(356005)(70206006)(70586007)(44832011)(15650500001)(36756003)(2616005)(2906002)(6636002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: c8bb0dac-2164-4458-89c0-08d812b2d745
X-MS-TrafficTypeDiagnostic: BYAPR02MB4264:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4264DA3FE3428B6CE535CBD9AF9A0@BYAPR02MB4264.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +NxA606+esr0jqu+cZUech+mIMOIXjlheTV/P4iCUv2hABu87LIUEya+l4j2bu+/m9yyXIpGKC5qnhN4ODVd1BRrWmmwyoZMAwJyYl9p59K8/gU5ChkF3d881gdxXqEDCrxl1Ik40MXv/rbjzX9HxOtXcyVwj8gNMTuKeghSQ0XZIBf+vuXrrijSHkEpGqSyaPivmtFGzu8IN2/ye+pLhM/L8pFrL9UB7QzBYyXz4HvnqT9fADh7cry5Z9OaT2HRsz8W9ojwhJKQbm9yd/W3V6wvdoFpnNrqs0f5l5/3Of+VgzeWPoqpevU9wzi82B3Gc+0SSvw19jtKfCSidf+6xLzdLzD8vXkCZnii0pFIUXsgawj1bNwzwXOXMH8H0nKpGDzI03x3X2sesYwdw8rCrg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 11:37:39.7982 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8bb0dac-2164-4458-89c0-08d812b2d745
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043743_377925_9BE14423 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.63 listed in wl.mailspike.net]
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
Changes in V4:
- Updated commit description for PATCH 2 and 3.
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
