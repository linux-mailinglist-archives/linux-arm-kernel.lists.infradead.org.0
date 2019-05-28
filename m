Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724D2C033
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jxDoCfQE3M38U4tataMTzC0K+LQSzbJHpS4MhtxKJyo=; b=Nf7ic8NXuxra19
	PdGKjEaAIyHWTZH/8kwHG/hk3GldUvlhPgaOHx8tXxb54jWVMoYUfidaaZeUhQ25nCMOPqBi+c38M
	L1PNPSD2vaT5gmSB2tjSyjBV6bXtEylAHFuBlPof+Tpp5jK2j5rQ9BTrqR61qZByxj2KMK9pronaa
	d989NdRlzaySp1lnBp1wxfHkajVtPnLaMBYrErfcCLXFaNKuiMLiWeN3ZklZMbNy9j9Nd3uNHbVJ1
	T5L83EBKUbIAHfrvklfp9oM+jgCg/CW708yqikBakjuxf9VxfnGCwuTQaTRya85zqpTqpBhsKQQvY
	HgZIe66zC2oc/s+e45UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWhi-0005YX-QC; Tue, 28 May 2019 07:39:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWhZ-0005X0-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:39:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id q17so6099759pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 00:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQVJnM2sj4R+nYxUG9Nne9l7dh6fbmTdyutm/YwtMx0=;
 b=Uor4jY1MtEZkONU2usE/MnVQd5dj3Tfn6kmxvYM/+8zfdWScV+FayauoWdU3tq05Ju
 ih+RnNavqlRUxsaidguXi8Zd1fOeNUd5Ro9TRKv1PJXlxJQeHQL20L7ps+V88GEi7fcl
 rG465zYjyVAH/BeHRWJJqxw/6W3O9t+sVEalg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yQVJnM2sj4R+nYxUG9Nne9l7dh6fbmTdyutm/YwtMx0=;
 b=GkcqIGapirTGWA0EBn+1Fdr1Y1mP90iI3YXdPWGNPFyGOy0E58LfFiMzIV2ecYdxLl
 CVcqrJoqTxHkWa3vj/wbRr/AjFnFsphJ90iPOVBR0MQfs8ve+HZdr0vjLL0E/GsQKDfs
 1xkkLCSbQjmftOVep5cwximmpMN+e0t3mMvVLPfTPQT+DlUmIP4vQaRVg4zJu2y84YrY
 Es+rGfaL2HKzVRtS1hxWiaGuAwGub+EGWnVPgSLjmjX3bmcisD0dTSgc0kohZt9VqYFH
 XXNbaDw2ub4YfvTppE7DB5ClmRWNkASha1ibZ2/HsH5woj+pqz2reVnRrTkjAvb51PPs
 68BA==
X-Gm-Message-State: APjAAAWb80zaNyen0fAs140utGDtUPZBg/mIIF8hKVxV5nxmwBd0dZ8F
 IH8d46l7GxJcJZy3HcxZNjJn8fl+PRk+6g==
X-Google-Smtp-Source: APXvYqywiAh3QaSgLPIyigYkRgvfuvWVKq0aWO68kqF5JZeJL6svt+W4rpHA95UclwnXxcNmKYqIow==
X-Received: by 2002:a63:af44:: with SMTP id s4mr129350119pgo.411.1559029156377; 
 Tue, 28 May 2019 00:39:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id g8sm1628011pjp.17.2019.05.28.00.39.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 00:39:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
Date: Tue, 28 May 2019 15:39:08 +0800
Message-Id: <20190528073908.633-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_003917_918535_8A521E4A 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(), which needs
ovl irq for drm_crtc_wait_one_vblank(), since after mtk_dsi_stop() is called,
ovl irq will be disabled. If drm_crtc_wait_one_vblank() is called after last
irq, it will timeout with this message: "vblank wait timed out on crtc 0". This
happens sometimes when turning off the screen.

In drm_atomic_helper.c#disable_outputs(),
the calling sequence when turning off the screen is:

1. mtk_dsi_encoder_disable()
     --> mtk_output_dsi_disable()
       --> mtk_dsi_stop();  // sometimes make vblank timeout in atomic_disable
       --> mtk_dsi_poweroff();
2. mtk_drm_crtc_atomic_disable()
     --> drm_crtc_wait_one_vblank();
     ...
       --> mtk_dsi_ddp_stop()
         --> mtk_dsi_poweroff();

mtk_dsi_poweroff() has reference count design, change to make mtk_dsi_stop()
called in mtk_dsi_poweroff() when refcount is 0.

Fixes: 0707632b5bac ("drm/mediatek: update DSI sub driver flow for sending commands to panel")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
change log v2->v3:
* remove unnecessary codes in unbind
* based on discussion in v2, if we move mtk_dsi_start() to mtk_dsi_poweron(),
in order to make mtk_dsi_start() and mtk_dsi_stop() symmetric, will results in
no irq for panel with bridge. So we keep mtk_dsi_start() in original place.
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index b00eb2d2e086..b7f829ecd3ad 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -630,6 +630,8 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
 	if (--dsi->refcount != 0)
 		return;
 
+	mtk_dsi_stop(dsi);
+
 	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
 		if (dsi->panel) {
 			if (drm_panel_unprepare(dsi->panel)) {
@@ -696,7 +698,6 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 		}
 	}
 
-	mtk_dsi_stop(dsi);
 	mtk_dsi_poweroff(dsi);
 
 	dsi->enabled = false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
