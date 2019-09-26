Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58701BF09B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrgctbLQ/E+4AyQUUpzoMWgZnD8AoJO28fzTwU/DPCs=; b=f5ZX50B3pqPx81
	pEatC9N1ZzSQPcYqcpE6GsMfsDCyhu3yr2eo9Sx3GA055RVDIpXH9niMViWI6jHBe7lGZb4MQPAQh
	QK9JmFJ6cCmQyDIWyf/z3K5WN/wTSUBO+ZDg8PM3Dir1cjaERz/Yb+aoheMAHudC9z6jsBX3y/2oH
	KboiXaTurABt1V140FBbcOM4iD+dZtilyv/8cegRpzNEpFv6imc5Tlop/t800scIUHE32jTWxi6jI
	R/pUJbdBEtm9EMow27UncVHYZNFopZrKyPKaYRYAIqRVVuWElsNwFQ/ZgR9fXGCZ11TRedsODHDzv
	BGoPuaqIAKdXHt7M8XLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRRE-0003Ky-VE; Thu, 26 Sep 2019 10:55:56 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROK-0007DI-BO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:58 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqKSU030417; Thu, 26 Sep 2019 06:52:52 -0400
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2050.outbound.protection.outlook.com [104.47.46.50])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hku7cd6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRtO6w60aNbFp3TT9ehI0QDcdriSii7OmoP7pbB90WIlynXJcU1SveHrodbsyW9PiCTgNVe0/32mLMZFcHERskClkMyjaCpE/oJ7yH/PSimhbFieXcpDD77btdnprbrXf2dhQ63vVaRPfWjNUG+9CkzONhQ6wv+TYqipBYcxWqi76kYjyAI3bJdt8u72jYHP/YxA4QD+NFU+Jfz+RntU2wcly5QZyd8fjmddAQLNbkLq39TF582J1AQxMoFg2Fttn6a7WNv5WbqL3IYWesKboafN5aFx/VNdz8edms5jaMhim7xx5Oyhz4lrHkxSO4qxd/2mtDxIeYYEk8BNqrsbTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ImRrYAaX+dFz2bnSYmZEgeSfh2qEMepCcdCui+I1eOk=;
 b=hH5+lkbwBGJNhMZKkEnQMF5cgoSSSpK7kFR+0kupEjRgU/1p8TMSRdHNHWpUQM7AtWAYReFOETA4o4LvbRwLjiXplGlDSSTM1gQqmLP2oVwpZF5RUIpgsTm5tedcMkRItYUCci7oISXm5QcSxVkz60Uat/8IWaX1zyWxE6Y6jSyZhnJsRkf7asu0RbB76vJ3aIgtwABz1oy4wbZpl8AKn8nJ6iS38uPyqqufWWI+IOw3GjKF6o8EvyQjt9URgCTy6cF/V7gpfZXdQQAHWPqprC7UUgsbc+UUMVlPN+MADSqk4B5qc5AVcoK5glDbP+Vg+prrVxGr890jZxnv6p4QXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ImRrYAaX+dFz2bnSYmZEgeSfh2qEMepCcdCui+I1eOk=;
 b=l4SqQqdXCc2sLHZdU54mNU3ApjHQwCwuYuJUdjReLzcUaHEANc28A2m32bjXc5kCq8sPNW7u/jBJqgGoMkcd5ESvDSuzkGF3i8emHNuKVfyNgiAR1EvPuJ8ptY6XalG0Ai5qTirc0ESWgYfv6+Dr94Vr64YxBzLXBamW8ks07SA=
Received: from BN6PR03CA0110.namprd03.prod.outlook.com (2603:10b6:404:10::24)
 by CH2PR03MB5206.namprd03.prod.outlook.com (2603:10b6:610:a3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15; Thu, 26 Sep
 2019 10:52:50 +0000
Received: from BL2NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::207) by BN6PR03CA0110.outlook.office365.com
 (2603:10b6:404:10::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:49 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT053.mail.protection.outlook.com (10.152.76.225) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:49 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqnuF014980
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:49 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:48 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 15/19] spi: implement SW control for CS times
Date: Thu, 26 Sep 2019 13:51:43 +0300
Message-ID: <20190926105147.7839-16-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(199004)(189003)(1076003)(48376002)(486006)(14444005)(2870700001)(476003)(426003)(107886003)(126002)(11346002)(446003)(2616005)(2906002)(336012)(186003)(2201001)(7416002)(110136005)(70206006)(246002)(70586007)(316002)(5660300002)(356004)(6666004)(44832011)(50466002)(76176011)(26005)(47776003)(106002)(54906003)(86362001)(8676002)(305945005)(478600001)(8936002)(4326008)(36756003)(51416003)(7696005)(50226002)(7636002)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5206; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef1151ee-04fd-4914-63fd-08d7426fac5f
X-MS-TrafficTypeDiagnostic: CH2PR03MB5206:
X-Microsoft-Antispam-PRVS: <CH2PR03MB52064D60B3FD11B6C6306EA4F9860@CH2PR03MB5206.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NauOqDgkbibQYnjg0zeKUOHxhe/3K5kIpt49QHuAZ/KEb/XHmNQH68VcyzEgvK5ROYjXo0LooNGqrlpSmfoIHdzNqnXQU7n1uYHCNsmkrJHt2ZHCUezllJsngUYRCgl6wWBTjhZb3Ni6/0b4fY63h6jvZocsHWWEh0Owuln0jLj5q5bWfubI1QZxyPYgGiJl3XG2jkbZSQN1wO72m8hGalrDfSpwAHp5V4XXJ0Ox+5ppmsvR2Qz42+Ci7EEJfMgoiw98k5BSCRGCkxer5bweV0d3OD/xoHk7MXr0PYK5PVU+Zoonn93UKIOd69SlrjmEsIN5MsOWGDkwB0ktin4oaOdsoU9HRgHlUkjkKp6vgEoyFu34QDzWnferhw5BHYnCEfalIgR0nBLd7WmfMjhyWTGifaM+AAq7JGTGzjI7VcY=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:49.6289 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1151ee-04fd-4914-63fd-08d7426fac5f
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5206
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035256_927095_B7EC5AF9 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
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

This change implements CS control for setup, hold & inactive delays.

The `cs_setup` delay is completely new, and can help with cases where
asserting the CS, also brings the device out of power-sleep, where there
needs to be a longer (than usual), before transferring data.

The `cs_hold` time can overlap with the `delay` (or `delay_usecs`) from an
SPI transfer. The main difference is that `cs_hold` implies that CS will be
de-asserted.

The `cs_inactive` delay does not have a clear use-case yet. It has been
implemented mostly because the `spi_set_cs_timing()` function implements
it. To some degree, this could overlap or replace `cs_change_delay`, but
this will require more consideration/investigation in the future.

All these delays have been added to the `spi_controller` struct, as they
would typically be configured by calling `spi_set_cs_timing()` after an
`spi_setup()` call.

Software-mode for CS control, implies that the `set_cs_timing()` hook has
not been provided for the `spi_controller` object.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi.c       | 45 ++++++++++++++++++++++++++++++++++++++++-
 include/linux/spi/spi.h |  5 +++++
 2 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 122af2264bfe..61ef286f954a 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -775,6 +775,15 @@ int spi_register_board_info(struct spi_board_info const *info, unsigned n)
 
 static void spi_set_cs(struct spi_device *spi, bool enable)
 {
+	bool enable1 = enable;
+
+	if (!spi->controller->set_cs_timing) {
+		if (enable1)
+			spi_delay_exec(&spi->controller->cs_setup, NULL);
+		else
+			spi_delay_exec(&spi->controller->cs_hold, NULL);
+	}
+
 	if (spi->mode & SPI_CS_HIGH)
 		enable = !enable;
 
@@ -800,6 +809,11 @@ static void spi_set_cs(struct spi_device *spi, bool enable)
 	} else if (spi->controller->set_cs) {
 		spi->controller->set_cs(spi, !enable);
 	}
+
+	if (!spi->controller->set_cs_timing) {
+		if (!enable1)
+			spi_delay_exec(&spi->controller->cs_inactive, NULL);
+	}
 }
 
 #ifdef CONFIG_HAS_DMA
@@ -3156,10 +3170,39 @@ EXPORT_SYMBOL_GPL(spi_setup);
 int spi_set_cs_timing(struct spi_device *spi, struct spi_delay *setup,
 		      struct spi_delay *hold, struct spi_delay *inactive)
 {
+	size_t len;
+
 	if (spi->controller->set_cs_timing)
 		return spi->controller->set_cs_timing(spi, setup, hold,
 						      inactive);
-	return -ENOTSUPP;
+
+	if ((setup && setup->unit == SPI_DELAY_UNIT_SCK) ||
+	    (hold && hold->unit == SPI_DELAY_UNIT_SCK) ||
+	    (inactive && inactive->unit == SPI_DELAY_UNIT_SCK)) {
+		dev_err(&spi->dev,
+			"Clock-cycle delays for CS not supported in SW mode\n");
+		return -ENOTSUPP;
+	}
+
+	len = sizeof(struct spi_delay);
+
+	/* copy delays to controller */
+	if (setup)
+		memcpy(&spi->controller->cs_setup, setup, len);
+	else
+		memset(&spi->controller->cs_setup, 0, len);
+
+	if (hold)
+		memcpy(&spi->controller->cs_hold, hold, len);
+	else
+		memset(&spi->controller->cs_hold, 0, len);
+
+	if (inactive)
+		memcpy(&spi->controller->cs_inactive, inactive, len);
+	else
+		memset(&spi->controller->cs_inactive, 0, len);
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(spi_set_cs_timing);
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 592e50aae998..66031c8d0093 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -602,6 +602,11 @@ struct spi_controller {
 	/* Optimized handlers for SPI memory-like operations. */
 	const struct spi_controller_mem_ops *mem_ops;
 
+	/* CS delays */
+	struct spi_delay	cs_setup;
+	struct spi_delay	cs_hold;
+	struct spi_delay	cs_inactive;
+
 	/* gpio chip select */
 	int			*cs_gpios;
 	struct gpio_desc	**cs_gpiods;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
