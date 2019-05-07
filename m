Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E5016035
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ig/DYjFmYglrL4LxTekPDhfSNF/bhBZjuw1kuBXHsg8=; b=mmGdWQQLy3lgJc
	pdS3PiL7z/BtlO/97wH7M71MEGJ0DdYEgJ+Or7sRZckaDBFdMc5kxhJzSQoWPPrDXGuPQ+xWmSB8o
	mZtk/Uj8g5JYiICyh4KxdZ0rDha3Hvk8nr7PpyRjE7OoduUsZ9Ky5keT8DWB0PZcffsq/iEEvYURJ
	90a9kLjP7YxHngfRBHIuuPmULjIiWzSqRBT13fgCFTPsFgdTsVhYuscViHTt3O6t4bjiO6LIYw2kJ
	HpbCvOvyKV6xWnejoyvCpFP31wPC2R0vRwMh29ZXjsZWCsqInXFBoE3KTq9iAPw81rBMJx/U5RftW
	8TUigr0GwnKPO6XBSZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNw9d-0006iZ-Fr; Tue, 07 May 2019 09:12:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNw9V-0006hz-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:12:47 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x479BuXH003642; Tue, 7 May 2019 11:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=OSWmrVuuFcUHBeWLjxnCf2tM/b2q7fucVTqUAzYwn6s=;
 b=nzBY8knpfdJ1kGKaNdXZAbnUmSZj6Dhx3tukY+IqMN2WP7BYMgy/v+NWhObmJWNdno3+
 al6KjFoR1w0UklWFG6j9B2SvbJXqkJL6mNHo2YL1RRm+J6Af3XKMH90g1tODLBF4QDN3
 7PVoic2fvqu3n7gS78q8sPRtktCLUYQIwV9MQhoPk0+bF8HlLcKzT9hYrtW9PUBxEDZf
 AGRSQVy+GSx7OT6tC4b6dpFNw5uQ0B08BctSYCMTl+pezyFRo2QJR89XBi/4qUBTLJPv
 58zb847uLbPevDp21NYyY02vnpD9kZ8E6Xct8BPk2IsOmVMrX8r+wl8KKf/bNylE4mXw ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s94cdegpx-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 07 May 2019 11:12:36 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7DB0946;
 Tue,  7 May 2019 09:12:35 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5495318A8;
 Tue,  7 May 2019 09:12:35 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.361.1; Tue, 7 May 2019
 11:12:35 +0200
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 7 May 2019 11:12:34
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <jic23@kernel.org>, <knaack.h@gmx.de>, <lars@metafoo.de>,
 <pmeerw@pmeerw.net>, <fabrice.gasnier@st.com>, <vilhelm.gray@gmail.com>
Subject: [PATCH] IIO: stm32: Remove quadrature related functions from trigger
 driver
Date: Tue, 7 May 2019 11:12:24 +0200
Message-ID: <20190507091224.17781-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-07_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021246_041739_DC5F7603 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quadrature feature is now hosted on it own framework.
Remove quadrature related code from stm32-trigger driver to avoid
code duplication and simplify the ABI.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../ABI/testing/sysfs-bus-iio-timer-stm32          | 23 ------
 drivers/iio/trigger/stm32-timer-trigger.c          | 84 ----------------------
 2 files changed, 107 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio-timer-stm32 b/Documentation/ABI/testing/sysfs-bus-iio-timer-stm32
index 161c147d3c40..b7259234ad70 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio-timer-stm32
+++ b/Documentation/ABI/testing/sysfs-bus-iio-timer-stm32
@@ -91,29 +91,6 @@ Description:
 		When counting down the counter start from preset value
 		and fire event when reach 0.
 
-What:		/sys/bus/iio/devices/iio:deviceX/in_count_quadrature_mode_available
-KernelVersion:	4.12
-Contact:	benjamin.gaignard@st.com
-Description:
-		Reading returns the list possible quadrature modes.
-
-What:		/sys/bus/iio/devices/iio:deviceX/in_count0_quadrature_mode
-KernelVersion:	4.12
-Contact:	benjamin.gaignard@st.com
-Description:
-		Configure the device counter quadrature modes:
-		channel_A:
-			Encoder A input servers as the count input and B as
-			the UP/DOWN direction control input.
-
-		channel_B:
-			Encoder B input serves as the count input and A as
-			the UP/DOWN direction control input.
-
-		quadrature:
-			Encoder A and B inputs are mixed to get direction
-			and count with a scale of 0.25.
-
 What:		/sys/bus/iio/devices/iio:deviceX/in_count_enable_mode_available
 KernelVersion:	4.12
 Contact:	benjamin.gaignard@st.com
diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
index ccf1ce653b25..a5dfe65cd9b9 100644
--- a/drivers/iio/trigger/stm32-timer-trigger.c
+++ b/drivers/iio/trigger/stm32-timer-trigger.c
@@ -608,86 +608,6 @@ static const struct iio_enum stm32_enable_mode_enum = {
 	.get = stm32_get_enable_mode
 };
 
-static const char *const stm32_quadrature_modes[] = {
-	"channel_A",
-	"channel_B",
-	"quadrature",
-};
-
-static int stm32_set_quadrature_mode(struct iio_dev *indio_dev,
-				     const struct iio_chan_spec *chan,
-				     unsigned int mode)
-{
-	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
-
-	regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, mode + 1);
-
-	return 0;
-}
-
-static int stm32_get_quadrature_mode(struct iio_dev *indio_dev,
-				     const struct iio_chan_spec *chan)
-{
-	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
-	u32 smcr;
-	int mode;
-
-	regmap_read(priv->regmap, TIM_SMCR, &smcr);
-	mode = (smcr & TIM_SMCR_SMS) - 1;
-	if ((mode < 0) || (mode > ARRAY_SIZE(stm32_quadrature_modes)))
-		return -EINVAL;
-
-	return mode;
-}
-
-static const struct iio_enum stm32_quadrature_mode_enum = {
-	.items = stm32_quadrature_modes,
-	.num_items = ARRAY_SIZE(stm32_quadrature_modes),
-	.set = stm32_set_quadrature_mode,
-	.get = stm32_get_quadrature_mode
-};
-
-static const char *const stm32_count_direction_states[] = {
-	"up",
-	"down"
-};
-
-static int stm32_set_count_direction(struct iio_dev *indio_dev,
-				     const struct iio_chan_spec *chan,
-				     unsigned int dir)
-{
-	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
-	u32 val;
-	int mode;
-
-	/* In encoder mode, direction is RO (given by TI1/TI2 signals) */
-	regmap_read(priv->regmap, TIM_SMCR, &val);
-	mode = (val & TIM_SMCR_SMS) - 1;
-	if ((mode >= 0) || (mode < ARRAY_SIZE(stm32_quadrature_modes)))
-		return -EBUSY;
-
-	return regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_DIR,
-				  dir ? TIM_CR1_DIR : 0);
-}
-
-static int stm32_get_count_direction(struct iio_dev *indio_dev,
-				     const struct iio_chan_spec *chan)
-{
-	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
-	u32 cr1;
-
-	regmap_read(priv->regmap, TIM_CR1, &cr1);
-
-	return ((cr1 & TIM_CR1_DIR) ? 1 : 0);
-}
-
-static const struct iio_enum stm32_count_direction_enum = {
-	.items = stm32_count_direction_states,
-	.num_items = ARRAY_SIZE(stm32_count_direction_states),
-	.set = stm32_set_count_direction,
-	.get = stm32_get_count_direction
-};
-
 static ssize_t stm32_count_get_preset(struct iio_dev *indio_dev,
 				      uintptr_t private,
 				      const struct iio_chan_spec *chan,
@@ -728,10 +648,6 @@ static const struct iio_chan_spec_ext_info stm32_trigger_count_info[] = {
 		.read = stm32_count_get_preset,
 		.write = stm32_count_set_preset
 	},
-	IIO_ENUM("count_direction", IIO_SEPARATE, &stm32_count_direction_enum),
-	IIO_ENUM_AVAILABLE("count_direction", &stm32_count_direction_enum),
-	IIO_ENUM("quadrature_mode", IIO_SEPARATE, &stm32_quadrature_mode_enum),
-	IIO_ENUM_AVAILABLE("quadrature_mode", &stm32_quadrature_mode_enum),
 	IIO_ENUM("enable_mode", IIO_SEPARATE, &stm32_enable_mode_enum),
 	IIO_ENUM_AVAILABLE("enable_mode", &stm32_enable_mode_enum),
 	IIO_ENUM("trigger_mode", IIO_SEPARATE, &stm32_trigger_mode_enum),
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
