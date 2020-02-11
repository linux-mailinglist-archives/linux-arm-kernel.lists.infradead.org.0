Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1855158D48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 12:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C+oC1qHHvF+tEQG4nf5S+u73CSwP5M0LJBaP0vPkftU=; b=LWLlTZSW6e56JA
	+qoxo2eqYOME8DNOh6Owjea/X+kbASaAHBfjJtakiKUgQKRJCPUJUhMxwAtAmIiY57qPOGWy1tQSl
	GaFUIWegoqrw4e63PNMS9enTh6Waa7N7kPrJsUfYVMfVIcJHStmT2sG7AqOAo2rcOqg4EDDG6dOZ3
	NX8vsJ1k7JoFD4pffFcG9HnODEXU01qu0R418zR1ZDgH0MrmNRdwckhJ2qMeU/UhuU0z/JI7dH5bP
	6/hmxcooO8Q4jqCxd6P8WaWjsH+fuFbaN8XrEdLPsBV1kaad71DCbtZLT0UC13msCcLoyZHe9R0/4
	BvJn6kTmrmyuUwHnBGUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TSr-0007np-57; Tue, 11 Feb 2020 11:12:25 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TSj-0007mL-1T; Tue, 11 Feb 2020 11:12:18 +0000
Received: from droid10.amlogic.com (10.18.11.213) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Tue, 11 Feb 2020
 19:12:46 +0800
From: Hanjie Lin <hanjie.lin@amlogic.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>, Rob Herring
 <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kevin
 Hilman <khilman@baylibre.com>
Subject: [PATCH v8 0/3] arm64: meson: Add support for USB on Amlogic A1
Date: Tue, 11 Feb 2020 19:10:51 +0800
Message-ID: <1581419454-12667-1-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.18.11.213]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_031217_083677_598C0C86 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for USB on Amlogic A1 SoCs.

Because of my mistake I fogot to add PHY maintainer(Kishon) to mail list in
before versions, so I have to send this v8 version again(only with dwc3
bindings and driver patch removed).
Sorry for this again.

This patchset is composed with :
- bindings of the PHY
- bindings of the USB Control Glue(already accepted in v7)
- PHY Driver
- USB Control Glue driver(already accepted in v7)
- dts of the PHY and USB Controller

The Amlogic A1 USB Complex is composed of :
- 1 DWC3 USB controller for USB2 Host functionality
- 1 USB2 PHY for USB2 Host functionality

The USB Control Glue setups the clocks and the reset about DWC3 USB
controller, and binds to the USB2 PHY. It also configures the 8bit
UTMI interfaces for the USB2 PHY, including setting USB2 phy mode.

The USB2 PHY driver initializes the phy analog settings, phy PLL 
setup and phy tuning.

This patchset is based on A1 clock/power domain/reset series at [0].

Changes since v1:[1]
 - integrate glue and phy drivers into g12a's
 
Changes since v2:[2]
 - modify amlogic,meson-g12a-usb-ctrl.yaml with dt_binding_check tool
 - phy/glue driver use of_device_get_match_data to distinguish A1 from G12A

Changes since v3:[3]
 - fix bindings mistakes of the PHY according Rob's comments
 - fix bindings mistakes of the USB Control Glue according Rob's comments
 - phy driver add xtal_usb_phy clock which moved from glue driver
 - glue driver use otg_mode instead of soc_id to support otg function

Changes since v4:[4]
 - phy driver revert reset-names changes
 - phy driver change clock name to "xtal" to consistent with g12a
 - glue driver add drvdata otg_switch_supported

Changes since v5:[5]
 - integrate phy bindings into g12a
 - modify glue bindings format according to martin's advices
 - glue driver add dwc3_meson_g12a_otg_init() do otg related work
 - glue driver add clk_bulk_disable_unprepare() in remove

Changes since v6:[6]
 - fix glue bindings dt_check_bindings error.
 - squash phy and glue dts patches and set usb status to disabled default

Changes since v7:[7]
 - remove already accepted dwc3 bindings and driver patch.
 
[0]
https://patchwork.kernel.org/project/linux-amlogic/list/?series=185477
https://patchwork.kernel.org/project/linux-amlogic/list/?series=180055
https://patchwork.kernel.org/project/linux-amlogic/list/?series=189643

[1] : https://lore.kernel.org/linux-amlogic/1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com

[2] : https://lore.kernel.org/linux-amlogic/1576636944-196192-1-git-send-email-hanjie.lin@amlogic.com

[3] : https://lore.kernel.org/linux-amlogic/1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com

[4] : https://lore.kernel.org/linux-amlogic/1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com

[5] : https://lore.kernel.org/linux-amlogic/1578634957-54826-1-git-send-email-hanjie.lin@amlogic.com

[6] : https://lore.kernel.org/linux-amlogic/1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com

[7] : https://lore.kernel.org/linux-amlogic/1579489086-157767-1-git-send-email-hanjie.lin@amlogic.com

Hanjie Lin (3):
  dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
  phy: amlogic: Add Amlogic A1 USB2 PHY Driver
  arm64: dts: meson: a1: Enable USB2 PHY and DWC3 controller

 .../bindings/phy/amlogic,meson-g12a-usb2-phy.yaml  | 15 ++++
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi          | 43 +++++++++++
 drivers/phy/amlogic/phy-meson-g12a-usb2.c          | 85 +++++++++++++++-------
 3 files changed, 117 insertions(+), 26 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
