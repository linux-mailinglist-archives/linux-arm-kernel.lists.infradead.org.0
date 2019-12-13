Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563811E92D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 18:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ACZfQNrgo9jKnOu+cEGueJSMNWsEUN1QWKt36DjaW0=; b=mtbuacyUIX96gD
	awtrt160kZN204XHCUc9dKYi13gSOMqH9gxQcgwUZ6/vfS2Jlea84x5EShWjUkrxt8Ty2VSBFENuc
	7nrjAYmb/pNzm29csgUa4YsFJybpiL+43+j29N80EfJpI0xxYli2sHCLzYAUPtrxjLVNTI32hlt2d
	f62oYA+653OEqnEP96+CBmPgmLoht0CdiqTBDOuNBN7RlKFc/gXSzO89ZzAl1BIH9AAztxs60tY5/
	C4HWj44UxvQyovb7lnnhMGTn5eD1to6rEinCerCj0YDBIt++PQL9OOEdsdXPwhm1PdaANAwijW4kI
	2GCvL0DUJIxImCRHIadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoiH-0005iT-3U; Fri, 13 Dec 2019 17:26:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifohr-0005XN-5T
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 17:26:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so281464wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 09:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k37i2rf0mrZ5PJBC1jYZXYaxxFfiB3iLMNAh4njzQbQ=;
 b=kzPdtp7JSMUx3Zngnb/0mSHBSVnlQiPG7HKMb8VAcPBhARKG5gd2fjFKOTGMsyZNpb
 OzkkaNb70V8zrtQMaRhpigBgwFToYKS/KlcAW6Qx1aqR0m/Po4RflLJHKfQB6BfoBTNX
 m1s3pGfg3l94wvz64lDNsXj2mIjGn82Hd34RY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k37i2rf0mrZ5PJBC1jYZXYaxxFfiB3iLMNAh4njzQbQ=;
 b=Ru37t0S6FWeIaZzZjzxR1WRbevX5Uz5ITLz5M4aXUS45PzGoCt5y3q2oQvfVkd0Hll
 I4w25E38GojtqzVZwuVLKPbmdGxAIZZ44WYq7AgPb7I0rjSzE7eD/D3dFHcTcZNLTaio
 2LrfM4HuL894M+P0a5BXD6MwYnQL5XgG4OjJl4wKQJv/u1F525J+cWKdep564pNnCMpf
 +zGOD31eCka0JuwGrkTA54X0kGltOzmt6CkYgiScmD4yvUwvfsZ1f2S6Piq4ydQA471U
 P825fceejRX7wFmu1YiLD4FCBKeEcdsBflCKgPLrAAS8X3LZm/l0RYU6oK2xveT84BhK
 jRTg==
X-Gm-Message-State: APjAAAUNdFTC3VAw2SlKNITDyMY8hA76TmS9Goakaa2aAEtp+5XHoQ9O
 7odAKWKiLV0h+uI9jn3NasZGS+7UhdU=
X-Google-Smtp-Source: APXvYqzF2mlRiwvCpAy00FAu9v/gdbejfjXHVa3jmhV2/faBiJCG4X7d07oMgDmgeJTfaiBQafdsIg==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr13329482wrk.53.1576257981725; 
 Fri, 13 Dec 2019 09:26:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id q15sm10689669wrr.11.2019.12.13.09.26.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 09:26:21 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 04/10] drm/malidp: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:06 +0100
Message-Id: <20191213172612.1514842-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_092623_201050_9C311F8C 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Checking both is one too much, so wrap a WARN_ON around it to stope
the copypasta.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/ipuv3-plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
index 28826c0aa24a..6776ebb3246d 100644
--- a/drivers/gpu/drm/imx/ipuv3-plane.c
+++ b/drivers/gpu/drm/imx/ipuv3-plane.c
@@ -359,7 +359,7 @@ static int ipu_plane_atomic_check(struct drm_plane *plane,
 	if (!fb)
 		return 0;
 
-	if (!state->crtc)
+	if (WARN_ON(!state->crtc))
 		return -EINVAL;
 
 	crtc_state =
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
