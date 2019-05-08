Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A391917803
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tyXTfXZaSW8Xa9GCdP8sbSH8FM7l/eZfP1OurlxKIk=; b=kajsUpf9aQCD5m
	cA3zTYsYX23ttZShMxbF2abKSg1Y29p+UdR6OSZVfuPgeMmEjA8VhvCvFngWft1Xrz7IngITk7Gp1
	/UlE0iMLApiNcogZY4kOQ1ZPuDLGnOp+nmy09j57Ebq97hIkwFDq+4HjXnE3VEXb1N1sMgGt54fqY
	JtQUEJSll72sUl70rQGX4WS3yoXtzoLh2XAYeOwMRiuCyliz+jq6MoD75LIi7l+JY+akKWf6OV0mh
	/A3dPEYKpl4EgeRDPiqk7QKOW2HbbTxUcZgEacFwoOWPHbHmzzmEVhr08WCstkGoMANDYhECw5Pku
	y7YlVZzmqfmRCUDubfqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKpj-0004Er-7Q; Wed, 08 May 2019 11:33:59 +0000
Received: from mail-eopbgr710064.outbound.protection.outlook.com
 ([40.107.71.64] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKmM-0000E7-I8; Wed, 08 May 2019 11:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u5hQTyFwHo/VxRdFALVMYiR+QOhFLU+yQ1fnnnSWX8Q=;
 b=Z7XBk7n5vKKBDgXCP897D+5V1Y0FLQdRTDHnUWULRUnoOrwQ2xkh9EzaEl0pwQeruiqUJOD9GIv3hXLd9F5aq1UqHCVFSPaWFY19RldYDESvUrqGCU74eR8dJ/StDdxc+q9DTKHUAlBb+h9/h5TGntoeFTD9ZXAJpweCEH/OhDc=
Received: from CY4PR03CA0081.namprd03.prod.outlook.com (2603:10b6:910:4d::22)
 by CO2PR03MB2264.namprd03.prod.outlook.com (2603:10b6:102:b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Wed, 8 May
 2019 11:30:25 +0000
Received: from CY1NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::206) by CY4PR03CA0081.outlook.office365.com
 (2603:10b6:910:4d::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 11:30:25 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 CY1NAM02FT033.mail.protection.outlook.com (10.152.75.179) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:30:23 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x48BUNwe023807
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:30:23 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:30:22 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <linux-ide@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-pm@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-omap@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-usb@vger.kernel.org>,
 <kvm@vger.kernel.org>, <linux-fbdev@vger.kernel.org>,
 <linux-mtd@lists.infradead.org>, <cgroups@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-security-module@vger.kernel.org>,
 <linux-integrity@vger.kernel.org>, <alsa-devel@alsa-project.org>
Subject: [PATCH 12/16] rdmacg: use new match_string() helper/macro
Date: Wed, 8 May 2019 14:28:38 +0300
Message-ID: <20190508112842.11654-14-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508112842.11654-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(39860400002)(396003)(346002)(376002)(136003)(2980300002)(199004)(189003)(7636002)(316002)(106002)(4326008)(50466002)(126002)(2616005)(486006)(48376002)(478600001)(36756003)(54906003)(476003)(186003)(110136005)(11346002)(107886003)(16586007)(77096007)(426003)(51416003)(7696005)(76176011)(4744005)(47776003)(305945005)(44832011)(446003)(336012)(70206006)(1076003)(70586007)(14444005)(8676002)(86362001)(7416002)(53416004)(246002)(356004)(6666004)(2441003)(2201001)(50226002)(2906002)(5660300002)(26005)(8936002)(921003)(1121003)(2101003)(83996005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CO2PR03MB2264; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ea226c7-d664-4182-eb25-08d6d3a890b6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CO2PR03MB2264; 
X-MS-TrafficTypeDiagnostic: CO2PR03MB2264:
X-Microsoft-Antispam-PRVS: <CO2PR03MB2264CA36634DECF7B647076FF9320@CO2PR03MB2264.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:883;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 9+T9KOQ5N1uqSNzRRgplR6sHTKQb7qlY+DBPxxdCSaJYco/p4QFiyK/dDR0hB1IOFmQXuX5mxyj18B28K6d93VjxihCj+rCmQnGHG+YCO6GrqNFnq/R+gtspHAUOD35K6bnQr18zajdkHnsgf+QKRbi3AQukLYK3xBiqqryjbGYGjjRlCqPYQrzhbT+v7t96Pxm0FHxoT7kykMNu+1w4N2KbrJMgDpMtY1XAHVueHSW/1Hrp3kOm+CFYWu5LQ+2t5MTCEOfBhm2wbNLLQTpoyj0DhQHzLCeF6FRFDnPnJNhXTBEOEJdYK6LFjoWOnt1QNXc3j/TxDqk5WgHs+pPuEg7e3rtTvXcq/rVdNvuTndv5eIO1qBO51WfXuWrhJnCT8Sl23SmiUZfSUI8Vpzk+y9G/FLbIygwUT4rW+hoQ81g=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:30:23.9644 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ea226c7-d664-4182-eb25-08d6d3a890b6
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR03MB2264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_043030_871747_65E72B63 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: gregkh@linuxfoundation.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The `rdmacg_resource_names` array is a static array of strings.
Using match_string() (which computes the array size via ARRAY_SIZE())
is possible.

The change is mostly cosmetic.
No functionality change.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 kernel/cgroup/rdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/cgroup/rdma.c b/kernel/cgroup/rdma.c
index 65d4df148603..71c3d305bd1f 100644
--- a/kernel/cgroup/rdma.c
+++ b/kernel/cgroup/rdma.c
@@ -367,7 +367,7 @@ static int parse_resource(char *c, int *intval)
 	if (!name || !value)
 		return -EINVAL;
 
-	i = __match_string(rdmacg_resource_names, RDMACG_RESOURCE_MAX, name);
+	i = match_string(rdmacg_resource_names, name);
 	if (i < 0)
 		return i;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
