Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC12BF03C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6SRXKBZAv2vgbbce3YDadZrNyf70nZmlZ6VgZ0j3N4=; b=Hgt6Hg0kaqbpyi
	r6Ffg5xslTqa9RiVXCh999tp6NeNLz+oprh0QIiAvdQ+IYfGgGghke97xF18n3D0RRuvHIdOqoyeh
	A+hmWhBaDUE6NT4ENXHbFpccJYrixzjrhT2GAaJrMUksQsXcv7WsVEzxFuoV1275K6jj8ZrHvf1vA
	NTGjb3yDIt8dBaXiqgtJZXuz/bqczhdW/L1SzmBrxIUT5crGWEt4pa1uOX/NHsBGQG+NxuR/Xxo10
	gM+FO50qoas2+5Z8ffmGfSWdAhPG6LyoDBl4ByT9ieGYV4qQM0uJRr+Do30XVKKFOmMDJWb05MTaI
	MEPnPDFoQN0c8tO7t73w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDROm-0007WB-PF; Thu, 26 Sep 2019 10:53:24 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRNo-0006Zj-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:52:26 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8QAqMeI030420; Thu, 26 Sep 2019 06:52:22 -0400
Received: from nam02-bl2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2054.outbound.protection.outlook.com [104.47.38.54])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v6hku7cbr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 26 Sep 2019 06:52:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GENUyd3ZZNkXXbymvp/jy5CqfC4j6woQH4t4b/Cf16WqJsY6QonnkixpqdAqwCeauBc3ntGHDfvNtB17Xmbv3UYfPLPaTklb+ojARe3Wcu40WvnvGfdFGWykvkgDBIG+m22pLupjwa+RGkOlrPtoBIr0PYeza34ejdU94DlNq9wYLRO9kmnBiUsvY4UelUSWjiUtoisJxwkmZ3YprGy9py1Y49ZxF/0s2vazE+A78KNpikh6qQ6UJlh099LHX2cx/Qop9GFgr0n5aV5DHGptGtVvVsvlWnB8k+9dvty+di0OSbwB1OcwlLYZfnLQ0fai21J5/E3ARdsDMuiFXKhRoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WYcLfPlSWsVcRSi6vEDtOApg72ktL+WvUv8x/fiP8Jg=;
 b=QkPJaJlYTqvDSxXGzxB7F4pofN1/2yMd8TrMvkB97m3pz+QWilrWsEH31zEeZbVptzqDYCIs4AOH6jdTIOHfgIPgYl+5T6Z04R2auYvy4ktjMqzzGE8nbr2rz730Ov4DsxzRS7AV2K7Mdawv/cin5Gpdv+QBrb5qk7V6U71hjOJnubQN60B7CIG4k68K9sidky5KP8bF168op5sjqMmapc5Lft3BoMiEiLJgfHxVoN3+YVSKdglcf54BME+sIVPHve+lWz7OiAyQtf+gTidFmmSRAvI65NckbFZcVmHVvQlRl9PWNqnrHhHZGXrBXzLFdxd+ph4piJ3pv0JtAT0yTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=analog.com; 
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WYcLfPlSWsVcRSi6vEDtOApg72ktL+WvUv8x/fiP8Jg=;
 b=N3aOFs6lBo5LOjVWtzZV0hzM5j5mJgjZ2wbax4yULG5laZvnbYMGwZFZYu0GRYKx28hO0ZPSdJ/JSlX878dY4qlU70+F5JIB0h0XOPVOV+oha0AhiYrnNBQNQiBkk1XCkyr+/ZbRbvyk0n6fqwBybhgpFCNsBs5sLhEb6D5Au4w=
Received: from BN3PR03CA0090.namprd03.prod.outlook.com
 (2a01:111:e400:7a4d::50) by MN2PR03MB5182.namprd03.prod.outlook.com
 (2603:10b6:208:1e7::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Thu, 26 Sep
 2019 10:52:19 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by BN3PR03CA0090.outlook.office365.com
 (2a01:111:e400:7a4d::50) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.26 via Frontend
 Transport; Thu, 26 Sep 2019 10:52:19 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 10:52:19 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x8QAqJpv014772
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 26 Sep 2019 03:52:19 -0700
Received: from saturn.ad.analog.com (10.48.65.123) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 26 Sep 2019 06:52:18 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <bcm-kernel-feedback-list@broadcom.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v4 04/19] spi: sprd: convert transfer word delay to spi_delay
 struct
Date: Thu, 26 Sep 2019 13:51:32 +0300
Message-ID: <20190926105147.7839-5-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926105147.7839-1-alexandru.ardelean@analog.com>
References: <20190926105147.7839-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(47776003)(11346002)(2906002)(36756003)(446003)(486006)(126002)(51416003)(76176011)(26005)(476003)(2616005)(4326008)(426003)(336012)(2870700001)(8936002)(50226002)(8676002)(246002)(478600001)(48376002)(107886003)(186003)(7696005)(70206006)(106002)(54906003)(50466002)(316002)(44832011)(110136005)(70586007)(7416002)(86362001)(7636002)(305945005)(2201001)(1076003)(6666004)(356004)(5660300002)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR03MB5182; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af374764-9f02-4518-cb77-08d7426f9a6c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:MN2PR03MB5182; 
X-MS-TrafficTypeDiagnostic: MN2PR03MB5182:
X-Microsoft-Antispam-PRVS: <MN2PR03MB5182E5E51A7635C0EEB68597F9860@MN2PR03MB5182.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: f8M3VKK/ang1Ln6X5JxNcK9SAl0aWH+C+OY73EpWi9ldf/+I4D8uluHOtIteieCPDAWkS2hK9fGfsUiTPsOHM5M1PdtMFrIuZvo2xzB2tYixKEeQhD3ReD9JwXhJFcGK8xyKjXL0+d4Zl0iuIfNTAauWQE8qS2BlelMWRQcYgzyghxM1McVaQc+c9AVYJvQgf4InZTla1FD2PnDeT7Hwg4xGtpbA6Nyf2QAlJpg7CL3ixA/QU0T4nIB2AHv/qmawL0h7NpltBT0WciG7o+vA8kaC4020EzCVF5yVtgzJY/hqXRsk5JYHRKk1Oo3MMm5v0WHwdCydWRH5S2w6q7/lUp6jhXQ8LgCeXAE/9ZWezhCt0JrZaOiFyoS5zmwpZNLQiYN7tI9AO9c8quJP07I39yC3eF1A38bENpeQJZG5mjA=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 10:52:19.5278 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af374764-9f02-4518-cb77-08d7426f9a6c
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB5182
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_05:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 adultscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035224_421039_867FECB6 
X-CRM114-Status: GOOD (  15.19  )
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

The Spreadtrum SPI driver is the only user of the `word_delay` field in
the `spi_transfer` struct.

This change converts the field to use the `spi_delay` struct. This also
enforces the users to specify the delay unit to be `SPI_DELAY_UNIT_SCK`.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/spi/spi-sprd.c  | 15 ++++++++++++---
 include/linux/spi/spi.h |  4 ++--
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-sprd.c b/drivers/spi/spi-sprd.c
index 1b7eebb72c07..7e72e8facff7 100644
--- a/drivers/spi/spi-sprd.c
+++ b/drivers/spi/spi-sprd.c
@@ -669,11 +669,15 @@ static void sprd_spi_set_speed(struct sprd_spi *ss, u32 speed_hz)
 	writel_relaxed(clk_div, ss->base + SPRD_SPI_CLKD);
 }
 
-static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
+static int sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 {
+	struct spi_delay *d = &t->word_delay;
 	u16 word_delay, interval;
 	u32 val;
 
+	if (d->unit != SPI_DELAY_UNIT_SCK)
+		return -EINVAL;
+
 	val = readl_relaxed(ss->base + SPRD_SPI_CTL7);
 	val &= ~(SPRD_SPI_SCK_REV | SPRD_SPI_NG_TX | SPRD_SPI_NG_RX);
 	/* Set default chip selection, clock phase and clock polarity */
@@ -686,7 +690,7 @@ static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 	 * formula as below per datasheet:
 	 * interval time (source clock cycles) = interval * 4 + 10.
 	 */
-	word_delay = clamp_t(u16, t->word_delay, SPRD_SPI_MIN_DELAY_CYCLE,
+	word_delay = clamp_t(u16, d->value, SPRD_SPI_MIN_DELAY_CYCLE,
 			     SPRD_SPI_MAX_DELAY_CYCLE);
 	interval = DIV_ROUND_UP(word_delay - 10, 4);
 	ss->word_delay = interval * 4 + 10;
@@ -711,6 +715,8 @@ static void sprd_spi_init_hw(struct sprd_spi *ss, struct spi_transfer *t)
 		val &= ~SPRD_SPI_DATA_LINE2_EN;
 
 	writel_relaxed(val, ss->base + SPRD_SPI_CTL7);
+
+	return 0;
 }
 
 static int sprd_spi_setup_transfer(struct spi_device *sdev,
@@ -719,13 +725,16 @@ static int sprd_spi_setup_transfer(struct spi_device *sdev,
 	struct sprd_spi *ss = spi_controller_get_devdata(sdev->controller);
 	u8 bits_per_word = t->bits_per_word;
 	u32 val, mode = 0;
+	int ret;
 
 	ss->len = t->len;
 	ss->tx_buf = t->tx_buf;
 	ss->rx_buf = t->rx_buf;
 
 	ss->hw_mode = sdev->mode;
-	sprd_spi_init_hw(ss, t);
+	ret = sprd_spi_init_hw(ss, t);
+	if (ret)
+		return ret;
 
 	/* Set tansfer speed and valid bits */
 	sprd_spi_set_speed(ss, t->speed_hz);
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 9ded3f44d58e..16397b210e0c 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -759,7 +759,7 @@ extern void spi_res_release(struct spi_controller *ctlr,
  *	the next transfer or completing this @spi_message.
  * @word_delay_usecs: microseconds to inter word delay after each word size
  *	(set by bits_per_word) transmission.
- * @word_delay: clock cycles to inter word delay after each word size
+ * @word_delay: inter word delay to be introduced after each word size
  *	(set by bits_per_word) transmission.
  * @effective_speed_hz: the effective SCK-speed that was used to
  *      transfer this transfer. Set to 0 if the spi bus driver does
@@ -847,8 +847,8 @@ struct spi_transfer {
 	u8		word_delay_usecs;
 	u16		delay_usecs;
 	struct spi_delay	cs_change_delay;
+	struct spi_delay	word_delay;
 	u32		speed_hz;
-	u16		word_delay;
 
 	u32		effective_speed_hz;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
