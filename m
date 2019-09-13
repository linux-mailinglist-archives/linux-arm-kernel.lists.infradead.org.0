Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE25B1A2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lnPKUAY2K2m2T1g0h2Ls01jiAKBmM84xh+xpr3LKuw=; b=ajl4Lb++ed2rOr
	mf/1MOf9L3PSn/DvrKRxv85Xs6toSHpcpqNoV9J1jJwt56DRTmXi99UMD4JnnRg/WfgTmGEJkrwgD
	lDDxUwGanX0m1CWLFeA9WPkaM3mVhHvBisvp3Xfj4WPQOMLgW/7lTML0JKEfPUVdQBjKYp2Tiqr3B
	qJXLmmgGmaKNUX+8mlWVLAuWSOTyHP/vq+a33QmvxKwArY6KyHMjdRa3AurFULCuQSfPrA16uRmlk
	ncz/d1eZ0i1M2MHVlnWWw9ag4qIP4rjCv/UQhGwGoBzJjAFEy7iPT3VB226IrMAXhfda5EzLZKI50
	1XtuqYDkv+IFWKagij4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hJB-0008Dc-T3; Fri, 13 Sep 2019 08:52:01 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hE6-0002sr-Fb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:46:48 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8D8gaUD015969; Fri, 13 Sep 2019 04:46:44 -0400
Received: from nam01-by2-obe.outbound.protection.outlook.com
 (mail-by2nam01lp2058.outbound.protection.outlook.com [104.47.34.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 2uytdksa6u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Sep 2019 04:46:44 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nU7wHEOcRG4BSrs+Fd8uhS16hBZ2h1bd19B7ZNh00g63oQIw9eOCR9esJSD51kRHG52xSBeYqv4yi6w5raAicNrYR3muD+seccDeSPRBYV3XYuND3l+G8QHm8OQta/c7W3otOhbPozMSPeu3R8n2DwodPUNV5041OO0MnDRd09+68vl1PQ6p97qK9hCLzDOwINJrhaVBuyjOrJRxcUTE6smvGkhO0WL6vqc19bnBLGCiU5P4Iz8Ey7z4kIy8OP1Aho4fa/ZiHNIFaaa2TRHZkDwQBQJMLGyjPtAgANHqU1Vk8Ji2fvjxyvkPrmAoK2QQ/Ish97D/WlLboZ/OGq3TjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eZVsTNwzDgCxa0wjOHr/PorZMO2qAzcIXvyuqXf5D8=;
 b=g35Niy49efBTyFAqgezP7MYvp42HiC8lPlDVdxmSMgMFQgS0G2RsCTRFDN32ULwt7N7TThvES2+BAhmOWGi9Pzph3VH4x3Ni9VDyfSHT5LUm5+UI34426v2GVaDKY4KsQsQt0SeLKsOkKvgNhcbDcIhVkcrA5/C3lJCgmm69jIa+uBQcZN5OeCQEwU/BegBkmJ4Njh+45d2uKoRspJFucU8S6HkT/yICpKNgihBVHRozbnPhlqQPipE26OPemdLk1epCZsKQeAJPDc1rHIejTMV0BjKtaqVFEdKm2x3LMEuCbhT7KeGgvguInu3kOZq9uD7Z8lEEEm0GWvZJUT1/AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eZVsTNwzDgCxa0wjOHr/PorZMO2qAzcIXvyuqXf5D8=;
 b=CLnDKCHKy+QfVgosMCioGEr9HTSJx4ujbab6aGzedBrMSvpQC0u6anQ7tdKVKQg7Yz7lo3hfCyqlpfj6WPDk2G0kwzn83hWwhUfQpkO2R01DhxYDoSR0yETQlu+L4VhItrUovsUjj7yE4kLqHplgpyMgjbjggvTBLjL3He517k4=
Received: from BN3PR03CA0100.namprd03.prod.outlook.com (2603:10b6:400:4::18)
 by BYAPR03MB3799.namprd03.prod.outlook.com (2603:10b6:a03:6f::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.15; Fri, 13 Sep
 2019 08:46:43 +0000
Received: from CY1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by BN3PR03CA0100.outlook.office365.com
 (2603:10b6:400:4::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.13 via Frontend
 Transport; Fri, 13 Sep 2019 08:46:42 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT036.mail.protection.outlook.com (10.152.75.124) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2263.17
 via Frontend Transport; Fri, 13 Sep 2019 08:46:42 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8D8kbhW030732
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 13 Sep 2019 01:46:37 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 13 Sep 2019 04:46:41 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-spi@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bcm-kernel-feedback-list@broadcom.com>
Subject: [RFC PATCH 12/15] spi: spi-loopback-test: use new `delay` field
Date: Fri, 13 Sep 2019 14:45:47 +0300
Message-ID: <20190913114550.956-13-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190913114550.956-1-alexandru.ardelean@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(136003)(396003)(199004)(189003)(54906003)(426003)(446003)(356004)(50226002)(86362001)(44832011)(476003)(486006)(2870700001)(70206006)(51416003)(11346002)(7696005)(7636002)(126002)(8936002)(70586007)(107886003)(305945005)(8676002)(246002)(76176011)(2616005)(478600001)(186003)(36756003)(2201001)(7416002)(2906002)(316002)(110136005)(48376002)(4326008)(26005)(5660300002)(1076003)(106002)(50466002)(47776003)(336012)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3799; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 492ce2f4-6f95-4897-0d66-08d73826e6a8
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BYAPR03MB3799; 
X-MS-TrafficTypeDiagnostic: BYAPR03MB3799:
X-Microsoft-Antispam-PRVS: <BYAPR03MB379927DB409374DD5B9BA940F9B30@BYAPR03MB3799.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 0159AC2B97
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: aRPsKEtJCzprUENgjeZBi73UwzYkamBAcK5VhMKCTRYg0QmGY6e7fpUC5P8aUtiBOWl0ShdDdoavlnCRiRUmQJqfB/LcUFT84FYkT0MizdDn2niN3SstaWvvfUwpazdF0Jw5vLQe1t2qCp83wt1AEQHKZ8Z4+I4EYPLySy2Jm5sRtU8qrEQTLS2yWioeLrIzFjJDWFqnMoX4Ej+xk03yrgVKHQ2dByLLNtRQ97S2LKL2m/5TlWCbJebf1nHv9s4Q6NMYvJThXXulY4FKHDgbroED9uRK8RIFlzJlkRkcYbgJ5vqjLMTmJ8FI1J3fXkucnyHmVHcwdFEDFHFqPPZPv0bP4eW4jk/aUkpRh3vMXGusmmoEhQ1axGwc5fe1TqrUUriik9O5/N+ogY0jS6sqdNfJ8gq0kimIxZ/hPR0Wqjs=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2019 08:46:42.4579 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 492ce2f4-6f95-4897-0d66-08d73826e6a8
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3799
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_05:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 bulkscore=0 mlxlogscore=937 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 mlxscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_014646_870754_E8875327 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, zhang.lyra@gmail.com,
 linus.walleij@linaro.org, broonie@kernel.org, orsonzhai@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change replaces the use of the `delay_usecs` field with the new
`delay` field. The code/test still uses micro-seconds, but they are now
configured and used via the `struct spi_delay` format of the `delay` field.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-loopback-test.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-loopback-test.c b/drivers/spi/spi-loopback-test.c
index 6f18d4952767..b6d79cd156fb 100644
--- a/drivers/spi/spi-loopback-test.c
+++ b/drivers/spi/spi-loopback-test.c
@@ -298,12 +298,18 @@ static struct spi_test spi_tests[] = {
 			{
 				.tx_buf = TX(0),
 				.rx_buf = RX(0),
-				.delay_usecs = 1000,
+				.delay = {
+					.value = 1000,
+					.unit = SPI_DELAY_UNIT_USECS,
+				},
 			},
 			{
 				.tx_buf = TX(0),
 				.rx_buf = RX(0),
-				.delay_usecs = 1000,
+				.delay = {
+					.value = 1000,
+					.unit = SPI_DELAY_UNIT_USECS,
+				},
 			},
 		},
 	},
@@ -537,7 +543,7 @@ static int spi_test_check_elapsed_time(struct spi_device *spi,
 		unsigned long long nbits = (unsigned long long)BITS_PER_BYTE *
 					   xfer->len;
 
-		delay_usecs += xfer->delay_usecs;
+		delay_usecs += xfer->delay.value;
 		if (!xfer->speed_hz)
 			continue;
 		estimated_time += div_u64(nbits * NSEC_PER_SEC, xfer->speed_hz);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
