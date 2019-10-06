Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10FCD359
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toSKR1JnwEUo0Jsq540ES7f0Ru1998LSW0QDQHAzAwc=; b=Ya661fR1Z5YFbl
	YxBUyiLxrfywUEp4kgU47Z2vsuWGQOKXTz3uUP3PCg1kDyAgZRJRacdcop+78bqI5FQCT9F/YE+1z
	0uvWBCIbU85X77ObQVBjLIAO6a4ITnQbQK7MbwvQ93k237+QrhyEZeho/40P2J3nrDMDk6FDRwkoI
	1b+CRwvqG1QK9eQK69TgIDgrpKPlNrvZShEwv4vGAQHeRPHIHrTiX26F6fFSftQKvpXnwm2i9KlNs
	YlKAFz/zTXJtAwTQLKiXb1O8cw9i1Vsz+NRDac+sCVlJWow2+qZ/YedQg8GlwO3wuG9ia4DqguxHp
	RKIYaGz5uyosKBtoVABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH90k-0005C8-HO; Sun, 06 Oct 2019 16:03:54 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH90M-00052t-VN
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:03:33 +0000
Received: by mail-yb1-xb42.google.com with SMTP id h202so3818770ybg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 09:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y6pwP6ofOu0AllmStkErTxBXrc+gza8N2Qt/++md7dw=;
 b=qhNFt8SHK1jcpnMbIwO295cJJ9mqfvLXMkWmHGnVQUbkIrzU2Fz6XwBgQru10blB5z
 K77/O+uD8VBrPtNRtIEjE5ohe7tr778EQs+tUoBziPbaQ4+Ka2C2hH9KRdASpqbtTSzf
 AEG2WAnkgPX+pvnjUDK/jZfXT196HUQ8/G4w6/mA2RCF7uYsknomoA8DIVihgDLvQd4o
 tG41l6ija4IctKEzErKtc9DAyWYFNHEUsirD+dZEbZojd3hBjXfIJLoqWnpPEkDcHhLv
 lYdnxCt0JAGkv5SlZw3BWZtYdTOB0CoANfakywx9YsMrAmIsk0/1njXxmgth8aju1OLh
 x1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y6pwP6ofOu0AllmStkErTxBXrc+gza8N2Qt/++md7dw=;
 b=caR60R9JiRxUiJ2pLg36E3s3Z2GT6e3AsX1V+b06/5GYUL/LdecPu8Umw2rBK7BGCh
 HCA/Cj9+OkqLNHIdfHr8gNU2043jpxkMgGK3SN8Wgde0K+3B4QOJwbPW+M5xyVOgoe/F
 4FTDrUSLPUWjDERF9UyPd5ODqJfp52cjE1tVqvaTMYmhmjP7xz0RuX52ssBGUEpKA5Z2
 SDQnFIGqhytP+3Q6XtoMb7RLt2cIaVXzwkf98Ki9VGy+c+9Js3Qvj3Z10vW68QQYJV2u
 vql9HI9F5uYx/RmPAd5Ebz8qGRAEu0Rc48x8l4AEQbw+5py1UDZ+UoNb0f6LhT4HBXkO
 1oAQ==
X-Gm-Message-State: APjAAAVy927aB5CTJmsmSvV5u+s0ku0WRFnow0tu5kBFkoWEV2/DmfcW
 wLHGo8Dda3kiNYSMsB3xDJA=
X-Google-Smtp-Source: APXvYqwjv9db2C/SI+RYLECwBslf3dk7suinFIGSgC4vafKyrWNuGQounyN3TNeocUNWoijzLOLrXQ==
X-Received: by 2002:a25:3c6:: with SMTP id 189mr8078531ybd.450.1570377809955; 
 Sun, 06 Oct 2019 09:03:29 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id y129sm3341816ywy.41.2019.10.06.09.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 09:03:29 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v4 1/2] counter: Simplify the count_read and count_write
 callbacks
Date: Sun,  6 Oct 2019 12:03:10 -0400
Message-Id: <7c129bd95675412e21c7a54e366e21723cac94ea.1570377521.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570377521.git.vilhelm.gray@gmail.com>
References: <cover.1570377521.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_090331_011830_0B270188 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 david@lechnology.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The count_read and count_write callbacks are simplified to pass val as
unsigned long rather than as an opaque data structure. The opaque
counter_count_read_value and counter_count_write_value structures,
counter_count_value_type enum, and relevant counter_count_read_value_set
and counter_count_write_value_get functions, are removed as they are no
longer used.

Cc: David Lechner <david@lechnology.com>
Cc: Patrick Havelange <patrick.havelange@essensium.com>
Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/104-quad-8.c        |  33 +++------
 drivers/counter/counter.c           | 101 +++++-----------------------
 drivers/counter/ftm-quaddec.c       |  14 ++--
 drivers/counter/stm32-lptimer-cnt.c |   5 +-
 drivers/counter/stm32-timer-cnt.c   |  17 ++---
 drivers/counter/ti-eqep.c           |  19 ++----
 include/linux/counter.h             |  74 +++-----------------
 7 files changed, 51 insertions(+), 212 deletions(-)

diff --git a/drivers/counter/104-quad-8.c b/drivers/counter/104-quad-8.c
index 00b113f4b958..17e67a84777d 100644
--- a/drivers/counter/104-quad-8.c
+++ b/drivers/counter/104-quad-8.c
@@ -562,11 +562,10 @@ static const struct iio_chan_spec quad8_channels[] = {
 };
 
 static int quad8_signal_read(struct counter_device *counter,
-	struct counter_signal *signal, struct counter_signal_read_value *val)
+	struct counter_signal *signal, enum counter_signal_value *val)
 {
 	const struct quad8_iio *const priv = counter->priv;
 	unsigned int state;
-	enum counter_signal_level level;
 
 	/* Only Index signal levels can be read */
 	if (signal->id < 16)
@@ -575,22 +574,19 @@ static int quad8_signal_read(struct counter_device *counter,
 	state = inb(priv->base + QUAD8_REG_INDEX_INPUT_LEVELS)
 		& BIT(signal->id - 16);
 
-	level = (state) ? COUNTER_SIGNAL_LEVEL_HIGH : COUNTER_SIGNAL_LEVEL_LOW;
-
-	counter_signal_read_value_set(val, COUNTER_SIGNAL_LEVEL, &level);
+	*val = (state) ? COUNTER_SIGNAL_HIGH : COUNTER_SIGNAL_LOW;
 
 	return 0;
 }
 
 static int quad8_count_read(struct counter_device *counter,
-	struct counter_count *count, struct counter_count_read_value *val)
+	struct counter_count *count, unsigned long *val)
 {
 	const struct quad8_iio *const priv = counter->priv;
 	const int base_offset = priv->base + 2 * count->id;
 	unsigned int flags;
 	unsigned int borrow;
 	unsigned int carry;
-	unsigned long position;
 	int i;
 
 	flags = inb(base_offset + 1);
@@ -598,36 +594,27 @@ static int quad8_count_read(struct counter_device *counter,
 	carry = !!(flags & QUAD8_FLAG_CT);
 
 	/* Borrow XOR Carry effectively doubles count range */
-	position = (unsigned long)(borrow ^ carry) << 24;
+	*val = (unsigned long)(borrow ^ carry) << 24;
 
 	/* Reset Byte Pointer; transfer Counter to Output Latch */
 	outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP | QUAD8_RLD_CNTR_OUT,
 	     base_offset + 1);
 
 	for (i = 0; i < 3; i++)
-		position |= (unsigned long)inb(base_offset) << (8 * i);
-
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &position);
+		*val |= (unsigned long)inb(base_offset) << (8 * i);
 
 	return 0;
 }
 
 static int quad8_count_write(struct counter_device *counter,
-	struct counter_count *count, struct counter_count_write_value *val)
+	struct counter_count *count, unsigned long val)
 {
 	const struct quad8_iio *const priv = counter->priv;
 	const int base_offset = priv->base + 2 * count->id;
-	int err;
-	unsigned long position;
 	int i;
 
-	err = counter_count_write_value_get(&position, COUNTER_COUNT_POSITION,
-					    val);
-	if (err)
-		return err;
-
 	/* Only 24-bit values are supported */
-	if (position > 0xFFFFFF)
+	if (val > 0xFFFFFF)
 		return -EINVAL;
 
 	/* Reset Byte Pointer */
@@ -635,7 +622,7 @@ static int quad8_count_write(struct counter_device *counter,
 
 	/* Counter can only be set via Preset Register */
 	for (i = 0; i < 3; i++)
-		outb(position >> (8 * i), base_offset);
+		outb(val >> (8 * i), base_offset);
 
 	/* Transfer Preset Register to Counter */
 	outb(QUAD8_CTR_RLD | QUAD8_RLD_PRESET_CNTR, base_offset + 1);
@@ -644,9 +631,9 @@ static int quad8_count_write(struct counter_device *counter,
 	outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);
 
 	/* Set Preset Register back to original value */
-	position = priv->preset[count->id];
+	val = priv->preset[count->id];
 	for (i = 0; i < 3; i++)
-		outb(position >> (8 * i), base_offset);
+		outb(val >> (8 * i), base_offset);
 
 	/* Reset Borrow, Carry, Compare, and Sign flags */
 	outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_FLAGS, base_offset + 1);
diff --git a/drivers/counter/counter.c b/drivers/counter/counter.c
index 106bc7180cd8..6a683d086008 100644
--- a/drivers/counter/counter.c
+++ b/drivers/counter/counter.c
@@ -220,86 +220,6 @@ ssize_t counter_device_enum_available_read(struct counter_device *counter,
 }
 EXPORT_SYMBOL_GPL(counter_device_enum_available_read);
 
-static const char *const counter_signal_level_str[] = {
-	[COUNTER_SIGNAL_LEVEL_LOW] = "low",
-	[COUNTER_SIGNAL_LEVEL_HIGH] = "high"
-};
-
-/**
- * counter_signal_read_value_set - set counter_signal_read_value data
- * @val:	counter_signal_read_value structure to set
- * @type:	property Signal data represents
- * @data:	Signal data
- *
- * This function sets an opaque counter_signal_read_value structure with the
- * provided Signal data.
- */
-void counter_signal_read_value_set(struct counter_signal_read_value *const val,
-				   const enum counter_signal_value_type type,
-				   void *const data)
-{
-	if (type == COUNTER_SIGNAL_LEVEL)
-		val->len = sprintf(val->buf, "%s\n",
-				   counter_signal_level_str[*(enum counter_signal_level *)data]);
-	else
-		val->len = 0;
-}
-EXPORT_SYMBOL_GPL(counter_signal_read_value_set);
-
-/**
- * counter_count_read_value_set - set counter_count_read_value data
- * @val:	counter_count_read_value structure to set
- * @type:	property Count data represents
- * @data:	Count data
- *
- * This function sets an opaque counter_count_read_value structure with the
- * provided Count data.
- */
-void counter_count_read_value_set(struct counter_count_read_value *const val,
-				  const enum counter_count_value_type type,
-				  void *const data)
-{
-	switch (type) {
-	case COUNTER_COUNT_POSITION:
-		val->len = sprintf(val->buf, "%lu\n", *(unsigned long *)data);
-		break;
-	default:
-		val->len = 0;
-	}
-}
-EXPORT_SYMBOL_GPL(counter_count_read_value_set);
-
-/**
- * counter_count_write_value_get - get counter_count_write_value data
- * @data:	Count data
- * @type:	property Count data represents
- * @val:	counter_count_write_value structure containing data
- *
- * This function extracts Count data from the provided opaque
- * counter_count_write_value structure and stores it at the address provided by
- * @data.
- *
- * RETURNS:
- * 0 on success, negative error number on failure.
- */
-int counter_count_write_value_get(void *const data,
-				  const enum counter_count_value_type type,
-				  const struct counter_count_write_value *const val)
-{
-	int err;
-
-	switch (type) {
-	case COUNTER_COUNT_POSITION:
-		err = kstrtoul(val->buf, 0, data);
-		if (err)
-			return err;
-		break;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(counter_count_write_value_get);
-
 struct counter_attr_parm {
 	struct counter_device_attr_group *group;
 	const char *prefix;
@@ -369,6 +289,11 @@ struct counter_signal_unit {
 	struct counter_signal *signal;
 };
 
+static const char *const counter_signal_value_str[] = {
+	[COUNTER_SIGNAL_LOW] = "low",
+	[COUNTER_SIGNAL_HIGH] = "high"
+};
+
 static ssize_t counter_signal_show(struct device *dev,
 				   struct device_attribute *attr, char *buf)
 {
@@ -377,13 +302,13 @@ static ssize_t counter_signal_show(struct device *dev,
 	const struct counter_signal_unit *const component = devattr->component;
 	struct counter_signal *const signal = component->signal;
 	int err;
-	struct counter_signal_read_value val = { .buf = buf };
+	enum counter_signal_value val;
 
 	err = counter->ops->signal_read(counter, signal, &val);
 	if (err)
 		return err;
 
-	return val.len;
+	return sprintf(buf, "%s\n", counter_signal_value_str[val]);
 }
 
 struct counter_name_unit {
@@ -788,13 +713,13 @@ static ssize_t counter_count_show(struct device *dev,
 	const struct counter_count_unit *const component = devattr->component;
 	struct counter_count *const count = component->count;
 	int err;
-	struct counter_count_read_value val = { .buf = buf };
+	unsigned long val;
 
 	err = counter->ops->count_read(counter, count, &val);
 	if (err)
 		return err;
 
-	return val.len;
+	return sprintf(buf, "%lu\n", val);
 }
 
 static ssize_t counter_count_store(struct device *dev,
@@ -806,9 +731,13 @@ static ssize_t counter_count_store(struct device *dev,
 	const struct counter_count_unit *const component = devattr->component;
 	struct counter_count *const count = component->count;
 	int err;
-	struct counter_count_write_value val = { .buf = buf };
+	unsigned long val;
+
+	err = kstrtoul(buf, 0, &val);
+	if (err)
+		return err;
 
-	err = counter->ops->count_write(counter, count, &val);
+	err = counter->ops->count_write(counter, count, val);
 	if (err)
 		return err;
 
diff --git a/drivers/counter/ftm-quaddec.c b/drivers/counter/ftm-quaddec.c
index 4046aa9f9234..c2b3fdfd8b77 100644
--- a/drivers/counter/ftm-quaddec.c
+++ b/drivers/counter/ftm-quaddec.c
@@ -178,31 +178,25 @@ static const enum counter_count_function ftm_quaddec_count_functions[] = {
 
 static int ftm_quaddec_count_read(struct counter_device *counter,
 				  struct counter_count *count,
-				  struct counter_count_read_value *val)
+				  unsigned long *val)
 {
 	struct ftm_quaddec *const ftm = counter->priv;
 	uint32_t cntval;
 
 	ftm_read(ftm, FTM_CNT, &cntval);
 
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cntval);
+	*val = cntval;
 
 	return 0;
 }
 
 static int ftm_quaddec_count_write(struct counter_device *counter,
 				   struct counter_count *count,
-				   struct counter_count_write_value *val)
+				   const unsigned long val)
 {
 	struct ftm_quaddec *const ftm = counter->priv;
-	u32 cnt;
-	int err;
 
-	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
-	if (err)
-		return err;
-
-	if (cnt != 0) {
+	if (val != 0) {
 		dev_warn(&ftm->pdev->dev, "Can only accept '0' as new counter value\n");
 		return -EINVAL;
 	}
diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
index 28b63645c411..8e276eb655f5 100644
--- a/drivers/counter/stm32-lptimer-cnt.c
+++ b/drivers/counter/stm32-lptimer-cnt.c
@@ -377,8 +377,7 @@ static enum counter_synapse_action stm32_lptim_cnt_synapse_actions[] = {
 };
 
 static int stm32_lptim_cnt_read(struct counter_device *counter,
-				struct counter_count *count,
-				struct counter_count_read_value *val)
+				struct counter_count *count, unsigned long *val)
 {
 	struct stm32_lptim_cnt *const priv = counter->priv;
 	u32 cnt;
@@ -388,7 +387,7 @@ static int stm32_lptim_cnt_read(struct counter_device *counter,
 	if (ret)
 		return ret;
 
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
+	*val = cnt;
 
 	return 0;
 }
diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
index b61135b63ee8..3eafccec3beb 100644
--- a/drivers/counter/stm32-timer-cnt.c
+++ b/drivers/counter/stm32-timer-cnt.c
@@ -48,34 +48,27 @@ static enum counter_count_function stm32_count_functions[] = {
 };
 
 static int stm32_count_read(struct counter_device *counter,
-			    struct counter_count *count,
-			    struct counter_count_read_value *val)
+			    struct counter_count *count, unsigned long *val)
 {
 	struct stm32_timer_cnt *const priv = counter->priv;
 	u32 cnt;
 
 	regmap_read(priv->regmap, TIM_CNT, &cnt);
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
+	*val = cnt;
 
 	return 0;
 }
 
 static int stm32_count_write(struct counter_device *counter,
 			     struct counter_count *count,
-			     struct counter_count_write_value *val)
+			     const unsigned long val)
 {
 	struct stm32_timer_cnt *const priv = counter->priv;
-	u32 cnt;
-	int err;
-
-	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
-	if (err)
-		return err;
 
-	if (cnt > priv->ceiling)
+	if (val > priv->ceiling)
 		return -EINVAL;
 
-	return regmap_write(priv->regmap, TIM_CNT, cnt);
+	return regmap_write(priv->regmap, TIM_CNT, val);
 }
 
 static int stm32_count_function_get(struct counter_device *counter,
diff --git a/drivers/counter/ti-eqep.c b/drivers/counter/ti-eqep.c
index 4b3ef2449c06..1ff07faef27f 100644
--- a/drivers/counter/ti-eqep.c
+++ b/drivers/counter/ti-eqep.c
@@ -93,35 +93,28 @@ struct ti_eqep_cnt {
 };
 
 static int ti_eqep_count_read(struct counter_device *counter,
-			      struct counter_count *count,
-			      struct counter_count_read_value *val)
+			      struct counter_count *count, unsigned long *val)
 {
 	struct ti_eqep_cnt *priv = counter->priv;
 	u32 cnt;
 
 	regmap_read(priv->regmap32, QPOSCNT, &cnt);
-	counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);
+	*val = cnt;
 
 	return 0;
 }
 
 static int ti_eqep_count_write(struct counter_device *counter,
-			       struct counter_count *count,
-			       struct counter_count_write_value *val)
+			       struct counter_count *count, unsigned long val)
 {
 	struct ti_eqep_cnt *priv = counter->priv;
-	u32 cnt, max;
-	int err;
-
-	err = counter_count_write_value_get(&cnt, COUNTER_COUNT_POSITION, val);
-	if (err)
-		return err;
+	u32 max;
 
 	regmap_read(priv->regmap32, QPOSMAX, &max);
-	if (cnt > max)
+	if (val > max)
 		return -EINVAL;
 
-	return regmap_write(priv->regmap32, QPOSCNT, cnt);
+	return regmap_write(priv->regmap32, QPOSCNT, val);
 }
 
 static int ti_eqep_function_get(struct counter_device *counter,
diff --git a/include/linux/counter.h b/include/linux/counter.h
index a061cdcdef7c..32fb4d8cc3fd 100644
--- a/include/linux/counter.h
+++ b/include/linux/counter.h
@@ -290,53 +290,22 @@ struct counter_device_state {
 	const struct attribute_group **groups;
 };
 
-/**
- * struct counter_signal_read_value - Opaque Signal read value
- * @buf:	string representation of Signal read value
- * @len:	length of string in @buf
- */
-struct counter_signal_read_value {
-	char *buf;
-	size_t len;
-};
-
-/**
- * struct counter_count_read_value - Opaque Count read value
- * @buf:	string representation of Count read value
- * @len:	length of string in @buf
- */
-struct counter_count_read_value {
-	char *buf;
-	size_t len;
-};
-
-/**
- * struct counter_count_write_value - Opaque Count write value
- * @buf:	string representation of Count write value
- */
-struct counter_count_write_value {
-	const char *buf;
+enum counter_signal_value {
+	COUNTER_SIGNAL_LOW = 0,
+	COUNTER_SIGNAL_HIGH
 };
 
 /**
  * struct counter_ops - Callbacks from driver
  * @signal_read:	optional read callback for Signal attribute. The read
  *			value of the respective Signal should be passed back via
- *			the val parameter. val points to an opaque type which
- *			should be set only by calling the
- *			counter_signal_read_value_set function from within the
- *			signal_read callback.
+ *			the val parameter.
  * @count_read:		optional read callback for Count attribute. The read
  *			value of the respective Count should be passed back via
- *			the val parameter. val points to an opaque type which
- *			should be set only by calling the
- *			counter_count_read_value_set function from within the
- *			count_read callback.
+ *			the val parameter.
  * @count_write:	optional write callback for Count attribute. The write
  *			value for the respective Count is passed in via the val
- *			parameter. val points to an opaque type which should be
- *			accessed only by calling the
- *			counter_count_write_value_get function.
+ *			parameter.
  * @function_get:	function to get the current count function mode. Returns
  *			0 on success and negative error code on error. The index
  *			of the respective Count's returned function mode should
@@ -355,13 +324,11 @@ struct counter_count_write_value {
 struct counter_ops {
 	int (*signal_read)(struct counter_device *counter,
 			   struct counter_signal *signal,
-			   struct counter_signal_read_value *val);
+			   enum counter_signal_value *val);
 	int (*count_read)(struct counter_device *counter,
-			  struct counter_count *count,
-			  struct counter_count_read_value *val);
+			  struct counter_count *count, unsigned long *val);
 	int (*count_write)(struct counter_device *counter,
-			   struct counter_count *count,
-			   struct counter_count_write_value *val);
+			   struct counter_count *count, unsigned long val);
 	int (*function_get)(struct counter_device *counter,
 			    struct counter_count *count, size_t *function);
 	int (*function_set)(struct counter_device *counter,
@@ -477,29 +444,6 @@ struct counter_device {
 	void *priv;
 };
 
-enum counter_signal_level {
-	COUNTER_SIGNAL_LEVEL_LOW = 0,
-	COUNTER_SIGNAL_LEVEL_HIGH
-};
-
-enum counter_signal_value_type {
-	COUNTER_SIGNAL_LEVEL = 0
-};
-
-enum counter_count_value_type {
-	COUNTER_COUNT_POSITION = 0,
-};
-
-void counter_signal_read_value_set(struct counter_signal_read_value *const val,
-				   const enum counter_signal_value_type type,
-				   void *const data);
-void counter_count_read_value_set(struct counter_count_read_value *const val,
-				  const enum counter_count_value_type type,
-				  void *const data);
-int counter_count_write_value_get(void *const data,
-				  const enum counter_count_value_type type,
-				  const struct counter_count_write_value *const val);
-
 int counter_register(struct counter_device *const counter);
 void counter_unregister(struct counter_device *const counter);
 int devm_counter_register(struct device *dev,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
