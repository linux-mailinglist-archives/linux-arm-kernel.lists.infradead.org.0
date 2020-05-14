Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A255F1D311D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zw4Pj5h7vgst0OfntPVjg3J1L7nrL5uuUJoAzhrupB0=; b=YmLP/Kzc6TTJzo
	oIiJ4D5HEdpE+cVjH/5Oel6IXRIgG/VFWt2ipZi8Mp8tZ2t5caBOY72tnG8IwrgOXCYsv1b22X6rb
	LeHj8Fg1NmIrZWzTbqB1IBIj+QC28pD7hfau6xHQdDfA3pWVrC/KpPbT/CJNpSrivyV2ALtnBM1Ma
	E3kgV2u+YGmEKEsUjPz7MQer6Iizy/6UA9f5fTp6PLKcsHW+o0KaOI205Z2Chm/XgrVQiRrz6vgKl
	zLGh+vHzDH0LgOXQqzWrz5Sw4o8g59kD5SiWLKlNpKf5+ZInhiXBHznIyIdyTBWUfuU0do0/Yhfcs
	Bs65pBsPkMHyvXBeCW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDmE-0003GF-2M; Thu, 14 May 2020 13:19:54 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDkQ-0001hW-0b
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:18:03 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ED9Xe0020362; Thu, 14 May 2020 09:17:56 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
 by mx0a-00128a01.pphosted.com with ESMTP id 3100x5yec5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 09:17:56 -0400
Received: from SCSQMBX11.ad.analog.com (scsqmbx11.ad.analog.com [10.77.17.10])
 by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 04EDHsg7034683
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
 verify=FAIL); Thu, 14 May 2020 09:17:55 -0400
Received: from SCSQMBX11.ad.analog.com (10.77.17.10) by
 SCSQMBX11.ad.analog.com (10.77.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 14 May 2020 06:17:53 -0700
Received: from zeus.spd.analog.com (10.64.82.11) by SCSQMBX11.ad.analog.com
 (10.77.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 14 May 2020 06:17:53 -0700
Received: from localhost.localdomain ([10.48.65.12])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 04EDHUar017033;
 Thu, 14 May 2020 09:17:49 -0400
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
To: <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 8/8] iio: core: move debugfs data on the private iio dev
 info
Date: Thu, 14 May 2020 16:17:10 +0300
Message-ID: <20200514131710.84201-9-alexandru.ardelean@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514131710.84201-1-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 cotscore=-2147483648 mlxscore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061802_139914_49A635B7 
X-CRM114-Status: GOOD (  15.04  )
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

This change moves all iio_dev debugfs fields to the iio_dev_priv object.
It's not the biggest advantage yet (to the whole thing of abstractization)
but it's a start.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
---
 drivers/iio/industrialio-core.c | 40 ++++++++++++++++++++++-----------
 include/linux/iio/iio-opaque.h  | 10 +++++++++
 include/linux/iio/iio.h         | 13 +----------
 3 files changed, 38 insertions(+), 25 deletions(-)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 7671d36efae7..26bef5032810 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -174,6 +174,13 @@ struct iio_dev *iio_priv_to_dev(void *priv)
 }
 EXPORT_SYMBOL_GPL(iio_priv_to_dev);
 
+struct dentry *iio_get_debugfs_dentry(struct iio_dev *indio_dev)
+{
+	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(indio_dev);
+	return iio_dev_opaque->debugfs_dentry;
+}
+EXPORT_SYMBOL_GPL(iio_get_debugfs_dentry);
+
 /**
  * iio_find_channel_from_si() - get channel from its scan index
  * @indio_dev:		device
@@ -317,35 +324,37 @@ static ssize_t iio_debugfs_read_reg(struct file *file, char __user *userbuf,
 			      size_t count, loff_t *ppos)
 {
 	struct iio_dev *indio_dev = file->private_data;
+	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(indio_dev);
 	unsigned val = 0;
 	int ret;
 
 	if (*ppos > 0)
 		return simple_read_from_buffer(userbuf, count, ppos,
-					       indio_dev->read_buf,
-					       indio_dev->read_buf_len);
+					       iio_dev_opaque->read_buf,
+					       iio_dev_opaque->read_buf_len);
 
 	ret = indio_dev->info->debugfs_reg_access(indio_dev,
-						  indio_dev->cached_reg_addr,
+						  iio_dev_opaque->cached_reg_addr,
 						  0, &val);
 	if (ret) {
 		dev_err(indio_dev->dev.parent, "%s: read failed\n", __func__);
 		return ret;
 	}
 
-	indio_dev->read_buf_len = snprintf(indio_dev->read_buf,
-					   sizeof(indio_dev->read_buf),
-					   "0x%X\n", val);
+	iio_dev_opaque->read_buf_len = snprintf(iio_dev_opaque->read_buf,
+					      sizeof(iio_dev_opaque->read_buf),
+					      "0x%X\n", val);
 
 	return simple_read_from_buffer(userbuf, count, ppos,
-				       indio_dev->read_buf,
-				       indio_dev->read_buf_len);
+				       iio_dev_opaque->read_buf,
+				       iio_dev_opaque->read_buf_len);
 }
 
 static ssize_t iio_debugfs_write_reg(struct file *file,
 		     const char __user *userbuf, size_t count, loff_t *ppos)
 {
 	struct iio_dev *indio_dev = file->private_data;
+	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(indio_dev);
 	unsigned reg, val;
 	char buf[80];
 	int ret;
@@ -360,10 +369,10 @@ static ssize_t iio_debugfs_write_reg(struct file *file,
 
 	switch (ret) {
 	case 1:
-		indio_dev->cached_reg_addr = reg;
+		iio_dev_opaque->cached_reg_addr = reg;
 		break;
 	case 2:
-		indio_dev->cached_reg_addr = reg;
+		iio_dev_opaque->cached_reg_addr = reg;
 		ret = indio_dev->info->debugfs_reg_access(indio_dev, reg,
 							  val, NULL);
 		if (ret) {
@@ -387,23 +396,28 @@ static const struct file_operations iio_debugfs_reg_fops = {
 
 static void iio_device_unregister_debugfs(struct iio_dev *indio_dev)
 {
-	debugfs_remove_recursive(indio_dev->debugfs_dentry);
+	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(indio_dev);
+	debugfs_remove_recursive(iio_dev_opaque->debugfs_dentry);
 }
 
 static void iio_device_register_debugfs(struct iio_dev *indio_dev)
 {
+	struct iio_dev_opaque *iio_dev_opaque;
+
 	if (indio_dev->info->debugfs_reg_access == NULL)
 		return;
 
 	if (!iio_debugfs_dentry)
 		return;
 
-	indio_dev->debugfs_dentry =
+	iio_dev_opaque = to_iio_dev_opaque(indio_dev);
+
+	iio_dev_opaque->debugfs_dentry =
 		debugfs_create_dir(dev_name(&indio_dev->dev),
 				   iio_debugfs_dentry);
 
 	debugfs_create_file("direct_reg_access", 0644,
-			    indio_dev->debugfs_dentry, indio_dev,
+			    iio_dev_opaque->debugfs_dentry, indio_dev,
 			    &iio_debugfs_reg_fops);
 }
 #else
diff --git a/include/linux/iio/iio-opaque.h b/include/linux/iio/iio-opaque.h
index 1375674f14cd..b3f234b4c1e9 100644
--- a/include/linux/iio/iio-opaque.h
+++ b/include/linux/iio/iio-opaque.h
@@ -6,9 +6,19 @@
 /**
  * struct iio_dev_opaque - industrial I/O device opaque information
  * @indio_dev:			public industrial I/O device information
+ * @debugfs_dentry:		device specific debugfs dentry
+ * @cached_reg_addr:		cached register address for debugfs reads
+ * @read_buf:			read buffer to be used for the initial reg read
+ * @read_buf_len:		data length in @read_buf
  */
 struct iio_dev_opaque {
 	struct iio_dev			indio_dev;
+#if defined(CONFIG_DEBUG_FS)
+	struct dentry			*debugfs_dentry;
+	unsigned			cached_reg_addr;
+	char				read_buf[20];
+	unsigned int			read_buf_len;
+#endif
 };
 
 #define to_iio_dev_opaque(indio_dev)		\
diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
index e82693db6578..a52a9f688b35 100644
--- a/include/linux/iio/iio.h
+++ b/include/linux/iio/iio.h
@@ -520,8 +520,6 @@ struct iio_buffer_setup_ops {
  * @groups:		[INTERN] attribute groups
  * @groupcounter:	[INTERN] index of next attribute group
  * @flags:		[INTERN] file ops related flags including busy flag.
- * @debugfs_dentry:	[INTERN] device specific debugfs dentry.
- * @cached_reg_addr:	[INTERN] cached register address for debugfs reads.
  * @priv:		[DRIVER] reference to driver's private information
  */
 struct iio_dev {
@@ -566,12 +564,6 @@ struct iio_dev {
 	int				groupcounter;
 
 	unsigned long			flags;
-#if defined(CONFIG_DEBUG_FS)
-	struct dentry			*debugfs_dentry;
-	unsigned			cached_reg_addr;
-	char				read_buf[20];
-	unsigned int			read_buf_len;
-#endif
 	void				*priv;
 };
 
@@ -708,10 +700,7 @@ static inline bool iio_buffer_enabled(struct iio_dev *indio_dev)
  * @indio_dev:		IIO device structure for device
  **/
 #if defined(CONFIG_DEBUG_FS)
-static inline struct dentry *iio_get_debugfs_dentry(struct iio_dev *indio_dev)
-{
-	return indio_dev->debugfs_dentry;
-}
+struct dentry *iio_get_debugfs_dentry(struct iio_dev *indio_dev);
 #else
 static inline struct dentry *iio_get_debugfs_dentry(struct iio_dev *indio_dev)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
