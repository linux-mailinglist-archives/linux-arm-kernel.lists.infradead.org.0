Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86B21D760F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tYgTRli5+o09mMcfb3cw+iLUASq1woS3gqIo98wiosw=; b=UZv
	F2y3/q+8V432Wm2ivGzQSrAAgv9m/PSWxiC0vZFRlxgwZec92zQTrumyHFGk6Pe6RjspBiLKzPrwa
	k3ZKawItWQWrv9b4FRYHCP69GejbotrfUpBcyvOp5NipoyjskWKzlaquWTiq91XRFMRi9gwQI7lBc
	/fWC+VSRMpjkxnu4GKrB9vDUrQ7bdqf79hVGpZZsPVj4GI6KLk1QPcqhkNmFF5QvBHYC4LYbf8JbL
	kWxiqZXBJBPA9UIjPf+gU9LaBw5pO7m81v/6LYjlxSpDB3aoQWGXcMauxoysJN4M9nHjjhn8ct5vA
	bf/MGm5/G6sCxiiGJwdW0zOdx1a29RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadeR-0006SB-Gf; Mon, 18 May 2020 11:09:43 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadeJ-0006RG-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:09:36 +0000
Received: by mail-pl1-x62f.google.com with SMTP id t7so4105149plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3zI5HGtvH1cCa06adBLKkRdZTB7qi9iI++h4rVGXoVQ=;
 b=HJY3neypi3+TIsjpyuiDC8hy4/upfiEWcq40/l0Lp9xQGeWVb0iYXXUoiV32a0UfOx
 lu5BLDGjNCw2X/o1YuMG4LS/EfeA2LOjChMyzJnIU0Hfrc4LNCibrT8JnOzEw43O+rVW
 StEU40F1Uk5X9eHlZec6AFvK4eBTxzH7PzPqPJEHpvrLOkKazHs49FgrO8SxREjbBEOp
 YqXWF7Ys0rR4twTJqIsEddUR3FiPqAxHk1P+Kxigo2oMm7v7/0OtHxaRUTpN3GFz2HzB
 lIwoNbmDFav/7RevcdwGKQ2mbFRtM8pn6AARVoPJAXb3pud0ltZ2LVv1mShqbzv8IwFo
 DaXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3zI5HGtvH1cCa06adBLKkRdZTB7qi9iI++h4rVGXoVQ=;
 b=ePmEG56Ma19CALhoQQTBoghUgE6iuxQJiU41x2yVcQEtRWAFccKDqJR71928xNJoYI
 8IOLIw50d5qffuPJ0Tf80GT6hdyBby1y+uoj0fpYQ3XHdv3H41wLq5pYvu+xCZREyKyC
 9BZHjTo4eKzsmEWnX5pnRAOlbOgplOlIsMQVgtuavi8NyUuTf0qFQVgX+PseEFIWpejG
 9A1+sGNs+jXIIWVp2tT1InJcKxTcc19Is7oKUM2K5/8omXrxfbbAyL6sya6YbaeXrEDx
 cOSk33KObBaPjRX3noSXMnK/qb7bPoPkmOwzBTlkR7WIQVSdcDGi3hs/v0lhGlNwJSF4
 1fxA==
X-Gm-Message-State: AOAM531C3VKMR4UQQoq+P2Xc2XSEs6lQD824fdH2ecWT4Zk9QBzpTjUx
 R0ZxxtJTExm5bOqlOaNUrPM=
X-Google-Smtp-Source: ABdhPJwsakR+sWqcKZA6S7nkXZrnKWW5pNyRPRmYvzj0mHY2ZT391adIsBf9mDJWpeyUO1sOeAJMOw==
X-Received: by 2002:a17:902:cb09:: with SMTP id
 c9mr4315966ply.95.1589800172767; 
 Mon, 18 May 2020 04:09:32 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.09.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:09:32 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 0/8] Enable ili9341 and l3gd20 on stm32f429-disco
Date: Mon, 18 May 2020 19:09:17 +0800
Message-Id: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040935_541167_66175397 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

According to alexandre torgue's suggestion, combine ili9341 and
l3gd20's modification on stm32f429-disco board to one patchset.

Changes:

ili9341:

V4:
1 update ili9341 panel driver according to Linus's suggestion
2 drop V1's No.5 patch, sumbit new changes for clk-stm32f4
3 merge l3gd20's change to this patchset

V3:
1 merge original tiny/ili9341.c driver to panel/panel-ilitek-ili9341.c
  to support serial spi & parallel rgb interface in one driver.
2 update ilitek,ili9341.yaml dts binding documentation.
3 update stm32f429-disco dts binding

V2:
1 verify ilitek,ili9341.yaml with make O=../linux-stm32
   dt_binding_check
   DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/
   ilitek,ili9341.yaml

V1:
1 add ili9341 drm panel driver
2 add ltdc, spi5 controller for stm32f429-disco
3 add ltdc, spi5 pin map for stm32f429-disco
4 add docs about ili9341
5 fix ltdc driver loading hang in clk set rate bug


L3gd20:

V3:
1, merge stm32f429-disco dtbs binding with ili9341 part

V2:
1, insert blank line at stm32f420-disco.dts line 143
2, add more description for l3gd20 in commit message

V1:
1, enable spi5 controller on stm32f429-disco (dts)
2, add spi5 pinmap for stm32f429-disco  (dts)
3, add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4

dillon min (8):
  ARM: dts: stm32: Add dma config for spi5
  ARM: dts: stm32: enable l3gd20 on stm32429-disco board
  spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX' support for stm32f4
  ARM: dts: stm32: Add pin map for ltdc on stm32f429-disco board
  dt-bindings: display: panel: Add ilitek ili9341 panel bindings
  ARM: dts: stm32: enable ltdc binding with ili9341 on stm32429-disco
    board
  clk: stm32: Fix stm32f429's ltdc driver hang in set clock rate.
  drm/panel: Add ilitek ili9341 panel driver

 .../bindings/display/panel/ilitek,ili9341.yaml     |   69 ++
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi             |   67 +
 arch/arm/boot/dts/stm32f429-disco.dts              |   48 +
 arch/arm/boot/dts/stm32f429.dtsi                   |    3 +
 drivers/clk/clk-stm32f4.c                          |    7 +-
 drivers/gpu/drm/panel/Kconfig                      |   12 +
 drivers/gpu/drm/panel/Makefile                     |    1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c       | 1301 ++++++++++++++++++++
 drivers/spi/spi-stm32.c                            |   30 +-
 9 files changed, 1530 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
