Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F23C065
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QKlyJzp5la/tdx/DIQVmvEZ3Tj+k0+6aK6vLp3UQmBA=; b=plZktLOpPk6qWu
	AGoqGuVd5rVUK1G8PCvHERVEc2+YHOF2kc2rzxsMJnUjZQWRckjy2EIS4XrviTJd2EHzCJB2Fr0we
	bY2ottEd+Va3VDSsziUB1qmmD75l4d5lAFbQ3iK2BaKmQr1u7Nqrqw7TOffBol16YV/D81XPB4Zip
	bSpdmhJ3mAE9enQYlg+0lBUpSj1aQX70SM6T7y6JKWn2PfNsddvVJd3y4ItHEdb43g26bNgG+Re0n
	sIcWKm/yMjoVN/mezgTvhMG55S1UVNmPurLfsmmeQjCROmuB0nLMsDBwYwmO2t0Nw8BA4DvKewO0C
	XkyLYcEG6TWbaTHLR7jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUZK-0004L5-6t; Tue, 11 Jun 2019 00:23:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZ5-0004Jv-GK
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:23:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id a186so6240001pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=f5ipcdNBMgeYN6xIkspolGbToPlj9rnUy85L/384p3yAVGYdbKT3rIYX2R9DTVe5DZ
 BYJNhX2Lc4MpUKIIZ8Uvygx+l7dI/iqp1tjbx6cPL9JzfUDgJZKWqECoYuYfsfw24UwA
 BoOUkWOPjP/ynt3LEWf2YKuM3gT243RbvpPTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ys/QIuTzESKgIhK+4lqN2GBOgNe/RQ4XjHnrFVNq/bg=;
 b=I92YpO8nz/rBAGITehsU0ZNXM2KvWXzSHEdCUF8cGL2BNUbN5ialiaOFEAqI+5CXpt
 MK6SdcAEb0skY4UeDyG0TjWGoIyX1CunMUeS/RNfi5a8aaCsKb9P1fFInf+JEZ3Y16Sn
 leaWRH4m/qEGmv2rocWPdDI9d974YeaaBB59/z3k0GgKpU8b3Z6A2FxZ67vuFn3O4pao
 9Md13xxICoOD6kTRrVpkHRQDLElxmwecUoR6Y3b8nxo3mKIu0IVtoFf8TS9Vm6g0ipBN
 lm8dQdi1xuFgUqiOMflZMPbuD8uvcWUQihXNpWpks3zmJS0wSMFCVwu+ee+7GaILQdzm
 jXYg==
X-Gm-Message-State: APjAAAXLJGL/gvFb3XTLnP+WDrrwb8zB5YlB6daGla1Uxs58JKwIJvAz
 kdNRPA6TvoR9GKNvKqKwDVxD0w==
X-Google-Smtp-Source: APXvYqyFDNopqPX7XaEAu7EG9CwttGgKSVT073ogwDm3kj5G1I2Zurlp7yaWcrSslQANYBeJiel1uQ==
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr2852849pje.129.1560212582590; 
 Mon, 10 Jun 2019 17:23:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Panel rotation patches
Date: Mon, 10 Jun 2019 17:22:51 -0700
Message-Id: <20190611002256.186969-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172303_575279_EB9D8EEE 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the plumbing for reading panel rotation from the devicetree
and sets up adding a panel property for the panel orientation on
Mediatek SoCs when a rotation is present.

Derek Basehore (5):
  drm/panel: Add helper for reading DT rotation
  dt-bindings: display/panel: Expand rotation documentation
  drm/panel: Add attach/detach callbacks
  drm/connector: Split out orientation quirk detection
  drm/mtk: add panel orientation property

 .../bindings/display/panel/panel.txt          | 32 +++++++++++
 drivers/gpu/drm/drm_connector.c               | 16 ++----
 drivers/gpu/drm/drm_panel.c                   | 55 +++++++++++++++++++
 drivers/gpu/drm/i915/vlv_dsi.c                | 13 +++--
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  8 +++
 include/drm/drm_connector.h                   |  2 +-
 include/drm/drm_panel.h                       | 11 ++++
 7 files changed, 120 insertions(+), 17 deletions(-)

-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
