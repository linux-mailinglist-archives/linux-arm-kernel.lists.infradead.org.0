Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD78C11FD4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oP8v7jLC8N8Jm2c3FAjxDEhOnkpiAdQC4IgOJLSlZok=; b=Dl5Vd43gPh/5az
	YmYngYx2A1CSfhHSX28YchtyTpOdBSRoR4oZ6uPlr5mSL3tihcR00DTP9GwSV1Zix5X0W8WfAn/Gv
	lctTlm7iCUYDRg6F7psvRPE0IIlGRJFl89Nj05Ja42mF+btjLXBc6WZRPkOypQSBYp+yXrbBTkCJE
	dDYdE6NqIt6zwDZU3GaAiyx9PUCmfIZtpwGIL2cwN2fsZ1M0kW3EzTJ0zUEcITX5URzWOpHapRZFp
	O7+cXIs7MaEPv5skd/uri4tpjA9BanHdrpUlatzFFKixujdpqoprZ1cWgEDn+YqKM2UyNuoLUerUp
	xVj9kloVmdE2YHD2EE5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighPn-0008Sk-9u; Mon, 16 Dec 2019 03:51:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighPZ-0008RN-8J; Mon, 16 Dec 2019 03:51:10 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 234B35DFD79CB752036B;
 Mon, 16 Dec 2019 11:51:07 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 16 Dec 2019
 11:50:59 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <narmstrong@baylibre.com>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] drm: meson: Remove unneeded semicolon
Date: Mon, 16 Dec 2019 11:58:21 +0800
Message-ID: <1576468701-69717-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195109_475178_F1BC0A00 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes coccicheck warning:

drivers/gpu/drm/meson/meson_crtc.c:360:3-4: Unneeded semicolon
drivers/gpu/drm/meson/meson_plane.c:181:2-3: Unneeded semicolon

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/gpu/drm/meson/meson_crtc.c  | 2 +-
 drivers/gpu/drm/meson/meson_plane.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index 57ae1c1..eefefc4 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -357,7 +357,7 @@ void meson_crtc_irq(struct meson_drm *priv)
 					    MESON_CANVAS_WRAP_NONE,
 					    MESON_CANVAS_BLKMODE_LINEAR,
 					    MESON_CANVAS_ENDIAN_SWAP64);
-		};
+		}

 		writel_relaxed(priv->viu.vd1_if0_gen_reg,
 				priv->io_base + meson_crtc->viu_offset +
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index ed54322..b96fa43 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -178,7 +178,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_16 |
 					      OSD_COLOR_MATRIX_16_RGB565;
 		break;
-	};
+	}

 	/* Default scaler parameters */
 	vsc_bot_rcv_num = 0;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
