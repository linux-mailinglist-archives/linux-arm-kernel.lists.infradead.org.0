Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300D3CD916
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 22:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAYa+7sztswAnhwTtBM+x3uUmMfoFDrdkARkAISWPxs=; b=tPJTUlntQ9pqxL
	GiQCgtX/QGqYtVbJ+V4m0tzlg8vGZ8HlM1N7up9Ntfl8aOwmNOy0I/AK0S4+/p0x6fX5PaDjTzoyz
	WTzgtvE71N8cArkmKX6W0sCunpd+uv15Wbq3wcQ6FD5/Ozj4VW5QAFyT/lnMrgVN82ELnNswFDTpA
	RYJqY0KuhM6Q+Ucksn5ZfokPxRW76cg1zutaUfnBUhUwcnpuKMl6tvMToaL6NG9EUozVlOnc5UNbM
	FEiB2q2z7xUR8YgxpOJa68UM0f7nOf/SeDqQM0iM3jg5W1gHZTxX576bxsti8DMuFX+bGdjowb7PL
	JroNNKp6Ltn/qVcyNbgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHCky-000512-RZ; Sun, 06 Oct 2019 20:03:52 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCkd-0004rr-Sy
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 20:03:34 +0000
Received: by mail-yw1-xc44.google.com with SMTP id x65so4330000ywf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 13:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Eu3bPlCLOrcM88dTtVn+o9Kw7Prt69iCXEQysv2u4Mc=;
 b=l9dPuxaoUfOhGdewIo/w1xQfpjhAP0Q8hRqT6D6N8rTOzCll5XAEWHYMlayvCMF0MW
 2oRgmpsWfPz9oTR0Qdd4rv59oWbQNR5x8gfx9pC9hr63mtSvzxE/c2VMRnJV7Oq/zqFF
 XwtV7zwIcHIgfYU0aU2kStFAiMtMONF5q9WFeFfvRiQHEpsjN45Ahh2QRTpDzlxZo8y6
 75xZ6liLaECIZeNC5UvJxM7gPjwM+XRSZ1oWLRzc0k084IM91QV9E4amMPSucZ6lQMjh
 mDAWRf0lnGnbn9kDo5A2cz9Kp/5yjsKNr96naqbSB7wH8Qw5TIg31hYQMRdwrNlYS9fV
 mI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Eu3bPlCLOrcM88dTtVn+o9Kw7Prt69iCXEQysv2u4Mc=;
 b=PEdh2BNnMvODfSoE0tL0oGjQnRXfE3mSRiePdsPNUclX5tm4EtV35/lue/VTPOwzJK
 F+8Je1MMIVjhYMy891bn1iDs3vCYotP/elB4S4kRvsrxRXF/p6HsHlLjGXAQ0metWAi6
 7s6PdpkUwgT4B8i0mh0dyMzCQ4OwUzfdo65OFrLXOHWo1XkQ8XPZl0fGBwCBZ2CGcXdq
 azM51KxklR/7VSQoymF2945RPg8Gn2mN+qUpDhIro6OsBvQafxmNUWTVz5l8OZtbamRZ
 NnQofu7+iuCRSqT7EFugUyvvAWuE4SXlOTbRAby0yyCta3MUVud0U/m3jCrkdsMWCJkk
 47sg==
X-Gm-Message-State: APjAAAXCsYJpUonJilGJy8YTtl2hJkpVdt3sXtY9uekwdmyN7vRCnp12
 nNenMOqv+feZRB+yxF/QCWE=
X-Google-Smtp-Source: APXvYqzFHiSO3ZgF18gj8cBoFfgJ7wKRoRDVxYKV7JVaYeG6TvZ1OOH+9ueldn0a7RhIDCUv8j+OVQ==
X-Received: by 2002:a0d:dbc4:: with SMTP id
 d187mr18511214ywe.158.1570392210604; 
 Sun, 06 Oct 2019 13:03:30 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id x16sm3765266ywx.103.2019.10.06.13.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:03:29 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v5 1/3] counter: Simplify the count_read and count_write
 callbacks
Date: Sun,  6 Oct 2019 16:03:09 -0400
Message-Id: <0ddcfa1de2ff2aface81a4fbe8a5a55b10ad23bf.1570391994.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570391994.git.vilhelm.gray@gmail.com>
References: <cover.1570391994.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_130331_939181_777DB837 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
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

Cc: Patrick Havelange <patrick.havelange@essensium.com>
Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Acked-by: David Lechner <david@lechnology.com>
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
