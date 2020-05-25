Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910C11E0BC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mbjh5huJN9VUhXH+uELxOQV2K8Y7a6wnfPtB4v3IGV8=; b=aARn9YOzRqyT6c
	2pPw+4C3lSe/5KmOiX4PhXCTtEeMEbDuOlNzNARmqjhpjq0EaNskERUxebpH2LmgOoj6jyipUerOd
	RYpzP4ZvoccHdseFM7hlrDsyuJG8OnX3cONeVz2lacmuRnwCFxB6yeIGG0FshGKIcD+QSr7ppb5XN
	ypG4O98cJHLXTYvUILD0RNJgqraHSiS+rF568+CNuSzjFwADSTUaJMDrWY2BT8wpdks1IHLulGXbY
	D6jDHj/+1PMzEOSsU46liwd9K1xrzuMotMSdAeFkV2l0fHg222mdHp2bo4Pwfl9WVsrHg66KQVGHZ
	nYk8FZZktypOv58ojnSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAId-0006Dr-H9; Mon, 25 May 2020 10:25:39 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAIQ-0005FS-8J
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:25:28 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04PANZsc030566; Mon, 25 May 2020 06:25:22 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 3170r5x3md-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 06:25:22 -0400
Received: from SCSQMBX10.ad.analog.com (scsqmbx10.ad.analog.com [10.77.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04PAPKVD001109
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Mon, 25 May 2020 06:25:20 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX10.ad.analog.com (10.77.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 25 May 2020 03:25:18 -0700
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 25 May 2020 03:25:08 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Mon, 25 May 2020 03:25:18 -0700
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04PAPEd4014621;
 Mon, 25 May 2020 06:25:14 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] iio: at91_adc: remove usage of iio_priv_to_dev() helper
Date: Mon, 25 May 2020 13:25:13 +0300
Message-ID: <20200525102513.130664-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-25_04:2020-05-25,
 2020-05-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 mlxscore=0
 malwarescore=0 spamscore=0 clxscore=1015 cotscore=-2147483648 adultscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005250080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_032526_325588_CE5BFA3B 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 jic23@kernel.org, Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We may want to get rid of the iio_priv_to_dev() helper. The reason is that
we will hide some of the members of the iio_dev structure (to prevent
drivers from accessing them directly), and that will also mean hiding the
implementation of the iio_priv_to_dev() helper inside the IIO core.

Hiding the implementation of iio_priv_to_dev() implies that some fast-paths
may not be fast anymore, so a general idea is to try to get rid of the
iio_priv_to_dev() altogether.
The iio_priv() helper won't be affected by the rework, as the iio_dev
struct will keep a reference to the private information.

For this driver, not using iio_priv_to_dev(), means reworking some paths to
pass the iio device and using iio_priv() to access the private information.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/at91_adc.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index 0368b6dc6d60..896af58e88bc 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -287,13 +287,13 @@ static void handle_adc_eoc_trigger(int irq, struct iio_dev *idev)
 	}
 }
 
-static int at91_ts_sample(struct at91_adc_state *st)
+static int at91_ts_sample(struct iio_dev *idev)
 {
+	struct at91_adc_state *st = iio_priv(idev);
 	unsigned int xscale, yscale, reg, z1, z2;
 	unsigned int x, y, pres, xpos, ypos;
 	unsigned int rxp = 1;
 	unsigned int factor = 1000;
-	struct iio_dev *idev = iio_priv_to_dev(st);
 
 	unsigned int xyz_mask_bits = st->res;
 	unsigned int xyz_mask = (1 << xyz_mask_bits) - 1;
@@ -449,7 +449,7 @@ static irqreturn_t at91_adc_9x5_interrupt(int irq, void *private)
 
 		if (status & AT91_ADC_ISR_PENS) {
 			/* validate data by pen contact */
-			at91_ts_sample(st);
+			at91_ts_sample(idev);
 		} else {
 			/* triggered by event that is no pen contact, just read
 			 * them to clean the interrupt and discard all.
@@ -737,10 +737,10 @@ static int at91_adc_read_raw(struct iio_dev *idev,
 	return -EINVAL;
 }
 
-static int at91_adc_of_get_resolution(struct at91_adc_state *st,
+static int at91_adc_of_get_resolution(struct iio_dev *idev,
 				      struct platform_device *pdev)
 {
-	struct iio_dev *idev = iio_priv_to_dev(st);
+	struct at91_adc_state *st = iio_priv(idev);
 	struct device_node *np = pdev->dev.of_node;
 	int count, i, ret = 0;
 	char *res_name, *s;
@@ -866,10 +866,10 @@ static int at91_adc_probe_dt_ts(struct device_node *node,
 	}
 }
 
-static int at91_adc_probe_dt(struct at91_adc_state *st,
+static int at91_adc_probe_dt(struct iio_dev *idev,
 			     struct platform_device *pdev)
 {
-	struct iio_dev *idev = iio_priv_to_dev(st);
+	struct at91_adc_state *st = iio_priv(idev);
 	struct device_node *node = pdev->dev.of_node;
 	struct device_node *trig_node;
 	int i = 0, ret;
@@ -910,7 +910,7 @@ static int at91_adc_probe_dt(struct at91_adc_state *st,
 	}
 	st->vref_mv = prop;
 
-	ret = at91_adc_of_get_resolution(st, pdev);
+	ret = at91_adc_of_get_resolution(idev, pdev);
 	if (ret)
 		goto error_ret;
 
@@ -1010,9 +1010,9 @@ static void atmel_ts_close(struct input_dev *dev)
 		at91_adc_writel(st, AT91_ADC_IDR, AT91RL_ADC_IER_PEN);
 }
 
-static int at91_ts_hw_init(struct at91_adc_state *st, u32 adc_clk_khz)
+static int at91_ts_hw_init(struct iio_dev *idev, u32 adc_clk_khz)
 {
-	struct iio_dev *idev = iio_priv_to_dev(st);
+	struct at91_adc_state *st = iio_priv(idev);
 	u32 reg = 0;
 	u32 tssctim = 0;
 	int i = 0;
@@ -1085,11 +1085,11 @@ static int at91_ts_hw_init(struct at91_adc_state *st, u32 adc_clk_khz)
 	return 0;
 }
 
-static int at91_ts_register(struct at91_adc_state *st,
+static int at91_ts_register(struct iio_dev *idev,
 		struct platform_device *pdev)
 {
+	struct at91_adc_state *st = iio_priv(idev);
 	struct input_dev *input;
-	struct iio_dev *idev = iio_priv_to_dev(st);
 	int ret;
 
 	input = input_allocate_device();
@@ -1161,7 +1161,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 	st = iio_priv(idev);
 
 	if (pdev->dev.of_node)
-		ret = at91_adc_probe_dt(st, pdev);
+		ret = at91_adc_probe_dt(idev, pdev);
 	else
 		ret = at91_adc_probe_pdata(st, pdev);
 
@@ -1301,11 +1301,11 @@ static int at91_adc_probe(struct platform_device *pdev)
 			goto error_disable_adc_clk;
 		}
 	} else {
-		ret = at91_ts_register(st, pdev);
+		ret = at91_ts_register(idev, pdev);
 		if (ret)
 			goto error_disable_adc_clk;
 
-		at91_ts_hw_init(st, adc_clk_khz);
+		at91_ts_hw_init(idev, adc_clk_khz);
 	}
 
 	ret = iio_device_register(idev);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
