Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334B21DE4C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNxxeen/af4GvasxVmo88SI56V3ldZxG4X0PyZ2ynuU=; b=hC11rD5uB6q3qA
	gpfAqxrNLrklzuJ29frF/lNB5WTHF/Ur3iYbR5OpgIHqwANNipNVtQnP/BJGxMxctrV/d0/CduGYS
	CsEch/DKmCseWHGyFIU+k6BhoIUf+aYbMcMLd++fcbkUwg1cmmqKWeTPru/IePPsrrEn/OsXqbmCH
	aXW00H+dbdLCm7HKKbAvPYsfqtSu2ElqQ8jTYAhljvaLCM40YE/7FOaXFhUb9ysyBjvJgKvWaDmLa
	7gSG9pMdObVyqXN9qEl6xNXDaLDv0a+UGeCAZKgC4qVbmGdmhiDZ6QD7+Ynfg7PjMsAzyzccBiUGh
	QsfgSmrVzmYiUCADGHrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5Ce-0003eJ-06; Fri, 22 May 2020 10:47:00 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5CQ-0003dE-C3
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:46:47 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04MAjAGC032134; Fri, 22 May 2020 06:46:42 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 312a17e5we-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 May 2020 06:46:42 -0400
Received: from ASHBMBX9.ad.analog.com (ashbmbx9.ad.analog.com [10.64.17.10])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 04MAkf6d064238
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Fri, 22 May 2020 06:46:41 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 22 May 2020 06:46:40 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 22 May 2020 06:46:40 -0400
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Fri, 22 May 2020 06:46:40 -0400
Received: from saturn.ad.analog.com ([10.48.65.112])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04MAkaQp011641;
 Fri, 22 May 2020 06:46:36 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 1/3] iio: Move attach/detach of the poll func to the core
Date: Fri, 22 May 2020 13:46:30 +0300
Message-ID: <20200522104632.517470-1-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-22_05:2020-05-22,
 2020-05-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=999 spamscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 cotscore=-2147483648
 suspectscore=0 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005220088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_034646_412960_0E3C02E7 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lars-Peter Clausen <lars@metafoo.de>, alexandre.torgue@st.com,
 linus.walleij@linaro.org, songqiang1304521@gmail.com,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lars-Peter Clausen <lars@metafoo.de>

All devices using a triggered buffer need to attach and detach the trigger
to the device in order to properly work. Instead of doing this in each and
every driver by hand move this into the core.

At this point in time, all drivers should have been resolved to
attach/detach the poll-function in the same order.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 .../buffer/industrialio-triggered-buffer.c    | 10 +--------
 drivers/iio/iio_core_trigger.h                | 17 ++++++++++++++
 drivers/iio/industrialio-buffer.c             | 13 +++++++++++
 drivers/iio/industrialio-trigger.c            | 22 ++++---------------
 include/linux/iio/trigger_consumer.h          |  7 ------
 5 files changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/iio/buffer/industrialio-triggered-buffer.c b/drivers/iio/buffer/industrialio-triggered-buffer.c
index e8046c1ecd6b..6c20a83f887e 100644
--- a/drivers/iio/buffer/industrialio-triggered-buffer.c
+++ b/drivers/iio/buffer/industrialio-triggered-buffer.c
@@ -13,11 +13,6 @@
 #include <linux/iio/triggered_buffer.h>
 #include <linux/iio/trigger_consumer.h>
 
-static const struct iio_buffer_setup_ops iio_triggered_buffer_setup_ops = {
-	.postenable = &iio_triggered_buffer_postenable,
-	.predisable = &iio_triggered_buffer_predisable,
-};
-
 /**
  * iio_triggered_buffer_setup() - Setup triggered buffer and pollfunc
  * @indio_dev:		IIO device structure
@@ -67,10 +62,7 @@ int iio_triggered_buffer_setup(struct iio_dev *indio_dev,
 	}
 
 	/* Ring buffer functions - here trigger setup related */
-	if (setup_ops)
-		indio_dev->setup_ops = setup_ops;
-	else
-		indio_dev->setup_ops = &iio_triggered_buffer_setup_ops;
+	indio_dev->setup_ops = setup_ops;
 
 	/* Flag that polled ring buffering is possible */
 	indio_dev->modes |= INDIO_BUFFER_TRIGGERED;
diff --git a/drivers/iio/iio_core_trigger.h b/drivers/iio/iio_core_trigger.h
index e59fe2f36bbb..9d1a92cc6480 100644
--- a/drivers/iio/iio_core_trigger.h
+++ b/drivers/iio/iio_core_trigger.h
@@ -18,6 +18,12 @@ void iio_device_register_trigger_consumer(struct iio_dev *indio_dev);
  **/
 void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev);
 
+
+int iio_trigger_attach_poll_func(struct iio_trigger *trig,
+				 struct iio_poll_func *pf);
+int iio_trigger_detach_poll_func(struct iio_trigger *trig,
+				 struct iio_poll_func *pf);
+
 #else
 
 /**
@@ -37,4 +43,15 @@ static void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev)
 {
 }
 
+static inline int iio_trigger_attach_poll_func(struct iio_trigger *trig,
+					       struct iio_poll_func *pf)
+{
+	return 0;
+}
+static inline int iio_trigger_detach_poll_func(struct iio_trigger *trig,
+					       struct iio_poll_func *pf)
+{
+	return 0;
+}
+
 #endif /* CONFIG_TRIGGER_CONSUMER */
diff --git a/drivers/iio/industrialio-buffer.c b/drivers/iio/industrialio-buffer.c
index ec4f531994fa..88d756107fb2 100644
--- a/drivers/iio/industrialio-buffer.c
+++ b/drivers/iio/industrialio-buffer.c
@@ -20,6 +20,7 @@
 
 #include <linux/iio/iio.h>
 #include "iio_core.h"
+#include "iio_core_trigger.h"
 #include <linux/iio/sysfs.h>
 #include <linux/iio/buffer.h>
 #include <linux/iio/buffer_impl.h>
@@ -972,6 +973,13 @@ static int iio_enable_buffers(struct iio_dev *indio_dev,
 		}
 	}
 
+	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
+		ret = iio_trigger_attach_poll_func(indio_dev->trig,
+						   indio_dev->pollfunc);
+		if (ret)
+			goto err_disable_buffers;
+	}
+
 	return 0;
 
 err_disable_buffers:
@@ -998,6 +1006,11 @@ static int iio_disable_buffers(struct iio_dev *indio_dev)
 	if (list_empty(&indio_dev->buffer_list))
 		return 0;
 
+	if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
+		iio_trigger_detach_poll_func(indio_dev->trig,
+					     indio_dev->pollfunc);
+	}
+
 	/*
 	 * If things go wrong at some step in disable we still need to continue
 	 * to perform the other steps, otherwise we leave the device in a
diff --git a/drivers/iio/industrialio-trigger.c b/drivers/iio/industrialio-trigger.c
index 53d1931f6be8..6f16357fd732 100644
--- a/drivers/iio/industrialio-trigger.c
+++ b/drivers/iio/industrialio-trigger.c
@@ -239,8 +239,8 @@ static void iio_trigger_put_irq(struct iio_trigger *trig, int irq)
  * the relevant function is in there may be the best option.
  */
 /* Worth protecting against double additions? */
-static int iio_trigger_attach_poll_func(struct iio_trigger *trig,
-					struct iio_poll_func *pf)
+int iio_trigger_attach_poll_func(struct iio_trigger *trig,
+				 struct iio_poll_func *pf)
 {
 	int ret = 0;
 	bool notinuse
@@ -290,8 +290,8 @@ static int iio_trigger_attach_poll_func(struct iio_trigger *trig,
 	return ret;
 }
 
-static int iio_trigger_detach_poll_func(struct iio_trigger *trig,
-					 struct iio_poll_func *pf)
+int iio_trigger_detach_poll_func(struct iio_trigger *trig,
+				 struct iio_poll_func *pf)
 {
 	int ret = 0;
 	bool no_other_users
@@ -705,17 +705,3 @@ void iio_device_unregister_trigger_consumer(struct iio_dev *indio_dev)
 	if (indio_dev->trig)
 		iio_trigger_put(indio_dev->trig);
 }
-
-int iio_triggered_buffer_postenable(struct iio_dev *indio_dev)
-{
-	return iio_trigger_attach_poll_func(indio_dev->trig,
-					    indio_dev->pollfunc);
-}
-EXPORT_SYMBOL(iio_triggered_buffer_postenable);
-
-int iio_triggered_buffer_predisable(struct iio_dev *indio_dev)
-{
-	return iio_trigger_detach_poll_func(indio_dev->trig,
-					     indio_dev->pollfunc);
-}
-EXPORT_SYMBOL(iio_triggered_buffer_predisable);
diff --git a/include/linux/iio/trigger_consumer.h b/include/linux/iio/trigger_consumer.h
index c3c6ba5ec423..3aa2f132dd67 100644
--- a/include/linux/iio/trigger_consumer.h
+++ b/include/linux/iio/trigger_consumer.h
@@ -50,11 +50,4 @@ irqreturn_t iio_pollfunc_store_time(int irq, void *p);
 
 void iio_trigger_notify_done(struct iio_trigger *trig);
 
-/*
- * Two functions for common case where all that happens is a pollfunc
- * is attached and detached from a trigger
- */
-int iio_triggered_buffer_postenable(struct iio_dev *indio_dev);
-int iio_triggered_buffer_predisable(struct iio_dev *indio_dev);
-
 #endif
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
