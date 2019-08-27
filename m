Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F49DE67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SoBQVkyNw5OXup4l/FDWIaEevhQAS+T64sCweTpeqgA=; b=mkFH0POJu2S4NZ
	mS7BofypnukesNJIuC9qT7lqti5tlzGauIZzbWvxjngzo22IORo2Wbu9JWcRcDD5KhuBLfu/+Wz+P
	pDktD/1MZdfSjPC6RJbBnz0BSyiuJloqQVe5ler+PfqA/+fwWKv7ZT8Yt1/DVT2V9RdtNRxR0gt4q
	gruiAufsZJrsWOm3xZ75Ol/YMpcDcKwhyEGGpnTpQrpHSVjpBbWM5Oa3AonJMlmuxESFWH6zOZ6ef
	oUxyKS4DvFal7XGZMNLqJ7OpVgYim/Kfd50mxsRYe6y7z7EH86dfMBZdEnmWLlXmee81KE/9C6MlQ
	tOuNYUOtCOMMzZTt3FEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2VaE-0008I5-5l; Tue, 27 Aug 2019 07:08:02 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VZs-0008Gd-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:07:41 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 25C7EF52D139BD0B3CB4;
 Tue, 27 Aug 2019 15:07:27 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 15:07:20 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mripard@kernel.org>, <mchehab@kernel.org>, <wens@csie.org>,
 <maxime.ripard@bootlin.com>, <sakari.ailus@linux.intel.com>
Subject: [PATCH -next] media: sun6i: Make sun4i_csi_formats static
Date: Tue, 27 Aug 2019 15:06:23 +0800
Message-ID: <20190827070623.15776-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000740_266946_3BAF18B0 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:21:31:
 warning: symbol 'sun4i_csi_formats' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
index 772b0fc..83a3a02 100644
--- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
+++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c
@@ -18,7 +18,7 @@
 #define CSI_DEFAULT_WIDTH	640
 #define CSI_DEFAULT_HEIGHT	480
 
-const struct sun4i_csi_format sun4i_csi_formats[] = {
+static const struct sun4i_csi_format sun4i_csi_formats[] = {
 	/* YUV422 inputs */
 	{
 		.mbus		= MEDIA_BUS_FMT_YUYV8_2X8,
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
