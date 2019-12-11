Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5D11B522
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HypRzD7x79x9Rt4UTS/kcK8XnEczk8BHLPJGMgwQbbY=; b=hK0iAq77GfhX6o
	2Q68BZ3olpSfZBTwEzDLtcAQiiYnMczZ9wXJFqjUk9U/AC+vXbXqNz97iEbCDZvZZFMO0xu/T0NCk
	sj2XA5Wj1r0Ppq78/RYmByx6NFwj5+oVP4YxbbSVWfBk4CMNLUQp+BtBV5vfHL4wpGH3+kjQ8EBzw
	xB+mgywZx13rBm9CKFS4lbkLKs0VN0BY1ectjONPplIHdvANiymphEWK9r2CQCpQt8nowaCkeOylE
	oS5UkWBfd6Ceprf/WwLB2ebhtebn/CRz+Hh1Dlz+rFeC8Jy8BV2MITnWYmXmL+IhcCRGxtzaX7unQ
	az8oLGsvnaQRpEuTNWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4HY-0000yq-F4; Wed, 11 Dec 2019 15:52:08 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4Em-00050m-I6
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:49:18 +0000
Received: by mail-yw1-xc49.google.com with SMTP id l12so17569870ywk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=+84MmMAoxZMowKg1LejiSRn+LGavX3XL0RXX6IMOW+w=;
 b=m2NiP0CnGnotNR/yMx/w5OIeIfCUnZkQxMGnHlJQgBxOA/FXbl7y2EYygJSnUU7MrL
 kJ3L4rLG6BKMC6Kw7F601lW847yaNWWQzxCbN9s1MYJ/eu1LeC5BesWLk3yZ3tt2FePN
 92VLc8xSfXsMFhJ4ItMCqBRqc7K/K40iD+AjeKs7eASl25E05/A0xRwMtATFIE75BGE0
 P6839NDZrpb/tdJSU3vkmmUS+e7YjYoAGICMyToI9z5hc49ilIEE5SPTUDNcmV8niTEb
 HhHa8oIT6pJcepbPvKt2SuJctQ0v2091Cw9qWrvd7TEfd5roezf2Rd0FvxgpGZFv/pLU
 wWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=+84MmMAoxZMowKg1LejiSRn+LGavX3XL0RXX6IMOW+w=;
 b=T93vSohgsmpF63vr9B+YWHW7aqjVLpOAEeeUrSo/LfU2kzIRd+SKDN88BGMAaJoUn0
 T9c7zIBlRyol86LAnEfvZ/zkJL1bjK+1fvkIxl5J0JSPCW2fYlXS8Ayt32hepANnbATG
 4xgqqgDO5SY0zjyfrEvioTPtm14idHw/bsqW73/MifG1cQh8GdnIrPu0i0iXX6i6tDSu
 NMvRPkKju9hpatC42971XtXLj6lfdMggwCkHVrmJQnFQyPqTf5wNKM3Tjz61eY9j8TBd
 SdgDyoPTx9VLhpTcyejemSoeOuCUad/Snk3Fe1gmEC9aw8y0sBFhXGfPHNsMZ0TJns1G
 63Kw==
X-Gm-Message-State: APjAAAUAvsISgLn3GnEy4KJzQdfg52uvaNirnZC0x8MCLvxKbRIpSK9O
 oONfxhfjY+FZBQt1dzTYbXwjNYm5b5DKYII9
X-Google-Smtp-Source: APXvYqzgag2uEK1TrKN/WHaL/XtHsyuWNO7uPzN29U6f0LWDaOKfxY1Ep76cMLNac+NAL6BSwAjUWiYDY6LG4QTQ
X-Received: by 2002:a0d:d247:: with SMTP id u68mr297158ywd.1.1576079353136;
 Wed, 11 Dec 2019 07:49:13 -0800 (PST)
Date: Wed, 11 Dec 2019 10:49:00 -0500
Message-Id: <20191211154901.176256-1-markyacoub@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH 1/2] Return from mtk_ovl_layer_config after mtk_ovl_layer_off
From: Mark Yacoub <markyacoub@google.com>
To: CK Hu <ck.hu@mediatek.com>, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074916_671670_34C4AE1D 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm/mediatek: return if plane pending state is disabled.

If the plane pending state is disabled, call mtk_ovl_layer_off then
return.
This guarantees that that the state is valid for all operations when the
pending state is enabled.

Suggested-by: Sean Paul <seanpaul@chromium.org>
To: CK Hu <ck.hu@mediatek.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Mark Yacoub <markyacoub@google.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 4a55bb6e2213..526b595eeff9 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -260,8 +260,10 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	unsigned int src_size = (pending->height << 16) | pending->width;
 	unsigned int con;
 
-	if (!pending->enable)
+	if (!pending->enable) {
 		mtk_ovl_layer_off(comp, idx);
+		return;
+	}
 
 	con = ovl_fmt_convert(ovl, fmt);
 	if (idx != 0)
@@ -283,8 +285,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
 	writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
 
-	if (pending->enable)
-		mtk_ovl_layer_on(comp, idx);
+	mtk_ovl_layer_on(comp, idx);
 }
 
 static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
