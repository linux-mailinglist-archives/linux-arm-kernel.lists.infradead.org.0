Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3043E85C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+3CaZEBZ4zaq66t+OV30H6sVr1T5QmmTia2MF3J5Ois=; b=nfBwxQ92k5M6iZ
	U+IbZEng4KsboS/dhqf59Z+I678UO0rDXb808zG29sb4WVwEVo1dcmLBnadGsKBojlHHgA9VOk4xU
	Hk+Ss/F8VTjnoe1yXIwsrCAjM1si7iWum8yPyFN/p4XjHfZz88t7Bjd6xze0gtUSxoX5JIJShcSJ6
	+0j1V53WVvasPmYR37kvCciOq4zeuLTukJ0mN1dauGVbFS4wYyBsLkt4oYsqBmddvDooYTpU+8Tfp
	2xMVhvI+wiqPi/fTCS7BF0YdWeay24/+Y3gGqYQiFeJsTztKNgzjtjK/draSgylWJiDa1Xl6EUWdf
	Bh32WNbAW7ECy5r8hMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOp5-00023O-27; Tue, 29 Oct 2019 10:33:59 +0000
Received: from mail-eopbgr720082.outbound.protection.outlook.com
 ([40.107.72.82] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOmc-0008Ox-On
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:31:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bl/FGw/t7WuiAuQpBQAKINDSIfg+eVcRLCs0SDPlKi1UKKQYtnWtt/b8QPuR50giHJnGDGuNPkGI8HHLb58IxO2kT3TIXDmduygAFTJo4uF5QDiI46IAherng+e1LqFoeiWQeYxUqrSwQfIpUXvkpjbtLgcn6+kU6VbMAr6dNKhJtNPv5FRA6KUseMDV/9rHY7V6onQQKTeBu5KaO0bocQ3mjeSz0ZMmYE//W25Mbt6CX7DimZnoIuShV76ZxVm+ZLv5oQcKvahamFQ4kcistHfs6U9oQWCq/Axjl19FJO07aQ0dIoqbxb2yENVYEiLTCFea6iclpxmgSf/e9YWjzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8wSs8ysPVsmFKbPmDqQlTIs45+Cp/7XXqOFdW7LxfiU=;
 b=goQ2ErZKa7OaOniUASGJaLH9wXp1YfQ463Z4MerOi715OTcsLTFtIas6SsacKRd8C0OuJfkjUK1pPIAL2kNySLI7nFKVj4M0zNL1uJ/QEfMqAso8+Iesuygpv3P2znaUECTZigxqHabgTY+twNBaME9JQNEd7gfpg2Xw9oDixX1qO0YZ66oUU0r/opv5Tj5IFFMr4hNHLKut6macWg6AgelmMaFJTdIa5K/KaCKMzcACNsOSuwgKwj/bmw4SMWC5vqN6lZ+ArlDzocZVJ+fFMaPv5UXFcnC90FjOZLiUG8QpGhDJJvUl4eXuwjWrkP66Ir1UxYjNsqHpa/yQ3eVf0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8wSs8ysPVsmFKbPmDqQlTIs45+Cp/7XXqOFdW7LxfiU=;
 b=J7/IPHqAGswLJ4PrfW8uXS2GzN+WksvyEgR7I8BdV8wqB70gfzDlDE9d2g2DNMbxevWwuF6Piu6htf2HpJY4OSCKnHNEsJzzZL/HsnPl4jd6cGqHPsxgfzToeplfpCnTbnaejypUFw261yh30DYqHXw+cRBiIagTW6p/0XKq57o=
Received: from MN2PR02CA0033.namprd02.prod.outlook.com (2603:10b6:208:fc::46)
 by CY4PR0201MB3492.namprd02.prod.outlook.com (2603:10b6:910:95::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17; Tue, 29 Oct
 2019 10:31:23 +0000
Received: from SN1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by MN2PR02CA0033.outlook.office365.com
 (2603:10b6:208:fc::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2387.22 via Frontend
 Transport; Tue, 29 Oct 2019 10:31:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT057.mail.protection.outlook.com (10.152.73.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Tue, 29 Oct 2019 10:31:22 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOmY-0002ul-47; Tue, 29 Oct 2019 03:31:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOmS-000667-VR; Tue, 29 Oct 2019 03:31:17 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOmN-00062u-AV; Tue, 29 Oct 2019 03:31:11 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 988A6121744; Tue, 29 Oct 2019 16:01:10 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Date: Tue, 29 Oct 2019 16:01:06 +0530
Message-Id: <1572345066-101293-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(26005)(51416003)(478600001)(8676002)(16586007)(81156014)(81166006)(42186006)(106002)(8936002)(50226002)(316002)(36386004)(103686004)(48376002)(36756003)(47776003)(50466002)(2906002)(107886003)(356004)(6666004)(14444005)(4326008)(336012)(6266002)(70586007)(70206006)(44832011)(486006)(2616005)(186003)(126002)(5660300002)(476003)(426003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0201MB3492; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 748214f6-5d6e-4ba8-3ca5-08d75c5b24d8
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3492:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB34924E65C7740127FDBC4A19C1610@CY4PR0201MB3492.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HgjdF34bPhbpvbQcqyg/SGc+5FJSVDZwX3R9zzLT/0lmCrujWpcMEhybvE9934GnDXPrz5cbesDB26p+/YgvFPzcZwPQLpMRBExyR4QkNf21mw037gMhywik7V4gv9Sptl0sCL7PefcbVS2Q3T+ETgnNj/H+6Ryam+yqEqXm+7JdFcPZFpLVOTyVjAfU3MHm9pd4DHRsn4jVhGgPZtPrbyuiuwG8bfQxsVhFyAr4O7KQVhYfGfeVesR2Cdq3lrwKsRGXcxHQMFSeGyOqzyKdb3d2UZ2Lw73mctmXqhNMSeUqRn3+DcvJwVZUiEBQGNuDdCF0HsLK8s3joEOXF9sK4w9ftqvyMFSTnhVUTshyyr2ZeINiS0sSUfOJxRKFf9qXKK6ZnLujxUBFq3kq9cU6C0K+mjvZSupFWpKrXh0EsVFYMwj+o+Iuyxmule+se8La
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:31:22.5014 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 748214f6-5d6e-4ba8-3ca5-08d75c5b24d8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3492
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033126_871133_8A16A319 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
 - Reorganize the Clock Handling in Arasan SD driver
 - Adds new sampling clock in Arasan SD driver
 - Adds support to set Clock Delays in SD Arasan Driver
 - Add SDIO Tap Delay handling in ZynqMP firmware driver
 - Add support for ZynqMP Tap Delays setting in Arasan SD driver

Changes in v2:
	- Replaced the deprecated calls to clock framework APIs
	- Added support for dev_clk_get() call to work for SD card clock
	- Separated the clock data struct
	- Fragmented the patch series in smaller patches to make it more
	  readable

Changes in v3:
	- Reverted "Replaced the deprecated calls to clock framework APIs"
	- Removed devm_clk_get() call which was added in v2

Changes in v4:
	- Made the Phase Delay properties Arasan specific

Manish Narani (8):
  mmc: sdhci-of-arasan: Separate out clk related data to another
    structure
  dt-bindings: mmc: arasan: Update Documentation for the input clock
  mmc: sdhci-of-arasan: Add sampling clock for a phy to use
  dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
  mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
  firmware: xilinx: Add SDIO Tap Delay nodes
  dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
  mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup

 .../devicetree/bindings/mmc/arasan,sdhci.txt  |  41 +-
 drivers/mmc/host/sdhci-of-arasan.c            | 477 +++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h          |  13 +-
 3 files changed, 499 insertions(+), 32 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
