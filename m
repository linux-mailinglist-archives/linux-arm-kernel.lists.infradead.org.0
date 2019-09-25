Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205B9BE897
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dfr7qGp6OuBrTLWOK5+MHK52ub9cvgsUmsqnsiqa9E0=; b=WPc/qWRSlT2ulp
	tEe1JcXyfCBJmRSZiVzeF8Wkq5ibyy+C8U6ln+lbEYYdOA2TLXWV1SyOaBnxW0ylShGIJyt1EWZP2
	gG1cc/76NHa+dyTp+jUtAYewJ4N3CGb4+hvQlqUxDZU1u5opE0Y6s8LFNYPxYC8HDPqPhv7lrYshd
	JOU0qhSnrTMOuFK2kUuqFGk2CL9ZwlQDx4nah4hwtzPWFy+LuDC6Q+bnAlIE/xlH0SDfY71Kh9IEj
	X+ysAYDapT9XrxIcxNB79fi8UDtHX/VGfaCLQJeBea46bOUrlmpjxl1BW4IKe2ntmuY3ym8qrJT+r
	jr4BglhikiqCKoagn8FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGFL-0002oO-Mm; Wed, 25 Sep 2019 22:58:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGF5-0002nL-No
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:58:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id s1so192131pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBfAYVzrUaZx8A81lQKWZtaimNSs6Q4Prkr1zyCu8Sk=;
 b=lnwzlxaOGXON5kJ+mJtUQcGIZKlxrNequk5F3hmYazLKV6g7hVjA4zue24ICSCflnJ
 TKbxKfS27WL3LmgHu6tGZzEsOKLplx7ahSTC12La2RWxtT71Bg5QSABWFvbHMg+cKhUb
 Z23L/NT/IQHnf3aCqP6reQvCq6mvnOL9t8NLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OBfAYVzrUaZx8A81lQKWZtaimNSs6Q4Prkr1zyCu8Sk=;
 b=eQhAXKyygQPCAeDMFWwyz97GeFQHJI4DEGBxP1awwbeJ9Hdp0FMgYe5YE60V7iRMSL
 Bi3EgqTbGPGz9/Ki5+kObEGEsFmwwMqDY8m1RjcmUVg7HW1SUVSif8BhcS/M+2lGncp5
 J4g+S03cIvtg6ESi9lz1eIZWzwPSSeo4zCt12VgcDizAOrHvITl38UkHbGbq/7Qkv6hO
 dkreKVI9HwXw84H7IgL6OpZWMD9yDxDH14btVy+UYo0bG0TCPyDexnpGx778nLONPJiF
 1KN8s1kbsd06M7mRkXd437XS5AQB9cCjO6W79b7Y8I/yTZjJyoEgfAhY4zA9bajmSiXm
 eTqg==
X-Gm-Message-State: APjAAAXgv59ZOL+gJajQi9qCmRKv0ywRMfEMJBz5JLe4X6u25ayG/GEj
 7Q6oSiyeIKVZaMhtstfn/+2kiw==
X-Google-Smtp-Source: APXvYqyBkPb/ka6PSD+JEb9aEIXdZQPZKoux3UfNWddn261c/1mhYqrBDYlaAvmnqxOn2W4DIIYmEQ==
X-Received: by 2002:a65:420d:: with SMTP id c13mr260391pgq.293.1569452318669; 
 Wed, 25 Sep 2019 15:58:38 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id j24sm76185pff.71.2019.09.25.15.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 15:58:37 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/4] Panel rotation patches
Date: Wed, 25 Sep 2019 15:58:29 -0700
Message-Id: <20190925225833.7310-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_155839_800367_6B211A97 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

v8 changes:
-added reviewed-by tags
-fixed conflict with i915 patch that recently landed
-Added additional documentation

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
