Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1530E65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiAYeyuPzR8GWlr0uRakTLvrrAXrRaeKBiAH90xhZ5U=; b=MlnRlIX/hbB05H
	M2vBUwbn9T5xxAm0RefGNfhuTetvUQkahSj10wxNBc8E4rYwioXOej1REZ850nM8yzZ7dNe0izez4
	lFvxqgpnpj9qMrlZzYvBd6l5by4sBE1fv2VfObwYS99QHrM+sfEa27I4hpIk2Hbe+r6p4Ml2usoZG
	UvzeJOD/axQabM1fo2kpIbhhsT8szKtiqfg3D0NTTG2eHehYtw0uI2hLszIujiumiiwaPWcxQxz+M
	JhqsbMy4CcrJWLKMy8LjoN+5g3/ONdkIdf1HSkYZ/f5GM0PN68/pDNcnhNn7jsYgzYTnFoxPz4WfE
	bpsSJSsVpLSZKYBfj4Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWh1k-00033M-Gn; Fri, 31 May 2019 12:52:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWh1c-00032z-Fl
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559307166; bh=MzehFNsFWdso1PSBBodWcbOt17a6y4Bkl/7J5D4dJxM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=leYfL1GkTc5tv9YKMObM7uLJimTV/Lul6pc3RcPczj3teChDoKop0mFuU351oqMgM
 8FTjFxDA7C8NJxiGTq3mCeQzPIER768n+7wsbWh+70JBKQDFL8GgEJ1mk/bbd/TGmS
 ZsCfcxmw2MvaElHxsYGQsGdUOu9QFnNuk9M3UMbs=
Date: Fri, 31 May 2019 14:52:46 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [linux-sunxi] [PATCH v6 0/6] Add support for Orange Pi 3
Message-ID: <20190531125246.qqfvmgmw2mv442tq@core.my.home>
Mail-Followup-To: linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190527162237.18495-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527162237.18495-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_055248_869055_5A8048D7 
X-CRM114-Status: GOOD (  28.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Mon, May 27, 2019 at 06:22:31PM +0200, megous via linux-sunxi wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> This series implements support for Xunlong Orange Pi 3 board.
> 
> Unfortunately, this board needs some small driver patches, so I have
> split the boards DT patch into chunks that require patches for drivers
> in various subsystems.
> 
> Suggested merging plan/dependencies:
> 
> - stmmac patches are needed for ethernet support (patches 1-3)
>   - these should be ready now
> - HDMI support (patches 4-6)
>   - should be ready

If there are no futher comments, can all these patches please be merged?

thank you and kind regards,
	Ondrej

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
> Changes in v3:
> - dropped already applied patches
> - changed pinctrl I/O bias selection constants to enum and renamed
> - added /omit-if-no-ref/ to mmc1_pins
> - made mmc1_pins default pinconf for mmc1 in H6 dtsi
> - move ddc-supply to HDMI connector node, updated patch descriptions,
>   changed dt-bindings docs
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
> Changes in v5:
> - dropped already applied patches (pinctrl patches, mmc1 pinconf patch)
> - rename GMAC-3V3 -> GMAC-3V to match the schematic (Jagan)
> - changed hdmi-connector's ddc-supply property to ddc-en-gpios
>   (Rob Herring)
> 
> Changes in v6:
> - added dt-bindings reviewed-by tag
> - fix wording in stmmac commit (as suggested by Sergei)
> 
> Please take a look.
> 
> thank you and regards,
>   Ondrej Jirman
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
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c         | 55 ++++++++++++++-
>  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h         |  3 +
>  .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 21 ++++++
>  5 files changed, 147 insertions(+), 3 deletions(-)
> 
> -- 
> 2.21.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190527162237.18495-1-megous%40megous.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
