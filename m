Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FA363F32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 04:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7G7T0JL39txgTB37lXeAPn4me5J59dR/t8bGvDAsHgw=; b=AbCoLnsFfdOxzt
	dGyD8vO/mkEhywgDDHiizQn4vI5iHvbdwzroYRmBTO+wKBYfNmaL/crKAc3oFVQq2YFOX6v2Mz0yh
	d4fx1q8VGatHfm9PxHUGN6VbVrrwWTBnLac9FwbyHtaE05EkJK5XxqTUGUWrV91aC53X3Yn8lRE7l
	Ms7wDjrim6wqLlh9+cG76Oj6518QPLJ7BMAQHWDO+GnaGDs2r/bA115ILjMtUtqS7g951T9UE7Jgl
	SBpYBT3m7dIxu2IRbyZHOcqIq5+xUHux/nrRMYFyLsxUNpz55UoqrPsYc8AYZLvt4TmNdFA86Y6Ol
	jzDpVGr4Yjje8eVlZATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl2Ad-00049N-Dc; Wed, 10 Jul 2019 02:17:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl2AK-00046H-EP
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 02:17:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so357941plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 19:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QL/iKcky+DBal5hSRMsXARSXXCVch6Zl/oKMaiM15pA=;
 b=LQXF4iztDK4WfGH3yFPHfMFpFoxRGzJ5SJsuvt8PUYKH5sMMGeff6st/EcfYxwcIzc
 GxhzEvZK940b7dcqpFHyB4koUyH87iv3Ful02WPZLOgp+RbNy5HxSi0QtGxb1TioliFj
 to6SHdkOhkaignW44UcMR8L2Lb/KPwHiPg1zI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QL/iKcky+DBal5hSRMsXARSXXCVch6Zl/oKMaiM15pA=;
 b=pXuqH2S7Q91JFlQtKesLpg9CbtcquYGT34J1D+NTviJ8fbPcl1RLMS6W8nO03RVbli
 3KAhi+sUodWWygz0cqdQ4rz3IZfBCnWSwjMLhtbRHskUu3iDxfhPQ3CNAHzqrcDmlK1B
 OMLLV5hsP2cVgj8IX5uubBbv3Zg4du7t0AXp9TrhqW7swzFU1C0pEUgcBBmM2Y5Pdk3g
 B0vgGXUdCcWxk7o5xTkcFWks4Xd8LDssliuFaEO8J0hysSVFjMB2nbgSRddjg9p8jOPT
 0TnD7ny21Mjfz/4F1ie1Ijx67tij6zsCPV4rahmZGQhuGBD7mumFhTgaKXkFtBIaHMtx
 Dw9g==
X-Gm-Message-State: APjAAAWK1MdSp8wqlpwMPSBNHnoA2caUcCWMu7NVp2gPBj7qrAL7aNls
 isMFS+ARnXsMNxd6hjvWGWCwOw==
X-Google-Smtp-Source: APXvYqyEKIBQy601LP2m94TC+l7EN0vjJQm/b7SyERDtRnwMRSIGypY9ZrywmAynnQCFbswC7bKmrw==
X-Received: by 2002:a17:902:788f:: with SMTP id
 q15mr36510488pll.236.1562725023757; 
 Tue, 09 Jul 2019 19:17:03 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id f17sm326296pgv.16.2019.07.09.19.17.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 19:17:03 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] Panel rotation patches
Date: Tue,  9 Jul 2019 19:16:55 -0700
Message-Id: <20190710021659.177950-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191704_512629_130A5673 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the plumbing for reading panel rotation from the devicetree
and sets up adding a panel property for the panel orientation on
Mediatek SoCs when a rotation is present.

v7 changes:
-forgot to add static inline

v6 changes:
-added enum declaration to drm_panel.h header

v5 changes:
-rebased

v4 changes:
-fixed some changes made to the i915 driver
-clarified comments on of orientation helper

v3 changes:
-changed from attach/detach callbacks to directly setting fixed panel
 values in drm_panel_attach
-removed update to Documentation
-added separate function for quirked panel orientation property init

v2 changes:
fixed build errors in i915

Derek Basehore (4):
  drm/panel: Add helper for reading DT rotation
  drm/panel: set display info in panel attach
  drm/connector: Split out orientation quirk detection
  drm/mtk: add panel orientation property

 drivers/gpu/drm/drm_connector.c    | 45 ++++++++++++++-----
 drivers/gpu/drm/drm_panel.c        | 70 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_dp.c    |  4 +-
 drivers/gpu/drm/i915/vlv_dsi.c     |  5 +--
 drivers/gpu/drm/mediatek/mtk_dsi.c |  8 ++++
 include/drm/drm_connector.h        |  2 +
 include/drm/drm_panel.h            | 21 +++++++++
 7 files changed, 138 insertions(+), 17 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
