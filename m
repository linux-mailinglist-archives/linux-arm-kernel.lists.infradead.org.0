Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAF7193089
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 19:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuTMyiwnU93Y7MEzKSnLcVvqWp7myYNIIj1MwphyL2s=; b=SadBgTel8SLa0c
	Sdqnt1/jCEEnSSpgEOf61skbyLZYaMMFmXAEddqrk3rTgGu0WYBMwhsdivUkSIoG2YvtznOYrQZg/
	kSg8DMVUpk6sYFecDEwxZq3sd/AWktCwTA5op3LEHSgOYfqfW3nO6doZqxQSnjLqhAGRpF3QAT0rV
	W1ub7m1k34XFOWB4vk7Vx+6eQc/y621cNO0tMb8jZl/pEDGoI3WhRP9+2/Vx577SLO1qd3cRVOn2Y
	M8uO3kn2FBtNMoLNlVk12gjJEzNFZlnrjVNKGx2lDmeKsGWgULkuNtSFedGsXFQ7iAoERCe2PR4BL
	HtHlvM1fTnJKFTckW28g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHAtT-0007jt-AB; Wed, 25 Mar 2020 18:36:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHAt2-0007dy-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 18:36:22 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02PIMKlw009688; Wed, 25 Mar 2020 19:36:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=/HtXOyV8IC+585gZCxiuUnGAlm8aIKPz5D+MjD67Axo=;
 b=zg2Tx1mpIevhWW56XD+UPlgIySQL+87SOls877BjHeljCdNONZaPWDC9ZIA1ogS7zERy
 66w1wj38G5T3F9whKbWRiHC8PbUyqMzc7cvlZRYZYSQWQDjHl62x0vmUO57UzA1BTLgh
 XKYpUo3lQZnNhpj9qKxVXmyMnfwHq9luaieKQtBtEN9egZoi/4RDS5OzXTC2A8lt4GHc
 dqN+xwIbWPiuLxssSo7HHuOl78WTK0g6rvvGDoljQ26oufPSDX8GURITX/y58XMtkOZu
 9nSM9Lp+2fNcr5w2yFPdJTIAH7/bhnmZRLh69RlHo5zBQ3PMgvK/MkKHiCSql/q/90yu ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw8xe7eq8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Mar 2020 19:36:12 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8FFA2100038;
 Wed, 25 Mar 2020 19:36:11 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 819462AD2DB;
 Wed, 25 Mar 2020 19:36:11 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 25 Mar 2020 19:36:10
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 2/2] i2c: i2c-stm32f7: allows for any bus frequency
Date: Wed, 25 Mar 2020 19:36:01 +0100
Message-ID: <1585161361-3408-3-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585161361-3408-1-git-send-email-alain.volmat@st.com>
References: <1585161361-3408-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_09:2020-03-24,
 2020-03-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_113620_429163_3921DEDF 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not limitate to the 3 (100KHz, 400KHz, 1MHz) bus frequency but
instead allows any frequency (if it matches timing requirements).
Depending on the requested frequency, use the spec data from either
Standard, Fast or Fast Plus mode.

Hardcoding of min/max bus frequencies is removed and is instead computed.

The driver do not use anymore speed identifier but instead handle
directly the frequency and figure out the spec data (necessary
for the computation of the timing register) based on the frequency.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 116 ++++++++++++++++---------------
 1 file changed, 61 insertions(+), 55 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 330ffed011e0..5e8b6fb8b29d 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -189,8 +189,6 @@ struct stm32f7_i2c_regs {
 /**
  * struct stm32f7_i2c_spec - private i2c specification timing
  * @rate: I2C bus speed (Hz)
- * @rate_min: 80% of I2C bus speed (Hz)
- * @rate_max: 100% of I2C bus speed (Hz)
  * @fall_max: Max fall time of both SDA and SCL signals (ns)
  * @rise_max: Max rise time of both SDA and SCL signals (ns)
  * @hddat_min: Min data hold time (ns)
@@ -201,8 +199,6 @@ struct stm32f7_i2c_regs {
  */
 struct stm32f7_i2c_spec {
 	u32 rate;
-	u32 rate_min;
-	u32 rate_max;
 	u32 fall_max;
 	u32 rise_max;
 	u32 hddat_min;
@@ -214,7 +210,6 @@ struct stm32f7_i2c_spec {
 
 /**
  * struct stm32f7_i2c_setup - private I2C timing setup parameters
- * @speed: I2C speed mode (standard, Fast Plus)
  * @speed_freq: I2C speed frequency  (Hz)
  * @clock_src: I2C clock source frequency (Hz)
  * @rise_time: Rise time (ns)
@@ -224,7 +219,6 @@ struct stm32f7_i2c_spec {
  * @fmp_clr_offset: Fast Mode Plus clear register offset from set register
  */
 struct stm32f7_i2c_setup {
-	enum stm32_i2c_speed speed;
 	u32 speed_freq;
 	u32 clock_src;
 	u32 rise_time;
@@ -287,7 +281,7 @@ struct stm32f7_i2c_msg {
  * @base: virtual memory area
  * @complete: completion of I2C message
  * @clk: hw i2c clock
- * @speed: I2C clock frequency of the controller. Standard, Fast or Fast+
+ * @bus_rate: I2C clock frequency of the controller
  * @msg: Pointer to data to be written
  * @msg_num: number of I2C messages to be executed
  * @msg_id: message identifiant
@@ -314,7 +308,7 @@ struct stm32f7_i2c_dev {
 	void __iomem *base;
 	struct completion complete;
 	struct clk *clk;
-	int speed;
+	unsigned int bus_rate;
 	struct i2c_msg *msg;
 	unsigned int msg_num;
 	unsigned int msg_id;
@@ -343,10 +337,8 @@ struct stm32f7_i2c_dev {
  * and Fast-mode Plus I2C-bus devices
  */
 static struct stm32f7_i2c_spec i2c_specs[] = {
-	[STM32_I2C_SPEED_STANDARD] = {
+	{
 		.rate = I2C_MAX_STANDARD_MODE_FREQ,
-		.rate_min = I2C_MAX_STANDARD_MODE_FREQ * 8 / 10,	/* 80% */
-		.rate_max = I2C_MAX_STANDARD_MODE_FREQ,
 		.fall_max = 300,
 		.rise_max = 1000,
 		.hddat_min = 0,
@@ -355,10 +347,8 @@ static struct stm32f7_i2c_spec i2c_specs[] = {
 		.l_min = 4700,
 		.h_min = 4000,
 	},
-	[STM32_I2C_SPEED_FAST] = {
+	{
 		.rate = I2C_MAX_FAST_MODE_FREQ,
-		.rate_min = I2C_MAX_FAST_MODE_FREQ * 8 / 10,		/* 80% */
-		.rate_max = I2C_MAX_FAST_MODE_FREQ,
 		.fall_max = 300,
 		.rise_max = 300,
 		.hddat_min = 0,
@@ -367,10 +357,8 @@ static struct stm32f7_i2c_spec i2c_specs[] = {
 		.l_min = 1300,
 		.h_min = 600,
 	},
-	[STM32_I2C_SPEED_FAST_PLUS] = {
+	{
 		.rate = I2C_MAX_FAST_MODE_PLUS_FREQ,
-		.rate_min = I2C_MAX_FAST_MODE_PLUS_FREQ * 8 / 10,	/* 80% */
-		.rate_max = I2C_MAX_FAST_MODE_PLUS_FREQ,
 		.fall_max = 100,
 		.rise_max = 120,
 		.hddat_min = 0,
@@ -411,10 +399,24 @@ static void stm32f7_i2c_disable_irq(struct stm32f7_i2c_dev *i2c_dev, u32 mask)
 	stm32f7_i2c_clr_bits(i2c_dev->base + STM32F7_I2C_CR1, mask);
 }
 
+static struct stm32f7_i2c_spec *get_specs(u32 rate)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(i2c_specs); i++)
+		if (rate <= i2c_specs[i].rate)
+			return &i2c_specs[i];
+
+	/* NOT REACHED */
+	return ERR_PTR(-EINVAL);
+}
+
+#define	RATE_MIN(rate)	(rate * 8 / 10)
 static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 				      struct stm32f7_i2c_setup *setup,
 				      struct stm32f7_i2c_timings *output)
 {
+	struct stm32f7_i2c_spec *specs;
 	u32 p_prev = STM32F7_PRESC_MAX;
 	u32 i2cclk = DIV_ROUND_CLOSEST(NSEC_PER_SEC,
 				       setup->clock_src);
@@ -432,18 +434,19 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 	u16 p, l, a, h;
 	int ret = 0;
 
-	if (setup->speed >= STM32_I2C_SPEED_END) {
-		dev_err(i2c_dev->dev, "speed out of bound {%d/%d}\n",
-			setup->speed, STM32_I2C_SPEED_END - 1);
+	specs = get_specs(setup->speed_freq);
+	if (specs == ERR_PTR(-EINVAL)) {
+		dev_err(i2c_dev->dev, "speed out of bound {%d}\n",
+			setup->speed_freq);
 		return -EINVAL;
 	}
 
-	if ((setup->rise_time > i2c_specs[setup->speed].rise_max) ||
-	    (setup->fall_time > i2c_specs[setup->speed].fall_max)) {
+	if ((setup->rise_time > specs->rise_max) ||
+	    (setup->fall_time > specs->fall_max)) {
 		dev_err(i2c_dev->dev,
 			"timings out of bound Rise{%d>%d}/Fall{%d>%d}\n",
-			setup->rise_time, i2c_specs[setup->speed].rise_max,
-			setup->fall_time, i2c_specs[setup->speed].fall_max);
+			setup->rise_time, specs->rise_max,
+			setup->fall_time, specs->fall_max);
 		return -EINVAL;
 	}
 
@@ -454,12 +457,6 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 		return -EINVAL;
 	}
 
-	if (setup->speed_freq > i2c_specs[setup->speed].rate) {
-		dev_err(i2c_dev->dev, "ERROR: Freq {%d/%d}\n",
-			setup->speed_freq, i2c_specs[setup->speed].rate);
-		return -EINVAL;
-	}
-
 	/*  Analog and Digital Filters */
 	af_delay_min =
 		(setup->analog_filter ?
@@ -469,13 +466,13 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 		 STM32F7_I2C_ANALOG_FILTER_DELAY_MAX : 0);
 	dnf_delay = setup->dnf * i2cclk;
 
-	sdadel_min = i2c_specs[setup->speed].hddat_min + setup->fall_time -
+	sdadel_min = specs->hddat_min + setup->fall_time -
 		af_delay_min - (setup->dnf + 3) * i2cclk;
 
-	sdadel_max = i2c_specs[setup->speed].vddat_max - setup->rise_time -
+	sdadel_max = specs->vddat_max - setup->rise_time -
 		af_delay_max - (setup->dnf + 4) * i2cclk;
 
-	scldel_min = setup->rise_time + i2c_specs[setup->speed].sudat_min;
+	scldel_min = setup->rise_time + specs->sudat_min;
 
 	if (sdadel_min < 0)
 		sdadel_min = 0;
@@ -530,8 +527,8 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 
 	tsync = af_delay_min + dnf_delay + (2 * i2cclk);
 	s = NULL;
-	clk_max = NSEC_PER_SEC / i2c_specs[setup->speed].rate_min;
-	clk_min = NSEC_PER_SEC / i2c_specs[setup->speed].rate_max;
+	clk_max = NSEC_PER_SEC / RATE_MIN(setup->speed_freq);
+	clk_min = NSEC_PER_SEC / setup->speed_freq;
 
 	/*
 	 * Among Prescaler possibilities discovered above figures out SCL Low
@@ -549,7 +546,7 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 		for (l = 0; l < STM32F7_SCLL_MAX; l++) {
 			u32 tscl_l = (l + 1) * prescaler + tsync;
 
-			if ((tscl_l < i2c_specs[setup->speed].l_min) ||
+			if ((tscl_l < specs->l_min) ||
 			    (i2cclk >=
 			     ((tscl_l - af_delay_min - dnf_delay) / 4))) {
 				continue;
@@ -561,7 +558,7 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 					setup->rise_time + setup->fall_time;
 
 				if ((tscl >= clk_min) && (tscl <= clk_max) &&
-				    (tscl_h >= i2c_specs[setup->speed].h_min) &&
+				    (tscl_h >= specs->h_min) &&
 				    (i2cclk < tscl_h)) {
 					int clk_error = tscl - i2cbus;
 
@@ -607,6 +604,17 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 	return ret;
 }
 
+static u32 get_lower_rate(u32 rate)
+{
+	int i;
+
+	for (i = ARRAY_SIZE(i2c_specs) - 1; i >= 0; i--)
+		if (i2c_specs[i].rate < rate)
+			return i2c_specs[i].rate;
+
+	return i2c_specs[0].rate;
+}
+
 static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 				    struct stm32f7_i2c_setup *setup)
 {
@@ -619,18 +627,15 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 
 	i2c_parse_fw_timings(i2c_dev->dev, t, false);
 
-	if (t->bus_freq_hz >= I2C_MAX_FAST_MODE_PLUS_FREQ)
-		i2c_dev->speed = STM32_I2C_SPEED_FAST_PLUS;
-	else if (t->bus_freq_hz >= I2C_MAX_FAST_MODE_FREQ)
-		i2c_dev->speed = STM32_I2C_SPEED_FAST;
-	else
-		i2c_dev->speed = STM32_I2C_SPEED_STANDARD;
+	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_PLUS_FREQ) {
+		dev_err(i2c_dev->dev, "Invalid bus speed (%i>%i)\n",
+			t->bus_freq_hz, I2C_MAX_FAST_MODE_PLUS_FREQ);
+		return -EINVAL;
+	}
 
+	setup->speed_freq = t->bus_freq_hz;
 	i2c_dev->setup.rise_time = t->scl_rise_ns;
 	i2c_dev->setup.fall_time = t->scl_fall_ns;
-
-	setup->speed = i2c_dev->speed;
-	setup->speed_freq = i2c_specs[setup->speed].rate;
 	setup->clock_src = clk_get_rate(i2c_dev->clk);
 
 	if (!setup->clock_src) {
@@ -644,14 +649,12 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 		if (ret) {
 			dev_err(i2c_dev->dev,
 				"failed to compute I2C timings.\n");
-			if (i2c_dev->speed > STM32_I2C_SPEED_STANDARD) {
-				i2c_dev->speed--;
-				setup->speed = i2c_dev->speed;
+			if (setup->speed_freq > I2C_MAX_STANDARD_MODE_FREQ) {
 				setup->speed_freq =
-					i2c_specs[setup->speed].rate;
+					get_lower_rate(setup->speed_freq);
 				dev_warn(i2c_dev->dev,
 					 "downgrade I2C Speed Freq to (%i)\n",
-					 i2c_specs[setup->speed].rate);
+					 setup->speed_freq);
 			} else {
 				break;
 			}
@@ -663,13 +666,15 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 		return ret;
 	}
 
-	dev_dbg(i2c_dev->dev, "I2C Speed(%i), Freq(%i), Clk Source(%i)\n",
-		setup->speed, setup->speed_freq, setup->clock_src);
+	dev_dbg(i2c_dev->dev, "I2C Speed(%i), Clk Source(%i)\n",
+		setup->speed_freq, setup->clock_src);
 	dev_dbg(i2c_dev->dev, "I2C Rise(%i) and Fall(%i) Time\n",
 		setup->rise_time, setup->fall_time);
 	dev_dbg(i2c_dev->dev, "I2C Analog Filter(%s), DNF(%i)\n",
 		(setup->analog_filter ? "On" : "Off"), setup->dnf);
 
+	i2c_dev->bus_rate = setup->speed_freq;
+
 	return 0;
 }
 
@@ -1866,7 +1871,7 @@ static int stm32f7_i2c_write_fm_plus_bits(struct stm32f7_i2c_dev *i2c_dev,
 {
 	int ret;
 
-	if (i2c_dev->speed != STM32_I2C_SPEED_FAST_PLUS ||
+	if (i2c_dev->bus_rate <= I2C_MAX_FAST_MODE_FREQ ||
 	    IS_ERR_OR_NULL(i2c_dev->regmap))
 		/* Optional */
 		return 0;
@@ -2020,7 +2025,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_free;
 
-	if (i2c_dev->speed == STM32_I2C_SPEED_FAST_PLUS) {
+	/* Setup Fast mode plus if necessary */
+	if (i2c_dev->bus_rate > I2C_MAX_FAST_MODE_FREQ) {
 		ret = stm32f7_i2c_setup_fm_plus_bits(pdev, i2c_dev);
 		if (ret)
 			goto clk_free;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
