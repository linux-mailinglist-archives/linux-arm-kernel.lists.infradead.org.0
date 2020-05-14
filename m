Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62BD1D311B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBS+/qvUDHit3Lck+9koYqzHXUfCNZDuEu3E+amY3qg=; b=l18PWVWCAPTvjh
	fFse6g1GfTahFyFY1ax3n+en+V5n3z8333vr+R2fFvGhdLVfm6O4+eLRCtE10gyBeQHc1roTHCiPK
	N0F/GeFv8CxX4TWHaNrPYkTYaf3J2dRIWNosWkPd7WFDK+qVUtcp2aT6JBmntr9/RsHJPmrZTtJGk
	kssJR9zLncVj83WcmnkN0RkGUhL5Tn0NP4mHumDaMQEV+xigoXssumvRlfiKllooBrgJXmLetoZhS
	5st/5JsyE7110fpmUZ6xew62wfokpa3mjHekophrCbViSvAdbo7Ms0ywew7ITTiw0GS/9XqVCUYCv
	87603VegvV2PAQOBfTIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDli-0002nJ-LZ; Thu, 14 May 2020 13:19:22 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDkN-0001d3-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:18:00 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EDHqpG030450; Thu, 14 May 2020 09:17:52 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 3100y97afy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:17:51 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 04EDHnnv034656
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Thu, 14 May 2020 09:17:49 -0400
Received: from SCSQCASHYB6.ad.analog.com (10.77.17.132) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:48 -0700
Received: from SCSQMBX10.ad.analog.com (10.77.17.5) by
 SCSQCASHYB6.ad.analog.com (10.77.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:31 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX10.ad.analog.com
 (10.77.17.5) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 14 May 2020 06:17:47 -0700
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04EDHUap017033;
 Thu, 14 May 2020 09:17:44 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 6/8] iio: core: wrap IIO device into an iio_dev_opaque
 object
Date: Thu, 14 May 2020 16:17:08 +0300
Message-ID: <20200514131710.84201-7-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514131710.84201-1-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=2
 lowpriorityscore=0 bulkscore=0 spamscore=0 cotscore=-2147483648
 phishscore=0 priorityscore=1501 adultscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 mlxlogscore=999 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005140118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061759_115897_0B0D697D 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are plenty of bad designs we want to discourage or not have to review
manually usually about accessing private (marked as [INTERN]) fields of
'struct iio_dev'.

Sometimes users copy drivers that are not always the best examples.

A better idea is to hide those fields into the framework.
For 'struct iio_dev' this is a 'struct iio_dev_opaque' which wraps a public
'struct iio_dev' object.

In the next series, some fields will be moved to this new struct, each with
it's own rework.

This rework will not be complete-able for a while, as many fields need some
drivers to be reworked in order to finalize them (e.g. 'indio_dev->mlock').

But some fields can already be moved, and in time, all of them may get
there (in the 'struct iio_dev_opaque' object).

Since a lot of drivers also call 'iio_priv()', in order to preserve
fast-paths (where this matters), the public iio_dev object will have a
'priv' field that will have the pointer to the private information already
computed. The reference returned by this field should be guaranteed to be
cacheline aligned.

As for the 'iio_priv_to_dev()' helper, this needs to be hidden away. There
aren't many users of this helper, and arguably drivers shouldn't need to
use it in any fast-paths, as they can maintain a reference to the IIO
device.

The opaque parts will be moved into the 'include/linux/iio/iio-opaque.h'
header. Should the hidden information be required for some debugging or
some special needs, it can be made available via this header.
Otherwise, only the IIO core files should include this file.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/industrialio-core.c | 27 ++++++++++++++++++++++-----
 include/linux/iio/iio-opaque.h  | 17 +++++++++++++++++
 include/linux/iio/iio.h         | 11 +++++------
 3 files changed, 44 insertions(+), 11 deletions(-)
 create mode 100644 include/linux/iio/iio-opaque.h

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 462d3e810013..a1b29e0f8fd6 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -25,6 +25,7 @@
 #include <linux/debugfs.h>
 #include <linux/mutex.h>
 #include <linux/iio/iio.h>
+#include <linux/iio/iio-opaque.h>
 #include "iio_core.h"
 #include "iio_core_trigger.h"
 #include <linux/iio/sysfs.h>
@@ -164,6 +165,15 @@ static const char * const iio_chan_info_postfix[] = {
 	[IIO_CHAN_INFO_THERMOCOUPLE_TYPE] = "thermocouple_type",
 };
 
+struct iio_dev *iio_priv_to_dev(void *priv)
+{
+	struct iio_dev_opaque *iio_dev_opaque =
+		(struct iio_dev_opaque *)((char *)priv -
+				  ALIGN(sizeof(struct iio_dev_opaque), IIO_ALIGN));
+	return &iio_dev_opaque->indio_dev;
+}
+EXPORT_SYMBOL_GPL(iio_priv_to_dev);
+
 /**
  * iio_find_channel_from_si() - get channel from its scan index
  * @indio_dev:		device
@@ -1476,6 +1486,8 @@ static void iio_device_unregister_sysfs(struct iio_dev *indio_dev)
 static void iio_dev_release(struct device *device)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(device);
+	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(indio_dev);
+
 	if (indio_dev->modes & INDIO_ALL_TRIGGERED_MODES)
 		iio_device_unregister_trigger_consumer(indio_dev);
 	iio_device_unregister_eventset(indio_dev);
@@ -1484,7 +1496,7 @@ static void iio_dev_release(struct device *device)
 	iio_buffer_put(indio_dev->buffer);
 
 	ida_simple_remove(&iio_ida, indio_dev->id);
-	kfree(indio_dev);
+	kfree(iio_dev_opaque);
 }
 
 struct device_type iio_device_type = {
@@ -1498,10 +1510,11 @@ struct device_type iio_device_type = {
  **/
 struct iio_dev *iio_device_alloc(int sizeof_priv)
 {
+	struct iio_dev_opaque *iio_dev_opaque;
 	struct iio_dev *dev;
 	size_t alloc_size;
 
-	alloc_size = sizeof(struct iio_dev);
+	alloc_size = sizeof(struct iio_dev_opaque);
 	if (sizeof_priv) {
 		alloc_size = ALIGN(alloc_size, IIO_ALIGN);
 		alloc_size += sizeof_priv;
@@ -1509,10 +1522,14 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
 	/* ensure 32-byte alignment of whole construct ? */
 	alloc_size += IIO_ALIGN - 1;
 
-	dev = kzalloc(alloc_size, GFP_KERNEL);
-	if (!dev)
+	iio_dev_opaque = kzalloc(alloc_size, GFP_KERNEL);
+	if (!iio_dev_opaque)
 		return NULL;
 
+	dev = &iio_dev_opaque->indio_dev;
+	dev->priv = (char *)iio_dev_opaque +
+		ALIGN(sizeof(struct iio_dev_opaque), IIO_ALIGN);
+
 	dev->dev.groups = dev->groups;
 	dev->dev.type = &iio_device_type;
 	dev->dev.bus = &iio_bus_type;
@@ -1526,7 +1543,7 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
 	if (dev->id < 0) {
 		/* cannot use a dev_err as the name isn't available */
 		pr_err("failed to get device id\n");
-		kfree(dev);
+		kfree(iio_dev_opaque);
 		return NULL;
 	}
 	dev_set_name(&dev->dev, "iio:device%d", dev->id);
diff --git a/include/linux/iio/iio-opaque.h b/include/linux/iio/iio-opaque.h
new file mode 100644
index 000000000000..1375674f14cd
--- /dev/null
+++ b/include/linux/iio/iio-opaque.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _INDUSTRIAL_IO_OPAQUE_H_
+#define _INDUSTRIAL_IO_OPAQUE_H_
+
+/**
+ * struct iio_dev_opaque - industrial I/O device opaque information
+ * @indio_dev:			public industrial I/O device information
+ */
+struct iio_dev_opaque {
+	struct iio_dev			indio_dev;
+};
+
+#define to_iio_dev_opaque(indio_dev)		\
+	container_of(indio_dev, struct iio_dev_opaque, indio_dev)
+
+#endif
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index 5f9f439a4f01..e82693db6578 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -522,6 +522,7 @@ struct iio_buffer_setup_ops {
  * @flags:		[INTERN] file ops related flags including busy flag.
  * @debugfs_dentry:	[INTERN] device specific debugfs dentry.
  * @cached_reg_addr:	[INTERN] cached register address for debugfs reads.
+ * @priv:		[DRIVER] reference to driver's private information
  */
 struct iio_dev {
 	int				id;
@@ -571,6 +572,7 @@ struct iio_dev {
 	char				read_buf[20];
 	unsigned int			read_buf_len;
 #endif
+	void				*priv;
 };
 
 const struct iio_chan_spec
@@ -678,16 +680,13 @@ static inline void *iio_device_get_drvdata(struct iio_dev *indio_dev)
 #define IIO_ALIGN L1_CACHE_BYTES
 struct iio_dev *iio_device_alloc(int sizeof_priv);
 
+/* The information at this reference is guaranteed to be cacheline aligned */
 static inline void *iio_priv(const struct iio_dev *indio_dev)
 {
-	return (char *)indio_dev + ALIGN(sizeof(struct iio_dev), IIO_ALIGN);
+	return indio_dev->priv;
 }
 
-static inline struct iio_dev *iio_priv_to_dev(void *priv)
-{
-	return (struct iio_dev *)((char *)priv -
-				  ALIGN(sizeof(struct iio_dev), IIO_ALIGN));
-}
+struct iio_dev *iio_priv_to_dev(void *priv);
 
 void iio_device_free(struct iio_dev *indio_dev);
 struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
