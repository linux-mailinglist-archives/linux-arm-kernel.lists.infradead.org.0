Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A8F16ADDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2xhwarPpv4Mt4V/h5OQgjZYFE36hlLv4X1GR4/CGYk=; b=NlqBwygIlhQ0x/
	3mJC7kT1iSE4cUhq/T/kkSnITujkvtZT/vpv1F8Z2Q1lPOggph6aKv5S3kUj53h36Arq9DVeobGHQ
	zbAlEs9i1h1NYeJVN5tYjtsTJpwclfqryFTxeqj3v2lDMDtMpgZ2Z13d7rYAR82xOnMuNQEmSCcI2
	xS+1MzlaxV9aGjycw/HvdOV3m/CrUOQ3SYPOulNr2CAF5/wMtyrLLAReGdXW/0QqreXbkDVkZW0zq
	6PqnnwECYKI5UohSRo+h7/QswJD7S9NdZjJcjG7378iRYGJdBb0Gnmk3yy3FGt4TLL/FiBB5WbiJN
	xoMyGbD4OhPz4ibEbjjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HkS-0002sx-Bv; Mon, 24 Feb 2020 17:42:28 +0000
Received: from mailoutvs5.siol.net ([185.57.226.196] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhX-0008Ci-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0BDC95236BE;
 Mon, 24 Feb 2020 18:39:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id qrI97RRppLXN; Mon, 24 Feb 2020 18:39:25 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C40A35236B9;
 Mon, 24 Feb 2020 18:39:25 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 863285236E8;
 Mon, 24 Feb 2020 18:39:23 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 7/7] drm/sun4i: Sort includes in VI and UI layer code
Date: Mon, 24 Feb 2020 18:39:01 +0100
Message-Id: <20200224173901.174016-8-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093927_873481_8DD565AC 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jernej.skrabec@siol.net, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sun8i_mixer.h include is misplaced. Move it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index a64aaea1ba74..54f937a7d5e7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -19,8 +19,8 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 
-#include "sun8i_ui_layer.h"
 #include "sun8i_mixer.h"
+#include "sun8i_ui_layer.h"
 #include "sun8i_ui_scaler.h"
 
 static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index b1e1ba2da663..22c8c5375d0d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -13,8 +13,8 @@
 #include <drm/drm_probe_helper.h>
 
 #include "sun8i_csc.h"
-#include "sun8i_vi_layer.h"
 #include "sun8i_mixer.h"
+#include "sun8i_vi_layer.h"
 #include "sun8i_vi_scaler.h"
 
 static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
