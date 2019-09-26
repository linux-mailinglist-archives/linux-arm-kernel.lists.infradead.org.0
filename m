Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B28BF097
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lnPKUAY2K2m2T1g0h2Ls01jiAKBmM84xh+xpr3LKuw=; b=iA+i11wqZcvJE8
	FYZPQvDG/FO4yy9jHUV6buZsYV00am0YpSyAYNAanh4RnPTgOCDKIBuB5WmZk+i+L0ZxNG9TIknLR
	wXnvTJhhgDiIc1uMlETAW3qv0CtFZsaUmij3Zu91bCvSc8BKVYz5ryd3spRK6IhPgDGrSSO73TV64
	qXWtRB8uJI/V4h/1rNPFD1rVw0kaug6HgWOwIMZ2E/iHhLSQn0uG/ZaWmDJEwhegUrAR30czjIEyl
	y9pxdlKU/cq+J6LeBBXKAHbJwuGPBiuV3GNp1e46RS9WKG239PI37yZIQgxUJNJqlbuWFNf4VzTt8
	T+tedzjsOlU2smVglacQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRQe-0001sq-Lk; Thu, 26 Sep 2019 10:55:20 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROB-00071z-05
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:48 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqSbm003879; Thu, 26 Sep 2019 06:52:44 -0400
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2059.outbound.protection.outlook.com [104.47.36.59])
 by mx0a-00128a01.pphosted.com with ESMTP id 2v6hj96rch-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:44 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzvZ5yhm/S0nInjkC2xtfK8k9BwenpYcSE1xmRiLk628OLZoASjIK5wgsWi4Tinq4hb6EZM97moqouqfjFvXSV1HtZuMUqrWX75phwnqUwbCgWRHyelMZRmd94HWaT1qLeWkBcvuvIwQsAqaquftq6rFsJlZEnWSzXgWhaVY1EUlpEgaCt1XZd0iUu8FOt27QotBrzS545OggN944AlFUWrqeeliddZNkCahdHAxeSGdfd3P+UdB3wO/9YkU0EgwsfWrB89mwHs8eFrG5sMA3kh1B7LQktJLo3GArwMEcO6ADoH7Nys2YKz1vCeYl9k3haif5F8ZfxnRZIIrXFrPVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eZVsTNwzDgCxa0wjOHr/PorZMO2qAzcIXvyuqXf5D8=;
 b=NODGpkYVaPFGyL2UIEkH9wZDXAfY/JdyqFi+dLJBt53zNKmLZoPZ4Dk/PCVpVmLRZDzL9CVdmO/EMupkjBiDBAJs134w5GDmg3Ur9Ukj3KRHDawTuahBdH63z2HrLns4aGcX0IrO5UCshN+DkVXwagI5UR198jPkkk3cKGFqtEoNoPfIEjNfhPNMYBIz5kJCVf4PUXE0hpUVn/vT4XwCnQopPpt9TiHH/I0+o3re04DOEQ9Rk5AYKKsj8S2GFJvEmNp6uIgsx7OwgjhoTqNXWfkbbzXVIpYhRUzvrnaNlZIj/MFjNwQeveVpqskIgigRJvA0bZdHQcjLv1G7SZDkfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8eZVsTNwzDgCxa0wjOHr/PorZMO2qAzcIXvyuqXf5D8=;
 b=xIMV4E33Fz/2wyvrAF3SJVw4lO0thekKhLXBu3oNhexc6jGtp6vIOqOgwKJeW0A/mIHNPFvE/LRo8uVK+wO9dZZFmA09stbm8m9IhFXNOWT51bAgKy9pDXXluALTc0MmiohPLmzQ7xCa/c0r2q2XUQg/p1mUUJ3qykVBBGy2yYI=
Received: from BN6PR03CA0023.namprd03.prod.outlook.com (2603:10b6:404:23::33)
 by MWHPR03MB3136.namprd03.prod.outlook.com (2603:10b6:301:3c::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Thu, 26 Sep
 2019 10:52:42 +0000
Received: from SN1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by BN6PR03CA0023.outlook.office365.com
 (2603:10b6:404:23::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.22 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:41 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 SN1NAM02FT059.mail.protection.outlook.com (10.152.72.177) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:41 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqf3H014837
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:41 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:40 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 12/19] spi: spi-loopback-test: use new `delay` field
Date: Thu, 26 Sep 2019 13:51:40 +0300
Message-ID: <20190926105147.7839-13-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(346002)(396003)(199004)(189003)(126002)(2201001)(8936002)(476003)(86362001)(2906002)(5660300002)(1076003)(11346002)(48376002)(426003)(486006)(106002)(70586007)(50226002)(36756003)(2616005)(446003)(478600001)(336012)(8676002)(47776003)(7636002)(356004)(44832011)(51416003)(70206006)(50466002)(76176011)(305945005)(7696005)(186003)(4326008)(110136005)(26005)(7416002)(107886003)(316002)(246002)(2870700001)(54906003)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR03MB3136; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34e14b9f-4c75-4790-0342-08d7426fa7b2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:MWHPR03MB3136; 
X-MS-TrafficTypeDiagnostic: MWHPR03MB3136:
X-Microsoft-Antispam-PRVS: <MWHPR03MB3136EF7130390BF645BC844DF9860@MWHPR03MB3136.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: RHBTwGjh3Oq37W1evFD1OFrktx8f3wyESOMTmDe2w+9oaH+jOb91DsgfgXHv0gkNZ3X38piiEhFRJ05Y1XXb9onuaah/ftqNx6uC7ZjYMoWADGtWDirlYbF1pThrNrd7HfFULqwYB+82HS2rAFu8ycjYXxxT5tXZmemPCpZeBpMFlcvCKC4VHfuKl3aOKSuAFpSsVMfXuuNjYyMA4qKbnK57pDgqON/w9i4LvWuDdBxPISPFs5AjX2mWmx43z3z9ZsMgnqX76gFjCBy4kJnH91vV7yAyAvgI8BVaWlSQUAequyJhmVApPGe8+zx8W2bUAAaLp3oaosMdDVkgLPzVO75aWEGDySRSe8tiggAvNdqJFoNXm7Y5E+tt6XhaGYYgNhbHkPCHvvdkvR47oWZkhW0Wh09nS3H69ltJlF+FJNo=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:41.7207 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 34e14b9f-4c75-4790-0342-08d7426fa7b2
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB3136
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 bulkscore=0 mlxlogscore=959 suspectscore=0
 mlxscore=0 adultscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035247_115437_F530DBB3 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
