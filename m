Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15751FC2C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 02:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDYT5AsVfwsn8UA4r244ovjrB0EnokjyLtJZKTGcPXo=; b=uHRa5cM6txhZNj
	XG4Zz1JVE31fS0g//QYgcVQxBCUyE7GPFAPGwGmQQMTeDsgFCCwP5YM7YqUrTqCgSjUi4iS4BQ9MC
	qGmI+UPa/v3OkWKwBZqf/fS/uiK7Io/cRUVfOzFtKPye/bXhRB45ddrTvQMGQAbmtrpdoiBjawd4p
	/u6SoybT6QKJ2zrlXh2pMnACFX2i0b4/7d0hF8juqv80iKD8JXZ0tY5MqTdM9n/rt2LvgQyj9dkOM
	KjaxMKFmoqos2PoRSItTHCGm1Z9TDk0uZb2HiWiWXPw3pMeO3FIrV1vEB4b+Cu5thDKb5qbTVDGkb
	mJ6IJ+M82U0MfTBSeY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlM1E-0002Ia-Ck; Wed, 17 Jun 2020 00:33:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlM06-0001VW-HA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 00:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1592353933; bh=3DltW7Xjb/ItNKdpuNJ0j4SFSJbomVCA6l+130ne/oQ=;
 h=From:To:Cc:Subject:Date:From;
 b=TIuel8QmQBPWbMa5I/MdP4HRXX+hyBQg6/kjHEip4KK4sUL/lhZwT5ZgXEmPSFvJz
 OqkBVhXwxewBCdd2r/qzfnEnyGw3SAalvQsDNvjIkBXxMe3jC7BEHcjnIHMEFHvCh7
 NQcQPIbY8391ZxkBNH5B81PkUcuKGCex1xaO7fJs=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v4 0/5] Add support for PinePhone LCD panel
Date: Wed, 17 Jun 2020 02:32:04 +0200
Message-Id: <20200617003209.670819-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_173222_741633_C6A8CC81 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Luca Weiss <luca@z3ntu.xyz>, Martijn Braam <martijn@brixit.nl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the LCD panel of PinePhone.

The first 3 patches are for the panel itself, and the last 2 patches are
for enabling it on PinePhone.

I've tested this on PinePhone 1.0 and 1.2.

Please take a look.

thank you and regards,
  Ondrej Jirman

Changes in v4:
- use ->type from the mode instead of hardcoding (Samuel)
- move init_sequence to ->prepare (Samuel)
- move anti-flicker delay to ->enable, explain it (Samuel)
- add enter_sleep after display_off (Samuel)
- drop ->disable (move code to ->unprepare)
- add ID bytes dumping (Linus)
  (I can't test it since allwinner DSI driver has a broken
   dcs_read function, and I didn't manage to fix it.)
- document magic bytes (Linus)
- assert reset during powerup
- cleanup powerup timings according to the datasheet

Changes in v3:
- Panel driver renamed to the name of the LCD controller
- Re-organize the driver slightly to more easily support more panels
  based on the same controller.
- Add patch to enable the touchscreen to complete the LCD support
  on PinePhone.
- Dropped the "DSI fix" patch (the driver seems to work for me without it)
- Improved brightness levels handling:
  - PinePhone 1.0 uses default levels generated by the driver
  - On PinePhone 1.1 duty cycles < 20% lead to black screen, so
    default levels can't be used. Martijn Braam came up with a
    list of duty cycle values that lead to perception of linear
    brigtness level <-> light intensity on PinePhone 1.1
- There was some feedback on v2 about this being similar to st7701.
  It's only similar in name. Most of the "user commands" are different,
  so I opted to keep this in a new driver instead of creating st770x.
  
  Anyone who likes to check the differences, here are datasheets:

  - https://megous.com/dl/tmp/ST7703_DS_v01_20160128.pdf
  - https://megous.com/dl/tmp/ST7701.pdf

Changes in v2:
- DT Example fix.
- DT Format fix.
- Raised copyright info to 2020.
- Sort panel operation functions.
- Sort inclusion.


-- For phone owners: --

There's an open question on how to set the backlight brightness values
on post 1.0 revision phone, since lower duty cycles (< 10-20%) lead
to backlight being black. It would be nice if more people can test
the various backlight levels on 1.1 and 1.2 revision with this change
in dts:

       brightness-levels = <0 1000>;
       num-interpolated-steps = <1000>;

and report at what brightness level the backlight turns on. So far it
seems this has a wide range. Lowest useable duty cycle for me is ~7%
on 1.2 and for Martijn ~20% on 1.1.

Icenowy Zheng (4):
  dt-bindings: vendor-prefixes: Add Xingbangda
  dt-bindings: panel: Add binding for Xingbangda XBD599 panel
  drm: panel: Add Xingbangda XBD599 panel (ST7703 controller)
  arm64: dts: sun50i-a64-pinephone: Enable LCD support on PinePhone

Ondrej Jirman (1):
  arm64: dts: sun50i-a64-pinephone: Add touchscreen support

 .../display/panel/sitronix,st7703.yaml        |  63 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../allwinner/sun50i-a64-pinephone-1.1.dts    |  19 +
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   |  54 ++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 535 ++++++++++++++++++
 7 files changed, 684 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sitronix-st7703.c

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
