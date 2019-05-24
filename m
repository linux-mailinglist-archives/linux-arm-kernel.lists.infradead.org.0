Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7381529610
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wn72WdwKGRpvU1hJy+Qy8m6SVYE5obMk/fDnPWJTH8Q=; b=t+VE355Yw1OiEw
	fM/BXTknAMhIrjoVNqkWa2AzPHokLg0hMiXg0sg8b/bLQwXB3lf4M1/JF+9CvpJ19DO7zocLZ3Lrp
	YfNqbP20+pUe7SkhGlh+eJ/xcvVvZHr287UcM6xBCIDJ4GwIVFibEtB1KspGBvN0TwsQ2vzPnxjsa
	zKqgbhCcAkhuJLbAhwAHFvvGBMHhx6Bua2QoSf6nPslBUm2zxG7rcPNR2jeXj40IGSbnch7Ie2YsY
	6QBejgQ5BjurJ1f8csaDO1IUEfEQTn101EY3oTOl8aWU629Gh+uZhf1SMAHB+ReBmt2Ccglu8wbSI
	oHp7o83LNJN9nLSh4/UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7dv-0000U8-Ip; Fri, 24 May 2019 10:41:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7dn-0000TD-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:41:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so5088166pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c0MxRnTCE9BXc+WmYpS8NriHcx2Lj8b3YSmcOc81bkk=;
 b=KhdkuwhLGFTGUIzjnoSXCcjRF1xudF+4rTPCNkNPO+riBV5qj6+YN/XmRVEm/HCRG5
 3Jn3cbkMmq2gMiGJaV6ndJJmu2lKue5pniic1qpViALZjk/6h4ANhWXPElMRyGyMwj0I
 jC9ZZh4aHfKNKmJ4whJ1tmXgtD1aztJzyF9N4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c0MxRnTCE9BXc+WmYpS8NriHcx2Lj8b3YSmcOc81bkk=;
 b=Pi1J0Ay4MSvgukPBb1a13dOx25DGCB5qhFy0D2TrdjpZC1OcRguRwIMB0sQD1vJ+/S
 d2/ck559vGtCBKYFqEMXcAPPi3B2BDmyCJAzFQGWby6mvoVubfgocj3kkXITx9SDUwVs
 R7W0yF4tZGKKvWnzELYSiUfpTRlpITZDzFS3il++dCB1nZxXecGdgv7wqBgT66h585HM
 HUizhKiopqUXKAiy/3IPGnVxi0ffd9cRh3936xP7V1vuY78p8cA9q/3Xd0M+QZWjhgGv
 YNFwbd1sgct3+xRVqQRNRU8D9u0QtOauFYUkNOV9VkYLNFcdl4Oew0rEBDP6/4VXons6
 TF/Q==
X-Gm-Message-State: APjAAAUzaIm+kmbqgFqnHxCrujcD6SmzbY5ZJSy62GtqdaWqWO9oTQy5
 2c3be55k/sdL7+vG/AUDZqkwXw==
X-Google-Smtp-Source: APXvYqz44Tfpkk+GdZoxymyVgoEhAr6weX4O6ILp2GFIiVeKdz6RAp1tuYQbqrGK2N425gP+pUQjVw==
X-Received: by 2002:a63:4a4f:: with SMTP id j15mr8692927pgl.338.1558694493926; 
 Fri, 24 May 2019 03:41:33 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id m72sm6550113pjb.7.2019.05.24.03.41.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:41:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/6] drm/bridge: Add ICN6211 MIPI-DSI/RGB bridge
Date: Fri, 24 May 2019 16:11:09 +0530
Message-Id: <20190524104115.20161-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034135_370446_6D31CAD8 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm/bridge: Add ICN6211 MIPI-DSI/RGB bridge

This is v2 series for supporting Chipone ICN6211 DSI/RGB bridge,
here is the previous version set[1]

The overlay patch, has Bananapi panel which would depends on,
previous MIPI DSI fixes series[2] to make the panel works.

Changes for v2:
- use panel_or_bridge for finding panel and bridge
- add panel overlay dts patch for port based panel enablement
- update the bridge sequence dynamically, by getting mode
  timings from panel-simple
- correct the brinding compatible
- add more information in binding example
- replace the bridge detach with proper ops
- add bridge overlay dts patch for port based panel enablement

[2] https://patchwork.freedesktop.org/series/60847/
[1] https://patchwork.freedesktop.org/series/58060/

Any inputs?
Jagan.

Jagan Teki (6):
  drm/sun4i: dsi: Use drm panel_or_bridge call
  [DO NOT MERGE] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel
  drm/sun4i: dsi: Add bridge support
  dt-bindings: display: bridge: Add ICN6211 MIPI-DSI to RGB converter bridge
  drm/bridge: Add Chipone ICN6211 MIPI-DSI/RGB converter bridge
  [DO NOT MERGE] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel

 .../display/bridge/chipone,icn6211.txt        |  78 ++++
 MAINTAINERS                                   |   6 +
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts  |  86 +++++
 drivers/gpu/drm/bridge/Kconfig                |  10 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/chipone-icn6211.c      | 344 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        |  67 +++-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |   1 +
 8 files changed, 575 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
 create mode 100644 drivers/gpu/drm/bridge/chipone-icn6211.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
