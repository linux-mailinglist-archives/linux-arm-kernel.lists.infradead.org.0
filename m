Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1436514E328
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 20:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qhAYujA47CkUn4JfnZB5RQRLP0N53VBv9cJRs058rMI=; b=SgWfJ0Jl8oocDx
	n9ApvAAPswzEgh1D2QaSkY9LSxTU528vNyhnFXlcl9nitj7Pgxjs4LVC44IH0n41M9Z2aj0n7w1AL
	fcyowrgye0cQYO04Q/+HLeqPVhf8yPQuNBLSWDEsbF5rzn6I4040t95fYifgqrEDkfvWn8HuLbJPD
	hHrR1Q56W/sy0NmjBSS2Lug26ApSa/lCRUV9UFYSZ9k+sI26Asw10ow+n+cSsa7OQbVCbAb8lVkPx
	mT244EFUom8GFUSPxy0Acf6hersjchRFfXOby8yUgETr3/Vd8h5lZw2IXv68WlRCkvs/OxmneejdM
	Z/Kh+Hv9jNtTLwRcpuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFRN-0004mI-D3; Thu, 30 Jan 2020 19:25:25 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFRE-0004kk-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 19:25:17 +0000
Received: by mail-yb1-xb43.google.com with SMTP id f136so1919549ybg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 11:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqLc/hiOsciiuReeei4PXbgfrPt2jGOWmt/3LtzVX+A=;
 b=DgRjlq3+8uQ60Z4tZCeDI0XkrzyloKfvhUsMa2JS2PIDqrvsT8vNPnJKkzCFxpDXdg
 zNfMU5tYYw26ODXUUcOV+ncqGdHYZTDHZm+gplAaRAJnYla6/12srb8veAqa1itI/572
 IOL4515vgO3xWVjo4hGUHMK8NYXvRKZFHyRBg58rixOCnVQCIbJwMurKfUxZPJ6x7tpz
 csX9SZ2LSYEVMjxH4gD7ehi2IZDwfkEh9FTqBHhjhlzZTjtoyNjEQZCDIwzv5XsjgI2u
 l2WStydYRiGLfVsAawn9AUDhXHBlWmNKw2vg0OYQBcdaskTFnkStHR30VUkzGRw3eA5z
 qx9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqLc/hiOsciiuReeei4PXbgfrPt2jGOWmt/3LtzVX+A=;
 b=SDXiOXpTumcDVrwN1XvweHh6gUeHoQh7+D3U0uIJCHRmzmkv47o8WD/KWiWHZtN4O9
 jkKT+GVgsmddn6KMmosftQIQMldfHKUXfxfnNh1IbPsP/RJdeya2iCjFUL/UaCuDAYwD
 sQJFRhNqX7sPLdmuGlSKq5PJevoyHsJ4u5JqtLzymjZdeiEuQ39ZStEibVoOy+al/x+c
 7gMe0KK8V2sijj0Uobp1z5Fsoe7pvwhE3QiYzTtTSpIgSw8Cdw0nclCIkNcyJwlFidPv
 3hXdtOJ+y8IGqUVzEqGpH7HU7wCSSu19P5TULhIDxheKgVQLA9UOOFZ3jpZB0b8Ey1+4
 H3rw==
X-Gm-Message-State: APjAAAX/O076x8OTuatpsLCVeRy8NPdjZ/z/sww/2RzqJezhOC5kFEWX
 MbJqiQH2+h/RlEZrTt5c2B/3LA==
X-Google-Smtp-Source: APXvYqx+ZkhVmVEkjn3RME81x0M11aBuvdISwPw+4I0dmwSnJ11ZrG50bodS1GIP/bPXGsAVyBL5Ew==
X-Received: by 2002:a25:d74c:: with SMTP id o73mr5252636ybg.102.1580412313620; 
 Thu, 30 Jan 2020 11:25:13 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id q62sm2879183ywg.76.2020.01.30.11.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2020 11:25:13 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Ensure the cursor plane is on top of other
 overlays
Date: Thu, 30 Jan 2020 14:24:55 -0500
Message-Id: <20200130192511.81205-1-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_112516_133959_9ECA20B4 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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
Cc: dcastagna@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Paul <seanpaul@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Currently the cursor is placed on the first overlay plane, which means
it will be at the bottom of the stack when the hw does the compositing
with anything other than primary plane. Since mtk doesn't support plane
zpos, change the cursor location to the top-most plane.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 0dfcd1787e651..4ac76b9613926 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -689,11 +689,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
 }
 
 static inline
-enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
+enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
+					    unsigned int num_planes)
 {
 	if (plane_idx == 0)
 		return DRM_PLANE_TYPE_PRIMARY;
-	else if (plane_idx == 1)
+	else if (plane_idx == (num_planes - 1))
 		return DRM_PLANE_TYPE_CURSOR;
 	else
 		return DRM_PLANE_TYPE_OVERLAY;
@@ -712,7 +713,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
 		ret = mtk_plane_init(drm_dev,
 				&mtk_crtc->planes[mtk_crtc->layer_nr],
 				BIT(pipe),
-				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
+				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
+							num_planes),
 				mtk_ddp_comp_supported_rotations(comp));
 		if (ret)
 			return ret;
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
