Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05840BF09E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YT/9phgVkgfXkwbc2ZNr5aVvuSWcyiDgpUtTJOeByu4=; b=PRezbJ+J4BsYVM
	M9BWWhE1/DwMx/zE9TsJ8BJPdoZysCB7keBFgwQcx0MgHEvyY6FAWXKKKk6mUpMbhrYNLyW5GqAcI
	r7Li/NIcwtjwVffbB6PP8pGUHwIwvNTimkeCetmJPwWvkJRR2Uv8ls6tvNI/cFY6n9JebQ2jjazGz
	V4KtD/SMEg2wZrojVBbwAW0eS10j2B3WUJwLpZ31ZrwP6SFS0SN9LVhw5jmLW2wDc3K7/6Zibp9Gb
	gLqp+Q1GeFp3hUHtsvO7D799IBbTpch6vcxienyjk4fIy53JYjbR5kDzqsxUCT0jZsbahFPBomNx5
	OcnRluWSERDxdH4SY+yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRRQ-0003Wx-73; Thu, 26 Sep 2019 10:56:08 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROL-0007EI-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:53:00 +0000
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqe71018255; Thu, 26 Sep 2019 06:52:54 -0400
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2051.outbound.protection.outlook.com [104.47.49.51])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hkcq43m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHEOSFfaKE9xKCR0Uzt+ow/B9WfDr6o1VQp7GJ4Gpj5fN8TMxdOKtIBG9yPdCJ1e2+98fw6YFQ0XvGtbzeaz2mNG6GH4PHDS75AggKd0C43xNmm5tmkr5QJod1QQP5GMDJZxUnZCSrcdl1DUf02wdzh4SIFA/Sqs7GuqOG7AFVeFED9wVAiep4PF6iL/thJwMiDUH5YTeGVUPmL/0+ZMZsHQyED5J78RSZX7WsQ981I2OUG+ohTufHT8nngq4enhwzVowWgu2IdDGNUlnioMjDItC+R2EdT1fo1kLeZT7Lljl24fyt7eQgHSxRtmbZkVQW8TfX93EoBdOXbfddhcEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CH9GMibfHC0zvMX/0AfhkRSackA+ifnakTtFod6XjxY=;
 b=mL10DK1LK/8EFxr+GwzG+v6gC/CXsQ6vJfDOfVI7MBmnIXn1mXMG+qt6aTXJhmm80uZLHMKGh5QJNEGacJy3dnmbNUViIKoG7RnOBij+Ni4UQA3HEKZR2LYF95T4vDDFAmrpzHvypP6PV1YMIusYLg3TlJQ6HgUGOzP/YPpsanrvy3HsD+6xB038boMTcvhvdyAB9MhDdel4w7WJ9On926gr3+Pmb6wiRJgtOJD4TTtteCTl2PRGuDNocebGUSBNi1hvWE5Z+Vdgc8r2jnd47mqOhBatvuKpnGqwXfvrs0I0EbnfqDrRACy+Mq1C1GVxc/HVOjwZPSBunYbBGb3g5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CH9GMibfHC0zvMX/0AfhkRSackA+ifnakTtFod6XjxY=;
 b=HsUiIvlZ/CeqTpJCFnIGG+EL4Z82bsh+qr72mwHOcjv+Pha0iFvlcWk807UXWE+ClmJ+9UZhNLPD58vbJUVpl2f2l4TyOHXqaASzykTzf3jidKTM694an/EnI1KTDwF2wgK5MRwAqcPkDR5XUNJLZ2e37RDz46VBCEypJtO4BUM=
Received: from CH2PR03CA0018.namprd03.prod.outlook.com (2603:10b6:610:59::28)
 by CY4PR03MB2694.namprd03.prod.outlook.com (2603:10b6:903:6f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.25; Thu, 26 Sep
 2019 10:52:52 +0000
Received: from BL2NAM02FT027.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by CH2PR03CA0018.outlook.office365.com
 (2603:10b6:610:59::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.21 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:52 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT027.mail.protection.outlook.com (10.152.77.160) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:52 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqqRq015006
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:52 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:51 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 16/19] spi: spi-fsl-espi: convert transfer delay to
 `spi_delay` format
Date: Thu, 26 Sep 2019 13:51:44 +0300
Message-ID: <20190926105147.7839-17-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(136003)(346002)(199004)(189003)(186003)(50466002)(1076003)(305945005)(4326008)(6666004)(2616005)(476003)(5660300002)(7416002)(356004)(50226002)(7636002)(14444005)(36756003)(486006)(70586007)(246002)(336012)(107886003)(48376002)(44832011)(54906003)(110136005)(47776003)(76176011)(8676002)(70206006)(2201001)(86362001)(2906002)(446003)(2870700001)(11346002)(426003)(8936002)(126002)(7696005)(51416003)(26005)(106002)(478600001)(316002)(81973001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR03MB2694; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab0e4cd8-fa2e-4fa8-9925-08d7426fae10
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:CY4PR03MB2694; 
X-MS-TrafficTypeDiagnostic: CY4PR03MB2694:
X-Microsoft-Antispam-PRVS: <CY4PR03MB2694FB9C5F3195C24141C9C4F9860@CY4PR03MB2694.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: JUjwhn46bIImS7X6KYliVUVYSUp4eESYcLHQ6ymJpzypJDIKz1y46keRMUO3dUoldNMhYeUUkLJoDwVL2tk3PFUnSl0cDa9szjDSZZpmd7Tl6PlfclM9ysAmOdXQC11Lnx7+PVJcdhPRI5DZxCI3FIW6ZbO5kS77k4i4sWGfW9k5sVaSWDtNLhDpxXE/GY0kK+od0hGp9+/dgBv43Svtk0B7y+8QAWkGjEF1f2a5bcy5OYvdOERcEmNdiYnNI5h9MTfItB0FL6obbMhwPGFu53gNEjndrOxTeI15mCO5Gdizm6LaIORDqQVwiaXK/G5JQ2h9K3kO7I3nuar2k/11DmLmhUynG8G1Ko+GtBmgBbB8SIcq+dGg9H4f/GExjEIIl9shWtUGIFnsPNF8sW6q7SHcqns0rQULH+sXInv/VsM=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:52.4730 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0e4cd8-fa2e-4fa8-9925-08d7426fae10
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR03MB2694
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=999 clxscore=1015 mlxscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035257_732434_369A2EEF 
X-CRM114-Status: GOOD (  14.87  )
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

The way the max delay is computed for this controller, it looks like it is
searching for the max delay from an SPI message a using that.

No idea if this is valid. But this change should support both `delay_usecs`
and the new `delay` data which is of `spi_delay` type.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-fsl-espi.c | 16 +++++++++++++---
 drivers/spi/spi.c          |  9 +++++----
 include/linux/spi/spi.h    |  1 +
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-fsl-espi.c b/drivers/spi/spi-fsl-espi.c
index 732bf3195917..e60581283a24 100644
--- a/drivers/spi/spi-fsl-espi.c
+++ b/drivers/spi/spi-fsl-espi.c
@@ -436,6 +436,7 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 			       struct spi_message *m)
 {
 	unsigned int delay_usecs = 0, rx_nbits = 0;
+	unsigned int delay_nsecs = 0, delay_nsecs1 = 0;
 	struct spi_transfer *t, trans = {};
 	int ret;
 
@@ -444,8 +445,16 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 		goto out;
 
 	list_for_each_entry(t, &m->transfers, transfer_list) {
-		if (t->delay_usecs > delay_usecs)
-			delay_usecs = t->delay_usecs;
+		if (t->delay_usecs) {
+			if (t->delay_usecs > delay_usecs) {
+				delay_usecs = t->delay_usecs;
+				delay_nsecs = delay_usecs * 1000;
+			}
+		} else {
+			delay_nsecs1 = spi_delay_to_ns(&t->delay, t);
+			if (delay_nsecs1 > delay_nsecs)
+				delay_nsecs = delay_nsecs1;
+		}
 		if (t->rx_nbits > rx_nbits)
 			rx_nbits = t->rx_nbits;
 	}
@@ -456,7 +465,8 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 	trans.len = m->frame_length;
 	trans.speed_hz = t->speed_hz;
 	trans.bits_per_word = t->bits_per_word;
-	trans.delay_usecs = delay_usecs;
+	trans.delay.value = delay_nsecs;
+	trans.delay.unit = SPI_DELAY_UNIT_NSECS;
 	trans.rx_nbits = rx_nbits;
 
 	if (trans.len)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 61ef286f954a..1f0b55c9e2e8 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1120,7 +1120,7 @@ static void _spi_transfer_delay_ns(u32 ns)
 	}
 }
 
-static int _spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
+int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
 {
 	u32 delay = _delay->value;
 	u32 unit = _delay->unit;
@@ -1153,6 +1153,7 @@ static int _spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
 
 	return delay;
 }
+EXPORT_SYMBOL_GPL(spi_delay_to_ns);
 
 int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
 {
@@ -1161,7 +1162,7 @@ int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
 	if (!_delay)
 		return -EINVAL;
 
-	delay = _spi_delay_to_ns(_delay, xfer);
+	delay = spi_delay_to_ns(_delay, xfer);
 	if (delay < 0)
 		return delay;
 
@@ -3211,11 +3212,11 @@ static int _spi_xfer_word_delay_update(struct spi_transfer *xfer,
 {
 	int delay1, delay2;
 
-	delay1 = _spi_delay_to_ns(&xfer->word_delay, xfer);
+	delay1 = spi_delay_to_ns(&xfer->word_delay, xfer);
 	if (delay1 < 0)
 		return delay1;
 
-	delay2 = _spi_delay_to_ns(&spi->word_delay, xfer);
+	delay2 = spi_delay_to_ns(&spi->word_delay, xfer);
 	if (delay2 < 0)
 		return delay2;
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 66031c8d0093..3bc5912fca36 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -102,6 +102,7 @@ struct spi_delay {
 	u8	unit;
 };
 
+extern int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer);
 extern int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer);
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
