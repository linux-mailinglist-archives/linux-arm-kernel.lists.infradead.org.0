Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8BB26212
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=98KhRRadq17shBfHhHYIuIjY0B4RtTpFOj6gxUhS3hM=; b=N3e0+wVOHzdNCddpKBXCP5NFCV
	o3Ot63YTkQQzPkmLJ6OFosxMBsrAZoye4rus+hSXi5zzb6ZBDw8/9sAMXAGrSSXuAGkBdV/vGaGMT
	otD8TZPqrOKUuZd+i2vq7S5uXqlwU0Vo+4c88mjAW532oV+qWD7TgfAJtuvMA2jhWwDv3vHO7vRPv
	/MRzZ9pNFfryJzd4vZl1/ie+CwuaYpMuHjHN3U1uDNT62kqN1N2C4mLS+sb71SjkX2uEpyzFtiowF
	Krc0zHPrkV4xqExtOAQbQWYeLFu8Mku0Zf77Ols0k6wMhveEv3pdSWxlyxuJp2Oh30OxNV+qNZA8V
	h0cn+2tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOew-0001E6-C2; Wed, 22 May 2019 10:39:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOb7-00051k-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A53315BF;
 Wed, 22 May 2019 03:35:49 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 7A83D3F575; Wed, 22 May 2019 03:35:48 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 24/30] coresight: platform: Use fwnode handle for device
 search
Date: Wed, 22 May 2019 11:34:57 +0100
Message-Id: <1558521304-27469-25-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033550_142720_7C892141 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We match of_node while searching for a device. Make this
more generic in preparation for the ACPI support by using
fwnode_handle.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-platform.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 53d6eed..4394095 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -36,14 +36,13 @@ static int coresight_alloc_conns(struct device *dev,
 	return 0;
 }
 
-#ifdef CONFIG_OF
-static int of_dev_node_match(struct device *dev, void *data)
+static int coresight_device_fwnode_match(struct device *dev, void *fwnode)
 {
-	return dev->of_node == data;
+	return dev_fwnode(dev) == fwnode;
 }
 
 static struct device *
-of_coresight_get_endpoint_device(struct device_node *endpoint)
+coresight_find_device_by_fwnode(struct fwnode_handle *fwnode)
 {
 	struct device *dev = NULL;
 
@@ -52,7 +51,7 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
 	 * platform bus.
 	 */
 	dev = bus_find_device(&platform_bus_type, NULL,
-			      endpoint, of_dev_node_match);
+			      fwnode, coresight_device_fwnode_match);
 	if (dev)
 		return dev;
 
@@ -61,9 +60,10 @@ of_coresight_get_endpoint_device(struct device_node *endpoint)
 	 * looking for the device that matches the endpoint node.
 	 */
 	return bus_find_device(&amba_bustype, NULL,
-			       endpoint, of_dev_node_match);
+			       fwnode, coresight_device_fwnode_match);
 }
 
+#ifdef CONFIG_OF
 static inline bool of_coresight_legacy_ep_is_input(struct device_node *ep)
 {
 	return of_property_read_bool(ep, "slave-mode");
@@ -191,6 +191,7 @@ static int of_coresight_parse_endpoint(struct device *dev,
 	struct device_node *rparent = NULL;
 	struct device_node *rep = NULL;
 	struct device *rdev = NULL;
+	struct fwnode_handle *rdev_fwnode;
 
 	do {
 		/* Parse the local port details */
@@ -209,8 +210,9 @@ static int of_coresight_parse_endpoint(struct device *dev,
 		if (of_graph_parse_endpoint(rep, &rendpoint))
 			break;
 
+		rdev_fwnode = of_fwnode_handle(rparent);
 		/* If the remote device is not available, defer probing */
-		rdev = of_coresight_get_endpoint_device(rparent);
+		rdev = coresight_find_device_by_fwnode(rdev_fwnode);
 		if (!rdev) {
 			ret = -EPROBE_DEFER;
 			break;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
