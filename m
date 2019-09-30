Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E02C26E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 22:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hUeCcecQVWPknfKqhS7JF9/GnTLkya1EK8mq2fhuvU4=; b=Gpt
	IaGS0Z/U1DXJIQ7YBOHAFblJiFWulJAe2//BYyoeRrd2prs7CfelKU6TeUrO972dNui+wQjqjjp3F
	YtxfwJqbqbrBJYEIGEXe+YR33hHEE0IcRBP2Ri1RUxrVlqCqfPSxkWyrW3dwLsbCFpEuhjEAHhO3K
	yDGxQUeK+PbiM3TU/bpNXEKPvkeiGgAHLztIhMotcjuCgrgweoT5eEOTDTn0ZALgMQW2+eIr7Kbk0
	EDfB/ucZZ1m0CDR+wV0iaYCaQyKyAgL+oW1Y43epjMy0L8Tl55msUadbAM1e9Qu7vURXCXrx3MUwZ
	nt2aR0fFxRh1MK0EaHNgSpcghT6WdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF2XF-0002FT-Js; Mon, 30 Sep 2019 20:44:45 +0000
Received: from mx3.ucr.edu ([138.23.248.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF2Wm-000278-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 20:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569876257; x=1601412257;
 h=from:to:cc:subject:date:message-id;
 bh=HYGA3/ETQRN0dliOSfTAE61tbuv040Q6WyOvR7/0sbI=;
 b=VCpKGoylUjUueBAL30Sja4FXj0FpTre/Hd96o4p7safbwCiu11dDL62r
 fGRj8ABnj7D5uRVEa5y10weRjE84ClmwrKafOzRAB0FRtSp9T6I1SMCD/
 v84uXg5TLnTJdZOT3DG1hFXvrR35aPvdXmWTjTyAmmGhDytNw/QoXWD2Q
 OHKaVtT8ghVpFhPE8giiwo/rV5r9xLyO6UCVHE1ik7hOEiBmszDewp0oI
 /DHKQAzk2JoVKWvATCtj7ChPsag4cbQcysGcNayfeXI+l27Mohr9hm5Dm
 gTRGYKUF2R6pxZqwdRBKiNeNZy6fX1g53BgkzIkm1fVpYIrU5fkL+rPZ3 A==;
IronPort-SDR: 3KrzE+JihJtzYYb2QGNiaO/h4zEcTh2zTneTbPVjZ4M0qb+bXKeZwLdMyFe3vdjYOFKECr3DZQ
 vyM1huRz+IuG+q0jObFVNozciMYS22yDi0/766qDmPt+kmjqFR/ZITrx97zJRUZIr/+5Rw48yJ
 KrZRlvI/thMD2anxSTUruvjDBrpY/mjMQM3pEbJvP0wvwQsDCixYAqXFRJIsGyJh6V4r0LrW5B
 F1kjeI1tW4rriE/P0CsO27OtUP2XHXYFKEyYZNvEjp3V0UO909ONl5h21X5VO2+LP796nCPhkd
 TM4=
IronPort-PHdr: =?us-ascii?q?9a23=3A08gbzxCOQLfgWRkG61YQUyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT6p8bcNUDSrc9gkEXOFd2Cra4d0KyK6eu5BTNIyK3CmUhKSIZLWR?=
 =?us-ascii?q?4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBx?=
 =?us-ascii?q?rwKxd+KPjrFY7OlcS30P2594HObwlSizexfL1/IA+5oAnPucUanIRvJ6QswR?=
 =?us-ascii?q?bVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPX?=
 =?us-ascii?q?w7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RD?=
 =?us-ascii?q?qv47t3RBLulSwKLCAy/n3JhcNsjaJbuBOhqAJ5w47Ie4GeKf5ycrrAcd8GWW?=
 =?us-ascii?q?ZNW8BcVylAAoOndIsPDuwBPelFpIfjvlUFsBW+BQiyC+Pr1zBDm3v60KMm3+?=
 =?us-ascii?q?gkFwzNwQ4uEM8UsHnMrNv7KrocX+62wqfP1jjPc+9a1C3h5IXSbhwtvfeBVq?=
 =?us-ascii?q?9wf8rLzkkvEhvIgVeRqY3kPzOVy+MNuHWc4utgVOOvi3QoqwBtrjSzyMohkZ?=
 =?us-ascii?q?TJiZ4Pylze6yp23Zs1KMS+RUVmYtCkCINduz+GO4ZyWM8vQGFltDwkxrEbpZ?=
 =?us-ascii?q?K3ZjYGxIg7yxLHdvCKcoyF7gj9WOufITp0nmxpdbOlixuw/kWtzPD3WNOu31?=
 =?us-ascii?q?ZQtCVFl8HBtnUK1xPO9MeKUuB9/kK92TaX0ADT9/1ELVg0laXFL54hxaY9lp?=
 =?us-ascii?q?8JvkTCGi/6gV32jKGLekk99Oik9fjrbqn8qp+TMI90jQ7+MqAwlcClHes4NQ?=
 =?us-ascii?q?0OU3Ca+eS6yrLj4VX0TKtWgvAyiKXUs5DXKd4FqqKkHwNZyJgv5wqjAzu+1d?=
 =?us-ascii?q?QXh3gHLFZLeBKdiIjpPknDIfD5DPe/mVuskStny+zIM7D6H5XCMmLDnK3/cr?=
 =?us-ascii?q?lg9k5Q0BAzwsxH55JIFrEBJ+r+WkvwtNzeEx84PBW4zPz9CNV4z48eWnyAAr?=
 =?us-ascii?q?WfMKzMtV+F/eYvI+iXZI8JozbxMfkl5/jgjX8jg1ASYLem0oEKZ3yiGfRmOU?=
 =?us-ascii?q?qZMjLCmNAERFYLrAojS6S+mU+CWD8LPy2aQqkmoDw3FdT1Xs/4WomxjenZj2?=
 =?us-ascii?q?+AFZpMazUDVQiB?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2G+BgAYaJJdf8jSVdFmhXxMEI0ehkQ?=
 =?us-ascii?q?BAQEGiyaBCYV6iiwBCAEBAQwBAS0CAQGEQINGIzgTAgMJAQEFAQEBAQEFBAE?=
 =?us-ascii?q?BAhABAQkLCwgnhUKCOimDNQsWFVKBFQEFATUiOYJHAYF2FKJGgQM8jCUziGA?=
 =?us-ascii?q?BCQ2BSAkBCIEihzWEWYEQgQeEYYdlgkQEgTcBAQGLPgGCMYcrlkkBBgKCEBS?=
 =?us-ascii?q?BeJMHJ4I3ggKJPTmLBgGKVZxrAgoHBg8jgUaBe00lgWwKgURQEBSBWxeOQyE?=
 =?us-ascii?q?zgQiQGgE?=
X-IPAS-Result: =?us-ascii?q?A2G+BgAYaJJdf8jSVdFmhXxMEI0ehkQBAQEGiyaBCYV6i?=
 =?us-ascii?q?iwBCAEBAQwBAS0CAQGEQINGIzgTAgMJAQEFAQEBAQEFBAEBAhABAQkLCwgnh?=
 =?us-ascii?q?UKCOimDNQsWFVKBFQEFATUiOYJHAYF2FKJGgQM8jCUziGABCQ2BSAkBCIEih?=
 =?us-ascii?q?zWEWYEQgQeEYYdlgkQEgTcBAQGLPgGCMYcrlkkBBgKCEBSBeJMHJ4I3ggKJP?=
 =?us-ascii?q?TmLBgGKVZxrAgoHBg8jgUaBe00lgWwKgURQEBSBWxeOQyEzgQiQGgE?=
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="84006195"
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Sep 2019 13:44:16 -0700
Received: by mail-pf1-f200.google.com with SMTP id b13so8662573pfp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 13:44:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dapQGiPs5+yxjLDl9zMNq1LcsFOAJWQdGyLQ0/gwWhQ=;
 b=g843b3BbMMtrEn40sMOF0tuirCwL7QSNcflFefTlyOqf2G4b/+Kfv+GVKgQdlkcFoc
 brNjUhEMYikIGSSiPyeVtE+STycJWbkKCqnc05+KY7fauenOfDEF27PFO9jkgc85xsL1
 /YTjR9lmZk4RfBDzYo42xPpZNBvGwr80KoABlep/+4AJS0CHrx17/kwv3uT23hgQRBiL
 Hn+bKhJ0SWi/4yNQzXdcJ8r3T88TMMJyBoKgg0nGcr/LcOfHvgFTiQgD4rWaUuuVA2WH
 VYe1pfUXA+SAUD4XAEOFfGEVAZp0M6m/KwkHBVb5cijCJaQEVbzvM1LXjyGa/mUpRoor
 F6Iw==
X-Gm-Message-State: APjAAAXTe6jues0BbaED3S/6ZNGFDN4HZFGKvN9jIAAeMKtmdTVVWY+w
 t2cfrCBdp0BWdb8j6mcGF0lb+SFJDlOsWHKUYmZODL7PuYECgaqOkz/gSiLk2sJR5KW0mhts/Sk
 noubDS4BeBBV4wOZjpRjgekUAnoy2jdCrU/Ca
X-Received: by 2002:a63:e001:: with SMTP id e1mr11470040pgh.358.1569876251835; 
 Mon, 30 Sep 2019 13:44:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx9zg1sf8FzV4vsDfqgG05ZRQlpuE7Jqlj1s/A+Zus03/W2Go073rlg0ow44d+y6lPcxf9YEw==
X-Received: by 2002:a63:e001:: with SMTP id e1mr11469999pgh.358.1569876251280; 
 Mon, 30 Sep 2019 13:44:11 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id s97sm409068pjc.4.2019.09.30.13.44.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 13:44:10 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: trigger: stm32-timer: fix the usage of uninitialized
 variables
Date: Mon, 30 Sep 2019 13:44:49 -0700
Message-Id: <20190930204451.28614-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_134416_923829_F74B6205 
X-CRM114-Status: GOOD (  16.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-iio@vger.kernel.org,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several functions in this file are trying to use regmap_read() to
initialize the specific variable, however, if regmap_read() fails,
the variable could be uninitialized but used directly, which is
potentially unsafe. The return value of regmap_read() should be
checked and handled. This patch fixes most of the uninitialized
variables, but those in function stm32_tt_read_frequency() are
hard to handle and need extra effot.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/iio/trigger/stm32-timer-trigger.c | 98 ++++++++++++++++++++---
 1 file changed, 85 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index a5dfe65cd9b9..f8ea7bcbb739 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -107,6 +107,7 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 	unsigned long long prd, div;
 	int prescaler = 0;
 	u32 ccer, cr1;
+	int ret;
 
 	/* Period and prescaler values depends of clock rate */
 	div = (unsigned long long)clk_get_rate(priv->clk);
@@ -132,11 +133,21 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 	}
 
 	/* Check if nobody else use the timer */
-	regmap_read(priv->regmap, TIM_CCER, &ccer);
+	ret = regmap_read(priv->regmap, TIM_CCER, &ccer);
+	if (ret) {
+		dev_err(priv->dev, "fail to read TIM_CCER.\n");
+		return ret;
+	}
+
 	if (ccer & TIM_CCER_CCXE)
 		return -EBUSY;
 
-	regmap_read(priv->regmap, TIM_CR1, &cr1);
+	ret = regmap_read(priv->regmap, TIM_CR1, &cr1);
+	if (ret) {
+		dev_err(priv->dev, "fail to read TIM_CR1.\n");
+		return ret;
+	}
+
 	if (!(cr1 & TIM_CR1_CEN))
 		clk_enable(priv->clk);
 
@@ -164,12 +175,23 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
 static void stm32_timer_stop(struct stm32_timer_trigger *priv)
 {
 	u32 ccer, cr1;
+	int ret;
+
+	ret = regmap_read(priv->regmap, TIM_CCER, &ccer);
+	if (ret) {
+		dev_err(priv->dev, "Fail to read TIM_CCER.\n");
+		return;
+	}
 
-	regmap_read(priv->regmap, TIM_CCER, &ccer);
 	if (ccer & TIM_CCER_CCXE)
 		return;
 
-	regmap_read(priv->regmap, TIM_CR1, &cr1);
+	ret = regmap_read(priv->regmap, TIM_CR1, &cr1);
+	if (ret) {
+		dev_err(priv->dev, "Fail to read TIM_CR1.\n");
+		return;
+	}
+
 	if (cr1 & TIM_CR1_CEN)
 		clk_disable(priv->clk);
 
@@ -403,20 +425,36 @@ static int stm32_counter_read_raw(struct iio_dev *indio_dev,
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	u32 dat;
+	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
-		regmap_read(priv->regmap, TIM_CNT, &dat);
+		ret = regmap_read(priv->regmap, TIM_CNT, &dat);
+		if (ret) {
+			dev_err(priv->dev, "fail to read TIM_CNT.\n");
+			return ret;
+		}
+
 		*val = dat;
 		return IIO_VAL_INT;
 
 	case IIO_CHAN_INFO_ENABLE:
-		regmap_read(priv->regmap, TIM_CR1, &dat);
+		ret = regmap_read(priv->regmap, TIM_CR1, &dat);
+		if (ret) {
+			dev_err(priv->dev, "fail to read TIM_CR1.\n");
+			return ret;
+		}
+
 		*val = (dat & TIM_CR1_CEN) ? 1 : 0;
 		return IIO_VAL_INT;
 
 	case IIO_CHAN_INFO_SCALE:
-		regmap_read(priv->regmap, TIM_SMCR, &dat);
+		ret = regmap_read(priv->regmap, TIM_SMCR, &dat);
+		if (ret) {
+			dev_err(priv->dev, "fail to read TIM_SMCR.\n");
+			return ret;
+		}
+
 		dat &= TIM_SMCR_SMS;
 
 		*val = 1;
@@ -438,6 +476,7 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	u32 dat;
+	int ret;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
@@ -449,13 +488,23 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
 
 	case IIO_CHAN_INFO_ENABLE:
 		if (val) {
-			regmap_read(priv->regmap, TIM_CR1, &dat);
+			ret = regmap_read(priv->regmap, TIM_CR1, &dat);
+			if (ret) {
+				dev_err(priv->dev, "fail to read TIM_CR1.\n");
+				return ret;
+			}
+
 			if (!(dat & TIM_CR1_CEN))
 				clk_enable(priv->clk);
 			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
 					   TIM_CR1_CEN);
 		} else {
-			regmap_read(priv->regmap, TIM_CR1, &dat);
+			ret = regmap_read(priv->regmap, TIM_CR1, &dat);
+			if (ret) {
+				dev_err(priv->dev, "fail to read TIM_CR1.\n");
+				return ret;
+			}
+
 			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
 					   0);
 			if (dat & TIM_CR1_CEN)
@@ -517,8 +566,13 @@ static int stm32_get_trigger_mode(struct iio_dev *indio_dev,
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	u32 smcr;
+	int ret;
 
-	regmap_read(priv->regmap, TIM_SMCR, &smcr);
+	ret = regmap_read(priv->regmap, TIM_SMCR, &smcr);
+	if (ret) {
+		dev_err(priv->dev, "fail to read TIM_SMCR.\n");
+		return ret;
+	}
 
 	return (smcr & TIM_SMCR_SMS) == TIM_SMCR_SMS ? 0 : -EINVAL;
 }
@@ -557,6 +611,7 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	int sms = stm32_enable_mode2sms(mode);
 	u32 val;
+	int ret;
 
 	if (sms < 0)
 		return sms;
@@ -565,7 +620,12 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
 	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
 	 */
 	if (sms == 6) {
-		regmap_read(priv->regmap, TIM_CR1, &val);
+		ret = regmap_read(priv->regmap, TIM_CR1, &val);
+		if (ret) {
+			dev_err(priv->dev, "fail to read TIM_CR1.\n");
+			return ret;
+		}
+
 		if (!(val & TIM_CR1_CEN))
 			clk_enable(priv->clk);
 	}
@@ -594,8 +654,14 @@ static int stm32_get_enable_mode(struct iio_dev *indio_dev,
 {
 	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 	u32 smcr;
+	int ret;
+
+	ret = regmap_read(priv->regmap, TIM_SMCR, &smcr);
+	if (ret) {
+		dev_err(priv->dev, "fail to read TIM_SMCR.\n");
+		return ret;
+	}
 
-	regmap_read(priv->regmap, TIM_SMCR, &smcr);
 	smcr &= TIM_SMCR_SMS;
 
 	return stm32_sms2enable_mode(smcr);
@@ -706,13 +772,19 @@ EXPORT_SYMBOL(is_stm32_timer_trigger);
 static void stm32_timer_detect_trgo2(struct stm32_timer_trigger *priv)
 {
 	u32 val;
+	int ret;
 
 	/*
 	 * Master mode selection 2 bits can only be written and read back when
 	 * timer supports it.
 	 */
 	regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, TIM_CR2_MMS2);
-	regmap_read(priv->regmap, TIM_CR2, &val);
+	ret = regmap_read(priv->regmap, TIM_CR2, &val);
+	if (ret) {
+		dev_err(priv->dev, "fail to read TIM_CR2.\n");
+		return;
+	}
+
 	regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, 0);
 	priv->has_trgo2 = !!val;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
