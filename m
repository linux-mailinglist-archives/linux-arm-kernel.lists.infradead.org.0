Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D610412AC1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hAOq+9Kd6pSVA2xIB1k7IMtEyKtwHuebCnp6Zdvg8Eg=; b=oxFwirYMjMl0Nw
	u+WJSGIg46fjG+xihz3ZE3lj7NsfsIppKP3tM4uBRS7u6xo3iUe59UEBsrybH8UwTYNYIBp85yhi7
	pijT9IjTbuCRNio/kStgZglCl8MiN/ij3T+9SxGO0aebrNNSaBEY+Ieewqz82RhO2f+FST5Oida/G
	du+mdp4yvgJmaC6FXlEI5yzhhNJRWt+2NdyurDmUm87dVjIk6CHvYv8WU+DGBJDzeDctyYSKav2Fy
	dOBXKyhWS32Chw6GnBEasxDZJNHn4tvQSs92UaE95BONsultD6rIHyYRWruJYhccqMpOV5/ki/y0w
	Nr0GFAfcVJjaDzfk5kdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikS0h-0004xZ-EE; Thu, 26 Dec 2019 12:12:59 +0000
Received: from mail-eopbgr690069.outbound.protection.outlook.com
 ([40.107.69.69] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikS0P-0004wP-Pv
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:12:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QBxcQMWRr3IsZTGtSTalGavh5+mDWas4dlz05YQ7lSNn83qYMXNQOfmm4inMnXALTGjUMSxynGTS50nm1TAfPIuXviAdaQra40IxqmAMGsCk1wUQKkiF5P45M7TahQYAkQuTmoth3UE1lCtfJEKq/TR9Sj2/pnC+ftYYjPkG5UdHeZZglS2sW6tX23B6obHRqqbl4eAqqbspaQnVIx3Ft7F2ptIddF5lmiyXwpDAkJNjZczybicL3nmv8OHiY8W2KDlkuHVgYaEYje5EY43tEPlSdZNcNk/m6fOWcpj+iGNtrNiQdO6daFceOBSlEhpyJ02xD25CRE750P66iHBrfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1oPiLVamnefxhyesG2/3jGnz3Q+VN0LGN2xPn/xxcI=;
 b=WGneDCJ/CDJRwK0DisIPZy3LAAYoRLeAAE4G8xEOZ+ltEH6tsQqeRlW/0dc8mlwRuGz5Ld8AXqgkIkMmQWJZ8H8g3+i+EByT6g+0eRWyKAOnl6wQRovX0LuNKsd9JqXFrbwRoHywQhrd1rzgtDfMGSr5totait9n90QDUfATQShol3wCFRQyQ237T/P/yaVLW1rAQIaj2nUOeatox8vagR65gGXzInX4cCO5gBSmMuQbOG51lscfBfMnc50+8Pan28nr5pR1YSQlHVruD3IAgvpFIm703mf8q03MJkHL/uKXDSNcQPytubAwPBYvETe8Hb5DjdJCe9BEhGlxmFfcNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1oPiLVamnefxhyesG2/3jGnz3Q+VN0LGN2xPn/xxcI=;
 b=qsrinHptMCknfYMbCPxlQ3dSpEBvNVO95/qQ6HEiseUuBG/kT+PMEQAi6ETjPY0/6rr+GYNL0UQ1aGEozonJNrs0+Ajh1ELuTVwTQsXruVQULMIScHL3y7JbIvt+o3whJ+hdSwTY6kdhKOw+IhdnHnwDKeWnXhKCHgSpkbeixR8=
Received: from DM6PR02CA0109.namprd02.prod.outlook.com (2603:10b6:5:1b4::11)
 by BYAPR02MB4726.namprd02.prod.outlook.com (2603:10b6:a03:52::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.12; Thu, 26 Dec
 2019 12:12:37 +0000
Received: from SN1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by DM6PR02CA0109.outlook.office365.com
 (2603:10b6:5:1b4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 12:12:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT038.mail.protection.outlook.com (10.152.72.69) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Thu, 26 Dec 2019 12:12:37 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0K-0003JU-Im; Thu, 26 Dec 2019 04:12:36 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0F-0007wQ-FC; Thu, 26 Dec 2019 04:12:31 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBQCCLHJ022975; 
 Thu, 26 Dec 2019 04:12:21 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS04-0007v9-RO; Thu, 26 Dec 2019 04:12:21 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH 0/8] gpio: zynq: Update on gpio-zynq driver
Date: Thu, 26 Dec 2019 17:42:10 +0530
Message-Id: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(376002)(346002)(39850400004)(189003)(199004)(81156014)(81166006)(4744005)(426003)(6636002)(36756003)(107886003)(8676002)(4326008)(336012)(9786002)(8936002)(2616005)(5660300002)(44832011)(7696005)(478600001)(186003)(26005)(70206006)(356004)(316002)(6666004)(2906002)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4726; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e157141a-d62a-43f3-caa3-08d789fce57d
X-MS-TrafficTypeDiagnostic: BYAPR02MB4726:
X-Microsoft-Antispam-PRVS: <BYAPR02MB472649F61321611CE221A303AF2B0@BYAPR02MB4726.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 02638D901B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vs3r9y2k6y7SFo2r81TxvL7WM2hA5uygF+MfLmhG1KiUqdvV3XoXUQ2vGB5+A9jd3WXuN4zjzQEPbuhXf5auK67KgapAsISHbRwrqudZcUyt2E5TvkRouVoY1QbUeBLUgWK5UfnnH6ocMSkWSVxAgfDsGfqVCb4QCMAcLm5W89VxHLasvtCTPGFmYEnpYRbZ+pLl6UZHMY8NxN78R/oE06E/dy9O4Ro931onDfZGTRi8AgduvCPiAQBVOVvaJwRiGDqA40LWOQtGO4PY2FZvYzTXELpRL1IPzDp9viHHGcfuA3+8aTyIzpJMWoyuGONeqQ+S1yu4eNpX5AcQf840o2+kEYgT3hftUB++RoK6vjDXOrCxPs65nvQEwuGRJ3V5CNws477GDT8SVHZfvA2U4EZjH4bqAMrSKbJoaxXQS1cm1zuYI3wrPd+hExybgx4l
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2019 12:12:37.0093 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e157141a-d62a-43f3-caa3-08d789fce57d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_041241_836903_C3D77F6D 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.69 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
-Fix a bug in zynq_gpio_restore_context API
-protect direction in/out with a spinlock
-Add binding for Versal gpio
-Add binding for pmc gpio node
-Add Versal support
-Disable the irq if it is not a wakeup source
-Add pmc gpio support
-Remove error prints in EPROBE_DEFER


Glenn Langedock (1):
  gpio: zynq: protect direction in/out with a spinlock

Shubhrajyoti Datta (6):
  dt-bindings: gpio: Add binding for Versal gpio
  devicetree-binding: Add pmc gpio node
  gpio: zynq: Add Versal support
  gpio: zynq: Disable the irq if it is not a wakeup source
  gpio: zynq: Add pmc gpio support
  gpio: zynq: Remove error prints in EPROBE_DEFER

Swapna Manupati (1):
  gpio: zynq: Fix for bug in zynq_gpio_restore_context API

 .../devicetree/bindings/gpio/gpio-zynq.txt         |  4 +-
 drivers/gpio/gpio-zynq.c                           | 74 ++++++++++++++++++++--
 2 files changed, 72 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
