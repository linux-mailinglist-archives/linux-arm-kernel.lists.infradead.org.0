Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AE81785F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A3QYK/WwtcxAfX0wLj9Gfjc5uc6riVwHsMyiF3GlVU=; b=YHbRm0oDivTt9b
	Eb6N77KSWF4HhMasLUagAT0awhN9LKv3awXYRxWzyDkpVs2NQht8QkC3bUnRhUjoYf3JhPWEzJNzg
	ZDy/fr5f5VV90vNp2fdyx7unz+aTuTkuY1Z+rTLgAZCyiszCOLNTyWOU5eBVYiayEz1eNo0XLJ2La
	uhkPJuo41SsmOIzsXGb8wMUDl5o5eIcD0gv9qgXmnLOSvceewKQFSAh6VpMAUG18pdUQbZiHmq4vq
	Yq7QtEnDo3Djz/moB4nuPa7s5wSJlU4e6xJUimLMb/Qx0O7++Ck9mciA1iWKbDUBB4lbclo8sSIzK
	ZXyrfLBr5yHEd1//i2pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKr1-0006BE-5I; Wed, 08 May 2019 11:35:19 +0000
Received: from mail-eopbgr820052.outbound.protection.outlook.com
 ([40.107.82.52] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKmk-00080n-P7; Wed, 08 May 2019 11:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ANUS/cN4JJVZq6SdOb8BTq0Q8zTyuGFxo7xS+ekZas=;
 b=YAlgegs92dk0EBLrPaSAvAEoW+a6ILmnKzEUjwH9tQEsaafIGj/Jbgvg9FfspO4AAB0mHpi+xLxqThyb3jNrDhjwFUrYCAkX4mmKxh0huvawVaQ4qJsf1twnbtqNI/QY/ocFBuZ92YZHpWBwOZalU5NYJYyYwmli40Iiko9jix8=
Received: from CY4PR03CA0076.namprd03.prod.outlook.com (2603:10b6:910:4d::17)
 by CO2PR03MB2262.namprd03.prod.outlook.com (2603:10b6:102:e::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Wed, 8 May
 2019 11:30:19 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by CY4PR03CA0076.outlook.office365.com
 (2603:10b6:910:4d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 11:30:19 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT047.mail.protection.outlook.com (10.152.72.201) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:30:17 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x48BUHp9023779
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:30:17 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:30:16 -0400
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
Subject: [PATCH 11/16] mm/vmpressure.c: use new match_string() helper/macro
Date: Wed, 8 May 2019 14:28:37 +0300
Message-ID: <20190508112842.11654-13-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508112842.11654-1-alexandru.ardelean@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(396003)(39860400002)(376002)(346002)(136003)(2980300002)(189003)(199004)(356004)(6666004)(36756003)(5660300002)(50466002)(48376002)(2616005)(126002)(426003)(336012)(107886003)(51416003)(44832011)(2906002)(47776003)(486006)(2201001)(4326008)(476003)(11346002)(446003)(86362001)(76176011)(26005)(16586007)(246002)(478600001)(2441003)(50226002)(53416004)(1076003)(7696005)(70586007)(70206006)(7636002)(305945005)(7416002)(106002)(77096007)(8676002)(316002)(186003)(110136005)(8936002)(54906003)(921003)(83996005)(1121003)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CO2PR03MB2262; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87f72335-9c22-4180-441e-08d6d3a88cc2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CO2PR03MB2262; 
X-MS-TrafficTypeDiagnostic: CO2PR03MB2262:
X-Microsoft-Antispam-PRVS: <CO2PR03MB2262607B10DB5D9F45A5FAD9F9320@CO2PR03MB2262.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: cnstcSk43+prC/nm0NIlQdVDAfOh8/lZSDEOLvPEWx6u5KaV9jPZl9EcFSH7WaASPwU7+fdDNsMvmlMxhDycs0yr3rd1AFhXDzBVzxhZSOvQ0xiWbSJP7dlM8vH2TA9hrPVkJAY/nJnB9TCO/kJZeFl+F9dkyaNWFKv6+gGPtbDKP5qaktyy9MdiyFHMAJyFPoHyy/awX/7gkUHD4/3KRzk12qCmpUyAH54x75Oxy55ICCRLv533XeQ9CiOTbWpa0gaiE1ymmb3TG31mccB9fGyxe87ONr3LPKarJ/n+0poagb0PJccPHE4Tq8ZMRC89HSguBdFMiCV4kVY2RQiJIJyZ1CpB25EFDyiTdXH7OMkWGVU/rGH+WzIi/AJdCh70xavIYa8Ih81ru3cAAfjVLrgfn3Gcz3OTbKTZVQoCtp4=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:30:17.8821 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87f72335-9c22-4180-441e-08d6d3a88cc2
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR03MB2262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_043055_164046_D9A9C4B4 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.52 listed in list.dnswl.org]
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

__match_string() is called on 2 static array of strings in this file. For
this reason, the conversion to the new match_string() macro/helper, was
done in this separate commit.

Using the new match_string() helper is mostly a cosmetic change (at this
point in time). The sizes of the arrays will be computed automatically,
which would only help if they ever get expanded.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 mm/vmpressure.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/vmpressure.c b/mm/vmpressure.c
index d43f33139568..b8149924f078 100644
--- a/mm/vmpressure.c
+++ b/mm/vmpressure.c
@@ -378,7 +378,7 @@ int vmpressure_register_event(struct mem_cgroup *memcg,
 
 	/* Find required level */
 	token = strsep(&spec, ",");
-	level = __match_string(vmpressure_str_levels, VMPRESSURE_NUM_LEVELS, token);
+	level = match_string(vmpressure_str_levels, token);
 	if (level < 0) {
 		ret = level;
 		goto out;
@@ -387,7 +387,7 @@ int vmpressure_register_event(struct mem_cgroup *memcg,
 	/* Find optional mode */
 	token = strsep(&spec, ",");
 	if (token) {
-		mode = __match_string(vmpressure_str_modes, VMPRESSURE_NUM_MODES, token);
+		mode = match_string(vmpressure_str_modes, token);
 		if (mode < 0) {
 			ret = mode;
 			goto out;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
