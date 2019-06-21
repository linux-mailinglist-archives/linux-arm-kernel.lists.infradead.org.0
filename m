Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0BF4E665
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H30Qp3Z+m/jwkvcg/ogHoHOSwL4tPL1dFrwk16q3mzI=; b=Mh4vQFPagPaeR0
	jYl3UTG/420f7Wy2n54+E1DvdcgigIvbS4GZ13Zu/gWam8ymKrQFo/swtm1PpQhBI0E1HV1UN++AI
	O7Tn8r1WzGDGKm+DiYLyG3O4j2Nvo7/0wAL1RH/WvO2Gu1eG3Y7+P/LgEVcnj026+sLdAGCs1CC8E
	2yWAl2dSmEMJglsNLnOsDMN2pNnAS8gz13KlcgjHuEjl2KQTXpY55jBAgofGDF9MJNVYCMIyXVOcE
	3pVsjIOD+V5tlBm/JmaCiSz3691hzb/Rz6ApdH6DIZ422PKdzlOTpjwn4mv55nk6cJdDpdnheA6NN
	F21gTHo4jCOmL0HxfDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heH2g-0003Bm-W4; Fri, 21 Jun 2019 10:45:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heH2M-00033i-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561113891; bh=uF+1BlMGKRS6vtUXDE5TvLdvEqjdbvyP/y5+AuCPrdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ow7PxS52be3W7D+CLStx+GnsxjXGCQTI1iuSUM4RsdIJWfx2Wksiz1Cnlbol/TQnf
 0l7P19qDOVyz+44VF/o0q4TbwtyXww1V4VneGDWy5Uj9bzh5c0hpMrGskFUcj9TZ9P
 l7NFkU2RW73QR563UgLKHOamD9gE5HV9F+TY0g64=
Date: Fri, 21 Jun 2019 12:44:50 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [PATCH v7 0/6] Add support for Orange Pi 3
Message-ID: <20190621104450.vyemihcou5cjayju@core.my.home>
Mail-Followup-To: linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>,
 linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <20190620134748.17866-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620134748.17866-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_034455_154733_A3C26AB4 
X-CRM114-Status: GOOD (  25.61  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, David Airlie <airlied@linux.ie>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jose Abreu <joabreu@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 03:47:42PM +0200, verejna wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> This series implements support for Xunlong Orange Pi 3 board.
> 
> - ethernet support (patches 1-3)
> - HDMI support (patches 4-6)
> 
> For some people, ethernet doesn't work after reboot (but works on cold
> boot), when the stmmac driver is built into the kernel. It works when
> the driver is built as a module. It's either some timing issue, or power
> supply issue or a combination of both. Module build induces a power
> cycling of the phy.
> 
> I encourage people with this issue, to build the driver into the kernel,
> and try to alter the reset timings for the phy in DTS or
> startup-delay-us and report the findings.

Other theory to test is that the PHY requires two power supplies to be
enabled at the same time, and during reboot one of them (one controlled
via GPIO) may be turned off, and ALDO2 controlled by AXP805 may not.

It should be possible to turn off ALDO2 in u-boot via CONFIG_AXP_ALDO2_VOLT=0
(You may need to enable CONFIG_AXP809_POWER and other options too, since
it seems AXP805 support is not enabled for orange pi 3 in u-boot)

regards,
	o.

> 
> Please take a look.
> 
> thank you and regards,
>   Ondrej Jirman
> 
> 
> Changes in v7:
> - dropped stored reference to connector_pdev as suggested by Jernej
> - added forgotten dt-bindings reviewed-by tag
> 
> Changes in v6:
> - added dt-bindings reviewed-by tag
> - fix wording in stmmac commit (as suggested by Sergei)
> 
> Changes in v5:
> - dropped already applied patches (pinctrl patches, mmc1 pinconf patch)
> - rename GMAC-3V3 -> GMAC-3V to match the schematic (Jagan)
> - changed hdmi-connector's ddc-supply property to ddc-en-gpios
>   (Rob Herring)
> 
> Changes in v4:
> - fix checkpatch warnings/style issues
> - use enum in struct sunxi_desc_function for io_bias_cfg_variant
> - collected acked-by's
> - fix compile error in drivers/pinctrl/sunxi/pinctrl-sun9i-a80-r.c:156
>   caused by missing conversion from has_io_bias_cfg struct member
>   (I've kept the acked-by, because it's a trivial change, but feel free
>   to object.) (reported by Martin A. on github)
>   I did not have A80 pinctrl enabled for some reason, so I did not catch
>   this sooner.
> - dropped brcm firmware patch (was already applied)
> - dropped the wifi dts patch (will re-send after H6 RTC gets merged,
>   along with bluetooth support, in a separate series)
> 
> Changes in v3:
> - dropped already applied patches
> - changed pinctrl I/O bias selection constants to enum and renamed
> - added /omit-if-no-ref/ to mmc1_pins
> - made mmc1_pins default pinconf for mmc1 in H6 dtsi
> - move ddc-supply to HDMI connector node, updated patch descriptions,
>   changed dt-bindings docs
> 
> Changes in v2:
> - added dt-bindings documentation for the board's compatible string
>   (suggested by Clement)
> - addressed checkpatch warnings and code formatting issues (on Maxime's
>   suggestions)
> - stmmac: dropped useless parenthesis, reworded description of the patch
>   (suggested by Sergei)
> - drop useles dev_info() about the selected io bias voltage
> - docummented io voltage bias selection variant macros
> - wifi: marked WiFi DTS patch and realted mmc1_pins as "DO NOT MERGE",
>   because wifi depends on H6 RTC support that's not merged yet (suggested
>   by Clement)
> - added missing signed-of-bys
> - changed &usb2otg dr_mode to otg, and added a note about VBUS
> - improved wording of HDMI driver's DDC power supply patch
> 
> Icenowy Zheng (2):
>   net: stmmac: sun8i: add support for Allwinner H6 EMAC
>   net: stmmac: sun8i: force select external PHY when no internal one
> 
> Ondrej Jirman (4):
>   arm64: dts: allwinner: orange-pi-3: Enable ethernet
>   dt-bindings: display: hdmi-connector: Support DDC bus enable
>   drm: sun4i: Add support for enabling DDC I2C bus to sun8i_dw_hdmi glue
>   arm64: dts: allwinner: orange-pi-3: Enable HDMI output
> 
>  .../display/connector/hdmi-connector.txt      |  1 +
>  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 70 +++++++++++++++++++
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c         | 54 ++++++++++++--
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h         |  2 +
>  .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 21 ++++++
>  5 files changed, 144 insertions(+), 4 deletions(-)
> 
> -- 
> 2.22.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
