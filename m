Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB7D11E92E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 18:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoNR44sVYf5IKvGlyo9JEu63NoQXOlunOAOrTTFUusc=; b=KI58G6ZyYYCNuz
	ZFRA9Eww2RIb5vJkbTRncsxhLrxPE7Er63Tisqv07WjvtByL5OCQwDm7ZTVsuSJ6XcPYsWrvepw9s
	v4g8vAB58lDs1SHHOVnpPmQf5zWFjHRpVRcIY7pGNMj8hbnpHUKUJaXmDgl1iQKaRkMoZKpgGY9l3
	jYgsCWPK+lrMwYTlDpL8Jq5eW56lAr3bASYvovYcumCq8/zOn6p6dcyATIDJNrEoiz120rqZb9meP
	r28i6Gm2PJ1a/efnH8CdCZQXlkz1djAH7Fb/dMP3EkHOKaOhS2cy+DjblhJ5t+4d0Nw9cNZJKhq0H
	HhyhH/eiSR0ZbSo4xlWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoiV-0005wq-UO; Fri, 13 Dec 2019 17:27:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifohs-0005Xf-2p
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 17:26:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so265977wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 09:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+cbrIbSvVp0LclU+aOKqTmPIt3fby91EuMSME26/d5Y=;
 b=OKaJHrVAoaZtUEU3D85ZFLCR77H4fX6v6CsgmAjDRP9z9ftuNCnp76zTWWUm7HPKiN
 FTTSSUgJNQOmvoLndwEMxA/UsGm+L98LxGIzL43X7OUEB28m6PNUKY/007+20qZ70j5p
 9F/y1NUVDwbvHhqktxm5Q/NhFLQrhd0/evKGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+cbrIbSvVp0LclU+aOKqTmPIt3fby91EuMSME26/d5Y=;
 b=JddXiA6NJ9Rh+gtd3wKD8Tz2aRJ0EKCYn7Er7oHJdxgM8ixYY9dG9lTlR6u2J2koeT
 xJ1MI9Xfj0JllYAlj3ozAT+DsBEkIEiCng0XR7tXwg67VLOd97qF7nSCHg3GgFf9RXRs
 RdFMLNGGq2lkMa8BAy1yOWXfAPyfUSar1OFvImZ8HU6dFHFEqXNtzBbsbVX6UuWkKy5x
 7crXoD5FJFYuRvqa19MPRJ00kfYL6qbESX3OJIOEZpgsTUo00X9JW5jw4URnE2InhbJf
 mk/SLVHymcvneA9Dmr/+0rDpCdBWPT5hFf3A/QtnUbFVCm2ATslQ5WJ5ypCfVoxq1kNB
 2D8g==
X-Gm-Message-State: APjAAAW8+ItzKzS+Qrkxsav94syA4EkidrgOtfGZQsbfLGSoUPwAeDIj
 BooXqsnpDRkG8ewSqE+oRD9fcg==
X-Google-Smtp-Source: APXvYqyJt4nToJrw+6t6T/NTYV4dX0RRCO+tqGBGWSgh7apaWrrcILwebqQdGpcwUnJdOImfOsV15w==
X-Received: by 2002:a5d:690e:: with SMTP id t14mr13815008wru.65.1576257982999; 
 Fri, 13 Dec 2019 09:26:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id q15sm10689669wrr.11.2019.12.13.09.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 09:26:22 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 05/10] drm/mediatek: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:07 +0100
Message-Id: <20191213172612.1514842-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_092624_122475_615F5B89 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Checking both is one too much, so wrap a WARN_ON around it to stope
the copypasta.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 540ef2faa40a..f0b0325381e0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -94,7 +94,7 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 	if (!fb)
 		return 0;
 
-	if (!state->crtc)
+	if (WARN_ON(!state->crtc))
 		return 0;
 
 	ret = mtk_drm_crtc_plane_check(state->crtc, plane,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
