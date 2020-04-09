Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2961A2EEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9pRJaKqCfFGgp3Wx4QA0mJFQ1gsbMueX/872zyWOdnk=; b=EhCrDj0wvkao91
	p0brL7pmYMeN/uPq4d8VYfX2x3qX6p5gVrnHqIuxYj/5dORidp+uVpoZw4cSkL21R5vVySIfC2CK0
	E+r9QJxvqZffp6CW/UxijW+9BW1S9w0lu9c2VI5r9U7+5bAHHgUntLtgI383r5h7WWhwBr+M5Wknb
	d4oCGwRMuO/biu1XBbhUWwzbsbEBSmF8jqkaQ4t16lDosj8ZbeQc9a69ZyyGwLqbe8oKv7vBedE5G
	0v1tYVxIXflUisL3sPFb579a7LgUCnP1lJYW2/G+0mC9dmwjK0nT3KJ4wxh1q3yT8cjyTiirmduN9
	SOa3CGNEYToN1AoJv5cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQGd-0004Og-Gg; Thu, 09 Apr 2020 06:02:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQGU-0004NA-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:02:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id k15so3632798pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 23:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LIZVAq7xeySwQmWqTMtWLzT3ZnpjRce1QK8YJF3B6lA=;
 b=L1WRbXtfVXrT3HXPWD00KG1nxuFSYrWBgXFk4bRo9iE2SQC73JN4rDwGcVRRLRd76w
 5840611TdDz7Jp7c8mLSuUuEAaUCM2OD6SGmXB8Blb4eyN/OXSWfgn7pk/WgYfn3Juwt
 9uDSZVlPK7PibTEsypLQ/DEdelkme+qsc1Pag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LIZVAq7xeySwQmWqTMtWLzT3ZnpjRce1QK8YJF3B6lA=;
 b=LRvqmaLWnd9msX0uJ/1OjMjCH4NKqCLswrOGSjpfWE+aJ13y7cnX7QgeqGcI+/smlN
 rajlGEC3f+E2OQSFXciuoyFrPLhLkwhRta0S9Gbg8/5RvWm3EGB6AjG2aDJe4T7FzgDG
 by2zK8CWOP7uoRRfCU0L0K1LAjSExoXEhfmFtohuo6UpS1Sto73BisuOn+PvEFjkpFoz
 u4bNbdBvWyOEtRdhjRZqfMx/ibl3RoZAa70xUEENGJydB5qG945fEO+Xz6WRhnA/jijq
 Z9tofPFciHEcrtK/2TcKl/JQvmoV/VgRtZLXkQfkmTERsVXrU1AMAVzbrGfkewvJL01A
 t48g==
X-Gm-Message-State: AGi0PuagkfQ5jmkVuolfzz3i8rb22ZN/cRumMCmk1XpCSQ6lj3pHNS3G
 R7CnDZL5tp0r+cHuwuW0/kscJ8jiUQE=
X-Google-Smtp-Source: APiQypJ9qI2t3pspPrOWIlE7/3vyVy7azmPo/Qc+dpNgwSnPI0bXNEXcIKDQeD8aDbDAZmL3cT8sHg==
X-Received: by 2002:aa7:99d1:: with SMTP id v17mr12234526pfi.165.1586412133880; 
 Wed, 08 Apr 2020 23:02:13 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w205sm18193515pfc.75.2020.04.08.23.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 23:02:13 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] drm: mediatek: fix device passed to cmdq
Date: Thu,  9 Apr 2020 14:02:09 +0800
Message-Id: <20200409060209.202677-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_230214_907482_515B9732 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-kernel@vger.kernel.org,
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
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
The patch is based on
https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git
branch v5.6-next/soc

Change log:
v1->v2:
align with 60fa8c13ab1a ("drm/mediatek: Move gce event property to mutex device node")
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 3 ++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 615a54e60fe2..7247c6f87f4a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -822,7 +822,8 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	mtk_crtc->cmdq_client =
-			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
+			cmdq_mbox_create(mtk_crtc->mmsys_dev,
+					 drm_crtc_index(&mtk_crtc->base),
 					 2000);
 	if (IS_ERR(mtk_crtc->cmdq_client)) {
 		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e2bb0d19ef99..28418e5b83ee 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -517,7 +517,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
 				goto err_node;
 			}
 
-			ret = mtk_ddp_comp_init(dev, node, comp, comp_id, NULL);
+			ret = mtk_ddp_comp_init(dev->parent, node, comp, comp_id, NULL);
 			if (ret) {
 				of_node_put(node);
 				goto err_node;
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
