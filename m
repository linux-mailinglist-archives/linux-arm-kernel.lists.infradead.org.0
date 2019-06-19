Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B1F4C1EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BYSqHX6GvtEctJPVrLl82GuaUXxj0KRDBSX+Bs6evOY=; b=KXaxqMtgORw3b3QBJUmYMT86pd
	KY0EqgSrwCERgEUzka/8W9llNczRx44fm6+Bq3zn6pneuoBOB3lo07F4LsXJ6e8GXj3O0hEfaa8Or
	7mvdjLLE9YhnvRhqFwX6mE9OAOHrve7SvbshvHwvz6sa4FNTT3YjxdWv7LQKH3vJ9VsxwpwmAEVSO
	bjiOcKYKkSf/wyGGe1HoPv93YJQ3hGlK3Q3tBLaJ/OEG05AQ9opF4RK3pu2e9N812x+CLUbU6Uv1L
	dLAeItHjZklVvwYNL3znNu48ScpTsiiCUEfdm+6RapF8/rC8wJTXU1aNKWl+TUaCyJcHJSd/O5OPD
	bNnqUeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgjK-0003FC-Vj; Wed, 19 Jun 2019 19:58:50 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeE-0006Wk-1u
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id d126so220253pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7YDLpLX/Ao2epAEvhkSMe8zwQunMhzBFxABY8GfNG7c=;
 b=CMSCRwHPae452XI5A8N8Hu/LXZVdF6lKfw/B/nDoofVEAfwrG+rh9A6MTk1XF9IeTr
 QC/P/PFmAFwwLWue7YpLxdMmOLApYgS1br119oHjvefzfO5x38v6aDHxndAm1tkDHmNB
 +4oYSo6i+LoU3bWo8iWGvOD8QLo9iJjU4OCUFpI+cW9MbUBZfsQKfGkgq1YjQE+y67Eq
 pxtnRxBntRJk44KCDo5BlnqjLsn91sgv0dIrljJKHbT7TfeTphAk6BM5RwyNEIif3qZ1
 W2LLuscW8oebBqE/JDvrdMu7bOoHU/3SxW1xQkX67/1fCcY/B4E6fciW3/Y87ddej8xc
 SiQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7YDLpLX/Ao2epAEvhkSMe8zwQunMhzBFxABY8GfNG7c=;
 b=ofjp+CpRShJ/C6RW88QgYWZ3Z6CDT6zWrbew7p84qwCdnJEfELrFwu7tt63vXNQEL0
 irBfhsYmNBq7aBrkKIfn76zeQy8bUwicqNozyX0FK/hZ4ncP3ATVpu063AJT9dB0Te4W
 SrueEdXRwFE2cwo1o8/AwbrP7VtrNFhNZadBwo7Dx2FRlMIGwew38pQHTe6zYcm2OzQs
 sVrUFKnD0JQ9gyFQjsgsXwS1ONQltSeb8DPKtVmD2elrJjSS/MqAbF/PEOe/JTGBdRKQ
 Kff2Ad/oXFFzEL8x9sjoROwk9N0mHM+LQ2OBW6Us6ybaXboPRtk1R9eMpvRbTnRABgqG
 TMmg==
X-Gm-Message-State: APjAAAVKfJ9JwBtQKHMOfkS9z1N3nm+P/QOok4tBxnuDUm/+MPZ6aFlw
 tz8UwHqrz50RrsXwPd4SLsOpSQ==
X-Google-Smtp-Source: APXvYqzHZyhDqiCNwL/0Eud/yUfEU4f6sR3Y+h/i+tz4opxEKBnDGl01rqrpttr3QMS6Yf7be1UHgg==
X-Received: by 2002:a63:e250:: with SMTP id y16mr9036108pgj.392.1560974012988; 
 Wed, 19 Jun 2019 12:53:32 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:32 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/28] coresight: Use fwnode handle instead of device names
Date: Wed, 19 Jun 2019 13:53:03 -0600
Message-Id: <20190619195318.19254-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125334_373368_5F363D1A 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
