Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A560C44B36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z/ajcw58Bcu8GYyOzBe2QSyTv9RUHoDYhffFGOP8imI=; b=FlC9HLxxoiFTXI
	8LiKLd/3muGMhkWEO1Bk27BefaF0ktjV1h0rKTJTeI4efFbcuEqmqriLFJ7gJOCAQyAIKDrj7m7Ud
	YwR+maqJqjTGPkWPckcGtcJEvvb4TV72LyaK5rXSXq/9uFtKy1WSbuf44STCegA5U1n2ESHqiyTKr
	/+LHFyTdcdKKkBQ7xdw2RChbBUjJoESTK2BCB73lUltiiYXJsizjf2+yDgG+wvt22H1qXoYkfRs3/
	wzwDjiCgDA/sXuQ+C8KmItsJfipIQ/iwXiOk7Ga9P0bOfBvXpa0R78iiL96E79A1cyYkcyyUelW3T
	QZZPPz1d2aBSCJAQu1ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUrI-0005ZF-2j; Thu, 13 Jun 2019 18:54:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUr5-0005Yh-AD
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:53:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id f97so8540197plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F8d7m1DDnqH/bUU0S136tJmuahNrjwjbhZ2wXcmIkdw=;
 b=XYnYivhjrL8PvMkvcXOzIdoB8lf1mxtbUYycZaEG3qDzZOBTZW8NEM4v6Fq3KNpMR1
 V9M4+v2ssLCBbmr5ZhabNGscBCasuvkwnhUqZ54hKPn1YDbi6BS99GW/25z7RJoSLomS
 zMZ0+g/bDTm+xsqCnr1Clt8/yhkTCEp0Kf8g8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F8d7m1DDnqH/bUU0S136tJmuahNrjwjbhZ2wXcmIkdw=;
 b=t4/8JmIc5G8rsRyByzrGyHyIrtFT342S2cNJDHxILmDFxqu/FFLICDiFjbm3BA1qN8
 NI87v/mf+zEogJbSoQw3JkGN1rchFm3ht5K6mkYg1YLOrLbYOeL8E/jwhtLbrCap+diQ
 pX6awW8PdzbLDx7Q4UUufVkyyDkJwp29h5pcxXGiRDBX7ddrXVe4r1eBckBgHYNEYyHd
 IHzv05y8jrYAcwaI6dEasAhlXFS8175wsaUHPK+PN9NRi1QFay1T9TT0Od/T82xS9JzZ
 GtnO6cPzL1D/+JLi/Fb+vqcAx/HTMx+5HjjsSdkA7ONYqbZyp2CGtZpbNyJDKVUPKUEI
 MAKg==
X-Gm-Message-State: APjAAAXSVD+yX1dP+N8kBDt9WfNL05IUVlAUhOZZU/9OqhxjFI7Oi+rF
 4F7lybAhpsSCfHp/GnSqFAkKNg==
X-Google-Smtp-Source: APXvYqxKp7XuhbcSPIGuqB4Br4J+FEyezdRc8LcQCzcSqRvzjXK5pGpx+EH6W3hDqkSMxv54g7UEGQ==
X-Received: by 2002:a17:902:a5c5:: with SMTP id
 t5mr90864681plq.288.1560452026080; 
 Thu, 13 Jun 2019 11:53:46 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:53:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 0/9] drm/sun4i: Allwinner R40 MIPI-DSI support
Date: Fri, 14 Jun 2019 00:22:32 +0530
Message-Id: <20190613185241.22800-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115347_828651_3659F8FD 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is initial version for supporting MIPI-DSI on Allwinner R40.

The controller look similar like, Allwinnwe A64 so it has
dependencies with A64 MIPI DSI changes, DSI fixes and R40 pwm 
driver [1] [2] [3] 

PLL-MIPI, dclk divders logic bpp/lanes are properly work for R40,
like A31, A64.

patch 1, 2: TCON LCD support

patch 3, 4: Use clock index macros instead of numbers

patch 5: Add tcon top lcd clocking

patch 6, 7: Add dt-bindings for r40 dsi, dphy

patch 8: Add R40 MIPI DSI pipeline

patch 9: Overlay patch to test it on BPI-M2U

[1] https://patchwork.freedesktop.org/series/61310/
[2] https://patchwork.freedesktop.org/series/60847/ 
[3] https://lore.kernel.org/patchwork/cover/862766/ 

Jagan Teki (9):
  dt-bindings: display: Add TCON LCD compatible for R40
  drm/sun4i: tcon: Add TCON LCD support for R40
  ARM: dts: sun8i: r40: Use tcon top clock index macros
  drm/sun4i: tcon_top: Use clock name index macros
  ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
  dt-bindings: sun6i-dsi: Add R40 MIPI-DSI compatible (w/ A64 fallback)
  dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/ A31 fallback)
  ARM: dts: sun8i: r40: Add MIPI DSI pipeline
  [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable Bananapi S070WV20-CT16 DSI panel

 .../bindings/display/sunxi/sun4i-drm.txt      |  1 +
 .../bindings/display/sunxi/sun6i-dsi.txt      |  2 +
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 36 ++++++++
 arch/arm/boot/dts/sun8i-r40.dtsi              | 84 +++++++++++++++++--
 drivers/gpu/drm/sun4i/sun4i_tcon.c            |  7 ++
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c        | 13 +--
 include/dt-bindings/clock/sun8i-tcon-top.h    |  2 +-
 7 files changed, 134 insertions(+), 11 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
