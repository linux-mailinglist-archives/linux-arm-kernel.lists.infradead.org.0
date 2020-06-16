Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62671FA923
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 08:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zkDIFBTjMQwYPK5cdCFAKO2f2t+H7Ei960HBeGp7d/I=; b=FdU
	x+mDoTAQ/x3UrEs0EB1/295bxD3+5v1Vd8UtJyxI2QFzVHlrGz4lQCNJEoJx1RTyy71O8qrBxTS6q
	KZELkGI2tFoRaemZlAJNP6PyVrP/mlaabWthFsElwBYfuouyt0iwf71kAvO22XD0Zy0BTjqwC9qQw
	OAk96C50b6xQCBroiZC5GJoxGCXMGYosZzIbWVddlW6hnxy9TZH35e4y1OYZUORfQ6HdDZsGpPk5I
	sy9c/xB7oFpo7wG7ry8EhHVESPuYo4pDSEzqYkHu63o7Bf2OIvv+Vl9ueOeGEjKkEv2kCZYEqV9nw
	VYCeVmlv0EmnqH/Lk6/5v8MNgwczA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5RU-0001wR-Af; Tue, 16 Jun 2020 06:51:32 +0000
Received: from m17617.mail.qiye.163.com ([59.111.176.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5RJ-0001uq-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 06:51:24 +0000
Received: from njvxl5505.vivo.xyz (unknown [157.0.31.125])
 by m17617.mail.qiye.163.com (Hmail) with ESMTPA id 82C2F2616A3;
 Tue, 16 Jun 2020 14:51:13 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/mediatek: remove unnecessary conversion to bool
Date: Tue, 16 Jun 2020 14:51:01 +0800
Message-Id: <20200616065102.15756-1-bernard@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGUweQ09JSElITExLVkpOQklJQktJTEhMQ09VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
 FZT0tIVUpKS0hKTFVKS0tZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006IRw*Czg3Kw9LSQkSMSE#
 Qy4wFEpVSlVKTkJJSUJLSUxPSk9IVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSU5ZV1kIAVlBSUlNSDcG
X-HM-Tid: 0a72bbe5699f9375kuws82c2f2616a3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_235121_779191_6E3A7341 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.17 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [59.111.176.17 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function mtk_dsi_clk_hs_state, remove unnecessary conversion
to bool return, this change is to make the code a bit readable.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
Changes since V1:
*optimize to make the code a bit more clear.

Link for V1:
*https://lore.kernel.org/patchwork/patch/1255327/
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4491e64b3f06..840cc9b9efc8 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -316,10 +316,7 @@ static void mtk_dsi_lane0_ulp_mode_leave(struct mtk_dsi *dsi)
 
 static bool mtk_dsi_clk_hs_state(struct mtk_dsi *dsi)
 {
-	u32 tmp_reg1;
-
-	tmp_reg1 = readl(dsi->regs + DSI_PHY_LCCON);
-	return ((tmp_reg1 & LC_HS_TX_EN) == 1);
+	return (readl(dsi->regs + DSI_PHY_LCCON) & LC_HS_TX_EN);
 }
 
 static void mtk_dsi_clk_hs_mode(struct mtk_dsi *dsi, bool enter)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
