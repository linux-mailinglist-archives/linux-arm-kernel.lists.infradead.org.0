Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4B4B19DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFfFvhfmmNSn7WZciQhMSMKZrAJxwCAUuhXYGxAMK7g=; b=vBn0vSgKkjJ9ek
	pekKkwVZTFwGhFrknDMkTZ/UQooAEJfZlEvjEmH5bDDkoxmG5CVjkQVy9KyNf20jEfDtl5Nb9sWQp
	7RGmc0Kae4nZdCIEaFo2wVfcICaL9TjzunoHYikdoXiQOFbR69SvlNcaLbpyybn6MPvmU4S0ptfam
	vh/XwaIwI6fAsYt4wHCAf73IQ5udOn2kPemzBeeejF/0+eb83xi7q10/n9jG/OnJ92dFdhPtlarcH
	jJa64Epbsy6z9sJ7pmlMRSHc1SEguGgNkpdgZ4URJj7SMxn9up2kdVTYkzgOw43Bt/EsvoTCdQq/6
	WSoaEMB+EVFgVDMPvSNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hEW-0002wQ-71; Fri, 13 Sep 2019 08:47:12 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hDf-0002OF-FY
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:46:20 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8D8gcTc001861; Fri, 13 Sep 2019 04:46:15 -0400
Received: from nam05-by2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2052.outbound.protection.outlook.com [104.47.50.52])
 by mx0a-00128a01.pphosted.com with ESMTP id 2uytdfsa7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Sep 2019 04:46:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROrJexbhJ1m5+kYR8JflDXwIvObj1/izgBNd9O8aZt8NTZdTdT8cUFclNkCZBWqSMu5UzmL0ndtOYihwwPqUCOlFV7mur1FVju3kGxzeQfPsfBnDkkj5/7USiXsfq7/TgUN7nI+k9XxIEcnc7YQZkebh4UQn3Y8H64T3AvHM/Pw7REWnXlk1R5DrUGdlxJa3IXP+WE8ddra/AwiOva4BxYmV0ETXh4pt7KRmAjim5MIIJcOJ2JE0znW5wAS5CG1Y9aUgxEHttge2F7zYIzPtCtlcAvpWA0v7vDJvRKkxhxEmks+b/iFPAB/lHG7sR1E4XLZ+FWIK5fTzZc3DHrCfTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N//v9tP42mO82MASuaLghoW7AUmfw1VhX5gXorThYfI=;
 b=XvLGRjJ5AVsJ6CRTjB/caI5OJ3B3BtJ21ReCDDN9kaaX6T9224xm0Z1KOw4o9/XULf6gYcTccF+6QkD6NtzSOL6be7BKF+CHDz/DKClNySC8j3l9RUIqt+jK1Xt2g83vKngq6Ylgw8f3HNYzlI/LxxdiooWsGeWU+tqtHjRz/URkO6MhtPd0+cK5IzPcIYCmgNFLFEZLR+yemViBWl2OS556cdaV3M8/lvuInd1rxRZUwPB3kIMCQ74lJtK4IKzHf/8zT7Ft4TDFiW6iwyeEAXTXJ2vf6I29S0b09M7cHN6GGN9BMNMBu+6hq+i/QwPGeGiv3aKpjX/K1hO+qpp64w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N//v9tP42mO82MASuaLghoW7AUmfw1VhX5gXorThYfI=;
 b=uMxdIdAdbWshGF02IWid+YvFfuQRTBiFiYV0jYYoJrnd6QTEqWAFOIZl/IqdOYk53MCM6q8PQpJHqqOKSD4VIfVvfaN8OvqQH6NIrZHlmG0eZ3268g5YQc+7tFYx9r7nv9/TtZ0FqVxMYbfh5hoPe079Cf8E5dVRGioCIr5BHvU=
Received: from BN6PR03CA0085.namprd03.prod.outlook.com (2603:10b6:405:6f::23)
 by BN8PR03MB5025.namprd03.prod.outlook.com (2603:10b6:408:d6::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17; Fri, 13 Sep
 2019 08:46:13 +0000
Received: from SN1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by BN6PR03CA0085.outlook.office365.com
 (2603:10b6:405:6f::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17 via Frontend
 Transport; Fri, 13 Sep 2019 08:46:13 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 SN1NAM02FT051.mail.protection.outlook.com (10.152.73.103) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2263.17
 via Frontend Transport; Fri, 13 Sep 2019 08:46:12 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8D8k7Vs030556
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 13 Sep 2019 01:46:07 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Fri, 13 Sep 2019 04:46:11 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-spi@vger.kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bcm-kernel-feedback-list@broadcom.com>
Subject: [RFC PATCH 01/15] spi: move `cs_change_delay` backwards compat logic
 outside switch
Date: Fri, 13 Sep 2019 14:45:36 +0300
Message-ID: <20190913114550.956-2-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190913114550.956-1-alexandru.ardelean@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(7416002)(7696005)(51416003)(478600001)(316002)(4326008)(2870700001)(7636002)(305945005)(76176011)(2201001)(486006)(86362001)(44832011)(110136005)(476003)(126002)(50466002)(4744005)(106002)(54906003)(5660300002)(356004)(6666004)(1076003)(446003)(11346002)(2616005)(246002)(426003)(336012)(47776003)(8936002)(8676002)(2906002)(186003)(107886003)(26005)(70586007)(70206006)(50226002)(48376002)(36756003)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR03MB5025; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6deb5d8-f951-4e55-b301-08d73826d4fb
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:BN8PR03MB5025; 
X-MS-TrafficTypeDiagnostic: BN8PR03MB5025:
X-Microsoft-Antispam-PRVS: <BN8PR03MB5025A95FED8F572F665E4D62F9B30@BN8PR03MB5025.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0159AC2B97
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: fhilP7BnyrXrXHuYvY9vZj1zOe123En7IWai4Ydqd7mUK6G/f1Vyp2tTs8ydT4A2x1hoCImrLYeuWxTOqyXWmqevRmxFocID9jl8rpb0jwSYwvJcMJ/7QY6zsb82oW38j8xOCyuXaMgdHYK+BK9gCGosD3c5NF8DyNcB/TxWmyFiYoAH4/c+PSGfaAB/0gqklsREQ9xzMjQjlixYpU6AnbHsedAxAxxYlE3EVfcHCHuIs479+ZJHiFo0/j3iCQSySJ+VC6fAMrKSWRuu+j+jIqQWS/auehQ6PlA6po1jOmJmhWhbWLI6jtViJHlM/sG85mvOA6RsvcJ63Z56D6zq5GmhRs+ZeMy9ZENpr9xltFIof+zMBj5QwTUwj4c6Gr1kNuB8eVGUfP5wPgRSJAzCzOGyIrHCwgMM073vQqJSzS4=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2019 08:46:12.8091 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f6deb5d8-f951-4e55-b301-08d73826d4fb
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5025
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_05:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 impostorscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0 mlxscore=0
 phishscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_014619_678208_4F64FA60 
X-CRM114-Status: GOOD (  12.63  )
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

The `cs_change_delay` backwards compatibility value could be moved outside
of the switch statement.
The only reason to do it, is to make the next patches easier to diff.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 75ac046cae52..c90e02e6d62f 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1114,16 +1114,15 @@ static void _spi_transfer_cs_change_delay(struct spi_message *msg,
 	u32 hz;
 
 	/* return early on "fast" mode - for everything but USECS */
-	if (!delay && unit != SPI_DELAY_UNIT_USECS)
+	if (!delay) {
+		if (unit == SPI_DELAY_UNIT_USECS)
+			_spi_transfer_delay_ns(10000);
 		return;
+	}
 
 	switch (unit) {
 	case SPI_DELAY_UNIT_USECS:
-		/* for compatibility use default of 10us */
-		if (!delay)
-			delay = 10000;
-		else
-			delay *= 1000;
+		delay *= 1000;
 		break;
 	case SPI_DELAY_UNIT_NSECS: /* nothing to do here */
 		break;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
