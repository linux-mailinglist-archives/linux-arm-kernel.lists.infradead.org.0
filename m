Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764CB2E312
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 19:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J1scFMyYxdIa7vf82QrDv/BHRRHyh2o6WQS7WoBc+Q8=; b=mmqb76QPYO7+Td
	OUHlrcaAfdFbWe0TyaSGqVV1A4ABTrjv59xfW/2+cSYCXCBT1sQgCOyP2+JvgH5Hvq9Sgr4hydcel
	99HV1p5FNBWLuh4cmpCpSqDjFBU1yJu0aZmZGHTPh4wP5oijdHilRCaiDqacWREV4xDkPZatuDXBg
	xxxRnBL+S5Wv7kyWpawTiMT/J7ImfnZ+H5sspLtJJjEs2v/F8usFVkcH/MK2uy3jufY0MJaEmUuzw
	QagCkwu5YRlgCIWQ6vZuRm8tZgiXJU6O77U+j0mA8dRUYFbSugOcEHMtuxe+uKyBqyiy/hZdU83WX
	9EQBcGrOEt9EkfiOzezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2Gl-0007aJ-5Y; Wed, 29 May 2019 17:21:43 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2Ge-0007a0-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 17:21:37 +0000
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4THJXpR032624
 for <linux-arm-kernel@lists.infradead.org>; Wed, 29 May 2019 10:21:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=vByQe4+xXtsIbQWTc7tNKWHU/jpFmwGRzCjnpQoWXwE=;
 b=ZnEVaTs0nVzM66oadmtYklDSsTGzQq3i+3vUQzahMegU/Sb2he0hOcG2KG5GqSqPakc/
 seJRyx2prI2HUyfny100RPRzg56fcMchjphDzhMkJvjglCGthdf8fL7iN4aXH+QtzG/4
 iMJzMRV1a0n6gQIh5cSYsd6n/CcdomkixYc= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2ssqq9hf33-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 29 May 2019 10:21:31 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Wed, 29 May 2019 10:21:30 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 09D4BE65B0A1; Wed, 29 May 2019 10:21:29 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Patrick
 Venture <venture@google.com>, Vijay Khemka <vijaykhemka@fb.com>, Olof
 Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH] soc: aspeed: lpc-ctrl: make parameter optional
Date: Wed, 29 May 2019 10:21:01 -0700
Message-ID: <20190529172103.1130525-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=835 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905290113
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102136_365994_AF779A55 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
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

Makiing memory-region and flash as optional parameter in device
tree if user needs to use these parameter through ioctl then
need to define in devicetree.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
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
