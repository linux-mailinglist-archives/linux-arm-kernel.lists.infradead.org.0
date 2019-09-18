Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A36B5E65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1UIB7dwtdo4PJ8HijpIqsDu7g1Iu9sbE7WNqdWBtnE=; b=deNIvAD60y8GT5
	8c51y3fxXjIEhTW3KQ6e29YMa4Mlf+q32NuX4ZI500vnpIUwKwg+hlLPyQuHt0GBLAlM7hnWz0whc
	G43+8/oM7L31lGQL2ELM2D90Dw6pOe5EoS/B7EN8McfiSvlLXdS4FR4c0PL63eTSGYmsmP+0lYQRn
	Y0H8AWKivbtvK2XWL47yuBPowo4lgl/StQI/Ucs94hZbML6KEYa1Oy76C74QiGmv/9h43uoNO6AU3
	nepHxKk5vj2kxBNP/S5YNzb51b7NPPx+ppitMDOXUqrKdoNzHpjRok1K4PscvmyY9DpnQBnX7+ujF
	COweDUzW5C+NWnY8ga9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUmq-0001LO-QV; Wed, 18 Sep 2019 07:54:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUm7-00011x-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so3846346pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xjl+nKMauFdQMucZCGYFJNYkEcd8nmtmKLzonD2DvBw=;
 b=aapYiITKELPyW4PHB8mGw+Qj50qIrsMGCgbf6vimpLFQn0kfedpldxpF+mnmGruaRd
 0D8dSrIxudPaQYKYtAJrGcKiT8MvXUOpimKbMaeDoAoX0MlxNUIblfM+rFIUdA6Fa+q0
 fthHylYRRRyzedpTzlaznmGMzytzDacZRuJ/ge1XH/9Y1p4sdx40bnlddoJYjB64oksE
 a8XW5eydVr6oBq2MGac+QDMkHOFsmbDn+Te32g8A+A2ELQedhj4qMBs4oKMkLNMEpd6A
 RdoZHCGo7QdWuRXFOQApsNZa6kL3Mi5LyXDjTJeM7rmc077HB3Z/t+V2mQBDbDe3Dl70
 3Zbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xjl+nKMauFdQMucZCGYFJNYkEcd8nmtmKLzonD2DvBw=;
 b=L7ET7ZnWYp/ZTl7kv8JO0D/wbYqjq2lJ4824PNhRqOK1S3KjYTcSlFWZBcNIirQJQI
 XmN2HFgxISD6I9Gti+mWhiKltUJ5DSBSO9U3cOzWzPL+z10zbfzyOgm7zEOtTETGMBGc
 1WR1NRZycHTLRvNoQkuk1gYnLdDh5zwRCmOOwQGP0g12dQ0FzyaZt57ek9GfiYdphNjN
 Lbf//Zdl3Id6yAJHYTaZLZ+cf34uXgRP3voGwV87CVr2cYBAfwmgzj1iFtnrqkDBzfdU
 dwSeroRK4YVdziEcPpgn2UgFmb947d08abf0XuWyYS8wVKO6vkBKryp5prIPF1VJaKeb
 NwdQ==
X-Gm-Message-State: APjAAAXiwzWWt2EExi+uff3VgnSYe1RNKz5OT4kBMO/tIixQVestBm/y
 fKdQGTTE67PRaU2OnweuZyY=
X-Google-Smtp-Source: APXvYqy5KsztavGnDkcRDa8efg7SqNcEzpfdR8ZQEEx9n/F421fNVbt98mZe0yTO939Qqb5PhBhnRw==
X-Received: by 2002:a17:90a:2ecb:: with SMTP id
 h11mr2331197pjs.108.1568793198781; 
 Wed, 18 Sep 2019 00:53:18 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:17 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 1/7] counter: Simplify the count_read and count_write
 callbacks
Date: Wed, 18 Sep 2019 16:52:42 +0900
Message-Id: <f7969048e5db977cc6cc9daa8d32b170cf9f4c17.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005319_465417_E4A59785 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

The count_read and count_write callbacks are simplified to pass val as
unsigned long rather than as an opaque data structure. The opaque
counter_count_read_value and counter_count_write_value structures,
counter_count_value_type enum, and relevant counter_count_read_value_set
and counter_count_write_value_get functions, are removed as they are no
longer used.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/counter/counter.c | 66 +++++----------------------------------
 include/linux/counter.h   | 43 +++----------------------
 2 files changed, 12 insertions(+), 97 deletions(-)

diff --git a/drivers/counter/counter.c b/drivers/counter/counter.c
index 106bc7180cd8..1d08f1437b1b 100644
--- a/drivers/counter/counter.c
+++ b/drivers/counter/counter.c
@@ -246,60 +246,6 @@ void counter_signal_read_value_set(struct counter_signal_read_value *const val,
 }
 EXPORT_SYMBOL_GPL(counter_signal_read_value_set);
 
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
@@ -788,13 +734,13 @@ static ssize_t counter_count_show(struct device *dev,
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
@@ -806,9 +752,13 @@ static ssize_t counter_count_store(struct device *dev,
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
 
diff --git a/include/linux/counter.h b/include/linux/counter.h
index a061cdcdef7c..7e40796598a6 100644
--- a/include/linux/counter.h
+++ b/include/linux/counter.h
@@ -300,24 +300,6 @@ struct counter_signal_read_value {
 	size_t len;
 };
 
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
-};
-
 /**
  * struct counter_ops - Callbacks from driver
  * @signal_read:	optional read callback for Signal attribute. The read
@@ -328,15 +310,10 @@ struct counter_count_write_value {
  *			signal_read callback.
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
@@ -357,11 +334,9 @@ struct counter_ops {
 			   struct counter_signal *signal,
 			   struct counter_signal_read_value *val);
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
@@ -486,19 +461,9 @@ enum counter_signal_value_type {
 	COUNTER_SIGNAL_LEVEL = 0
 };
 
-enum counter_count_value_type {
-	COUNTER_COUNT_POSITION = 0,
-};
-
 void counter_signal_read_value_set(struct counter_signal_read_value *const val,
 				   const enum counter_signal_value_type type,
 				   void *const data);
-void counter_count_read_value_set(struct counter_count_read_value *const val,
-				  const enum counter_count_value_type type,
-				  void *const data);
-int counter_count_write_value_get(void *const data,
-				  const enum counter_count_value_type type,
-				  const struct counter_count_write_value *const val);
 
 int counter_register(struct counter_device *const counter);
 void counter_unregister(struct counter_device *const counter);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
