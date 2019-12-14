Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3577B11F12D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 10:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa5ZFVnGP4ExBO4zJcn2RPe+pItCATjVKBZi5Ynq/cA=; b=O7/KE0aXIiTzCF
	jOO12SqpYEYLIjkCOQOlenWMPcPfg0WGrEQhleBHAU+8LU/SxAqy9GqzFdFpHurTNnObIhTMwDbaB
	oxoYNvbaRK32vRcU1sK0zeRc7CFliA8UHnqJm13nA8Li4c7dzvfzzgS0LXlSllTmMz1QYDDuV6rO8
	/DhgRkQYeNdzF1H/+Jca6v6DyHqW4xdvQLo4eY7Y4B8fbxK3/VpfHLuZ9JrQ2XzdS+YjgXWRIYQ6n
	9D43wGO11iRJe9O9Zylm+QkW13nAOXt2DCDNJ+NqjBefvSP7ugknWFZzUaGBFcQDSnjlcEbLVvhkI
	oyY7R8j5misBqshEjdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig3yY-0004sX-Lo; Sat, 14 Dec 2019 09:44:38 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig3yM-0004rF-Mo
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 09:44:28 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 51B77583F6E70766D7DF;
 Sat, 14 Dec 2019 17:44:18 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 14 Dec 2019
 17:44:10 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <mripard@kernel.org>, <wens@csie.org>, <jernej.skrabec@siol.net>,
 <airlied@linux.ie>, <daniel@ffwll.ch>,
 <linux-arm-kernel@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 1/2] drm/sun4i: Remove unneeded semicolon in sun8i_mixer.c
Date: Sat, 14 Dec 2019 17:51:30 +0800
Message-ID: <1576317091-24968-2-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
References: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_014426_911633_A41B4212 
X-CRM114-Status: UNSURE (   8.90  )
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

drivers/gpu/drm/sun4i/sun8i_mixer.c:289:3-4: Unneeded semicolon
drivers/gpu/drm/sun4i/sun8i_mixer.c:292:2-3: Unneeded semicolon
drivers/gpu/drm/sun4i/sun8i_mixer.c:302:3-4: Unneeded semicolon
drivers/gpu/drm/sun4i/sun8i_mixer.c:305:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8b803eb..7c24f8f 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -286,10 +286,10 @@ static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
 			dev_err(drm->dev,
 				"Couldn't initialize overlay plane\n");
 			return ERR_CAST(layer);
-		};
+		}

 		planes[i] = &layer->plane;
-	};
+	}

 	for (i = 0; i < mixer->cfg->ui_num; i++) {
 		struct sun8i_ui_layer *layer;
@@ -299,10 +299,10 @@ static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
 			dev_err(drm->dev, "Couldn't initialize %s plane\n",
 				i ? "overlay" : "primary");
 			return ERR_CAST(layer);
-		};
+		}

 		planes[mixer->cfg->vi_num + i] = &layer->plane;
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
