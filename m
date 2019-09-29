Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA3C165A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 18:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eYgdPDatWb3o1pfF7AU7TA8whX9VeGbtArUuYHfwpuI=; b=lPw
	bo1uI51YV5KMgBSOyfZj258xtK5Bh7O2oF5P9yJPaGvKhjnFgUPMQgZXhJ3rKpJMbJW8Z/v20qpoH
	m5mrCbU59B8fG9s+Wys4xwcBHFp0EP+F9qm17MkArBHI2uVUIe0P4/QsgWfCmHKh/oNLCqUlYMC5/
	/E655Vb/FwzVGeuHm3dE1+9kqtXHrk9YvZn7/uQRQxqGTM9X/Pg5kCHYLdOr8X2l7LXCKb57Tj4zx
	48i+Icn7yYs4EK+Gnvv/W6VEwCQUPVW5YapXAWduqtQs0sUAbwhpi39tSmkfpPPxo7cAwTNXSLqFl
	ZyhjG0yv4CfBUDJUY504lh97tZRFfuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEcNF-0007XA-1m; Sun, 29 Sep 2019 16:48:41 +0000
Received: from mx3.ucr.edu ([138.23.248.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEcN2-0007Uy-9q
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 16:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569775709; x=1601311709;
 h=from:to:cc:subject:date:message-id;
 bh=UNKIGMa4Eg+l+IVQcMpLQFIdcsa8oCD4s9qyVCpjIUE=;
 b=r7yN2/UKzsTxLc0oYieweRj75azVtGXdPRKXsp+rtUNVEnHO8ue8r2XT
 zAPeDQEM4RThP+l3NRXCDg+RhPgjRgke7F47x6vf7SGxjGd70sSWDPo7B
 TDCePgct4oo8AQdrnErrRp3+SSUkOLKZWJBRUiw9mMJYVp8qal9ztbCwV
 kTqFSeZ4QU2a3/QApwuFOW4sSkH6XQyvgVGHITatlJz687VPHTK9xeSFU
 u/RsCi4/ITZhnGq4vCormj/5sMx4aqNJ0kvhGe36W1rbwS7J//RsJ7sIb
 gnqo1A4Z2qYnQjFEruj/uiUh2ghu/4IIr3kSbsK6nZngFBYJjGGpaDODH g==;
IronPort-SDR: jRpw9+bU6oIfTZYlzKkPZlzmRfPAjjpjJEoK1qIJyc0KBdbOBxRr8Ua1STl94YlTAfVtdpqFLe
 N+t1Px32dSCkxBWm8i1QVtyvWCIhl+GlsWc6LFFLdC83PqB06yZIJNLvp0yawu/OZPpX6zNKN+
 EOflR48pT0mB2EgAOboerMRgteGD1CXBtT7Es/Gw3bpPya0B9SjdKNN6BgmkH0758fx/+Md8xn
 18TQEGNN+ujAJRaKQ/rz4GPDaSUQo+BPNOgcLokQNYXzpywI6ktm8/kY07ChDfHINlCAREq+DA
 Wg8=
IronPort-PHdr: =?us-ascii?q?9a23=3AdjLtfBA5GbyRgNxOTgk+UyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT6p8bcNUDSrc9gkEXOFd2Cra4d0KyK6+u5ATJIyK3CmUhKSIZLWR?=
 =?us-ascii?q?4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBx?=
 =?us-ascii?q?rwKxd+KPjrFY7OlcS30P2594HObwlSizexfL1/IA+5oAnNucUanJduJ6cswR?=
 =?us-ascii?q?bVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPX?=
 =?us-ascii?q?w7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RD?=
 =?us-ascii?q?qv47t3RBLulSwKLCAy/n3JhcNsjaJbuBOhqAJ5w47Ie4GeKf5ycrrAcd8GWW?=
 =?us-ascii?q?ZNW8BcVylAAoOndIsPDuwBPelFpIfjvlUFsBW+BQiyC+Pr1zBDm3v60KMm3+?=
 =?us-ascii?q?gkFwzNwQ4uEM8UsHnMrNv7KrocX+62wqfP1jjPc+9a1C3h5IXSbhwtvfeBVq?=
 =?us-ascii?q?9wf8rLzkkvEhvIgVeRqY3kPzOVy+MNuHWc4utgVOOvi3QoqwBtrjSzyMohkZ?=
 =?us-ascii?q?TJiZ4Pylze6yp23Zs1KMS+RUVmYtCkCINduz+GO4ZyWM8vQGFltDwkxrEbpZ?=
 =?us-ascii?q?K3ZjUGxZAlyhLHdvCKcoyF7gj9WOufITp0nmxpdbOlixuw/kWtzPD3WNOu31?=
 =?us-ascii?q?ZQtCVFl8HBtnUK1xPO9MeKUuB9/kK92TaX0ADT9/1ELVg0laXFL54hxaY9lp?=
 =?us-ascii?q?8JvkTCGi/6gV32jKGLekk99Oik9uDqb7f8qp+TMI90jQ7+MqAwlcClHes4NQ?=
 =?us-ascii?q?0OU3Ca+eS6yrLj4VX0TKtWgvAyiKXUs5DXKd4FqqKkHwNZyJsv5hK9Aju+1d?=
 =?us-ascii?q?QXh3gHLFZLeBKdiIjpPknDIfD5DPe/mVuskStny+zIM7D6H5XCMmLDnK3/cr?=
 =?us-ascii?q?lg9k5Q0BAzwsxH55JIFrEBJ+r+WkvwtNzeEx84PBW4zPz9CNV4z48eWnyAAr?=
 =?us-ascii?q?WfMKzMtV+F/eYvI+iXZI8JozbxMfkl5/jgjX8jg1ASYLem0oEKZ3yiGfRmOU?=
 =?us-ascii?q?qZMjLCmNAERFYLrAojS6S+mU+CWD8LPy2aQqkmoDw3FdT1Xs/4WomxjenZj2?=
 =?us-ascii?q?+AFZpMazUDVQiB?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EZBQD+3pBdgMXSVdFmHgEGEoFcC4N?=
 =?us-ascii?q?eTBCNHoVyUQEBBosmgQmFeogxgXsBCAEBAQwBAS0CAQGEQIM6IzQJDgIDCQE?=
 =?us-ascii?q?BBQEBAQEBBQQBAQIQAQEJDQkIJ4VCgjopgzULFhVSgRUBBQE1IjmCRwGBdhS?=
 =?us-ascii?q?fO4EDPIwlM4hqAQkNgUgJAQiBIoc1hFmBEIEHgRGDUIdjgkQEgS8BAQGLP4I?=
 =?us-ascii?q?xhyuWSQEGAoIQFIF4kwcnhDmJPYs/AS2KKJxrAgoHBg8jgS+CEU0lgWwKgUR?=
 =?us-ascii?q?QEBSBWhcVji0hM4EIkA8B?=
X-IPAS-Result: =?us-ascii?q?A2EZBQD+3pBdgMXSVdFmHgEGEoFcC4NeTBCNHoVyUQEBB?=
 =?us-ascii?q?osmgQmFeogxgXsBCAEBAQwBAS0CAQGEQIM6IzQJDgIDCQEBBQEBAQEBBQQBA?=
 =?us-ascii?q?QIQAQEJDQkIJ4VCgjopgzULFhVSgRUBBQE1IjmCRwGBdhSfO4EDPIwlM4hqA?=
 =?us-ascii?q?QkNgUgJAQiBIoc1hFmBEIEHgRGDUIdjgkQEgS8BAQGLP4IxhyuWSQEGAoIQF?=
 =?us-ascii?q?IF4kwcnhDmJPYs/AS2KKJxrAgoHBg8jgS+CEU0lgWwKgURQEBSBWhcVji0hM?=
 =?us-ascii?q?4EIkA8B?=
X-IronPort-AV: E=Sophos;i="5.64,563,1559545200"; d="scan'208";a="83746921"
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Sep 2019 09:48:08 -0700
Received: by mail-pf1-f197.google.com with SMTP id i187so6011161pfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 09:48:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=utdaQ4jWHTttFql8WKqbnsQdQq9GY1vzrMBpLN2a9NQ=;
 b=bOIwKANU8qBNF24W9dbr6GGL65CXmv5PeYLCe3Fl9LvD0gkeREUOmy57HCFJnpqYDS
 erftGo0tN3TqsYVr4V6EJPuHRrS1CFdfzPo3Kgysxkm5tknko2h2owBCOXWeHK8veZU6
 Bt/xBIRWGOufOnPGVeB0Umvb6/9tL6NlqrBHe9YmC7Ze0NNw7wWnQQt71IuM1nzF7+pe
 Y6I5+SiMNhkkVRQ8NWybdtaVko0YOIt412FiaPL2pCmgUUrGsv9rxWt7QjK4RcU4rjLG
 PHu5wd+JOOjYtBeskufcenNuJ+bQtiUSvugga2xFehL5o1ebcitwgqNsHJn5lcf+tTyN
 Odcw==
X-Gm-Message-State: APjAAAXAkEkrsrrU2oO2LDu+Z+UUc8zkkn0ptJk4OtO/obzNJhTzwu03
 gtN9Gha/rb1QHQmTxKv7O7Y9qy6uaYmAfiulW8WkX36G9zQ/kJqaa/neiVE+sPaobN+GCkKjSLy
 3EPIEbvKfOwUsGRTnM3NkB2zLi7f5t+Fx11lX
X-Received: by 2002:a17:90a:3090:: with SMTP id
 h16mr22224044pjb.46.1569775687368; 
 Sun, 29 Sep 2019 09:48:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJjjuQpguiCEE+oT8FZ21bOrlaI5ek77fAN6CJVVTks05KOo47tYsfxvPiCR9IDOpmjYNCew==
X-Received: by 2002:a17:90a:3090:: with SMTP id
 h16mr22224024pjb.46.1569775687030; 
 Sun, 29 Sep 2019 09:48:07 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id ep10sm26814605pjb.2.2019.09.29.09.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 09:48:05 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: adc: meson-saradc: Variables could be uninitalized if
 regmap_read() fails
Date: Sun, 29 Sep 2019 09:48:43 -0700
Message-Id: <20190929164848.13930-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_094828_367184_018DF553 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [138.23.248.64 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Nicholas Mc Guire <hofrat@osadl.org>,
 zhiyunq@cs.ucr.edu, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several functions in this file are trying to use regmap_read() to
initialize the specific variable, however, if regmap_read() fails,
the variable could be uninitialized but used directly, which is
potentially unsafe. The return value of regmap_read() should be
checked and handled.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/iio/adc/meson_saradc.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 7b28d045d271..4b6c2983ef39 100644
--- a/drivers/iio/adc/meson_saradc.c
+++ b/drivers/iio/adc/meson_saradc.c
@@ -323,6 +323,7 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
 {
 	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 	int regval, timeout = 10000;
+	int ret;
 
 	/*
 	 * NOTE: we need a small delay before reading the status, otherwise
@@ -331,7 +332,9 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
 	 */
 	do {
 		udelay(1);
-		regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
+		ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
+		if (ret)
+			return ret;
 	} while (FIELD_GET(MESON_SAR_ADC_REG0_BUSY_MASK, regval) && timeout--);
 
 	if (timeout < 0)
@@ -346,6 +349,7 @@ static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,
 {
 	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 	int regval, fifo_chan, fifo_val, count;
+	int ret;
 
 	if(!wait_for_completion_timeout(&priv->done,
 				msecs_to_jiffies(MESON_SAR_ADC_TIMEOUT)))
@@ -358,7 +362,10 @@ static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,
 		return -EINVAL;
 	}
 
-	regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
+	ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
+	if (ret)
+		return ret;
+
 	fifo_chan = FIELD_GET(MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, regval);
 	if (fifo_chan != chan->address) {
 		dev_err(&indio_dev->dev,
@@ -491,6 +498,7 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
 {
 	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 	int val, timeout = 10000;
+	int ret;
 
 	mutex_lock(&indio_dev->mlock);
 
@@ -506,7 +514,10 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
 		 */
 		do {
 			udelay(1);
-			regmap_read(priv->regmap, MESON_SAR_ADC_DELAY, &val);
+			ret = regmap_read(priv->regmap,
+						MESON_SAR_ADC_DELAY, &val);
+			if (ret)
+				return ret;
 		} while (val & MESON_SAR_ADC_DELAY_BL30_BUSY && timeout--);
 
 		if (timeout < 0) {
@@ -771,7 +782,7 @@ static int meson_sar_adc_init(struct iio_dev *indio_dev)
 {
 	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 	int regval, i, ret;
-
+	int ret;
 	/*
 	 * make sure we start at CH7 input since the other muxes are only used
 	 * for internal calibration.
@@ -784,7 +795,10 @@ static int meson_sar_adc_init(struct iio_dev *indio_dev)
 		 * BL30 to make sure BL30 gets the values it expects when
 		 * reading the temperature sensor.
 		 */
-		regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
+		ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
+		if (ret)
+			return ret;
+
 		if (regval & MESON_SAR_ADC_REG3_BL30_INITIALIZED)
 			return 0;
 	}
@@ -1013,8 +1027,12 @@ static irqreturn_t meson_sar_adc_irq(int irq, void *data)
 	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 	unsigned int cnt, threshold;
 	u32 regval;
+	int ret;
+
+	ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
+	if (ret)
+		return ret;
 
-	regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
 	cnt = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
 	threshold = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
