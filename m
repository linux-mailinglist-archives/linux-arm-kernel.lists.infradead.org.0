Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46491E0C3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ORSuvidG7ojTa8BZ1CIkOtrGcFrGYZsV2J1VeXMKVA=; b=EVZQJe5oYN7XOl
	6Z5IR607y6yqOeb1GEvk0WwDdk6n5hDJKK8Sm4c3aFgwrpvjUw0iG7f0qvvugRny7Tt0UAsn6qoap
	PV3ckmO7odRWcujhY1XnFbEJduv9K5SD29AJVhcMXdhsExuOkNIh9czJuS8HPufrAWwDfYa1srZeq
	fyD2P10ASzH0JC0wSiarZd9aY6MlLuIYliyvmxZ29nGBQntuPjr9IxlLigteAjgT6PlVcOuj92YL7
	2nHihiXRgzT9cNM0avZf8iiQv7L9qvHgkadcqKvDOevDKj9WUej4RdU0KSXq1s0WM5r9GXqClso5F
	yOF9O4J/FrY7T15vAnig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAjz-0001Px-DC; Mon, 25 May 2020 10:53:55 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAjo-0001Pc-Tb
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:53:46 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04PAj2pn015856; Mon, 25 May 2020 06:53:41 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 316wp7xe8m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 May 2020 06:53:41 -0400
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 04PAreJX032357
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Mon, 25 May 2020 06:53:40 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 25 May
 2020 06:53:39 -0400
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Mon, 25 May 2020 06:53:38 -0400
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04PAralr015786;
 Mon, 25 May 2020 06:53:36 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev()
 helper
Date: Mon, 25 May 2020 13:53:41 +0300
Message-ID: <20200525105341.137945-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-25_05:2020-05-25,
 2020-05-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015
 malwarescore=0 mlxscore=0 lowpriorityscore=0 cotscore=-2147483648
 spamscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005250084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_035344_960521_BA6C3D0C 
X-CRM114-Status: GOOD (  17.25  )
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
 eugen.hristev@microchip.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
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
pass the iio device and using iio_priv() to access the private information,
and also keeping a reference to the iio device for some quirky paths.

One [quirky] path is the at91_adc_workq_handler() which requires the IIO
device & the state struct to push to buffers.
Since this requires the back-ref to the IIO device, the
at91_adc_touch_pos() also uses it. This simplifies the patch a bit. The
information required in this function is mostly for debugging purposes.
Replacing it with a reference to the IIO device would have been a slightly
bigger change, which may not be worth it (for just the debugging purpose
and given that we need the back-ref to the IIO device anyway).

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/adc/at91-sama5d2_adc.c | 30 +++++++++++++++++-------------
 1 file changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index 9abbbdcc7420..7bce18444430 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -402,6 +402,7 @@ struct at91_adc_state {
 	wait_queue_head_t		wq_data_available;
 	struct at91_adc_dma		dma_st;
 	struct at91_adc_touch		touch_st;
+	struct iio_dev			*indio_dev;
 	u16				buffer[AT91_BUFFER_MAX_HWORDS];
 	/*
 	 * lock to prevent concurrent 'single conversion' requests through
@@ -642,13 +643,13 @@ static u16 at91_adc_touch_pos(struct at91_adc_state *st, int reg)
 	/* first half of register is the x or y, second half is the scale */
 	val = at91_adc_readl(st, reg);
 	if (!val)
-		dev_dbg(&iio_priv_to_dev(st)->dev, "pos is 0\n");
+		dev_dbg(&st->indio_dev->dev, "pos is 0\n");
 
 	pos = val & AT91_SAMA5D2_XYZ_MASK;
 	result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
 	scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
 	if (scale == 0) {
-		dev_err(&iio_priv_to_dev(st)->dev, "scale is 0\n");
+		dev_err(&st->indio_dev->dev, "scale is 0\n");
 		return 0;
 	}
 	result /= scale;
@@ -1204,9 +1205,9 @@ static unsigned at91_adc_startup_time(unsigned startup_time_min,
 	return i;
 }
 
-static void at91_adc_setup_samp_freq(struct at91_adc_state *st, unsigned freq)
+static void at91_adc_setup_samp_freq(struct iio_dev *indio_dev, unsigned freq)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(st);
+	struct at91_adc_state *st = iio_priv(indio_dev);
 	unsigned f_per, prescal, startup, mr;
 
 	f_per = clk_get_rate(st->per_clk);
@@ -1275,9 +1276,9 @@ static void at91_adc_pen_detect_interrupt(struct at91_adc_state *st)
 	st->touch_st.touching = true;
 }
 
-static void at91_adc_no_pen_detect_interrupt(struct at91_adc_state *st)
+static void at91_adc_no_pen_detect_interrupt(struct iio_dev *indio_dev)
 {
-	struct iio_dev *indio_dev = iio_priv_to_dev(st);
+	struct at91_adc_state *st = iio_priv(indio_dev);
 
 	at91_adc_writel(st, AT91_SAMA5D2_TRGR,
 			AT91_SAMA5D2_TRGR_TRGMOD_NO_TRIGGER);
@@ -1297,7 +1298,7 @@ static void at91_adc_workq_handler(struct work_struct *workq)
 					struct at91_adc_touch, workq);
 	struct at91_adc_state *st = container_of(touch_st,
 					struct at91_adc_state, touch_st);
-	struct iio_dev *indio_dev = iio_priv_to_dev(st);
+	struct iio_dev *indio_dev = st->indio_dev;
 
 	iio_push_to_buffers(indio_dev, st->buffer);
 }
@@ -1318,7 +1319,7 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
 		at91_adc_pen_detect_interrupt(st);
 	} else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
 		/* nopen detected IRQ */
-		at91_adc_no_pen_detect_interrupt(st);
+		at91_adc_no_pen_detect_interrupt(indio);
 	} else if ((status & AT91_SAMA5D2_ISR_PENS) &&
 		   ((status & rdy_mask) == rdy_mask)) {
 		/* periodic trigger IRQ - during pen sense */
@@ -1486,7 +1487,7 @@ static int at91_adc_write_raw(struct iio_dev *indio_dev,
 		    val > st->soc_info.max_sample_rate)
 			return -EINVAL;
 
-		at91_adc_setup_samp_freq(st, val);
+		at91_adc_setup_samp_freq(indio_dev, val);
 		return 0;
 	default:
 		return -EINVAL;
@@ -1624,8 +1625,10 @@ static int at91_adc_update_scan_mode(struct iio_dev *indio_dev,
 	return 0;
 }
 
-static void at91_adc_hw_init(struct at91_adc_state *st)
+static void at91_adc_hw_init(struct iio_dev *indio_dev)
 {
+	struct at91_adc_state *st = iio_priv(indio_dev);
+
 	at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
 	at91_adc_writel(st, AT91_SAMA5D2_IDR, 0xffffffff);
 	/*
@@ -1635,7 +1638,7 @@ static void at91_adc_hw_init(struct at91_adc_state *st)
 	at91_adc_writel(st, AT91_SAMA5D2_MR,
 			AT91_SAMA5D2_MR_TRANSFER(2) | AT91_SAMA5D2_MR_ANACH);
 
-	at91_adc_setup_samp_freq(st, st->soc_info.min_sample_rate);
+	at91_adc_setup_samp_freq(indio_dev, st->soc_info.min_sample_rate);
 
 	/* configure extended mode register */
 	at91_adc_config_emr(st);
@@ -1718,6 +1721,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 	indio_dev->num_channels = ARRAY_SIZE(at91_adc_channels);
 
 	st = iio_priv(indio_dev);
+	st->indio_dev = indio_dev;
 
 	bitmap_set(&st->touch_st.channels_bitmask,
 		   AT91_SAMA5D2_TOUCH_X_CHAN_IDX, 1);
@@ -1829,7 +1833,7 @@ static int at91_adc_probe(struct platform_device *pdev)
 		goto vref_disable;
 	}
 
-	at91_adc_hw_init(st);
+	at91_adc_hw_init(indio_dev);
 
 	ret = clk_prepare_enable(st->per_clk);
 	if (ret)
@@ -1945,7 +1949,7 @@ static __maybe_unused int at91_adc_resume(struct device *dev)
 	if (ret)
 		goto vref_disable_resume;
 
-	at91_adc_hw_init(st);
+	at91_adc_hw_init(indio_dev);
 
 	/* reconfiguring trigger hardware state */
 	if (!iio_buffer_enabled(indio_dev))
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
