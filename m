Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF601D20F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fh3YnaQUhfvs3Yg4wha5nfGe1UZ9ajV7grlrwdY+5Fk=; b=eZ3JrwOfYq86vm
	ZNCnmrJfEBjmcQA8CUXB84mVkSjAKu/3H2MJ1CWkFriiZgJ2VQXKH5k3L7rivNH8oHCeZFHNWxroQ
	2ELeVXZKYFkcSEYqOt75vs68aVRta+MFDIYxcH3iLJiwqqBVKP/BOcTvoGgjdn8IbNk7W+OBl6OCO
	TcSxjKIA9cxOVfhacQ2yX/VUYh2K1Z3p4q2fovqHCkf8T+agnwFv0ThOGDH36hvsgc7L28VG2Mbz7
	cDCP+JbDaeqbrHajCowtSMapUamF9m5R/6PQwMip3GXRfW3y4+CZzzQhN6ROicMKiJjq6ulD+Xh3U
	oL45FQekRzQURcN6eA0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYysf-0007y8-7D; Wed, 13 May 2020 21:25:33 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYys6-0005L6-6R
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589405095; bh=vP1dm4GPwt9nOrSXUHYZrlnzV+QSD/t/nvTNldUmjRI=;
 h=From:To:Cc:Subject:Date:From;
 b=AGAtow/+Ns2CtpuJASys9AiJwXRyXtcsBjbwnwXu4bag20du1XxyFuFHDrpYchGlo
 NiC7NU6/u9eN7M+v2qu6Bz1jd4pU4R44lCUgURa6vC8Vuzo0KD7k4xgwHXncLQOgGX
 t4b4TbkM6HRmS9Jm72MKnKTw/OkLwGm9ILrmaHrE=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v3 0/5] Add support for PinePhone LCD panel
Date: Wed, 13 May 2020 23:24:46 +0200
Message-Id: <20200513212451.1919013-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142458_576255_99278295 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 .../dts/allwinner/sun50i-a64-pinephone.dtsi   |  54 +++
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 386 ++++++++++++++++++
 7 files changed, 535 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7703.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sitronix-st7703.c

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
