Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D5319F00C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 07:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbhwDYJKFx0fGlV7X/eVXYWCUMhGy7ct2Kq+8OI2rYU=; b=LyfT1sVE3jiUCZ
	E89koRjNiYloqeyeS0z8Z7iOG6H1Jc0artlKaaP4+k17QTu5XufB9IvA2we3KEBr0c2yKJqZvyzS3
	qXYxYaNaK0nyM7V7Zlj9TVaP3RmSMzoZXJOHV9fdbKhdTWsIUDDxOgtjxWxx4H9LCaZ7V6p4GD6Bk
	C4v6k5AVdjCwfG3vXY5rpGD2mbjL3UJYfFlPWeipG6zISSoyG5Frn/UfaHNImVS47YXDAE6NdmK63
	BzPmARaCKbGVUC7yqLd4coHXplJPLNA8Nmlywm2yJ40ItyWz86mQgLRlbOz/8BeTvdk0KW8BrMZoP
	Zme/Cpzps8HFIQ9pGJoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLK3Q-0003fk-J4; Mon, 06 Apr 2020 05:12:12 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLK3K-0003dw-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 05:12:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id t4so5438820plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 22:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6G7y8QFHpxPoNxMI7C/eKVE0aY7FMH8n0m08py+N9o=;
 b=dcDygH+3H7RfJ8k3R9ugCj5Hu0PXxS2To/zA0WK7GU/A/MQo9xuqp2ojj5PJIpWcUa
 wtz5YOxKZA3vTWb7f4arNcS8lhf6CjzI2pDNTSmxr+VZFdX15TsG3B2NoSixDhezYpxo
 eWnEEkkOmHM9HB/RD/iD01J7tktIBu4CBba5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6G7y8QFHpxPoNxMI7C/eKVE0aY7FMH8n0m08py+N9o=;
 b=BX9M1nB02mJ4cuLjrMC6ocO7xV7Y6RTqkTAvTiH1LleILggmglNX1DdH37uQs+kkqc
 Pt4Dj91ltv+HibdwVBUOK+oH9vM+fi320NJVreMq022ncGYhyWCPHklwB4lbwzbTipDP
 jkMH2haGbwcZbyLIuzG2J19EZL2u6pwIvexYKso+Jl+9vXaXIdUNl2MHjpX8gzVRpgkd
 2V63iA6YXUpvnJloDjtLOGvoAAJ6F+j7CP/r5ij9+6US1NRDY2e9vootL8ksHgxSJ7en
 LJTTLiFZKcNkMxIv1SkmPTYZk3YTnaubthqBN/R/YMqzR+240qVoiWr20vhGjVjive2T
 hm+Q==
X-Gm-Message-State: AGi0PuYccztIXeXI/XS4HkpHg9GO9EPgq/j3guohjLg2IPbTGQWChy6T
 9TRL2AMX/wOWCs8h9WaupxobLjXeI/U=
X-Google-Smtp-Source: APiQypIIXfPCYmCJ6Az4vd/oeMZuklz0Lp206sJXppbut8+ldlWVk5HoXoCqx3VSKUh3QlHRXs0OSQ==
X-Received: by 2002:a17:902:9f8e:: with SMTP id
 g14mr18309768plq.289.1586149920348; 
 Sun, 05 Apr 2020 22:12:00 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id r63sm10727776pfr.42.2020.04.05.22.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 22:11:59 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drm: mediatek: fix device passed to cmdq
Date: Mon,  6 Apr 2020 13:11:32 +0800
Message-Id: <20200406051131.225748-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_221206_227872_9D7C3208 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm device is now probed from mmsys. We need to use mmsys device to get gce
nodes. Fix following errors:

[    0.740068] mediatek-drm mediatek-drm.1.auto: error -2 can't parse gce-client-reg property (0)
[    0.748721] mediatek-drm mediatek-drm.1.auto: error -2 can't parse gce-client-reg property (0)
...
[    2.659645] mediatek-drm mediatek-drm.1.auto: failed to request channel
[    2.666270] mediatek-drm mediatek-drm.1.auto: failed to request channel

Fixes: 1d367541aded ("soc / drm: mediatek: Fix mediatek-drm device probing")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 6 ++++--
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 3 ++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 615a54e60fe2..8621f0289399 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -822,14 +822,16 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	mtk_crtc->cmdq_client =
-			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
+			cmdq_mbox_create(mtk_crtc->mmsys_dev,
+					 drm_crtc_index(&mtk_crtc->base),
 					 2000);
 	if (IS_ERR(mtk_crtc->cmdq_client)) {
 		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
 			drm_crtc_index(&mtk_crtc->base));
 		mtk_crtc->cmdq_client = NULL;
 	}
-	ret = of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
+	ret = of_property_read_u32_index(mtk_crtc->mmsys_dev->of_node,
+					 "mediatek,gce-events",
 					 drm_crtc_index(&mtk_crtc->base),
 					 &mtk_crtc->cmdq_event);
 	if (ret)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e2bb0d19ef99..dc78e86bccc0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -517,7 +517,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
 				goto err_node;
 			}
 
-			ret = mtk_ddp_comp_init(dev, node, comp, comp_id, NULL);
+			ret = mtk_ddp_comp_init(dev->parent, node, comp,
+						comp_id, NULL);
 			if (ret) {
 				of_node_put(node);
 				goto err_node;
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
