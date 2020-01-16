Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB7713DBA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AQtK1nYfGDG+pPaisFyyqUK7DX7hnoMvKxwD2eHgEPc=; b=XqpVADnwKVhSLw
	1mXkHts8fD3IQBtaF970KTj/wWcojLe19aoTRMc1ds2251qGxvHydj6d1tAfemt8tVNWi7OEp2Iqj
	TFaac7J+gDNzYph3WRdBjXTuO4qwWt8qMl19rZE4G+b0emQt+fItQbMQdJOyRph3zW5XtC5qNnQLx
	WLQ1VvcifytllHvgaqS4KtQKTnbaUOWvGMreOL2PbmIviQ7dgU2h4GsFrIuO50AmvIPKw8x8wUgQN
	lRun9uY9hzlRf6UIQMY6HBJmr5FSkkSbzV5UFvdTqb4Yt6chVL9AI/56QpbSAiKgBiw285Uwfj2ly
	PCvxNEr9Kj/WPuGkf+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5BK-00085g-U0; Thu, 16 Jan 2020 13:27:30 +0000
Received: from mail-mw2nam10on2060.outbound.protection.outlook.com
 ([40.107.94.60] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5B7-000848-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZFvWmazx0Ev1sZPg5kK5JvHhiTBndnAghTSQHZvcmK/jyhKZYrLxl9Ap+5wjamkcl7Jp9g0H0D/lFPkX1uFhQYSc3hXHjwJdaqmWmLkx8ig5EspeXDGS0vp4ok0Mk3TRVK2rPayCocyppcE46aR1hsrY1zg8KuaCZBRp9AgulkWULZnLBGLntYVQu+pBxO+ujOdCTW/s3dxgp/CLEUytxtVI8evd2IuOHDHYBJmRQvtR0sKAWFq2vR3DSdlBR5NnfuMk6y6FcjOL844R/9ifohK398Wy97DgJwjHKG6FIs/4JQsRnVbPMjfGAlKFc8pziNRgMSyBSxij6MwckjAfdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xOFiJenkkPvdJjT556c1Lnq7mLt8qLf6IJQ5lnLH9Sc=;
 b=fyZwz3CFPL8WyDi0eqsVbPmeW0MbeKHN0Nk8qFFDeN9BkYhjRJ6ZUBZ0ltmHUh38k2jdr/RPw9ewCg1nbAXdpCUcqbfrPJhmw7FlJHFalWb80MDN7jHxlYagEvYvZvl4YSQi3VpUrsTxTj7MYAqMbzLXKfObkNwCjfAuxZ7xrYLRE3K8zviG1ZXe3bYQp1cvRHwYXDR+VmI/+p6SqH+cfZgX4ZvFMdPKH89JF621h0Yvy4C8CgExCe64PIym/nUR8VnsKdDyVWkX5qH2OAsZqNffg6Gkt4ZFNeojuVOaRAMi5eN8Xkc9nbeARSDjvvh1pHXAq8MwMPgTQscnhvL6qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xOFiJenkkPvdJjT556c1Lnq7mLt8qLf6IJQ5lnLH9Sc=;
 b=XvBsvju59YWwAK5fwezthmCHuHGzgMJEIYjNRgTH9DX0KHIIH04lCjtr+FaJGRMzEzrVBJUaQHIldSLfmOpWH0qpbT7TF89wKIGnopB9AQcHrONgqCZbpv4cFnhWSOMiyBm4vYfcdxO9q+/jaIWl+OwNTV2GVFI2m5DeZWvk4qo=
Received: from MWHPR02CA0008.namprd02.prod.outlook.com (2603:10b6:300:4b::18)
 by BL0PR02MB5585.namprd02.prod.outlook.com (2603:10b6:208:8f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19; Thu, 16 Jan
 2020 13:27:13 +0000
Received: from SN1NAM02FT037.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::205) by MWHPR02CA0008.outlook.office365.com
 (2603:10b6:300:4b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:12 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT037.mail.protection.outlook.com (10.152.72.89) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2644.19
 via Frontend Transport; Thu, 16 Jan 2020 13:27:12 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B2-0005v0-64; Thu, 16 Jan 2020 05:27:12 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5As-000190-Fs; Thu, 16 Jan 2020 05:27:02 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDR0xw015625; 
 Thu, 16 Jan 2020 05:27:01 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5Aq-00018J-At; Thu, 16 Jan 2020 05:27:00 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 0/9] watchdog: of_xilinx_wdt: Update on watchdog driver
Date: Thu, 16 Jan 2020 18:56:48 +0530
Message-Id: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(396003)(39860400002)(189003)(199004)(478600001)(356004)(8936002)(6666004)(9786002)(70206006)(336012)(5660300002)(44832011)(70586007)(426003)(6636002)(81166006)(36756003)(2616005)(81156014)(107886003)(2906002)(4326008)(26005)(186003)(316002)(8676002)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5585; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30e2a37b-8ddb-474b-8320-08d79a87cbce
X-MS-TrafficTypeDiagnostic: BL0PR02MB5585:
X-Microsoft-Antispam-PRVS: <BL0PR02MB558511F7419BE150C0E85E0BAF360@BL0PR02MB5585.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tHHbrjbfwGBzZqJD+jopiXMwQIME7m701mv+7zHi8DCX4gSd3z/XNMKLvYRMYGfRG/EF/E94xaeL4fRxh1FTY7yAdSKNJcIEw+aTcO75FF9NAz6PJcKljnUhGO6edZonOcLV1KfY/SLy+FAfItguPmLM7edJ/xoPCXUWxftKBMvokbSV7eZn2xrJXJoNWLy9HwC2PiC3Rp6QtHZoLjwPKUJcIFPKZsbuOKto7CovRm+RJRWWdVqP7aoUhXkgJj50MYrUdAI0HoY9gmeokrdJerfzL8drqZ0murKEpcB+/wsJZag9TCeoXle/ryS4kXr0zzutc3eqmOW5UNUOwh5HOAqp+Bw4a4Cg1NvR07CtwH1iuY+srxyMpixZP12x27/65wpJ1uB/xj9R+KZo9U/IRGzM5hHEfBH+kgVVkaMYA93yqo+pMM7wNc2Sx+3VWmvd
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:12.5664 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e2a37b-8ddb-474b-8320-08d79a87cbce
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5585
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052717_690810_19ACD421 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.60 listed in list.dnswl.org]
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
- Add comment to spinlock
- Use BIT macro
- Use dev_dbg()
- Initialize watchdog via data structure
- Introduce wdttype enum for identification
- Add binding for versal watchdog
- Add versal support
- wire setting up timeout via module parameter/DT
- Skip printing pointer value

Srinivas Goud (6):
  watchdog: of_xilinx_wdt: Add comment to spinlock
  watchdog: of_xilinx_wdt: Used BIT macro
  watchdog: of_xilinx_wdt: Used dev_dbg()
  dt-bindings: watchdog: xilinx: Add binding for Versal watchdog
  watchdog: of_xilinx_wdt: Add Versal support
  watchdog: of_xilinx_wdt: Wire setting up timeout via module
    parameter/DT

Srinivas Neeli (3):
  watchdog: of_xilinx_wdt: Initialize watchdog via data structure
  watchdog: of_xilinx_wdt: Introduce wdttype enum for identification
  watchdog: of_xilinx_wdt: Skip printing pointer value

 .../devicetree/bindings/watchdog/of-xilinx-wdt.txt |  21 +-
 drivers/watchdog/of_xilinx_wdt.c                   | 301 ++++++++++++++++++---
 2 files changed, 275 insertions(+), 47 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
