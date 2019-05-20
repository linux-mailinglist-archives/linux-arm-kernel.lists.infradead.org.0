Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD25F23B9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=twqEYzht4n2DMy4x9HZDt+VEBsIAn6WaJ0gvCzMoxG8=; b=sywHw769EDkUQt
	dKNDIHUcSDVvVc6eHS103S08mSVHRDT2Xfebrlbvg7mYAEeQy7+Qwf9spaiBGGM7zwg+oA6oTnkAp
	Tlivbl87NwLPsMGm/hbZpLzeqmfGs1Dw+EQxChMb9XI6usdr2Pymp0EbnfcbsbIjuYY84jerSB6T1
	+VukiQ4O76FQVtL0LHk9rxM4J1upRyYFTjLm1Vd4RVozpa0TqY8hVif+l1MTckixAycyNCgfxDU88
	1VOcxG/Aa5/0HkivXafOSAp6PY6ceM3hTM0cw+CJvrSt6vonQFq6HfZrjsPqKzFAiDcgXyERzUOHk
	/qCCUNQh2VNK+Cj97PiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjsY-0003xZ-C7; Mon, 20 May 2019 15:07:06 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjsB-0003bQ-Lk
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558364799; bh=MOIiLhQ+IjpqYl5yHzKvxPsRQBzGIbHz8ojgz49ajzM=;
 h=From:To:Cc:Subject:Date:From;
 b=c739CFNQlY0oMPgSRJ6Gd+ppWrHcU9ifdJ48imf5TZ4akgkyrfOflPcrue9VhteFO
 ZqNzzuIzVhoyOMOguR3sQcwhxTpxHpUWAU9zheMWLMTve+3VME2HcaUJlM5wcyUB0i
 NIGfuNVaPkXChDZBBhR7Hb/fH1VvUxQKeMrRAS/E=
From: megous@megous.com
To: Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 0/3] ARM: sun8i: a83t: Support Camera Sensor Interface
 controller
Date: Mon, 20 May 2019 17:06:34 +0200
Message-Id: <20190520150637.23557-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_080643_872869_4C7F497C 
X-CRM114-Status: GOOD (  11.10  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This is a re-send of Chen-Yu's A83T CSI patch series with review tags
applied and removed address/size cells from csi_in port. Already applied
patches from v1  were dropped.

The series is ready to be merged:

  Patch 1 and 2 via sunxi tree
  Patch 3 via media tree

v2:
- dropped address/size cells from csi_in port
- added review tags

Please take a look and merge.

Thank you,
	Ondrej

--------------------------
Original description:

Hi everyone,

This series adds support for the camera sensor interface controller
found on the Allwinner A83T SoC. The controller is similar to the one
found on  the H3, with the addition of a MIPI CSI-2 interface. However,
this series only supports parallel and BT.656 interfaces, based on the
existing driver.

Patch 1 adds an undocumented clock parent of the CSI MCLK. This was
found after finding the default value to sometimes work and sometimes
not, and then comparing against BSP code.

Patch 2 adds a compatible string for the A83T variant.

Patch 3 adds support for the A83T variant to the existing sun6i-csi
driver.

Patch 4 adds a device node for the controller, as well as commonly
used pin muxing options.

Patch 5 adds a pin muxing option for I2C1 on the PE pins, used in
conjunction with the CSI pins.

Patch 6 provides an example usage of the CSI controller: the Bananapi M3
with its camera module attached.

Please have a look.

Regards
ChenYu

Chen-Yu Tsai (3):
  dt-bindings: media: sun6i-csi: Add compatible string for A83T variant
  media: sun6i: Support A83T variant
  ARM: dts: sun8i: a83t: Add device node for CSI (Camera Sensor
    Interface)

 .../devicetree/bindings/media/sun6i-csi.txt   |  1 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             | 29 +++++++++++++++++++
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      |  1 +
 3 files changed, 31 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
