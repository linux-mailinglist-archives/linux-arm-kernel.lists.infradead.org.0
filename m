Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEF130359
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 22:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yUlGhqYt3QYy2oeN32jyuKILp5OIK/Ta93azV/O+I9E=; b=ufiisvVeU9j1ub
	8q9upMWjaX7f4t7phmMIEAbUORqZMZtOCjLjeDvaXtQHL2OMk4QL85C1E8dwvLDn4F7RwKeNrKfeV
	hUoVwvGOAF8yzoNXjyOP4jd25VuiGzu8O822UHsCzwD4AcEDD03Nhx9MP8OeEHD1ke3D4jLgLHy5P
	BMZlMAGxaFHFngKQkAIgwSEW4Ei/8/KQKrzdSxydVdSGCgEfcOBPUEM/ANWcJYwXW48WvBciJcwcG
	Bjo/NoV7UCvJLKTbnrPWZBZ/6GEhPWQix64OvIRNHPsgg695OuXsbYbhUjamAfzIgJLBXotV9VoRK
	wYKB+VWFcdptGWmJzqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWRno-0003z2-Ox; Thu, 30 May 2019 20:37:32 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWRng-0003v4-8j
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 20:37:26 +0000
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
 by m0089730.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x4UKZOFC004807
 for <linux-arm-kernel@lists.infradead.org>; Thu, 30 May 2019 13:37:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=r4Qpn8cnh88goheDtWDkPpFd0tMwCo7HBNs6UQb5yRU=;
 b=hZeQYIyveDN5K+aGapgdyS92iD0giXsPsWos+Dpt0ErkU1zzE6zCwbcSet46NybvghjP
 iBiNRAYxQ6qt6+vxxoT30TSUyWX+J2Ocxho8t5DAmXpxJ5VTgtsNgcbegdu7kjozOErn
 ItABEUKAoZBxJZI2JFc+LRqgILrDZyoKOGI= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by m0089730.ppops.net with ESMTP id 2stmrw8aup-17
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 30 May 2019 13:37:19 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::127) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Thu, 30 May 2019 13:36:56 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 131DBE9149D2; Thu, 30 May 2019 13:36:55 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Patrick
 Venture <venture@google.com>, Vijay Khemka <vijaykhemka@fb.com>, Olof
 Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH v2] soc: aspeed: lpc-ctrl: make parameter optional
Date: Thu, 30 May 2019 13:36:51 -0700
Message-ID: <20190530203654.3860925-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-30_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=796 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905300145
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_133724_425741_E57C53C1 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, sdasari@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Making memory-region and flash as optional parameter in device
tree if user needs to use these parameter through ioctl then
need to define in devicetree.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 58 +++++++++++++++++-----------
 1 file changed, 36 insertions(+), 22 deletions(-)

diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
index a024f8042259..aca13779764a 100644
--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -68,6 +68,7 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 		unsigned long param)
 {
 	struct aspeed_lpc_ctrl *lpc_ctrl = file_aspeed_lpc_ctrl(file);
+	struct device *dev = file->private_data;
 	void __user *p = (void __user *)param;
 	struct aspeed_lpc_ctrl_mapping map;
 	u32 addr;
@@ -90,6 +91,12 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 		if (map.window_id != 0)
 			return -EINVAL;
 
+		/* If memory-region is not described in device tree */
+		if (!lpc_ctrl->mem_size) {
+			dev_dbg(dev, "Didn't find reserved memory\n");
+			return -ENXIO;
+		}
+
 		map.size = lpc_ctrl->mem_size;
 
 		return copy_to_user(p, &map, sizeof(map)) ? -EFAULT : 0;
@@ -126,9 +133,18 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 			return -EINVAL;
 
 		if (map.window_type == ASPEED_LPC_CTRL_WINDOW_FLASH) {
+			if (!lpc_ctrl->pnor_size) {
+				dev_dbg(dev, "Didn't find host pnor flash\n");
+				return -ENXIO;
+			}
 			addr = lpc_ctrl->pnor_base;
 			size = lpc_ctrl->pnor_size;
 		} else if (map.window_type == ASPEED_LPC_CTRL_WINDOW_MEMORY) {
+			/* If memory-region is not described in device tree */
+			if (!lpc_ctrl->mem_size) {
+				dev_dbg(dev, "Didn't find reserved memory\n");
+				return -ENXIO;
+			}
 			addr = lpc_ctrl->mem_base;
 			size = lpc_ctrl->mem_size;
 		} else {
@@ -196,17 +212,17 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 	if (!lpc_ctrl)
 		return -ENOMEM;
 
+	/* If flash is described in device tree then store */
 	node = of_parse_phandle(dev->of_node, "flash", 0);
 	if (!node) {
-		dev_err(dev, "Didn't find host pnor flash node\n");
-		return -ENODEV;
-	}
-
-	rc = of_address_to_resource(node, 1, &resm);
-	of_node_put(node);
-	if (rc) {
-		dev_err(dev, "Couldn't address to resource for flash\n");
-		return rc;
+		dev_dbg(dev, "Didn't find host pnor flash node\n");
+	} else {
+		rc = of_address_to_resource(node, 1, &resm);
+		of_node_put(node);
+		if (rc) {
+			dev_err(dev, "Couldn't address to resource for flash\n");
+			return rc;
+		}
 	}
 
 	lpc_ctrl->pnor_size = resource_size(&resm);
@@ -214,22 +230,22 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, lpc_ctrl);
 
+	/* If memory-region is described in device tree then store */
 	node = of_parse_phandle(dev->of_node, "memory-region", 0);
 	if (!node) {
-		dev_err(dev, "Didn't find reserved memory\n");
-		return -EINVAL;
-	}
+		dev_dbg(dev, "Didn't find reserved memory\n");
+	} else {
+		rc = of_address_to_resource(node, 0, &resm);
+		of_node_put(node);
+		if (rc) {
+			dev_err(dev, "Couldn't address to resource for reserved memory\n");
+			return -ENXIO;
+		}
 
-	rc = of_address_to_resource(node, 0, &resm);
-	of_node_put(node);
-	if (rc) {
-		dev_err(dev, "Couldn't address to resource for reserved memory\n");
-		return -ENOMEM;
+		lpc_ctrl->mem_size = resource_size(&resm);
+		lpc_ctrl->mem_base = resm.start;
 	}
 
-	lpc_ctrl->mem_size = resource_size(&resm);
-	lpc_ctrl->mem_base = resm.start;
-
 	lpc_ctrl->regmap = syscon_node_to_regmap(
 			pdev->dev.parent->of_node);
 	if (IS_ERR(lpc_ctrl->regmap)) {
@@ -258,8 +274,6 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	dev_info(dev, "Loaded at %pr\n", &resm);
-
 	return 0;
 
 err:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
