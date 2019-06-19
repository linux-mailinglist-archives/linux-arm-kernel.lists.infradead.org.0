Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C104B964
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOuMuyBWtjTh2XPLxQPlZj+NJYMT0S54Y3BuFZWk9Ho=; b=WVB0VQEJonWt5x
	nRRW+bmnEo7RQltx86mXIAP41U9ZIJctVmTCtpJV4ovaWQPLg2+sQ/hV8nHDTBVx1TcUMSf6sk41c
	JgSg6D2uWpYzxFCRFUo0XWta+jTU/gvdK916yXbrqh+2RKXn225vmE+Nwn+VooP+xQNSOnCA/IUzs
	tC9nCmMVJpK73x+R46My306VWtrqsl7TOzSX2rEfgnte7bAL/X364c+WHEN6pQsxwbV6prkY/B7qA
	8RESy+22gPsrrQNo9ZWJDZxGUL7/a+zy0f/zZ7G/CuIQ4L+CXpazHT6kpK5qvU6zTOBytM017axg9
	2KF9AoZG95JeUA73e0sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaHh-0002ny-BJ; Wed, 19 Jun 2019 13:05:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaFy-0000Ex-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:04:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JCuDOn030429; Wed, 19 Jun 2019 15:04:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=p5e2nfsElxNtsp+AWmabxwZass2bjpLHbaOSk3EXfxc=;
 b=xKbs6LYe8u7td8XhtcXeqRg/V8xdmFKrCFxWmC0/zvKrN5fLFw3DOaKsUJxhKt322uEk
 +qKfZIeBqlHL1/idmQY3TNWjkGPdrH+81v0MpKkcqsTA0nThikpRKcS7ZrPoWTx0SL6s
 dOeo0YBQ7FftBVl0+Pjygsff/l/RbZyNTaRyNlcSYghHOKGQ9J4ezO6wmdwfsrwSZdUp
 sY7qNwiLiThJ/UEWwX6wSzPUC7AchqjmKYqJH9i6KI1Ve8MyO5sD9QAwj/o88jgtBfZh
 uthoD49GdLN7+zR44DQ/pFmemysWLrNiJ42M8zZHsyUp/C296RY+IoSh58TLW6GcN4kz lQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t781a3yy1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 15:04:02 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C24FA3A;
 Wed, 19 Jun 2019 13:04:00 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 96AAB2835;
 Wed, 19 Jun 2019 13:04:00 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 15:04:00 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 15:04:00
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>,
 <linux-iio@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <olivier.moysan@st.com>
Subject: [PATCH 4/5] iio: adc: stm32-dfsdm: add fast mode support
Date: Wed, 19 Jun 2019 15:03:50 +0200
Message-ID: <1560949431-22948-5-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
References: <1560949431-22948-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060407_054455_E6383724 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The use of fast mode allows to get a larger set of solution
for filter parameters. This can be useful to reach a better
output sample resolution, when fast mode can be used.

Fast mode is selected at startup if it is relevant.
The startup is performed in postenable callback context,
where there are too tight time constraints for filter parameters
computation. For this reason both fast and non fast filter parameters
are pre-computed previously.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 65 ++++++++++++++++++++++++++++++---------
 drivers/iio/adc/stm32-dfsdm.h     |  4 +--
 2 files changed, 53 insertions(+), 16 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 5b19a88412a6..d855a605eab6 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -196,7 +196,7 @@ static int stm32_dfsdm_compute_osrs(struct stm32_dfsdm_filter *fl,
 	int bits, shift;
 	unsigned int m = 1;	/* multiplication factor */
 	unsigned int p = fl->ford;	/* filter order (ford) */
-	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo[fast];
 
 	pr_debug("%s: Requested oversampling: %d\n",  __func__, oversamp);
 	/*
@@ -217,7 +217,6 @@ static int stm32_dfsdm_compute_osrs(struct stm32_dfsdm_filter *fl,
 	 * Look for filter and integrator oversampling ratios which allows
 	 * to maximize data output resolution.
 	 */
-	flo->res = 0;
 	for (fosr = 1; fosr <= DFSDM_MAX_FL_OVERSAMPLING; fosr++) {
 		for (iosr = 1; iosr <= DFSDM_MAX_INT_OVERSAMPLING; iosr++) {
 			if (fast)
@@ -309,6 +308,28 @@ static int stm32_dfsdm_compute_osrs(struct stm32_dfsdm_filter *fl,
 	return 0;
 }
 
+static int stm32_dfsdm_compute_all_osrs(struct iio_dev *indio_dev,
+					unsigned int oversamp)
+{
+	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
+	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
+	int ret0, ret1;
+
+	memset(&fl->flo[0], 0, sizeof(fl->flo[0]));
+	memset(&fl->flo[1], 0, sizeof(fl->flo[1]));
+
+	ret0 = stm32_dfsdm_compute_osrs(fl, 0, oversamp);
+	ret1 = stm32_dfsdm_compute_osrs(fl, 1, oversamp);
+	if (ret0 < 0 && ret1 < 0) {
+		dev_err(&indio_dev->dev,
+			"Filter parameters not found: errors %d/%d\n",
+			ret0, ret1);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int stm32_dfsdm_start_channel(struct stm32_dfsdm_adc *adc)
 {
 	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
@@ -433,11 +454,25 @@ static int stm32_dfsdm_channels_configure(struct stm32_dfsdm_adc *adc,
 	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 	struct regmap *regmap = adc->dfsdm->regmap;
 	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[fl_id];
-	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo[0];
 	const struct iio_chan_spec *chan;
 	unsigned int bit;
 	int ret;
 
+	fl->fast = 0;
+
+	/*
+	 * In continuous mode, use fast mode configuration,
+	 * if it provides a better resolution.
+	 */
+	if (adc->nconv == 1 && !trig &&
+	    (indio_dev->currentmode & INDIO_BUFFER_SOFTWARE)) {
+		if (fl->flo[1].res >= fl->flo[0].res) {
+			fl->fast = 1;
+			flo = &fl->flo[1];
+		}
+	}
+
 	if (!flo->res)
 		return -EINVAL;
 
@@ -463,7 +498,7 @@ static int stm32_dfsdm_filter_configure(struct stm32_dfsdm_adc *adc,
 	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 	struct regmap *regmap = adc->dfsdm->regmap;
 	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[fl_id];
-	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo[fl->fast];
 	u32 cr1;
 	const struct iio_chan_spec *chan;
 	unsigned int bit, jchg = 0;
@@ -490,6 +525,12 @@ static int stm32_dfsdm_filter_configure(struct stm32_dfsdm_adc *adc,
 	if (ret)
 		return ret;
 
+	ret = regmap_update_bits(regmap, DFSDM_CR1(fl_id),
+				 DFSDM_CR1_FAST_MASK,
+				 DFSDM_CR1_FAST(fl->fast));
+	if (ret)
+		return ret;
+
 	/*
 	 * DFSDM modes configuration W.R.T audio/iio type modes
 	 * ----------------------------------------------------------------
@@ -636,7 +677,6 @@ static int dfsdm_adc_set_samp_freq(struct iio_dev *indio_dev,
 				   unsigned int spi_freq)
 {
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
-	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
 	unsigned int oversamp;
 	int ret;
 
@@ -646,11 +686,10 @@ static int dfsdm_adc_set_samp_freq(struct iio_dev *indio_dev,
 			"Rate not accurate. requested (%u), actual (%u)\n",
 			sample_freq, spi_freq / oversamp);
 
-	ret = stm32_dfsdm_compute_osrs(fl, 0, oversamp);
-	if (ret < 0) {
-		dev_err(&indio_dev->dev, "No filter parameters that match!\n");
+	ret = stm32_dfsdm_compute_all_osrs(indio_dev, oversamp);
+	if (ret < 0)
 		return ret;
-	}
+
 	adc->sample_freq = spi_freq / oversamp;
 	adc->oversamp = oversamp;
 
@@ -783,7 +822,7 @@ static inline void stm32_dfsdm_process_data(struct stm32_dfsdm_adc *adc,
 					    s32 *buffer)
 {
 	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
-	struct stm32_dfsdm_filter_osr *flo = &fl->flo;
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo[fl->fast];
 	unsigned int i = adc->nconv;
 	s32 *ptr = buffer;
 
@@ -1171,7 +1210,6 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
 				 int val, int val2, long mask)
 {
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
-	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
 	struct stm32_dfsdm_channel *ch = &adc->dfsdm->ch_list[chan->channel];
 	unsigned int spi_freq;
 	int ret = -EINVAL;
@@ -1181,7 +1219,7 @@ static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
 		ret = iio_device_claim_direct_mode(indio_dev);
 		if (ret)
 			return ret;
-		ret = stm32_dfsdm_compute_osrs(fl, 0, val);
+		ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
 		if (!ret)
 			adc->oversamp = val;
 		iio_device_release_direct_mode(indio_dev);
@@ -1430,8 +1468,7 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
 	int ret, chan_idx;
 
 	adc->oversamp = DFSDM_DEFAULT_OVERSAMPLING;
-	ret = stm32_dfsdm_compute_osrs(&adc->dfsdm->fl_list[adc->fl_id], 0,
-				       adc->oversamp);
+	ret = stm32_dfsdm_compute_all_osrs(indio_dev, adc->oversamp);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/iio/adc/stm32-dfsdm.h b/drivers/iio/adc/stm32-dfsdm.h
index 18b06ee6ed7b..5dbdae4ed881 100644
--- a/drivers/iio/adc/stm32-dfsdm.h
+++ b/drivers/iio/adc/stm32-dfsdm.h
@@ -263,13 +263,13 @@ struct stm32_dfsdm_filter_osr {
 /**
  * struct stm32_dfsdm_filter - structure relative to stm32 FDSDM filter
  * @ford: filter order
- * @flo: filter oversampling structure
+ * @flo: filter oversampling data table indexed by fast mode flag
  * @sync_mode: filter synchronized with filter 0
  * @fast: filter fast mode
  */
 struct stm32_dfsdm_filter {
 	enum stm32_dfsdm_sinc_order ford;
-	struct stm32_dfsdm_filter_osr flo;
+	struct stm32_dfsdm_filter_osr flo[2];
 	unsigned int sync_mode;
 	unsigned int fast;
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
