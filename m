Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F75164698
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OHVeJQb3yylOervhqzKQOWmf/0F88h88mKdxdk+QLmg=; b=WP7
	l46vPtvMT5UcWBH31jVwwseC/YJrBHfA8XlJdCtE1pYb0u0qOxQIJzqwdEw5RVap6NeAxdClUG+TM
	qJhP1afAQmGVbVLBsUYluXNO3fWUjmAhtObXdbcE/WZ9ZIphfRpNyd8V6KdpnhSVP+NlK46HVd88U
	4B/tUZsbF94XqP5uQLr2UA5yq9JxzsIT4fMEysbVd445Yxlv3j4V5dnooSpQOjaQtmDwvzsqQdbqI
	wsYSQTm9Mbtj/U9pUTMK5tdnJDBe13LCyHbS3r0AX0P6knNqbo19YGR1Lz7Zj4VjIWqTMd2m8xXW8
	qAOLCX+CW8oarSjctYPafeUmI8x5H7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Q6r-0007qV-4g; Wed, 19 Feb 2020 14:13:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Q6g-0007pU-4H
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:13:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id n10so760064wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=k+5x80NuD9V+Qnk21e0mDSFOMaIC5Iytof66uYIbXss=;
 b=vSIEsdExWZ2FbdPu0MU7VTcU7IF3oIQ32l2NuuFLX8Pl5KvjA2twy0JNbXU9P3gDHq
 pOIyRNd5icecIFJ6CN41j4lbT0HN7PdIOQQfHknbRaNqaij9+c0i4d0iJg+IQGvonXEU
 /9FRusWgtIxolCOpZiznjI7l95lFAo6SYHdMTkHOSWXGeE5QQ4xXAyjQIBJ7H28zG08w
 aF36mTgygaz9dlKMUJ1bBVY4y30cpm+aMCHoCls0t+A8d56qFO9jks3oTHVBldvNsVj2
 Eafka6pMIzGAL5iq4nWphoxSq1ILpTyXY8Snp3fTPCd08FppMLnwh55Ef5rUYg9R1hKi
 SLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k+5x80NuD9V+Qnk21e0mDSFOMaIC5Iytof66uYIbXss=;
 b=JToEN5PJOUQA+twKWD+9LcLtZPx2XUeAv0Mrqx4wRM40Dhs0/CAYQIZpMF9GnA+u+z
 tvcwXcKtjViS3h6z6MEF1itHRqUq5lQvcQcC7lIxtceEmA/6YOmzcifYB/Y96YrYcqxM
 xngNyd6xwA875t3yTOH0bWaJPxbJqVzb+OpbzG7Eh/L/juru9sEXfWfQkwpyPmBXO+VG
 nT53m9AZaBr+tS9VyMf8GifSsEOMUA5Y5ii3KEd5UwgfUbNWM0BzL8DowKR+W30bxf4v
 7kGRNnqW3uE9bGWFUUbyTa0Oo1VJiuVmRz3cBXe5YRB7iBdOqAejyas6FiKrcXZSmFjY
 UqOA==
X-Gm-Message-State: APjAAAVZZXig+akRkqMNXWRd1T2wb1PZIRslg2uuanfATrQU9yq9X7sw
 WAWNAV7XQYd59jwwoXY7YpSrSQ==
X-Google-Smtp-Source: APXvYqzMstRSs0CuhMEXF+cVCctS5nCVYxs4zXGgDEYIyjt2Wlt/zX0aqBTexiTEeZ2jMvRmxr7YRg==
X-Received: by 2002:adf:f406:: with SMTP id g6mr36762230wro.189.1582121618880; 
 Wed, 19 Feb 2020 06:13:38 -0800 (PST)
Received: from robin.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g25sm7999695wmh.3.2020.02.19.06.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:13:38 -0800 (PST)
From: Phong LE <ple@baylibre.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] drm/mediatek: component type MTK_DISP_OVL_2L is not correctly
 handled
Date: Wed, 19 Feb 2020 15:13:24 +0100
Message-Id: <20200219141324.29299-1-ple@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061342_171836_B4219C07 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Phong LE <ple@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The larb device remains NULL if the type is MTK_DISP_OVL_2L.
A kernel panic is raised when a crtc uses mtk_smi_larb_get or
mtk_smi_larb_put.

Signed-off-by: Phong LE <ple@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 1f5a112bb034..57c88de9a329 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -471,6 +471,7 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	/* Only DMA capable components need the LARB property */
 	comp->larb_dev = NULL;
 	if (type != MTK_DISP_OVL &&
+	    type != MTK_DISP_OVL_2L &&
 	    type != MTK_DISP_RDMA &&
 	    type != MTK_DISP_WDMA)
 		return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
