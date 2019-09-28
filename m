Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9A8C0F0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 02:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=trZUek047bwW7+JwUpAjWF61AiBigtmJg9IpsCZ1od4=; b=FdN
	m45lmYgxyjlwSn6xlZrumDByhVVBiXhRCZ/ZEyEaCrGLPDR0RRRovVIkMTJ6tGHkxK/eDh9URrwvp
	0HB7Td+hIGmcJa3gcjxKiR0OoCkCciM3mHKDeQ5NtJ9ByWg75GJK0lMYF/VOpKxue0nTGJrgUg09W
	D0UAuUJ8cNm9Bkb26pOzEN7dGqIW7B7KRG2eNiC0suEYFknEOUfnXxofywXcBQzqALe3YBPpdKIUn
	flWf8LmfsbYk/0UKRkzV006bT3SGsdCtRcnZDast0pCnSrei1ZikIWfh+FZ+5f6C2yef485TSQjy9
	CCxqec7LGoQYuU1DhWMz2BspmguhWIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE0sH-00038b-6p; Sat, 28 Sep 2019 00:46:13 +0000
Received: from mx4.ucr.edu ([138.23.248.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE0s7-00036p-P7
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 00:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569631564; x=1601167564;
 h=from:to:cc:subject:date:message-id;
 bh=Gyih0+ys/dsZuk6p5tTk9jxHvhG3+TejPRIPLUcLycQ=;
 b=GrxTyGyjFLB3314BSbevUdNmbLNcQ8Wf9+1AmXgvDbZK5YtkWsskZ03z
 JBFxohSoQ4cgphrxy0DaR/Hkp7ODkpWfcdWa74Lrc2FQzS+2CaMfLFpFx
 dxrjzS/c3Ldb9aUSTF8oEAi1zY2cYvCVJW1lle10/d2zU5zMOxZG+qTO1
 bYy5VFVx9lSRwmi2R6iFbF2CYkpMAV4eJ5fAAn8RMsSLnQOKFdMpRlkrk
 GWorlMxVK6u4emVXWBqQKnJS5C6ZDSeQSRuhQaJpXldkrJSz/mW14mgri
 iTYDh42rGjinOHHMiU47JGM0LCvOSzWjeExw52UIepk44cc6cq1nu8EVM w==;
IronPort-SDR: F4VmWReGo+zLo8NciV9YrlcbHHZfvPAUwA5XJEbzVPKy4ynSDJRPvqj9FGiTM1w2IQoLe1ejnw
 f7V4Di3L0j4Win6MZzpSaqK6IHxwkkht8wdmgp5V10Jk25KyZ2F0KapOCoULf6qGHqV2wy1HgX
 NTVo0InDUVRJwKZXhyIZq/7DBWOaaOprBUxSZlOk9d2ltM8gWsK2Lpp9Z42tfD8x/R3H5+VkM8
 pP16kU1TQmB2PaFrCE/t703wdn5cj8/aqkHe8F3mV/kc+HfrWBcYVfgpaRY4lkDwucOElLHClh
 9y0=
IronPort-PHdr: =?us-ascii?q?9a23=3A0BeMdxDa4iFkAta1CljjUyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT7oMbcNUDSrc9gkEXOFd2Cra4d0KyN7Ou7BCQp2tWoiDg6aptCVh?=
 =?us-ascii?q?sI2409vjcLJ4q7M3D9N+PgdCcgHc5PBxdP9nC/NlVJSo6lPwWB6nK94iQPFR?=
 =?us-ascii?q?rhKAF7Ovr6GpLIj8Swyuu+54Dfbx9HiTagb75+Nhu7oAfeusQYgYZpN7o8xA?=
 =?us-ascii?q?bOrnZUYepd2HlmJUiUnxby58ew+IBs/iFNsP8/9MBOTLv3cb0gQbNXEDopPW?=
 =?us-ascii?q?Y15Nb2tRbYVguA+mEcUmQNnRVWBQXO8Qz3UY3wsiv+sep9xTWaMMjrRr06RT?=
 =?us-ascii?q?iu86FmQwLzhSwZKzA27n3Yis1ojKJavh2hoQB/w5XJa42RLfZyY7/Rcc8fSW?=
 =?us-ascii?q?dHW8ZRVjdBApi9b4sJAOoKIPhWoZDgrFsArBuxGw2sC/7ywTNMiHL6wag23u?=
 =?us-ascii?q?I8Gg/EwQMgBcoDvnTKotvoOqkcUue7wbLUwTnfdf5axS3w5JTUfh0nvPqCXa?=
 =?us-ascii?q?hwcc3UyUQ3FQzFj1SRqYz4PzOSy+8AtGia7utgVe21im4rtx19rza0y8cxlo?=
 =?us-ascii?q?bJnJgZxU7Z+iVk2Ys4I8CzRk1jYdO8DpdcqyWXO5F1T84iWW1kpjs2x7IctZ?=
 =?us-ascii?q?KlYCQG1IwrywPeZvGDaYSE/BzuWeaLLTtmhX9pYrCyihm0/EO90OPzTNO030?=
 =?us-ascii?q?xPriddl9nMsW0C2ALL58icT/t94l+h2TGS1wDP8u1EIV47la7cK5M5x74/jJ?=
 =?us-ascii?q?sTsUDaEi/unEX6kbaadks69uS09+jreLrmppibN497jgHxLL4ildC4AeQ9Kg?=
 =?us-ascii?q?QOXm6b9vqg1LD740H1XLFHguc1n6TZqpzWO9kXq6GjDwNLzoov9w6zDzK839?=
 =?us-ascii?q?QZmXkHIkhFeBWCj4XxO1DPIfD4Au2+g1iwjDtmyevLPqD9DZXXNHTMjqrufa?=
 =?us-ascii?q?tl505G1AUz1cxf545TCrwZJPLzW0nxtMHXDxMgKQO02ePnBMx+1owAQ2KPBL?=
 =?us-ascii?q?GWMKfJvF+M5+IvOPWMZJQPtDb8Lfgl6eTugmUkllADZ6amwIEbaHeiHvRpcA?=
 =?us-ascii?q?23e33p1+YAA2cXuUJqXf7qgVzaCWV7en2oGa8w+2doW8qdEY7fS9X10/S61y?=
 =?us-ascii?q?ChE8gTOThL?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FFCgCVrI5dgMjWVdFmHgEGEoFcC4N?=
 =?us-ascii?q?eTBCNHoVzUAMGiyaBCYV6iDGBewEIAQEBDAEBLQIBAYRAgzojNAkOAgMJAQE?=
 =?us-ascii?q?FAQEBAQEFBAEBAhABAQkNCQgnhUKCOimDNQsWFVKBFQEFATUiOYJHAYF2FAW?=
 =?us-ascii?q?hLoEDPIwlM4hxAQkNgUgJAQiBIoc1hFmBEIEHgRGDUIdjgkQEgS8BAQGLP4I?=
 =?us-ascii?q?xhyuWSQEGAoIQFIF4kwcnhDmJPYs/AS2KKJxqAgoHBg8jgS+CEU0lgWwKgUR?=
 =?us-ascii?q?QEBSBWhcVji0hM4EIjj0B?=
X-IPAS-Result: =?us-ascii?q?A2FFCgCVrI5dgMjWVdFmHgEGEoFcC4NeTBCNHoVzUAMGi?=
 =?us-ascii?q?yaBCYV6iDGBewEIAQEBDAEBLQIBAYRAgzojNAkOAgMJAQEFAQEBAQEFBAEBA?=
 =?us-ascii?q?hABAQkNCQgnhUKCOimDNQsWFVKBFQEFATUiOYJHAYF2FAWhLoEDPIwlM4hxA?=
 =?us-ascii?q?QkNgUgJAQiBIoc1hFmBEIEHgRGDUIdjgkQEgS8BAQGLP4IxhyuWSQEGAoIQF?=
 =?us-ascii?q?IF4kwcnhDmJPYs/AS2KKJxqAgoHBg8jgS+CEU0lgWwKgURQEBSBWhcVji0hM?=
 =?us-ascii?q?4EIjj0B?=
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="79257500"
Received: from mail-pl1-f200.google.com ([209.85.214.200])
 by smtpmx4.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 27 Sep 2019 17:46:01 -0700
Received: by mail-pl1-f200.google.com with SMTP id x8so1689749plr.23
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 17:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WVXKJFPAYYP31lJ6IlM5/o8x5LjKeBVij0jUlLnOB1Y=;
 b=MlmaeMmJMAEl+tBg9dIc5aZ9JAgtdkgOBROavebmkuJxOqsP/zqF5b6EA1laPz81Y6
 CA3Y7S9p5CPfJd0zXkRQn+bbSsdUd4gxOHL40kXIuiM13DsdMYma2H2PXOiTO/coeNTs
 +yzqlrnIp6ZaxL+cG1xBE6sD8cxji7AgOVSG45ZfyLwLus29XqU7PSky3t/Cd+9RDpIY
 iQoaPZ/qDHt0VtmVL/tIPKcsjcusqX8e7MZnCiwbRKAFKkGSTYly7E2L2y2PaMk4EGvw
 AEfoh33pc8E3c3TQRfjhk8SMkVSspnUDLgjjclKkk7JcNMuSv33YCCBGJwGRrALLe06s
 sVig==
X-Gm-Message-State: APjAAAXmGSXtRYcx+6S5CZRoIc21BoYqHyyITvG4pgsUIPtV10qnoOQ8
 MTrm6YtHZs4Jxd/pzckdTAHA2Rcd7NPx0YuLuwE/+1zHguA/akTBCb8jC43GR0xCZ1egumGDGr4
 uyyw7WS4Vs8367jGcKRhA0+gF17U9mvgjK573
X-Received: by 2002:a17:90a:3301:: with SMTP id
 m1mr13556473pjb.27.1569631560296; 
 Fri, 27 Sep 2019 17:46:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx/7cnNYMLx9aWgtGrOZYcIU8PemYtXquLbvog1tYQtmk61OBe75ni/14YXREFeG7CW3SRlDg==
X-Received: by 2002:a17:90a:3301:: with SMTP id
 m1mr13556446pjb.27.1569631560014; 
 Fri, 27 Sep 2019 17:46:00 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id r2sm4136689pfq.60.2019.09.27.17.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 17:45:59 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: adc: meson-saradc: Variables could be uninitalized if
 regmap_read() fails
Date: Fri, 27 Sep 2019 17:46:41 -0700
Message-Id: <20190928004642.28932-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_174603_843291_344C3E92 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Nicholas Mc Guire <hofrat@osadl.org>,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
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
 drivers/iio/adc/meson_saradc.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
index 7b28d045d271..c032a64108b4 100644
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
@@ -358,7 +361,11 @@ static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,
 		return -EINVAL;
 	}
 
-	regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
+	int ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
+
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
+					MESON_SAR_ADC_DELAY, &val);
+			if (ret)
+				return ret;
 		} while (val & MESON_SAR_ADC_DELAY_BL30_BUSY && timeout--);
 
 		if (timeout < 0) {
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
@@ -1014,7 +1028,11 @@ static irqreturn_t meson_sar_adc_irq(int irq, void *data)
 	unsigned int cnt, threshold;
 	u32 regval;
 
-	regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
+	int ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
+
+	if (ret)
+		return ret;
+
 	cnt = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
 	threshold = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
