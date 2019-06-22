Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D54F369
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 05:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hS10bZANps5J1Ymj31CKHzZi4MXZiAvyVORzXTDMxD0=; b=cmdTMWtpMTxGfh
	VwxjlF9I75o0Tlh7PnSTKjujIKR1/bt8Cgd2zP2IpSSTNTQGAg0etWfWbTHBYC58ZkEiQCcnwT11T
	Tjjeh7xUWt50pIQf+Y8dCtXee3lhOpNUM+V6qG6GV2uE2cQm++Wy3JLo6RTrLV9TS6Aa6Pc0ZNuvb
	NKSBFMgdKDOTptIlcLOCj/nBYuGUhWFVAl6Ao1gcSFytvwWgrEMgpoNz/LaUL6zUYiDzM9FwLjWGD
	NFAGJD/wOQ7bSXRAwtDMu7C4PMmftUdBaEwmbMfR+LZdKZp348kbdx30ivhuvR1b0vMLumpNXsSvN
	slJpSaN3KdGIUMer5kGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heWu6-0001ng-FU; Sat, 22 Jun 2019 03:41:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heWtu-0001lF-1C
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 03:41:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id 81so4506380pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 20:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GbPgR1/hx/sADCMq1nG2N2yoZQYOu26NTJrjoG7x5xA=;
 b=Zmu3mEblG9DO62WX5N1m2VZeTpFPKI2jgrIhgPwPBE8rRFVmDo8DC3yfbw6MKAkpn2
 QK+/2+WdoWpH7KbIdh2MaZFoj/PgWlt//6JHJniNyGLTaUaUm9YBE3w87nd1tpmPH+7M
 gyr210lpu+qPBP9Wbc6uIa2I4m4M/QBeVwIhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GbPgR1/hx/sADCMq1nG2N2yoZQYOu26NTJrjoG7x5xA=;
 b=e1GlgC8lhMz6g2Hh+//0sbkoaJ35VJ1EJkGlNGFUvUdPXxJWlbFzXD8kvC7pLJ6KTh
 fmLIpa8eRZ3oW3fYTYi+hjYWT6Zp1EVqK2828tL5qHg8FHhcOm+pWadm+qNKdjRNtN0g
 f7snqHcvOfiw7uvN3zrjAAchEgNoW1TVKLT40ONahsfaFZ8CaSLWsakJRz4+nMj9KF1b
 5tTdxW+OyFt0Vp4LH7YO2WfRRMg2nG8bNekbxrlp0efXsqkZAMhZuYRqXTSYXae5Deee
 GYwq1Zpyihvu3TfuekwTtW9h70eSdK15ldEAgyzgKVE0inOWYwyQ6x6bqxRe8ZQ371Gy
 fynQ==
X-Gm-Message-State: APjAAAXEBZ78datcKzAqf3UY0pz39oVEjCNn7FhCDM6dcCLM8yiqHoh0
 UhnGIZ734/9n07X/Bi1V1TJkLA==
X-Google-Smtp-Source: APXvYqyyqTs+2ZoGG0EdVdaCSlWo+2N8luEZi/UZqbDEHKFswtQZPVx6FuiDYjT4HRX+RhljHv8nHA==
X-Received: by 2002:a63:c442:: with SMTP id m2mr21570928pgg.277.1561174870871; 
 Fri, 21 Jun 2019 20:41:10 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:10 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Panel rotation patches
Date: Fri, 21 Jun 2019 20:41:01 -0700
Message-Id: <20190622034105.188454-1-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_204115_674681_D2F40C59 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
