Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2774E5D86E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uyC/YxacBTQ41RvlSnlpIrsNMQWp6iKHBLrQB/l8sTw=; b=tnON0/tr9XhONV
	CvUgJTF90cErrdFahYTCOmZMKdnr6fOOoRy6u0MKNFqjgUXdSuWP3Fs6mWwYMyXsWk+psG81TT52Z
	2E4lxdrus6io+2SbYvrTo9hky1MWSNJDUmjwHQ/nqbn6Vy8RL0Mm+p4JFNz9cWMd6bQJbmz6EKuVR
	FjlPRnA9DnbBf39EvanPzU7AXNmKlsBge3uU9u5dz7Exdv3IUT3G4Yl9lqbqLFhh/GFJIdxFaWppT
	1wGT1jCehdUZzptteX7ZOXJ9v0/Wetn55gknrW1prlgmaGwvFLe5P7rx5XoSSQuVYes5ETLhec3OB
	KZsgGasZPfHUwHZPmOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSQg-0001Sq-5i; Tue, 02 Jul 2019 23:43:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSQR-0001RK-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 23:43:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so185409pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 16:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=dzRWt1d0cH9OT8aIY2cfNcZP1PY8roOuwd7uTGeLkG0cZl8zRBQFiUDispqLSA/UuQ
 7qtogcL/XgZ4GiHoPPdi2jdl9O8tG/VgyjT9Dvw6mhdOaxNhTFFazxDQ55AxHlhv/wMv
 Zs28goiGB3utYWKBKTNH2WzG18bLyrlTHqcBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbKEAFwQNgdJMuzfiYPMlyXAsoNdsnEp4Uok88ypekU=;
 b=ptKmwtGi9tYDMkbEyyph5b1gXNlfvMImmeIdCcb74o4cXd918ZL/Ip+NOoMpuft6S5
 7B7rcoR2kY1OAKXUggQqi9XivwK01VvKHtLQYZgta7+Lxco8nxr56TBq0Nv3BN6g8vKG
 I0VpTmHirDfncdX0WGj579D+fsM9+ubEKAlR5JOAski+NB0Qc4AZwCiRSsZk7z8NieYA
 ybpq1w5jhHybTez+FqSLMa2q9uDwspvrjRHgceKuG7oFqII+E5gonj/A5dss+8xsantC
 YBCVGJT7mkSkmDzqA20JxINSNVEMGmWcB97lhf+TVK10/3aRzhxQTC0yE+xbi5kPwmOj
 T5Pg==
X-Gm-Message-State: APjAAAXAAmA+5TCIxF9dFhPbsoQ7G8JtLPGKh9cbZ8w7MW2i7tT7Gf4B
 HoQJn70Wzxy4ME4G+0pP2bQrQA==
X-Google-Smtp-Source: APXvYqzlQqAaaA9TlBYcDIIcItk2Sbug9JeUuEIc7DDU9bCUWN1kFgrxSAljeRrXbuNEk+5pPKxVXA==
X-Received: by 2002:a17:90a:32c7:: with SMTP id
 l65mr8573547pjb.1.1562110982720; 
 Tue, 02 Jul 2019 16:43:02 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id c26sm167611pfr.172.2019.07.02.16.43.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 16:43:01 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Panel rotation patches
Date: Tue,  2 Jul 2019 16:42:54 -0700
Message-Id: <20190702234258.136349-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_164304_061096_2BA2F33D 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
