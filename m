Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9021A177E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t94nzG6AbU7q3vvBJ6AgZ6/BlxEXPFYwXAVRByI4YGM=; b=NAQr8bP+wS+Ro9
	sNyGNZZ1KLRKgLolqdmLba4oq+IVXAcy7fw2Dg6XdmTm4IWntzTyfqHuTTlVKF1XLNnClJvZ+gDLP
	AiBwp/acIhRQB2MjowObkum6nHDzHsY6Y6Z3zTl2Xpnt+GrPYbbWWgyPnCn6+mHis08Bg0K6HPITF
	5g23l6537mDo5zmNb29RZkARuFLY0PFfCxnr9VrTkVy4gWWUsurDnAV5wV6c7/Nlhy4PxG7urKyeQ
	5bngs6zLl63B9LIx9MTjQAtITeBgXTnN4FGurW5S8a+nF4ckMbiAS68hR+3BlacSCwduZ4A/fqbuU
	tfIvW5EUxp7RKtnJdb7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKp8-0003Uk-14; Wed, 08 May 2019 11:33:22 +0000
Received: from mail-eopbgr820052.outbound.protection.outlook.com
 ([40.107.82.52] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKm6-00080n-4l; Wed, 08 May 2019 11:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2kUTxOBDW7W13uwOdmuJPQDQWhKkMs+dI0VfMHNhcs=;
 b=HmsHAFljmcbaN1BpAlIGHCpGcJ5jk39AUEqf/6w5Fch3rgS9LrOHdDkTRid4twIc316F2MrfuNLVkUGQ1NWLbgumQMbITyYa+XILsOarTTI+P/wjFyGQgnt0YjzNFAD0f6jVnTLQ0U3CRal0YHtfYbnJ7fVybRtPPhSGo+MDAbc=
Received: from BN3PR03CA0078.namprd03.prod.outlook.com
 (2a01:111:e400:7a4d::38) by CO2PR03MB2262.namprd03.prod.outlook.com
 (2603:10b6:102:e::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Wed, 8 May
 2019 11:30:10 +0000
Received: from CY1NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::209) by BN3PR03CA0078.outlook.office365.com
 (2a01:111:e400:7a4d::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 11:30:09 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; lists.freedesktop.org; dkim=none (message not
 signed) header.d=none;lists.freedesktop.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 CY1NAM02FT020.mail.protection.outlook.com (10.152.75.191) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 11:30:07 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x48BU7gu023733
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 04:30:07 -0700
Received: from saturn.analog.com (10.50.1.244) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server id 14.3.408.0; Wed, 8 May 2019
 07:30:06 -0400
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
Subject: [PATCH 09/16] mmc: sdhci-xenon: use new match_string() helper/macro
Date: Wed, 8 May 2019 14:28:35 +0300
Message-ID: <20190508112842.11654-11-alexandru.ardelean@analog.com>
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
X-MS-Office365-Filtering-Correlation-Id: 8666f1cf-9df3-40da-2f35-08d6d3a88708
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CO2PR03MB2262; 
X-MS-TrafficTypeDiagnostic: CO2PR03MB2262:
X-Microsoft-Antispam-PRVS: <CO2PR03MB226289536B8045C7EF017BB5F9320@CO2PR03MB2262.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 7rCCvmL00MJBmcDTDIesTQyTH/FNWfXEsju68ENrTwxg/JIcze2MSJ12BbCQi4KSrgLnc1A1T6oXYLKYxlqmijCkcIwNL4E9xzrBeXjIFArc3gJbJYEsik3rWIiMQrmNac8NKVSXbLpB/o4OjBebxyfuuKkkNtQJJAndo0715UIZuDMc1ZdvuMrceL8LElXSfQiRCtrBNnkB/KWkSmtT8hsShWBcIskk5FP30zXoYxV/z2dgb6eFA53PQRv7N/xDDavBCp9yNUm4NynSE3PGnYKIawmDQ1m2K8VQatJsc8AN1TyPmq9PF1A8pLI6egBZrXN35GHe2/ZpHJhBxPEZoVlVwSfSUS96GPx1sw2lCVmgt88RgJFlddOoDGa3f1+TOqJw2fXL5R0yGXI+tAlczYBs61mJT3hH1NvT9TI8S+8=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 11:30:07.6794 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8666f1cf-9df3-40da-2f35-08d6d3a88708
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR03MB2262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_043014_610378_026AE8D2 
X-CRM114-Status: GOOD (  10.79  )
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

The change is also cosmetic, but it also does a tighter coupling between
the enums & the string values. This way, the ARRAY_SIZE(phy_types) that is
implicitly done in the match_string() macro is also a bit safer.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/mmc/host/sdhci-xenon-phy.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/sdhci-xenon-phy.c b/drivers/mmc/host/sdhci-xenon-phy.c
index 59b7a6cac995..2a9206867fe1 100644
--- a/drivers/mmc/host/sdhci-xenon-phy.c
+++ b/drivers/mmc/host/sdhci-xenon-phy.c
@@ -135,17 +135,17 @@ struct xenon_emmc_phy_regs {
 	u32 logic_timing_val;
 };
 
-static const char * const phy_types[] = {
-	"emmc 5.0 phy",
-	"emmc 5.1 phy"
-};
-
 enum xenon_phy_type_enum {
 	EMMC_5_0_PHY,
 	EMMC_5_1_PHY,
 	NR_PHY_TYPES
 };
 
+static const char * const phy_types[NR_PHY_TYPES] = {
+	[EMMC_5_0_PHY] = "emmc 5.0 phy",
+	[EMMC_5_1_PHY] = "emmc 5.1 phy"
+};
+
 enum soc_pad_ctrl_type {
 	SOC_PAD_SD,
 	SOC_PAD_FIXED_1_8V,
@@ -821,7 +821,7 @@ static int xenon_add_phy(struct device_node *np, struct sdhci_host *host,
 	struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 	int ret;
 
-	priv->phy_type = __match_string(phy_types, NR_PHY_TYPES, phy_name);
+	priv->phy_type = match_string(phy_types, phy_name);
 	if (priv->phy_type < 0) {
 		dev_err(mmc_dev(host->mmc),
 			"Unable to determine PHY name %s. Use default eMMC 5.1 PHY\n",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
