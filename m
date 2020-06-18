Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8D31FDE52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyXgdAT/65W3grYMqJwI2NINm8gmM7pU6rMUEk2MBBM=; b=E7sp2G98qJOE7n
	jtu/oeErJy6CQWD9WAwhe+92R0XTmXxM6mjcwyHAFUFt1F3mEt96dfhSNAhyFN6QSv2LqvagrZLc5
	JFZqEwMBXN0LgkSuMdeHZgMjFOBskAHsDPkChb1g50whur+jj/IB89bbhZGTSGsFQUAsbMEOe1Il8
	KnJmxynZgI07pqrbT8zN5i08rY5Cs85Jh6MSavhWmDpEYXqrHSvXaiK/m27UKBSDUYvkZ5+91GY13
	+3LK88McotNpVZlvtubKBBG/fgAEDPihYTtXSZh4D4zHzEPFYf+jUEotvMZpRz4J46T80u3axUEaG
	j8qorzqJ4wZgml6ZTGNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljQH-0002L5-0n; Thu, 18 Jun 2020 01:32:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj8i-0003uD-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A584E221ED;
 Thu, 18 Jun 2020 01:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442888;
 bh=IgNxQZbR1gZR1QJHVrko2DBUykRdC1v95tFrjcV+KKg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VvLev73I+gep7i5Six6n4RxjUTSzYcpuPTjmQkAGK3P0lyKeQMczEI/3SRAXzCXYl
 m5ryyl66qG/pCLm3CaTBBhwSCQni6tfQZhQtjnJYY+nnOxhxuyDAKsG7B1e52+cc5P
 NCHcedih61Ljk4WH1fo4C7Oq0ix19IQo6zbmr/cw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 311/388] mailbox: zynqmp-ipi: Fix NULL vs IS_ERR()
 check in zynqmp_ipi_mbox_probe()
Date: Wed, 17 Jun 2020 21:06:48 -0400
Message-Id: <20200618010805.600873-311-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181448_986843_93C9B064 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

[ Upstream commit 445aeeb569f8d7904f8cf80b7c6826bb651ef80e ]

In case of error, the function devm_ioremap() returns NULL pointer not
ERR_PTR(). So we should check whether the return value of devm_ioremap()
is NULL instead of IS_ERR.

Fixes: 4981b82ba2ff ("mailbox: ZynqMP IPI mailbox controller")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
