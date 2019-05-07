Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBDF16278
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kh3elUXrlJ/og1d3eAJ9wP3pKl5RcitqL5XmY+58WNE=; b=PevrTaRJTkmgkQTLvsqjvz2AdI
	NxwAyRCClRA9ECVAl++F/Nwcet4cwjibVD9F6GJwKlhoKkqxVrFRWDTDWTP4ZcD1QkP8gBbyLlCEo
	9A/UjYaEGBiLue4yR9fk0vvHQ9eHl+JuGos28cz6RZO9B6xCvcU3GCsSoojwgM5F7c5+x1wfz6yXl
	o4rBo7SVIxv9LfPfbLltjfurlq96eDdKp8HiBlMchSmLuH6JBQSN7bEF0DT9Q1M0/nxB4aD1+dpA6
	DmhVh/yPW3TToc3/tHj3+cyKysLMvOs7vYpj/TPxnpapV0qfd/XMZ8R+ITyl9rY18Gi+LpdtJOWmk
	jzDzskeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxoE-00047s-8L; Tue, 07 May 2019 10:58:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjx-0005zd-Ag
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 10:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fKD3FjW7kQqwUe6E1PnBpIhHPkPiwRRRlGbu3jRZRgA=; b=HPnRJZaatl/iImhY9v5F2vUwZ
 VxSwLyaOTrk8IH0TwEOOMb4CKfQlca+SvmwdNQ2MahhC6u089uMKpJf64A20JaxhLZxGnvnHF3I5W
 aAxgBcYUgPs5ZT96U9LfWhJicIn7YIEjp0c6g4ZWqvB4T2RI6DNzhhR4uaAqXzgGvpyJX4Y9+BJ3l
 ZN9YEeXycqR1HRrri2Ct0p9jSucp/fXp6kvnfVrMTbTE3cD/f70a95c1t9awCbKdoaTKEum7Jm2dN
 zS6+yU6sw744qcAE0NqVwOWpplj6jq28zQ5KKtKdlUZSxnRd3GDIsGHizy13oq+3vGbcTgGJ1bBdC
 mRrASpUkA==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjn-0005wT-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FEB61993;
 Tue,  7 May 2019 03:54:17 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 3CDFB3F5AF; Tue,  7 May 2019 03:54:16 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 25/30] coresight: Use fwnode handle instead of device names
Date: Tue,  7 May 2019 11:52:52 +0100
Message-Id: <1557226378-10131-26-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_065419_726475_951106A0 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We rely on the device names to find a CoreSight device on the
coresight bus. The device name however is obtained from the platform,
which is bound to the real platform/amba device. As we are about
to use different naming scheme for the coresight devices, we can't
rely on the platform device name to find the corresponding
coresight device. Instead we use the platform agnostic
"fwnode handle" of the parent device to find the devices.
We also reuse the same fwnode as the parent for the Coresight
device we create.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-platform.c | 14 +++++---
 drivers/hwtracing/coresight/coresight-priv.h     |  6 ++--
 drivers/hwtracing/coresight/coresight.c          | 42 +++++++++++++++++++-----
 include/linux/coresight.h                        |  4 +--
 4 files changed, 49 insertions(+), 17 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 4394095..49112a5 100644
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
index c216421..8b07fe5 100644
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
index 526141c..c9c8a8c 100644
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
+			if (conn->child_fwnode ==  csdev->dev.fwnode)
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
+			pdata->conns[i].child_fwnode = 0;
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
index b67d507..b40544b 100644
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
