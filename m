Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6DF1DD99C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 23:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:From:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0+kTF3WU37xQlETaD6EVd5VKNPCw3XBlfa0Ixzsr5Ds=; b=FcP
	pYMP9sr9FCfVrJ9GaSnhnioH4ForGFmhswomW0ol93kyMWeJ0cu9VILwUkP5LSuPYK8/UNEdVqhKB
	7GGbDAd81XvMZrnNVaH5U5N0Mv/9bS+2I1wmqheo+0AOLdjQ+TpuDrEYBwmsrGPRN8gvEXXoliZiw
	8QdcpO3FJu+D0uuTxAbnTE0SuhnAER0UF60JuQsLlUEhqEJr/LsbACoB33wvbnHoFTbp/8r4VniTk
	falWHwIlBeJ9zqwo5+SiQxRQCYdXL8M1R1v/vPjTi6Yorw9JEix7evyvkO4RwUezg83k4UJ1G4w3a
	fzEO3W1e+ur2tUN61uYJ9e1SIbtfD4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbswE-0000VU-Kv; Thu, 21 May 2020 21:41:14 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbsvz-0000Uj-Hq
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 21:41:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q9so3966653pjm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 14:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:from:to:cc:subject;
 bh=bOnJIOvUnam8H8BRh+PPzqUBnIwH9OjIYX8gklAA7MA=;
 b=VtcOVpiaTKaSRMPiIvMpjFH5c/Yj1ScoGCCWt6eLy6ftei9KVbTahGq77YAu26YwZd
 OyrOYXdE4IbgGS+R12EMTUelN/8TZoUHKFYMw6s0jOuAZsGxHSek+j7YywdD6p3zi/JG
 S5Nh7sPIphMOX9VRjXUh07NnSPrZ9ljHhHOVbsbu/2fauoCBzynEseSVn/AY/Xyv7XBE
 2KzX2JHyjNA6HsDu5Aw714IXbLtoGmC39K895NbtWi5sLQTSc0fefQP1ayDQVUiaJGJC
 osfFbp8UeoSpS1TFge5q588bC2U57+2eoJUM6KUdrJOlg7Gxh5qtkVLsYUoAs9NM50Xz
 iugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject;
 bh=bOnJIOvUnam8H8BRh+PPzqUBnIwH9OjIYX8gklAA7MA=;
 b=JgldQ7fdcfGkDMtoC2+fsWNNwecXiq/x/UReRF9bph+JdS4BYsfc3l4dlWiWKZlfMS
 pteySGYq4wJ+TKlFLPmX7WVuBgelYS+0ixr9ydUAHWaQJL+gEJ9ap902Rrm3sWApLNbL
 orsobrZAs4CgBN8Osr9VM7ewGh0rXa2ArhOn56DmM3csS8HWYVC4hWeFYsfT8OysCP9j
 xBLCRMjIS11ouV2DniDljY7EFf0BmHCI0+gGcG47YmwHfmiEYdp+s8UNEKtxuvEoVkdE
 zTfKl6L8kvaKkd1pj16q7b/sl8mGkieSQ6h499DUDF76Q/gfBkH16gVPHNcMo1eXGKo6
 SOJA==
X-Gm-Message-State: AOAM531NOMkW+IEis1LBRqgqCwPQZqvMsFoGA18z+SmvsswlHGYCmYeb
 3QENGoHSQv7QMAXod7kLl+jMExku94jt9g==
X-Google-Smtp-Source: ABdhPJxbiEs9iDKVrb4/Et0X0Y1f+kmkdeweONoQyMC8ppzsLf4sCbmvGRgjGAqNXuF5m/OLumbYGQ==
X-Received: by 2002:a17:90a:d3ce:: with SMTP id
 d14mr638042pjw.46.1590097258837; 
 Thu, 21 May 2020 14:40:58 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id gd1sm5253935pjb.14.2020.05.21.14.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 14:40:58 -0700 (PDT)
Message-ID: <5ec6f56a.1c69fb81.fc5d5.9ca6@mx.google.com>
Date: Thu, 21 May 2020 14:40:57 -0700
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL 3/4] arm64: dts: Amlogic updates for v5.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_144059_593992_D996EC19 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Note this PR has a dependency a stable branch from the reset tree
(already queued for v5.8) which used by some new audio devices added this
cycle.

Kevin

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt64

for you to fetch changes up to 0b928e4e412b1eb9e79e02cf3580b9254d338aae:

  arm64: dts: meson-g12b-gtking-pro: add initial device-tree (2020-05-20 14:43:48 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic updates for v5.8

Highlights:
- new boards :Beelink GT-King Pro (G12B SoC), Smartlabs SML-5442TW
  (S905D), Hardkernel ODROID-C4 (SM1)
- audio: support for GX-family SoCs
- audio: internal DAC support
- use the new USB control driver for GXL and GXM

----------------------------------------------------------------
Christian Hewitt (9):
      dt-bindings: add vendor prefix for Smartlabs LLC
      dt-bindings: arm: amlogic: add support for the Smartlabs SML-5442TW
      arm64: dts: meson: add support for the Smartlabs SML-5442TW
      arm64: dts: meson: add ethernet interrupt to wetek dtsi
      arm64: dts: meson: convert ugoos-am6 to common w400 dtsi
      dt-bindings: arm: amlogic: add support for the Beelink GT-King
      arm64: dts: meson-g12b-gtking: add initial device-tree
      dt-bindings: arm: amlogic: add support for the Beelink GT-King Pro
      arm64: dts: meson-g12b-gtking-pro: add initial device-tree

Dongjin Kim (1):
      arm64: dts: meson-sm1: add support for Hardkernel ODROID-C4

Jerome Brunet (14):
      arm64: dts: meson: kvim3: move hdmi to tdm a
      dt-bindings: reset: meson: add gxl internal dac reset
      arm64: dts: meson-gx: add aiu support
      arm64: dts: meson: p230-q200: add initial audio playback support
      arm64: dts: meson: libretech-cc: add initial audio playback support
      arm64: dts: meson: libretech-ac: add initial audio playback support
      arm64: dts: meson: libretech-pc: add initial audio playback support
      arm64: dts: meson: gxl: add acodec support
      arm64: dts: meson: p230-q200: add internal DAC support
      arm64: dts: meson: libretech-cc: add internal DAC support
      arm64: dts: meson: libretech-ac: add internal DAC support
      arm64: dts: meson: libretech-pc: add internal DAC support
      arm64: dts: meson: g12: add internal DAC
      arm64: dts: meson: g12: add internal DAC glue

Kevin Hilman (1):
      Merge branch 'reset/meson-gxl-dac' of git://git.pengutronix.de/pza/linux into HEAD

Martin Blumenstingl (1):
      arm64: dts: amlogic: use the new USB control driver for GXL and GXM

Neil Armstrong (7):
      arm64: dts: meson: fixup SCP sram nodes
      arm64: dts: meson-g12b-ugoos-am6: fix board compatible
      arm64: dts: meson-gxbb-kii-pro: fix board compatible
      arm64: dts: meson: fix leds subnodes name
      arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
      arm64: dts: meson-sm1: add cpu thermal nodes
      dt-bindings: arm: amlogic: add odroid-c4 bindings

Tim Lewis (1):
      arm64: dts: meson: S922X: extend cpu opp-points

 Documentation/devicetree/bindings/arm/amlogic.yaml           |   4 +
 Documentation/devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile                         |   4 +
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                   |   6 +-
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi            |  11 +++
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi                   |  32 ++-----
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts        | 125 +++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts            | 145 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi      |  18 ++--
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi            |  15 +++
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts         | 377 +-------------------------------------------------------------------------
 arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi             | 423 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi                  |  22 +++++
 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi       |  78 +++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi          |  98 +++++++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                    |  23 ++++-
 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts           |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts         |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts       |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts          |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi         |   2 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts       |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi            |   6 +-
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi                  |  23 +++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts |  73 ++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts         |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-phicomm-n1.dts   |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts    |  80 ++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905w-p281.dts         |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts     |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts   |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts |  77 +++++++++++++++-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-nexbox-a95x.dts  |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi        |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi                   |  79 ++++++++++++----
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts        |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts          |   3 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts           |   4 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts           |   4 +
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi                   |   7 +-
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi           |   4 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts          | 402 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts             |   2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi                   |  24 +++++
 include/dt-bindings/reset/amlogic,meson-gxbb-reset.h         |   2 +-
 45 files changed, 1751 insertions(+), 464 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-odroid-c4.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
