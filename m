Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E223F47005
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 14:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRmhUO7FtcSkcnQ9XJ0ABGik1DrNS7AUhkwv5Dbn6aE=; b=GdlTscmtJ7MCSx
	D3qNd5m9WVsVggz0E7yAKPDDly0oaxqduOXyb2s9rYcX5vlbi2OCFCRYyBATvtbul6e/yjcX69kwA
	Y+P/9eL9PGvU1v5OCArUY1mAZlaa9/uI/BNtSghKmtRHfFLq79m1flW23TC75LGUt7gsQFjWcvd3z
	JPLEhWUGp/WRTmweAx0WTaVEeZsucfji4rEGpwGO2z1PUSM1eWBwxg4O4iJzVIo7NSNvdSolzWaOB
	zLwgNbBow/4lFXzQm5seUNozOzFlhWojVVyjCMPjF4kfjqycsE1qKd0FdhzI1smPuhrGR+Hn2yNih
	8HGuNu4EmK7zS1HwEdUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc833-00031Z-Bu; Sat, 15 Jun 2019 12:44:45 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc82t-00030X-F8
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 12:44:37 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1293B78A29872D6DE2C8;
 Sat, 15 Jun 2019 20:44:26 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Sat, 15 Jun 2019
 20:44:16 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>, <s-anna@ti.com>,
 <santosh.shilimkar@oracle.com>
Subject: [PATCH v2 -next] firmware: ti_sci: remove set but not used variable
 'dev'
Date: Sat, 15 Jun 2019 20:38:23 +0800
Message-ID: <20190615123823.15708-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190614154421.17556-1-yuehaibing@huawei.com>
References: <20190614154421.17556-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_054435_742787_B1C6AB40 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_config:
drivers/firmware/ti_sci.c:2035:17: warning: variable dev set but not used [-Wunused-but-set-variable]
drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_get_config:
drivers/firmware/ti_sci.c:2104:17: warning: variable dev set but not used [-Wunused-but-set-variable]
drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_tx_ch_cfg:
drivers/firmware/ti_sci.c:2287:17: warning: variable dev set but not used [-Wunused-but-set-variable]
drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_rx_ch_cfg:
drivers/firmware/ti_sci.c:2357:17: warning: variable dev set but not used [-Wunused-but-set-variable]

Use the 'dev' variable instead of 'info->dev' to fix this.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: use the 'dev' variable as Suman Anna's suggestion
---
 drivers/firmware/ti_sci.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 86b2727..c8da6e2 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2046,7 +2046,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
 				   sizeof(*req), sizeof(*resp));
 	if (IS_ERR(xfer)) {
 		ret = PTR_ERR(xfer);
-		dev_err(info->dev, "RM_RA:Message config failed(%d)\n", ret);
+		dev_err(dev, "RM_RA:Message config failed(%d)\n", ret);
 		return ret;
 	}
 	req = (struct ti_sci_msg_rm_ring_cfg_req *)xfer->xfer_buf;
@@ -2062,7 +2062,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
-		dev_err(info->dev, "RM_RA:Mbox config send fail %d\n", ret);
+		dev_err(dev, "RM_RA:Mbox config send fail %d\n", ret);
 		goto fail;
 	}
 
@@ -2071,7 +2071,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
-	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", index, ret);
+	dev_dbg(dev, "RM_RA:config ring %u ret:%d\n", index, ret);
 	return ret;
 }
 
@@ -2115,7 +2115,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
 				   sizeof(*req), sizeof(*resp));
 	if (IS_ERR(xfer)) {
 		ret = PTR_ERR(xfer);
-		dev_err(info->dev,
+		dev_err(dev,
 			"RM_RA:Message get config failed(%d)\n", ret);
 		return ret;
 	}
@@ -2125,7 +2125,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
-		dev_err(info->dev, "RM_RA:Mbox get config send fail %d\n", ret);
+		dev_err(dev, "RM_RA:Mbox get config send fail %d\n", ret);
 		goto fail;
 	}
 
@@ -2150,7 +2150,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
-	dev_dbg(info->dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
+	dev_dbg(dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
 	return ret;
 }
 
@@ -2298,7 +2298,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
 				   sizeof(*req), sizeof(*resp));
 	if (IS_ERR(xfer)) {
 		ret = PTR_ERR(xfer);
-		dev_err(info->dev, "Message TX_CH_CFG alloc failed(%d)\n", ret);
+		dev_err(dev, "Message TX_CH_CFG alloc failed(%d)\n", ret);
 		return ret;
 	}
 	req = (struct ti_sci_msg_rm_udmap_tx_ch_cfg_req *)xfer->xfer_buf;
@@ -2323,7 +2323,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
-		dev_err(info->dev, "Mbox send TX_CH_CFG fail %d\n", ret);
+		dev_err(dev, "Mbox send TX_CH_CFG fail %d\n", ret);
 		goto fail;
 	}
 
@@ -2332,7 +2332,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
-	dev_dbg(info->dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
+	dev_dbg(dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
 	return ret;
 }
 
@@ -2368,7 +2368,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
 				   sizeof(*req), sizeof(*resp));
 	if (IS_ERR(xfer)) {
 		ret = PTR_ERR(xfer);
-		dev_err(info->dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
+		dev_err(dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
 		return ret;
 	}
 	req = (struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *)xfer->xfer_buf;
@@ -2392,7 +2392,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
-		dev_err(info->dev, "Mbox send RX_CH_CFG fail %d\n", ret);
+		dev_err(dev, "Mbox send RX_CH_CFG fail %d\n", ret);
 		goto fail;
 	}
 
@@ -2401,7 +2401,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
-	dev_dbg(info->dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
+	dev_dbg(dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
 	return ret;
 }
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
