Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2981B0F13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ObVnH2vp7qnL3o/1IaLaQ5lT1zkoqeE9BHZDxXZqj4=; b=SIfPdZmKWcn5V9
	8zajda10kxnVQy6pNUMm3LwU/vnmSqlkQhVl7DgThaC5CIsGvyFRfeIQcncmAznZT0HIv5h76LWi/
	pmFMZjha3P/4zdOw8L2tq1XzK2g7jPUizV+lX22iBE/JXYPUh6awFuG2C24ZsGDjnfN0A6hZ0T4ju
	ZmqJ2OvY97LXwtmNAiz8i0ZVL/ryDkfh1W0P9gWphNX7o88ng0u7GQP7J1UKmcQrQPOs3yjx0t+q9
	51MrO5WpmM/vcWYzlsJCHv1FxGnMB9vt7/1+Mg8cCnaSrIr+dIaoPdja+bkIVVJ8m9jiAatezz0Cb
	WRosquoAOoDCRbEXSn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXsu-0003C3-8X; Mon, 20 Apr 2020 14:58:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXsH-0002lR-32
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:58:19 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KEvwEB002588; Mon, 20 Apr 2020 16:58:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=52SPNfm2xgTw8IRqpn+39s0WMDuZ1oJ+sj+MM+FcodM=;
 b=0OrMbutkJCiwLaEp4LPCSFeiYBNmyA1Ida/yF8uKwjhtFWCqjzFaOW7q2jmADjEidjwC
 nwlnRAwM2KwpeosNxwO/vNtpPH9HZKmoDkmmmY6zWj38qaEBRFa5cfiIRyX/jOMkHLKa
 SIxuHA5XxKTMBqfG68+bnz2s/q9Ve+e7zfvBoYWNRLtrCmpYMFLhGdD/vLccHz4HGgo7
 YWnHSRFPhlDNk/Etv+weaNTPT2NX/KhfECbuVcstgEZAl4uuRksVIetSfiKBNv2gd+zE
 rqCCfiyog5LXjGTlWh6fjVVdq8YZ1MqfmUh6kmzNZC4u/wqdGxpAPVC18qG3LPHpvS4n vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11ax4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 16:58:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8EC26100038;
 Mon, 20 Apr 2020 16:58:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7ED3C2C1F6E;
 Mon, 20 Apr 2020 16:58:07 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 16:58:07
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH v3 2/2] i2c: i2c-stm32f7: allows for any bus frequency
Date: Mon, 20 Apr 2020 16:57:57 +0200
Message-ID: <1587394677-6872-3-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
References: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_075817_420036_7934815A 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
---
v3: - prefix i2c_specs, get_specs & get_lower_rate with stm32f7_
    - in stm32f7_i2c_setup_timing, reverse the if check to avoid large block
      indentation and > 80 characters long line
v2: remove wrong "NOT REACHED" comment
    simplify get_lower_rate function

 drivers/i2c/busses/i2c-stm32f7.c | 125 ++++++++++++++++++++-------------------
 1 file changed, 64 insertions(+), 61 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 8102e33a6753..308d669ce14e 100644
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
@@ -342,11 +336,9 @@ struct stm32f7_i2c_dev {
  * Table10. Characteristics of the SDA and SCL bus lines for Standard, Fast,
  * and Fast-mode Plus I2C-bus devices
  */
-static struct stm32f7_i2c_spec i2c_specs[] = {
-	[STM32_I2C_SPEED_STANDARD] = {
+static struct stm32f7_i2c_spec stm32f7_i2c_specs[] = {
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
@@ -411,10 +399,23 @@ static void stm32f7_i2c_disable_irq(struct stm32f7_i2c_dev *i2c_dev, u32 mask)
 	stm32f7_i2c_clr_bits(i2c_dev->base + STM32F7_I2C_CR1, mask);
 }
 
+static struct stm32f7_i2c_spec *stm32f7_get_specs(u32 rate)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(stm32f7_i2c_specs); i++)
+		if (rate <= stm32f7_i2c_specs[i].rate)
+			return &stm32f7_i2c_specs[i];
+
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
@@ -432,18 +433,19 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 	u16 p, l, a, h;
 	int ret = 0;
 
-	if (setup->speed >= STM32_I2C_SPEED_END) {
-		dev_err(i2c_dev->dev, "speed out of bound {%d/%d}\n",
-			setup->speed, STM32_I2C_SPEED_END - 1);
+	specs = stm32f7_get_specs(setup->speed_freq);
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
 
@@ -454,12 +456,6 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
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
@@ -469,13 +465,13 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
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
@@ -530,8 +526,8 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 
 	tsync = af_delay_min + dnf_delay + (2 * i2cclk);
 	s = NULL;
-	clk_max = NSEC_PER_SEC / i2c_specs[setup->speed].rate_min;
-	clk_min = NSEC_PER_SEC / i2c_specs[setup->speed].rate_max;
+	clk_max = NSEC_PER_SEC / RATE_MIN(setup->speed_freq);
+	clk_min = NSEC_PER_SEC / setup->speed_freq;
 
 	/*
 	 * Among Prescaler possibilities discovered above figures out SCL Low
@@ -549,7 +545,7 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 		for (l = 0; l < STM32F7_SCLL_MAX; l++) {
 			u32 tscl_l = (l + 1) * prescaler + tsync;
 
-			if ((tscl_l < i2c_specs[setup->speed].l_min) ||
+			if ((tscl_l < specs->l_min) ||
 			    (i2cclk >=
 			     ((tscl_l - af_delay_min - dnf_delay) / 4))) {
 				continue;
@@ -561,7 +557,7 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 					setup->rise_time + setup->fall_time;
 
 				if ((tscl >= clk_min) && (tscl <= clk_max) &&
-				    (tscl_h >= i2c_specs[setup->speed].h_min) &&
+				    (tscl_h >= specs->h_min) &&
 				    (i2cclk < tscl_h)) {
 					int clk_error = tscl - i2cbus;
 
@@ -607,6 +603,17 @@ static int stm32f7_i2c_compute_timing(struct stm32f7_i2c_dev *i2c_dev,
 	return ret;
 }
 
+static u32 stm32f7_get_lower_rate(u32 rate)
+{
+	int i = ARRAY_SIZE(stm32f7_i2c_specs);
+
+	while (i--)
+		if (stm32f7_i2c_specs[i].rate < rate)
+			break;
+
+	return stm32f7_i2c_specs[i].rate;
+}
+
 static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 				    struct stm32f7_i2c_setup *setup)
 {
@@ -619,18 +626,15 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 
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
@@ -644,17 +648,13 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
 		if (ret) {
 			dev_err(i2c_dev->dev,
 				"failed to compute I2C timings.\n");
-			if (i2c_dev->speed > STM32_I2C_SPEED_STANDARD) {
-				i2c_dev->speed--;
-				setup->speed = i2c_dev->speed;
-				setup->speed_freq =
-					i2c_specs[setup->speed].rate;
-				dev_warn(i2c_dev->dev,
-					 "downgrade I2C Speed Freq to (%i)\n",
-					 i2c_specs[setup->speed].rate);
-			} else {
+			if (setup->speed_freq <= I2C_MAX_STANDARD_MODE_FREQ)
 				break;
-			}
+			setup->speed_freq =
+				stm32f7_get_lower_rate(setup->speed_freq);
+			dev_warn(i2c_dev->dev,
+				 "downgrade I2C Speed Freq to (%i)\n",
+				 setup->speed_freq);
 		}
 	} while (ret);
 
@@ -663,13 +663,15 @@ static int stm32f7_i2c_setup_timing(struct stm32f7_i2c_dev *i2c_dev,
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
 
@@ -1867,7 +1869,7 @@ static int stm32f7_i2c_write_fm_plus_bits(struct stm32f7_i2c_dev *i2c_dev,
 {
 	int ret;
 
-	if (i2c_dev->speed != STM32_I2C_SPEED_FAST_PLUS ||
+	if (i2c_dev->bus_rate <= I2C_MAX_FAST_MODE_FREQ ||
 	    IS_ERR_OR_NULL(i2c_dev->regmap))
 		/* Optional */
 		return 0;
@@ -2020,7 +2022,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_free;
 
-	if (i2c_dev->speed == STM32_I2C_SPEED_FAST_PLUS) {
+	/* Setup Fast mode plus if necessary */
+	if (i2c_dev->bus_rate > I2C_MAX_FAST_MODE_FREQ) {
 		ret = stm32f7_i2c_setup_fm_plus_bits(pdev, i2c_dev);
 		if (ret)
 			goto clk_free;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
