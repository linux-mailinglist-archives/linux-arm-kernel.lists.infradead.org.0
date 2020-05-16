Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F91D63EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 22:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ld64NzK61d7aPXpDGgMgML6wykJWZHuG5HoeN7CCNZs=; b=CrwtjgLWlnjlY9
	0vfjDtWDGvWbp6V20xb6/D7TgygbdaxX1RbjEiYmOQatLDU/Pz56JDXdSw4+RxFXQRiaN/AhRBY8u
	it0U+ApFNcpNzzjF6KrDdrRuhl4CuPgBXXUdJv11F7DzsxUY1RLAX9EMHmnkF90MMsUjOk4cA0A10
	V5Hx7jjCf5aIPhAB9rQYKtd/m/zH8NlkhLSNg1GX2CftXIwt0EysntUp5PylTOmrtRP6WhxeFivjd
	ThMNpnGJokyXRrWSa141LMw+fC/0j2S6XOZJMk7KHtvDRtSFP7ehhAl0f8kLK6YX5Hq3BxsbLonw0
	sfetGR9PYbJGPndI3m+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja3Cz-00071U-5U; Sat, 16 May 2020 20:14:57 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja3Cp-00070D-GG; Sat, 16 May 2020 20:14:48 +0000
Received: by mail-oi1-x22b.google.com with SMTP id x7so5530071oic.3;
 Sat, 16 May 2020 13:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:autocrypt:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=2GJoExEF/IiegzGjLufdN1ZbEbRPX7B5WFgo63D/gE8=;
 b=eXO2i2tFj1w/XAU/v+8LRvxcEQwga5Wda1A6X9yhtkr72iTGKtdBxkNpnXfPADW589
 CMSkAaweJRGln82goTEzIYXY1Jp0rx9uYAfahy5pcFbYffGYkEszesdvNhHW3+/LVC75
 SBFTCSPMFg9/8DuHS8w587YldvZZvyZJIzARHJf+bK+ouJ5V4S4UBcA3vLzxhCaPWeJl
 IcgJv17jv069Awj41EkuMv020YPyhXmYzOdLZ2/y5EMDp2tUP6uNISaLOldxOBZW1TPz
 oYb/DgVttO30nVjzDNsuAANP7ScdPn10+J98JBb9H2RVU2TjLQrwyCvmgA1WAw1wjLMC
 haiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:autocrypt:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=2GJoExEF/IiegzGjLufdN1ZbEbRPX7B5WFgo63D/gE8=;
 b=gCl4trE0SNPxBuBp4+c9r82PU77eaxBl9fnU4yR6PbEsmbTjdlaFonGO9FLJdi/nye
 L3urq0+Uf6JH3X3KWjkzfUEKXu4S4x45uGZiDXS2b/GIOo9a8qs5eIuhoezQyULWKp1Y
 uEU6vD+UHJhfPZzxa9teGMFHk0smgfvswDXg34Q9CFVphC+enwhKn5PXJjsPgsX9GWs8
 J69dWXzFF4iAOdtINNpMdhNO/EZ3sfB4jApxNju+Cw27QUb+PWZM4YyOxyOWleAd07a/
 dCiM2jwXAYA2X++Rf7rgzZ+i5anMxhQffvT8fRZN+IdWBryYFslqYll3pyzt2KORPljr
 u8Tw==
X-Gm-Message-State: AOAM5317oWoAOsCVJxzY2HswLkb+hYLNmZhGelfZk2rI9YEANJ946aUC
 HcQBnLQHcnbPbTE2wK2jeeg=
X-Google-Smtp-Source: ABdhPJwukAK+PyI0Yup4vC/BqLvdjj1C2w8g5yJK88HoNOmbGJORSmgqOhyKrUae29NSWctjx5Js7w==
X-Received: by 2002:aca:d496:: with SMTP id l144mr6499881oig.72.1589660082868; 
 Sat, 16 May 2020 13:14:42 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id w3sm1617112otg.24.2020.05.16.13.14.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 13:14:42 -0700 (PDT)
To: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Subject: [GIT PULL] soc: mediatek: updates for v5.8
Message-ID: <2cf27d33-59c6-023b-9993-57a2639824ea@gmail.com>
Date: Sat, 16 May 2020 22:14:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_131447_562080_068F1F9D 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Yongjun <weiyongjun1@huawei.com>,
 "matthias.bgg@kernel.org" <matthias.bgg@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,
Hi Olof,

Please have a look on the following SoC driver patches.
Highlight in this pull request is, that we got the mmsys mess cleaned up. In
MediaTek "mmsys" is IP block which holds multi-media devices and their
corresponding clocks muxes. In the past the clocks and multi-media system used
the same compatible (ouch) which broke graphics quite some time ago. After
several different approaches how to fix the mess, we now got a mmsys SoC driver
which is responsible for probing the clock and multi-media parts of the IP block.

This now allows us to have graphics support on the MT8173 based Chromebooks,
which is nice and will allow others developers who don't have a servo board to
debug the device and (hopefully) help to get the missing bits upstream.

The effort is not yet finished, but I hope for v5.9 we will see also graphics
support on the Bananapi-R2.

Regards,
Matthias

---

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
tags/v5.7-next-soc

for you to fetch changes up to 154910f886762a2817ddddad7fc6fed8c23b4ad1:

  ARM: mediatek: Replace <linux/clk-provider.h> by <linux/of_clk.h> (2020-05-15
17:19:41 +0200)

----------------------------------------------------------------
Refactor the mmsys to reflect that it's a clock driver and
the entry point for the DRM subsystem.

Replace clk-provider.h include with of_clk.h for mach-mediatek

----------------------------------------------------------------
Enric Balletbo i Serra (3):
      dt-bindings: mediatek: Update mmsys binding to reflect it is a system
controller
      soc / drm: mediatek: Move routing control to mmsys device
      soc / drm: mediatek: Fix mediatek-drm device probing

Geert Uytterhoeven (2):
      soc: mediatek: mmsys: Drop <linux/clk-provider.h>
      ARM: mediatek: Replace <linux/clk-provider.h> by <linux/of_clk.h>

Matthias Brugger (2):
      drm/mediatek: Omit warning on probe defers
      clk / soc: mediatek: Move mt8173 MMSYS to platform driver

Wei Yongjun (1):
      soc: mediatek: Missing platform_device_unregister() on error in
mtk_mmsys_probe()

 .../bindings/arm/mediatek/mediatek,mmsys.txt       |   7 +-
 arch/arm/mach-mediatek/mediatek.c                  |   2 +-
 drivers/clk/mediatek/Kconfig                       |   7 +
 drivers/clk/mediatek/Makefile                      |   1 +
 drivers/clk/mediatek/clk-mt8173-mm.c               | 146 +++++++++
 drivers/clk/mediatek/clk-mt8173.c                  | 104 -------
 drivers/gpu/drm/mediatek/Kconfig                   |   1 +
 drivers/gpu/drm/mediatek/mtk_disp_color.c          |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |   5 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c           |   5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |  12 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |  19 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c             | 259 +---------------
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h             |   7 -
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  45 +--
 drivers/gpu/drm/mediatek/mtk_drm_drv.h             |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |   4 +-
 drivers/soc/mediatek/Kconfig                       |   8 +
 drivers/soc/mediatek/Makefile                      |   1 +
 drivers/soc/mediatek/mtk-mmsys.c                   | 338 +++++++++++++++++++++
 include/linux/soc/mediatek/mtk-mmsys.h             |  20 ++
 22 files changed, 594 insertions(+), 412 deletions(-)
 create mode 100644 drivers/clk/mediatek/clk-mt8173-mm.c
 create mode 100644 drivers/soc/mediatek/mtk-mmsys.c
 create mode 100644 include/linux/soc/mediatek/mtk-mmsys.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
