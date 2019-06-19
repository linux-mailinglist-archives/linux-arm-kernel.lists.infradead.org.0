Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E24E4BFD9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BYSqHX6GvtEctJPVrLl82GuaUXxj0KRDBSX+Bs6evOY=; b=oUaIfxvoWoF/WWCAd485RAIPlD
	gTLzayMPlR6inXIdXuWR1OlEB1CfsZAC+5BfSdH8ozmxtKXUhtUgQfZnSgVK9Ww/YnuqFbbaPz0ct
	RG856z8ym/PcSFnhL8HoLFcsKjisD1iCWYhu4O+YBYrjsx4SoL+X+SsFYkwDcRBIWvgaBWo7hou52
	fdF5hCu1PfOLQlJVsm6VgMjC9A4xcXhuOIVstjEQHESb0HAL2LZ2r7HVVM7IARvEi1DNsFdJZSSdq
	N7UENvS/kAPfLpitU42OKZ+6Ws4KXJ0FC6FqsOTe+oKwGXAa9+fdQzPlacXbD2Z7xot4NnKXyy/S9
	SNLX/Kfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeZD-0001Gx-JW; Wed, 19 Jun 2019 17:40:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePc-00006O-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id y72so41485pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7YDLpLX/Ao2epAEvhkSMe8zwQunMhzBFxABY8GfNG7c=;
 b=pzgvEWS8uoHUSM1xnTD37cT7HA+1BRM9oBQhLmcHEaHY7oq4p2vtuHlkqhVhp+aEtZ
 cl0jfFEqi9OSmSWtEOEGioT3r6UkA8QJBJJ8Vsz0w/Squ40+W+BOOyYosgmEIjuhx4PY
 6JedixviT7xNLFneecMyRUtPPZmnh5sbIOFcBxcU8rXvvNL2TVDDjK82D2hJICjy/taB
 I/GRvrrkXdHdj0q8tgum5I9Rs/p70A1bXhhAzZAxevMO0Yi+pfYfKMdw05MSCUa8s8Wx
 TIkSgmIP5wsA4DUVyx0HRouxNnmXTuqvJ5Vdz8vXpp0+6IY0vq2SqLffpjNe46UX9Zhb
 Gg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7YDLpLX/Ao2epAEvhkSMe8zwQunMhzBFxABY8GfNG7c=;
 b=FbBWyYgDHIKkoJPwrjkcTpgnjKAkbR3euqu+/TKv7asb1h7G0QQmoBt8xxVirL2zaf
 IazDK/GS8hpS+bL+TFJY+IKMZ1vEMV4HGrB1i6ScApWP7Yzj+UGioFDTS/m86aBEkMud
 r7xBFf4HPpzXw3g+IQgjldMvIqAHmeZgTBFv2s8+XglD2y+THAP2uBxUV52Ar1TwneZp
 5GlJ7MqzzlEWH7iQ0vjHuIrYIdeA8vLvmWbp80oIqKb3tYRjOxzWsOchVjhWDhkcxRLV
 5JM6CBDxtCoNGtkROnOlj4Hu5m3hfL+p7XouwH3hLjnoForASG77iwCgOE2A91+E85uP
 KF5Q==
X-Gm-Message-State: APjAAAVD+AAKdR76A6Mp32bXWUdORxbY64a+m4gse1Aw+JkqPCpN48DB
 r1obTJmhs7Z4KUJjdQ2W71YrhhHaIUcbVQ==
X-Google-Smtp-Source: APXvYqz0mgZIeKVqI04LZDt0q2jJWSMQQ7nflMIgHxlBCqrJmG54LH2fxeezcQPDeKmQymm9dkx21A==
X-Received: by 2002:a63:1d2:: with SMTP id 201mr3180465pgb.232.1560965419295; 
 Wed, 19 Jun 2019 10:30:19 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 30/45] coresight: Use fwnode handle instead of device names
Date: Wed, 19 Jun 2019 11:29:34 -0600
Message-Id: <20190619172949.4522-31-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103020_789310_98046589 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

We rely on the device names to find a CoreSight device on the
coresight bus. The device name however is obtained from the platform,
which is bound to the real platform/amba device. As we are about
to use different naming scheme for the coresight devices, we can't
rely on the platform device name to find the corresponding
coresight device. Instead we use the platform agnostic
"fwnode handle" of the parent device to find the devices.
We also reuse the same fwnode as the parent for the Coresight
device we create.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-platform.c  | 14 +++++--
 drivers/hwtracing/coresight/coresight-priv.h  |  6 +--
 drivers/hwtracing/coresight/coresight.c       | 42 +++++++++++++++----
 include/linux/coresight.h                     |  4 +-
 4 files changed, 49 insertions(+), 17 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 4394095ad224..49112a58478e 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -36,7 +36,7 @@ static int coresight_alloc_conns(struct device *dev,
 	return 0;
 }
 
-static int coresight_device_fwnode_match(struct device *dev, void *fwnode)
+int coresight_device_fwnode_match(struct device *dev, void *fwnode)
 {
 	return dev_fwnode(dev) == fwnode;
 }
@@ -219,9 +219,15 @@ static int of_coresight_parse_endpoint(struct device *dev,
 		}
 
 		conn->outport = endpoint.port;
-		conn->child_name = devm_kstrdup(dev,
-						dev_name(rdev),
-						GFP_KERNEL);
+		/*
+		 * Hold the refcount to the target device. This could be
+		 * released via:
+		 * 1) coresight_release_platform_data() if the probe fails or
+		 *    this device is unregistered.
+		 * 2) While removing the target device via
+		 *    coresight_remove_match()
+		 */
+		conn->child_fwnode = fwnode_handle_get(rdev_fwnode);
 		conn->child_port = rendpoint.port;
 		/* Connection record updated */
 		ret = 1;
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index c21642114fc3..8b07fe55395a 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -200,8 +200,8 @@ static inline void *coresight_get_uci_data(const struct amba_id *id)
 	return 0;
 }
 
-static inline void
-coresight_release_platform_data(struct coresight_platform_data *pdata)
-{}
+void coresight_release_platform_data(struct coresight_platform_data *pdata);
+
+int coresight_device_fwnode_match(struct device *dev, void *fwnode);
 
 #endif
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 526141c2f876..1287778c3be5 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -978,6 +978,7 @@ static void coresight_device_release(struct device *dev)
 {
 	struct coresight_device *csdev = to_coresight_device(dev);
 
+	fwnode_handle_put(csdev->dev.fwnode);
 	kfree(csdev->refcnt);
 	kfree(csdev);
 }
@@ -1009,13 +1010,11 @@ static int coresight_orphan_match(struct device *dev, void *data)
 		/* We have found at least one orphan connection */
 		if (conn->child_dev == NULL) {
 			/* Does it match this newly added device? */
-			if (conn->child_name &&
-			    !strcmp(dev_name(&csdev->dev), conn->child_name)) {
+			if (conn->child_fwnode == csdev->dev.fwnode)
 				conn->child_dev = csdev;
-			} else {
+			else
 				/* This component still has an orphan */
 				still_orphan = true;
-			}
 		}
 	}
 
@@ -1047,9 +1046,9 @@ static void coresight_fixup_device_conns(struct coresight_device *csdev)
 		struct coresight_connection *conn = &csdev->pdata->conns[i];
 		struct device *dev = NULL;
 
-		if (conn->child_name)
-			dev = bus_find_device_by_name(&coresight_bustype, NULL,
-						      conn->child_name);
+		dev = bus_find_device(&coresight_bustype, NULL,
+				      (void *)conn->child_fwnode,
+				      coresight_device_fwnode_match);
 		if (dev) {
 			conn->child_dev = to_coresight_device(dev);
 			/* and put reference from 'bus_find_device()' */
@@ -1084,9 +1083,15 @@ static int coresight_remove_match(struct device *dev, void *data)
 		if (conn->child_dev == NULL)
 			continue;
 
-		if (!strcmp(dev_name(&csdev->dev), conn->child_name)) {
+		if (csdev->dev.fwnode == conn->child_fwnode) {
 			iterator->orphan = true;
 			conn->child_dev = NULL;
+			/*
+			 * Drop the reference to the handle for the remote
+			 * device acquired in parsing the connections from
+			 * platform data.
+			 */
+			fwnode_handle_put(conn->child_fwnode);
 			/* No need to continue */
 			break;
 		}
@@ -1166,6 +1171,22 @@ static int __init coresight_init(void)
 }
 postcore_initcall(coresight_init);
 
+/*
+ * coresight_release_platform_data: Release references to the devices connected
+ * to the output port of this device.
+ */
+void coresight_release_platform_data(struct coresight_platform_data *pdata)
+{
+	int i;
+
+	for (i = 0; i < pdata->nr_outport; i++) {
+		if (pdata->conns[i].child_fwnode) {
+			fwnode_handle_put(pdata->conns[i].child_fwnode);
+			pdata->conns[i].child_fwnode = NULL;
+		}
+	}
+}
+
 struct coresight_device *coresight_register(struct coresight_desc *desc)
 {
 	int ret;
@@ -1210,6 +1231,11 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	csdev->dev.parent = desc->dev;
 	csdev->dev.release = coresight_device_release;
 	csdev->dev.bus = &coresight_bustype;
+	/*
+	 * Hold the reference to our parent device. This will be
+	 * dropped only in coresight_device_release().
+	 */
+	csdev->dev.fwnode = fwnode_handle_get(dev_fwnode(desc->dev));
 	dev_set_name(&csdev->dev, "%s", desc->name);
 
 	ret = device_register(&csdev->dev);
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index b67d5074ece0..b40544bc06fe 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -126,15 +126,15 @@ struct coresight_desc {
 /**
  * struct coresight_connection - representation of a single connection
  * @outport:	a connection's output port number.
- * @chid_name:	remote component's name.
  * @child_port:	remote component's port number @output is connected to.
+ * @chid_fwnode: remote component's fwnode handle.
  * @child_dev:	a @coresight_device representation of the component
 		connected to @outport.
  */
 struct coresight_connection {
 	int outport;
-	const char *child_name;
 	int child_port;
+	struct fwnode_handle *child_fwnode;
 	struct coresight_device *child_dev;
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
