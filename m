Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7352F151899
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qq7HKL9i3b1DzNvoS7BKzbOtiDZoA0XZqdOU0/5yZbo=; b=L3XD/1pDvb1X1b
	3ABsjMJ7T1fleMDUUbwyaMkUoh5jlTN9+o9Gk4zhihpvNqDGRzbsfTl1xj5l5mc62GwNw6VNvi4J3
	5KwR/+RsKXujnGk05rYiYj3IxhGPlmep928qQVkW0ye4mTRvakLcl5TShp6KOsU05OiAhOQH/W46E
	gbHMePbrYp5USi143LzXdBXy7Y2wq5VY2J/rR5mtoitNeycPCWDLJ3lItsdIfU3jYpKnv27ePK9Bi
	pvS7JVPdnWZEiLA44oewsvj1llUNyz29npKa2UTRUG17DJatDmmLGI27N9AJt/pjHJYgcQ2gy+tPg
	y+mRqMkXrHMnSFAYFMWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvBE-0001Gq-M9; Tue, 04 Feb 2020 10:11:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvAM-0000RD-6h
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:10:49 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014A7pji011091; Tue, 4 Feb 2020 11:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=bhdUjCl28U8mxH7dOdR1VAauDSxTC8bwI7sY3gTd9YU=;
 b=UNfs1fTp+4E4c4FmHuRM99P110CzEtE7UckSzL3ukGDivoVQ6GE1nL0nDRrcsQE0UYXZ
 59RmKsj4LK18HMkZ5GoOHBip9A7TN4tvedcV1YgQyNkJF/Zqlkv0DOsTwv68It8yEjOC
 9aAjl6vtWyJSWxxxc9KI+ZvPvexMr9tfpuMt9eLRUS+FfRvNFTaVQb1MfeCOxDhp8voI
 Ho+AA0SYipuLsTnvwgGsnQ2LesX0weR4qQ+DAdG1AuUFeGQF3YJxyzwSeJ8On5yCaJ7p
 llG0Y/+lZNSEOBXNEWtYRJVWHDgczg1o3VUcnRIGJuGLPe8bKkg4gjF1CNxoAjH2Iixc dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvybe0hhm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:10:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5908310003B;
 Tue,  4 Feb 2020 11:10:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 49AFC2AD9D9;
 Tue,  4 Feb 2020 11:10:33 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Feb 2020 11:10:32 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 4/4] iio: adc: stm32-dfsdm: add scale and offset support
Date: Tue, 4 Feb 2020 11:10:08 +0100
Message-ID: <20200204101008.11411-5-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204101008.11411-1-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021046_533877_45432E1E 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add scale and offset attributes support to STM32 DFSDM.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/stm32-dfsdm-adc.c | 105 +++++++++++++++++++++++++++++-
 1 file changed, 102 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
index 07b9dfdf8e76..b85fd3e90496 100644
--- a/drivers/iio/adc/stm32-dfsdm-adc.c
+++ b/drivers/iio/adc/stm32-dfsdm-adc.c
@@ -10,6 +10,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/iio/adc/stm32-dfsdm-adc.h>
 #include <linux/iio/buffer.h>
+#include <linux/iio/consumer.h>
 #include <linux/iio/hw-consumer.h>
 #include <linux/iio/sysfs.h>
 #include <linux/iio/timer/stm32-lptim-trigger.h>
@@ -67,6 +68,13 @@ struct stm32_dfsdm_dev_data {
 	const struct regmap_config *regmap_cfg;
 };
 
+struct stm32_dfsdm_sd_chan_info {
+	int scale_val;
+	int scale_val2;
+	int offset;
+	unsigned int differential;
+};
+
 struct stm32_dfsdm_adc {
 	struct stm32_dfsdm *dfsdm;
 	const struct stm32_dfsdm_dev_data *dev_data;
@@ -79,6 +87,7 @@ struct stm32_dfsdm_adc {
 	struct iio_hw_consumer *hwc;
 	struct completion completion;
 	u32 *buffer;
+	struct stm32_dfsdm_sd_chan_info *sd_chan;
 
 	/* Audio specific */
 	unsigned int spi_freq;  /* SPI bus clock frequency */
@@ -1271,7 +1280,10 @@ static int stm32_dfsdm_read_raw(struct iio_dev *indio_dev,
 				int *val2, long mask)
 {
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
-	int ret;
+	struct stm32_dfsdm_filter *fl = &adc->dfsdm->fl_list[adc->fl_id];
+	struct stm32_dfsdm_filter_osr *flo = &fl->flo[fl->fast];
+	u32 max = flo->max << (flo->lshift - chan->scan_type.shift);
+	int ret, idx = chan->scan_index;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -1307,6 +1319,41 @@ static int stm32_dfsdm_read_raw(struct iio_dev *indio_dev,
 		*val = adc->sample_freq;
 
 		return IIO_VAL_INT;
+
+	case IIO_CHAN_INFO_SCALE:
+		/*
+		 * Scale is expressed in mV.
+		 * When fast mode is disabled, actual resolution may be lower
+		 * than 2^n, where n=realbits-1.
+		 * This leads to underestimating input voltage. To
+		 * compensate this deviation, the voltage reference can be
+		 * corrected with a factor = realbits resolution / actual max
+		 */
+		*val = div_u64((u64)adc->sd_chan[idx].scale_val *
+			       (u64)BIT(DFSDM_DATA_RES - 1), max);
+		*val2 = chan->scan_type.realbits;
+		if (adc->sd_chan[idx].differential)
+			*val *= 2;
+
+		return IIO_VAL_FRACTIONAL_LOG2;
+
+	case IIO_CHAN_INFO_OFFSET:
+		/*
+		 * DFSDM output data are in the range [-2^n,2^n-1],
+		 * with n=realbits-1.
+		 * - Differential modulator:
+		 * Offset correspond to SD modulator offset.
+		 * - Single ended modulator:
+		 * Input is in [0V,Vref] range, where 0V corresponds to -2^n.
+		 * Add 2^n to offset. (i.e. middle of input range)
+		 * offset = offset(sd) * vref / res(sd) * max / vref.
+		 */
+		*val = div_u64((u64)max * adc->sd_chan[idx].offset,
+			       BIT(adc->sd_chan[idx].scale_val2 - 1));
+		if (!adc->sd_chan[idx].differential)
+			*val += max;
+
+		return IIO_VAL_INT;
 	}
 
 	return -EINVAL;
@@ -1430,7 +1477,9 @@ static int stm32_dfsdm_adc_chan_init_one(struct iio_dev *indio_dev,
 	 * IIO_CHAN_INFO_RAW: used to compute regular conversion
 	 * IIO_CHAN_INFO_OVERSAMPLING_RATIO: used to set oversampling
 	 */
-	ch->info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
+	ch->info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				 BIT(IIO_CHAN_INFO_SCALE) |
+				 BIT(IIO_CHAN_INFO_OFFSET);
 	ch->info_mask_shared_by_all = BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO) |
 					BIT(IIO_CHAN_INFO_SAMP_FREQ);
 
@@ -1481,8 +1530,10 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
 {
 	struct iio_chan_spec *ch;
 	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
+	struct iio_channel *channels, *chan;
+	struct stm32_dfsdm_sd_chan_info *sd_chan;
 	int num_ch;
-	int ret, chan_idx;
+	int ret, chan_idx, val2;
 
 	adc->oversamp = DFSDM_DEFAULT_OVERSAMPLING;
 	ret = stm32_dfsdm_compute_all_osrs(indio_dev, adc->oversamp);
@@ -1506,6 +1557,22 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
 	if (!ch)
 		return -ENOMEM;
 
+	/* Get SD modulator channels */
+	channels = iio_channel_get_all(&indio_dev->dev);
+	if (IS_ERR(channels)) {
+		dev_err(&indio_dev->dev, "Failed to get channel %ld\n",
+			PTR_ERR(channels));
+		return PTR_ERR(channels);
+	}
+	chan = &channels[0];
+
+	adc->sd_chan = devm_kzalloc(&indio_dev->dev,
+				    sizeof(*adc->sd_chan) * num_ch, GFP_KERNEL);
+	if (!adc->sd_chan)
+		return -ENOMEM;
+
+	sd_chan = adc->sd_chan;
+
 	for (chan_idx = 0; chan_idx < num_ch; chan_idx++) {
 		ch[chan_idx].scan_index = chan_idx;
 		ret = stm32_dfsdm_adc_chan_init_one(indio_dev, &ch[chan_idx]);
@@ -1513,6 +1580,38 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
 			dev_err(&indio_dev->dev, "Channels init failed\n");
 			return ret;
 		}
+
+		if (!chan->indio_dev)
+			return -EINVAL;
+
+		ret = iio_read_channel_scale(chan, &sd_chan->scale_val,
+					     &sd_chan->scale_val2);
+		if (ret < 0) {
+			dev_err(&indio_dev->dev,
+				"Failed to get channel %d scale\n", chan_idx);
+			return ret;
+		}
+
+		if (iio_channel_has_info(chan->channel, IIO_CHAN_INFO_OFFSET)) {
+			ret = iio_read_channel_offset(chan, &sd_chan->offset,
+						      &val2);
+			if (ret < 0) {
+				dev_err(&indio_dev->dev,
+					"Failed to get channel %d offset\n",
+					chan_idx);
+				return ret;
+			}
+		}
+
+		sd_chan->differential = chan->channel->differential;
+
+		dev_dbg(&indio_dev->dev, "Channel %d %s scale ref=%d offset=%d",
+			chan_idx, chan->channel->differential ?
+			"differential" : "single-ended",
+			sd_chan->scale_val, sd_chan->offset);
+
+		chan++;
+		sd_chan++;
 	}
 
 	indio_dev->num_channels = num_ch;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
