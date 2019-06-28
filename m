Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB6591D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8o44hNQd4QU9bSHwmPyMkF3WcIYC4e8bhP5du2aPEUQ=; b=GbDo/CQ7HW80maUeJFjIN6b+H7
	Y2D9+DbVluTPImgyNRBv+P9NNldAW7JmhbgfzlePg/BncCLc/XO5XlLibb9ILpOqe4lduht1rv2jW
	oeAnFK2BSSCsYm0tnoiwx+tp6ESkJwBk9X/ZVu6OiUR/XUGiL3rgnhtrFBWadkw0KPjb0FllsrL7i
	LedB5+Wp+kHftxCx+Sym++MhfnHIihPW++mcIZQXyF6Eb6ef7uRrarx3xYxrU/tkVepQCN0rX8R6D
	0VDrNX7fuUjSkGSRwHpgWS82B+hJehSsXYLfHnOwvq1L+AI8k87HxezFSGtwQK3RTa1ubidJjqmyT
	55FFGIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghDk-0008Dv-Er; Fri, 28 Jun 2019 03:06:40 +0000
Received: from out1.zte.com.cn ([202.103.147.172] helo=mxct.zte.com.cn)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghD1-0006n8-Ko
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:05:57 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.30.14.238])
 by Forcepoint Email with ESMTPS id 9616EB63870F7D9BE8EB;
 Fri, 28 Jun 2019 11:03:48 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl1.zte.com.cn with ESMTP id x5S32eB0063726;
 Fri, 28 Jun 2019 11:02:40 +0800 (GMT-8)
 (envelope-from wen.yang99@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019062811031059-1800718 ;
 Fri, 28 Jun 2019 11:03:10 +0800 
From: Wen Yang <wen.yang99@zte.com.cn>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] media: xilinx: fix leaked of_node references
Date: Fri, 28 Jun 2019 11:01:14 +0800
Message-Id: <1561690876-20977-2-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1561690876-20977-1-git-send-email-wen.yang99@zte.com.cn>
References: <1561690876-20977-1-git-send-email-wen.yang99@zte.com.cn>
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-06-28 11:03:10,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-06-28 11:02:45, Serialize complete at 2019-06-28 11:02:45
X-MAIL: mse-fl1.zte.com.cn x5S32eB0063726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_200555_861203_10810E61 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.103.147.172 listed in list.dnswl.org]
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
Cc: wang.yi59@zte.com.cn, Hyun Kwon <hyun.kwon@xilinx.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The call to of_get_child_by_name returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
drivers/media/platform/xilinx/xilinx-vipp.c:487:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 477, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-vipp.c:491:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 477, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-tpg.c:732:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 717, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-tpg.c:741:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 717, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-tpg.c:757:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 717, but without a corresponding object release within this function.
drivers/media/platform/xilinx/xilinx-tpg.c:764:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 717, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Hyun Kwon <hyun.kwon@xilinx.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/media/platform/xilinx/xilinx-tpg.c  | 18 +++++++++++++-----
 drivers/media/platform/xilinx/xilinx-vipp.c |  8 +++++---
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/xilinx/xilinx-tpg.c b/drivers/media/platform/xilinx/xilinx-tpg.c
index ed01bed..e71d022 100644
--- a/drivers/media/platform/xilinx/xilinx-tpg.c
+++ b/drivers/media/platform/xilinx/xilinx-tpg.c
@@ -713,10 +713,13 @@ static int xtpg_parse_of(struct xtpg_device *xtpg)
 	struct device_node *port;
 	unsigned int nports = 0;
 	bool has_endpoint = false;
+	int ret = 0;
 
 	ports = of_get_child_by_name(node, "ports");
-	if (ports == NULL)
+	if (ports == NULL) {
 		ports = node;
+		of_node_get(ports);
+	}
 
 	for_each_child_of_node(ports, port) {
 		const struct xvip_video_format *format;
@@ -729,7 +732,8 @@ static int xtpg_parse_of(struct xtpg_device *xtpg)
 		if (IS_ERR(format)) {
 			dev_err(dev, "invalid format in DT");
 			of_node_put(port);
-			return PTR_ERR(format);
+			ret = PTR_ERR(format);
+			goto out_put_node;
 		}
 
 		/* Get and check the format description */
@@ -738,7 +742,8 @@ static int xtpg_parse_of(struct xtpg_device *xtpg)
 		} else if (xtpg->vip_format != format) {
 			dev_err(dev, "in/out format mismatch in DT");
 			of_node_put(port);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto out_put_node;
 		}
 
 		if (nports == 0) {
@@ -754,14 +759,17 @@ static int xtpg_parse_of(struct xtpg_device *xtpg)
 
 	if (nports != 1 && nports != 2) {
 		dev_err(dev, "invalid number of ports %u\n", nports);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out_put_node;
 	}
 
 	xtpg->npads = nports;
 	if (nports == 2 && has_endpoint)
 		xtpg->has_input = true;
 
-	return 0;
+out_put_node:
+	of_node_put(ports);
+	return ret;
 }
 
 static int xtpg_probe(struct platform_device *pdev)
diff --git a/drivers/media/platform/xilinx/xilinx-vipp.c b/drivers/media/platform/xilinx/xilinx-vipp.c
index edce040..307717c 100644
--- a/drivers/media/platform/xilinx/xilinx-vipp.c
+++ b/drivers/media/platform/xilinx/xilinx-vipp.c
@@ -472,7 +472,7 @@ static int xvip_graph_dma_init(struct xvip_composite_device *xdev)
 {
 	struct device_node *ports;
 	struct device_node *port;
-	int ret;
+	int ret = 0;
 
 	ports = of_get_child_by_name(xdev->dev->of_node, "ports");
 	if (ports == NULL) {
@@ -484,11 +484,13 @@ static int xvip_graph_dma_init(struct xvip_composite_device *xdev)
 		ret = xvip_graph_dma_init_one(xdev, port);
 		if (ret < 0) {
 			of_node_put(port);
-			return ret;
+			goto out_put_node;
 		}
 	}
 
-	return 0;
+out_put_node:
+	of_node_put(ports);
+	return ret;
 }
 
 static void xvip_graph_cleanup(struct xvip_composite_device *xdev)
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
