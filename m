Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB6B5E67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjiPHkbtSTZ8HDrhCKlFyD4S4jc7XzD4p7KdUrNv6xY=; b=R46x09NFpAb/WI
	8rUFyLV+1gsQ8RaL2rXEzP7MDYrebdZnqPq4fH6lqGLzBB4XZ/cN7xfa6gF15G1I4xfd7G2J9dI3E
	OICUIPeIfGcLFEcmsvCyRTjJSUNEJL/hrYDNja/WOmUptWILwbyRSXttjN7ThQVTg/VlDBU/OMfUp
	c8aiKc6gAd3gpxKi0TsEqhNeyKuquHIu1kYHH/3Tv98VnwuzVkWid5jJw/S8dF/vy7iK+TmcwGu8b
	R9dQR3mogSXb7n8Ej7B0ARBSycwKxuS42t6xXvWQzOBCF/xbfcPEaJM3MLWu5WKzNqC3AD9+kjs6W
	TRP8WWUevkocaxN8dacg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUn9-0001bh-Rh; Wed, 18 Sep 2019 07:54:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUmC-000176-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so3544656pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y1oWvoEblal6EMi7QOA2PERi1JLfxSYAnMiBp+6pVPo=;
 b=CnEdhhsRkpafJvgJT4mL3c+IcDmTmsQB0iDRkZeA/NAmKxpkZza0NRe67uVCmcfyRZ
 GWdbH1S0liYCjA94q29e/woGC2zdHfnKWDjDONnLWwTCwBAKkNcI4cD6jwkUQc4yxKz1
 Qt6d4xNERDcmfK5Po3W6mKGQIykecevxBvyMiJeRAmTOapSV2mHPTlSe3hWRRo1lKIqn
 CXhZ0kb4jBW6B3LCuK82M7IfscaIKJZ4Ju+H0fdwY/jKrrpdth6quh4c2V5yXEnF+ABg
 rlnswzlq9NKl3EIjGhwcfsmaPP9KfDEWViGEY4i2+4rEEf1qDZad0gfIfY2Pnc8sANA3
 6Uzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y1oWvoEblal6EMi7QOA2PERi1JLfxSYAnMiBp+6pVPo=;
 b=l7RA2B97RxKRG4mLmhfHg8F1GrFtlVQZd1E3PPWFClFoPIzXT+jWP33JhePrDo1IYp
 dS7WzmXluD3ev33R0XQWzKp0C5ZUwjEWAzEEH9jHzR+pFGyMHqbAfoJpt2ufR+hurRHr
 M+UxqwMjJDDQY5D7sE3yMvuJRNjsOudOcb4L1n7FWgKKBk38GCFvkxjhc43smYbgVg0T
 WwsM6ZL9+yOrq43/dVDu+HPviI5aM03qTKy5GGsXWIVNteTeUCyYuTBbtAl598J4B6MJ
 g2HmuDpP1hjGLaC2AS6hUrL4mB7FHmDr3K7jWAec8Y/Vt/d6EptXDJmhMt95rux6O1gL
 8LeQ==
X-Gm-Message-State: APjAAAXU/3HcK3sa3rEwer+AyF4dY/YTCxDGvD7xzE/b/Pnntp9gBhwc
 Q7ThMN+WaajYakxPs5e6AUI=
X-Google-Smtp-Source: APXvYqz1GM0wIGoCacIl0DFSJZeVxpLMqSHlnKe5HnoF5L2gn6G5UNxU1R9svnqYxwXg8JzOg1r+XQ==
X-Received: by 2002:a17:90a:fe04:: with SMTP id
 ck4mr2425601pjb.74.1568793203428; 
 Wed, 18 Sep 2019 00:53:23 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:22 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 2/7] counter: Simplify the signal_read callback
Date: Wed, 18 Sep 2019 16:52:43 +0900
Message-Id: <422cb5fa006ec10f1c6d1130a282f2a5d2cdd9df.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005324_370127_C0400166 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The signal_read callback is simplified to pass val as a
counter_signal_val enum rather than as an opaque data structure. The
opaque counter_signal_read_value structure and relevant
counter_signal_read_value_set function are removed as they are no longer
used. In addition, the counter_signal_level enum is replaced by the
similar counter_signal_value enum.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/counter.c | 35 +++++++----------------------------
 include/linux/counter.h   | 31 +++++--------------------------
 2 files changed, 12 insertions(+), 54 deletions(-)

diff --git a/drivers/counter/counter.c b/drivers/counter/counter.c
index 1d08f1437b1b..6a683d086008 100644
--- a/drivers/counter/counter.c
+++ b/drivers/counter/counter.c
@@ -220,32 +220,6 @@ ssize_t counter_device_enum_available_read(struct counter_device *counter,
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
 struct counter_attr_parm {
 	struct counter_device_attr_group *group;
 	const char *prefix;
@@ -315,6 +289,11 @@ struct counter_signal_unit {
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
@@ -323,13 +302,13 @@ static ssize_t counter_signal_show(struct device *dev,
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
diff --git a/include/linux/counter.h b/include/linux/counter.h
index 7e40796598a6..32fb4d8cc3fd 100644
--- a/include/linux/counter.h
+++ b/include/linux/counter.h
@@ -290,24 +290,16 @@ struct counter_device_state {
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
  *			the val parameter.
@@ -332,7 +324,7 @@ struct counter_signal_read_value {
 struct counter_ops {
 	int (*signal_read)(struct counter_device *counter,
 			   struct counter_signal *signal,
-			   struct counter_signal_read_value *val);
+			   enum counter_signal_value *val);
 	int (*count_read)(struct counter_device *counter,
 			  struct counter_count *count, unsigned long *val);
 	int (*count_write)(struct counter_device *counter,
@@ -452,19 +444,6 @@ struct counter_device {
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
-void counter_signal_read_value_set(struct counter_signal_read_value *const val,
-				   const enum counter_signal_value_type type,
-				   void *const data);
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
