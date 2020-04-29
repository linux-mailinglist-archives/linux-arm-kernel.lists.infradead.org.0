Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5371BD852
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejILElTGya0DDU/p/HMZCkQSJge3SVbvEu88OC4LDI8=; b=OdNLxxInfzAcDW
	CnoSw9xossbSTL2v/lZulHRYeD060TCEf4YmomKwlojW20EGO+vdLw8wAAeSU5Li0NhaisjIi1Omc
	7nyn5YcqJD0wKiMnogyhpwoOXRoAThoeuQ+adGUly8mw12CpJUDvvReu7u9fDkwsmIN6Y9rlc7Yku
	abpmdyR9Y7DatUgEJ/F3cgeG+NIL6WjncdcqGuPlyzzzdtMPHMW9hOBoflmTEf1nYPa8h7AlackHw
	HQSG5EDuy5dBlTNdH58UDUHqyZYZbJ16RpsbO346vJXA0JyOAhFd2WK3z3BnUoDmchIj9WNdhzV0h
	JZlZQsOybK4kfcb93ocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTj6Y-00046J-H3; Wed, 29 Apr 2020 09:34:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTj6P-00044l-A4
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:34:03 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9ED9B4A259E3923E1AC1;
 Wed, 29 Apr 2020 17:33:55 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Wed, 29 Apr 2020 17:33:49 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Michal Simek
 <michal.simek@xilinx.com>, Wendy Liang <wendy.liang@xilinx.com>, "Markus
 Elfring" <Markus.Elfring@web.de>
Subject: [PATCH -next v2] mailbox: zynqmp-ipi: Fix NULL vs IS_ERR() check in
 zynqmp_ipi_mbox_probe()
Date: Wed, 29 Apr 2020 09:35:03 +0000
Message-ID: <20200429093503.150485-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429073020.83519-1-weiyongjun1@huawei.com>
References: <20200429073020.83519-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_023401_515458_90EFEFCD 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function devm_ioremap() returns NULL pointer not
ERR_PTR(). So we should check whether the return value of devm_ioremap()
is NULL instead of IS_ERR.

Fixes: 4981b82ba2ff ("mailbox: ZynqMP IPI mailbox controller")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
v1 ->v2: fix the description and the module name in subject
---
 drivers/mailbox/zynqmp-ipi-mailbox.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/mailbox/zynqmp-ipi-mailbox.c b/drivers/mailbox/zynqmp-ipi-mailbox.c
index 86887c9a349a..f9cc674ba9b7 100644
--- a/drivers/mailbox/zynqmp-ipi-mailbox.c
+++ b/drivers/mailbox/zynqmp-ipi-mailbox.c
@@ -504,10 +504,9 @@ static int zynqmp_ipi_mbox_probe(struct zynqmp_ipi_mbox *ipi_mbox,
 		mchan->req_buf_size = resource_size(&res);
 		mchan->req_buf = devm_ioremap(mdev, res.start,
 					      mchan->req_buf_size);
-		if (IS_ERR(mchan->req_buf)) {
+		if (!mchan->req_buf) {
 			dev_err(mdev, "Unable to map IPI buffer I/O memory\n");
-			ret = PTR_ERR(mchan->req_buf);
-			return ret;
+			return -ENOMEM;
 		}
 	} else if (ret != -ENODEV) {
 		dev_err(mdev, "Unmatched resource %s, %d.\n", name, ret);
@@ -520,10 +519,9 @@ static int zynqmp_ipi_mbox_probe(struct zynqmp_ipi_mbox *ipi_mbox,
 		mchan->resp_buf_size = resource_size(&res);
 		mchan->resp_buf = devm_ioremap(mdev, res.start,
 					       mchan->resp_buf_size);
-		if (IS_ERR(mchan->resp_buf)) {
+		if (!mchan->resp_buf) {
 			dev_err(mdev, "Unable to map IPI buffer I/O memory\n");
-			ret = PTR_ERR(mchan->resp_buf);
-			return ret;
+			return -ENOMEM;
 		}
 	} else if (ret != -ENODEV) {
 		dev_err(mdev, "Unmatched resource %s.\n", name);
@@ -543,10 +541,9 @@ static int zynqmp_ipi_mbox_probe(struct zynqmp_ipi_mbox *ipi_mbox,
 		mchan->req_buf_size = resource_size(&res);
 		mchan->req_buf = devm_ioremap(mdev, res.start,
 					      mchan->req_buf_size);
-		if (IS_ERR(mchan->req_buf)) {
+		if (!mchan->req_buf) {
 			dev_err(mdev, "Unable to map IPI buffer I/O memory\n");
-			ret = PTR_ERR(mchan->req_buf);
-			return ret;
+			return -ENOMEM;
 		}
 	} else if (ret != -ENODEV) {
 		dev_err(mdev, "Unmatched resource %s.\n", name);
@@ -559,10 +556,9 @@ static int zynqmp_ipi_mbox_probe(struct zynqmp_ipi_mbox *ipi_mbox,
 		mchan->resp_buf_size = resource_size(&res);
 		mchan->resp_buf = devm_ioremap(mdev, res.start,
 					       mchan->resp_buf_size);
-		if (IS_ERR(mchan->resp_buf)) {
+		if (!mchan->resp_buf) {
 			dev_err(mdev, "Unable to map IPI buffer I/O memory\n");
-			ret = PTR_ERR(mchan->resp_buf);
-			return ret;
+			return -ENOMEM;
 		}
 	} else if (ret != -ENODEV) {
 		dev_err(mdev, "Unmatched resource %s.\n", name);




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
