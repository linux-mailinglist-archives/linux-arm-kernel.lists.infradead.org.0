Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2656211F12F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 10:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/YfsY3aCkbIxH21XhAOo1NSphuqAmtACUOD1nSa1n4=; b=AZJZywc0pytV1c
	aq3VVabffapQI6jXdmQNJUo8qCmKiuI/ce8y7U+mwZ5fcEzMyzvM9ZsL31AN78LNLIA621TCzVHH8
	9bK+CmRcfrmuhIY+kZJCh6wC6Uj8eI8UOka61bBly8XiZtDuJsxqcSSAwAEvYP8VwbhKG+GuKDE09
	zLjVtspLWVDji1NckbVqQYiEnLON3WWJrSwqDylw3yjSxWPJ70YZbYHwS2GbRsXJZnr1XnQNnK8Qj
	jCUF8uInBPSGnC6wrz3Z1dSZUyw4fq1mzVqlNlRl9YgT8iqEkBdNySiTap2nhdtxenMsNDo7gKCDJ
	MM/+zd9mIEB0Apqz8GGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig3z7-0005GX-T3; Sat, 14 Dec 2019 09:45:13 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig3yP-0004rG-Dy
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 09:44:30 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 570F4C574DDA913CB69C;
 Sat, 14 Dec 2019 17:44:18 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 14 Dec 2019
 17:44:10 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <mripard@kernel.org>, <wens@csie.org>, <jernej.skrabec@siol.net>,
 <airlied@linux.ie>, <daniel@ffwll.ch>,
 <linux-arm-kernel@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 2/2] drm/sun4i: Remove unneeded semicolon in sun4i_layer.c
Date: Sat, 14 Dec 2019 17:51:31 +0800
Message-ID: <1576317091-24968-3-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
References: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_014429_675168_F40173D7 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/gpu/drm/sun4i/sun4i_layer.c:253:3-4: Unneeded semicolon
drivers/gpu/drm/sun4i/sun4i_layer.c:257:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/gpu/drm/sun4i/sun4i_layer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_layer.c b/drivers/gpu/drm/sun4i/sun4i_layer.c
index c04f4ba..acfbfd4 100644
--- a/drivers/gpu/drm/sun4i/sun4i_layer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_layer.c
@@ -250,11 +250,11 @@ struct drm_plane **sun4i_layers_init(struct drm_device *drm,
 			dev_err(drm->dev, "Couldn't initialize %s plane\n",
 				i ? "overlay" : "primary");
 			return ERR_CAST(layer);
-		};
+		}

 		layer->id = i;
 		planes[i] = &layer->plane;
-	};
+	}

 	return planes;
 }
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
