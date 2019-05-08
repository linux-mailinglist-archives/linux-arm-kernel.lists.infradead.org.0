Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6C61779E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWRsQWGLaA334Q49NE2MZnGQxn3FlzHQ3aR0KcM+kXs=; b=qQL2wi7No15ami
	YYiN5IER1F+zdy3XemS9EQzV5iQfIUhZ4Dd+f4I6PRUwl2LbfLk13DVzmbcZ3tGW9PePo/SlqCw3o
	JqG9QJDBYJdnnqBYTPeaajwwpzaADR6N60YfzhsC3q1gQ85LLTLreDrSq/nt8gBR/jpI36IG2J/A7
	FeqW34EZjVoVo+pGHLIvyYVoy6R/vNkI5E/gG8LwzRVCIZHL/LdPAQcQSLSGq2f9rkUtGDNCV8XOi
	Ul9U5etr3vRku5vkZ3ev8QaYXIrKZHy4RCyVAwh42tPkML/v9J5QEzFGsyTTTm3YD/rmhPFBD90tK
	CS9haMy8ZbsRu3Q5rvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKoA-0002H8-7J; Wed, 08 May 2019 11:32:22 +0000
Received: from mail-eopbgr810051.outbound.protection.outlook.com
 ([40.107.81.51] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKlm-0006Of-MJ; Wed, 08 May 2019 11:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+Io6nQDgXXj6vWzapFXKhuWEwCuQ7uYG1o8foVltUs=;
 b=OsAPAAdKA72ag6WEgtGuMxKaWxQ0gZIzCPsuAtgnnj/oFA0fbDHMGodRBcRefG9XbOE2g+Aq3eXHAUOgRsxbe9OUern7w4ZEKU1MFVRM944jQ4MmmTvJjEX5JVN0ZStKQwnZjTEaE6iWfqxBEGLRi5kjF9g1i+IhSA13dB4Oi0w=
Received: from BN6PR03CA0015.namprd03.prod.outlook.com (2603:10b6:404:23::25)
 by SN2PR03MB2270.namprd03.prod.outlook.com (2603:10b6:804:d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.10; Wed, 8 May
 2019 11:29:43 +0000
Received: from CY1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by BN6PR03CA0015.outlook.office365.com
 (2603:10b6:404:23::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1878.21 via Frontend
 Transport; Wed, 8 May 2019 11:29:43 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT047.mail.protection.outlook.com (10.152.74.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:29:41 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x48BTenk017131
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:29:40 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:29:39 -0400
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
Subject: [PATCH 04/16] powerpc/xmon: use new match_string() helper/macro
Date: Wed, 8 May 2019 14:28:30 +0300
Message-ID: <20190508112842.11654-6-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508112842.11654-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(136003)(346002)(39860400002)(396003)(376002)(2980300002)(199004)(189003)(76176011)(7696005)(356004)(6666004)(70206006)(51416003)(316002)(7416002)(2201001)(305945005)(7636002)(107886003)(48376002)(47776003)(110136005)(16586007)(4326008)(2906002)(54906003)(53416004)(106002)(11346002)(446003)(14444005)(36756003)(478600001)(2441003)(186003)(486006)(50226002)(126002)(2616005)(476003)(86362001)(70586007)(50466002)(336012)(8936002)(5660300002)(1076003)(4744005)(426003)(77096007)(26005)(44832011)(246002)(8676002)(921003)(83996005)(1121003)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN2PR03MB2270; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfbd6645-f3e1-49b6-1450-08d6d3a8774c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:SN2PR03MB2270; 
X-MS-TrafficTypeDiagnostic: SN2PR03MB2270:
X-Microsoft-Antispam-PRVS: <SN2PR03MB22702A36CFFB4F24671124AEF9320@SN2PR03MB2270.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: KBaFP+VndcR4Pf2Avf8+W37sHaN8ZZJBBrWfHnFJ8l4xSH7jQGBdDEcnqagJMKs/oHbr9oYooJZUU4xkacMNv18LLG29wwpx6s6jnKluGmQRA4ewJoO4MJMNLnrj+iEP9+WvVm59vBhxTahQbM7N1ZvL80PXwnLkgR8siCzsyJn5Q9X+sxi8zBFAfc3hej5rkB8PZzkxpkMenJqsj2UIckP4SpNwF+OwyJqZITPx+vJWrk9s+k2seUKSvdSE3UyHHJZZuFbdM83NjlN0sSgLj3ONDOP7mfDlxwMMTiSqV4jdRLFHtNH5oVVbb9KCyE8DTMthgbJCPwDGxxN7b7yMODPWnGCw87W2rP6OrHNOLedXGqVbjL3JmBd48mSrS51VpGb77n/hBi2fRQlG4kD6/k+SqAT2KWOmnMUL3fQ2Hos=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:29:41.2805 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbd6645-f3e1-49b6-1450-08d6d3a8774c
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_042955_005341_36106972 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.51 listed in list.dnswl.org]
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

The change is purely cosmetic at this point in time, but it does highlight
the change done in lib/string.c for match_string().

Particularly for this change, if a regname is removed (replaced with NULL)
in the list, the match_string() helper will continue until the end of the
array and ignore the NULL.
This would technically allow for "reserved" regs, though here it's not the
case.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 arch/powerpc/xmon/xmon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/xmon/xmon.c b/arch/powerpc/xmon/xmon.c
index efca104ac0cb..b84a7fc1112b 100644
--- a/arch/powerpc/xmon/xmon.c
+++ b/arch/powerpc/xmon/xmon.c
@@ -3231,7 +3231,7 @@ scanhex(unsigned long *vp)
 			regname[i] = c;
 		}
 		regname[i] = 0;
-		i = __match_string(regnames, N_PTREGS, regname);
+		i = match_string(regnames, regname);
 		if (i < 0) {
 			printf("invalid register name '%%%s'\n", regname);
 			return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
