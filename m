Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DD4160AB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yKoRINFmTCEaPuuxPdsB2OL/QGGxR4fsyRz13zYiG8w=; b=LGW5/KbdtutELN
	fSHQEJOQrkmUc8viqRGc3gMpknBrrkhZYH5uRhnQrB1IU74H368VkTdN4zzlctE3qqdX/d/7Ks5DA
	DjU+dBj1gx/l4wLq323nouHew8CAwU0jMU3Ye528eT0EOKgfAQFvaHkmmhbEsG5alCxed8kgzr4kB
	PoV/mkkNT8gb5z8yzhU9HWUPpJJPojk0ehpKVFRBJGlUPhVf0FCkNSqXTNcQxqi4oU0LlN2Cq3UMY
	ijnc+hzCPh2xeORyB3MguBy12kGG+tgY864Jf1CSFCNKUr3k2QSg5hk+eSyMc1D/GQKcZb89CW4kl
	eqxGvMJV+17ZZVB1aEdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a87-000443-JE; Mon, 17 Feb 2020 06:43:43 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7J-0003ex-MN
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:55 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 492845227;
 Mon, 17 Feb 2020 01:42:52 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=zSdco/OlhEmu6V+GTJlxM8pk6k
 LCbTTBFJQJg1vPYes=; b=G+D1jRIS6vghi4BstN+rLaADjJEMTHCp6fCuh1M7v5
 xp0n7gMLHIvlbmmcK5qTkgwWnYP19W8txeHFA2/CBiMNLXqHRNLzUUQCKOusERSP
 hzL5A8tn4z9adkyhmfsxlRKOMYsNdprnvftI7JnNRVdG8emKZ8GWk3Q7vtcrhT0d
 GQM8Cuo2IO9f6TDfPIAcXQ6SxhyzEq7PpfdUrpl4gWJBIMR8tVy1u5IZZZFdVswG
 e/fZx/GCmSCpmiSv+UzMfbyAKcRlXI2A5eOEPuDcSMiJJZ8RjrCxGjb+Z+7bOutX
 8ANZ6T2xvNodWCorfSz/w877j7j+2oyxGnvKFF+qjLOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zSdco/OlhEmu6V+GT
 JlxM8pk6kLCbTTBFJQJg1vPYes=; b=VVEljL7Qttz83QjtzIb78dchsCVP+3iiq
 mrQrdn2Wp5FTnyKu7ZmcYGqs+cOB357RegatmWCZw0DMLuYpzQQZiCi6BCxIm+zg
 xzDmhCOdTKUfnV/KTpx5Tdzzadqit1aSyXCiPkKVnYoTOce7/OdMTvkkG8PKjpfq
 ddvrJbyGnqrpSKeXcrrM4CQaD4psU69ZO9FdogfLp05+xPyH168c7cavefKU8Cjr
 oJFqYtKS4U7t+zgrN8OylzK+ay2YFYJQxezgVR3ZkFPoVwoLW/omAWbZY6Mh+JSh
 Ph6TW91ZknD2WeOIHctOZPy1PrCDtdb1D0e8/nc13ZxcXHk/TVm0Q==
X-ME-Sender: <xms:6zVKXvDuwajBBXLayMP6rG3SAxrYn5LDZ13aGwqWVjxZt-hHAhK0rw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6zVKXrnrOMGEitV3Mp0cgd0vLlrdK1vQDr5LZu6jLvf8nNpxnMVSoA>
 <xmx:6zVKXt30GaZomQc0oEUCOr6_5sOT-7pkk5EZcCYM_ebqtvAritnx-Q>
 <xmx:6zVKXp5nbpyUWIQ3ylMO-s8t07akaXOPrMBtmktqQIqMxOdBSx5Wug>
 <xmx:7DVKXqlBRtkKwaGovPTQOFxuSvXqZjJPSGvZ4GkVyfIsBrIdDCmBUg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 70A61328005D;
 Mon, 17 Feb 2020 01:42:50 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 00/34] sun8i-codec fixes and new features
Date: Mon, 17 Feb 2020 00:42:16 -0600
Message-Id: <20200217064250.15516-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224253_881983_F076916B 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello all,

The sun8i-codec driver, as used in the Allwinner A33 and A64, currently
only exposes a small subset of the available hardware features. In order
to use the A64 in a smartphone (the PinePhone), I've added the necessary
functionality to the driver:
  * The full set of supported DAI format options
  * Support for AIF2 and AIF3
  * Additional routing knobs
  * Additional volume controls

Unfortunately, due to preexisting issues with the driver, there are some
breaking changes, as explained further in the commit messages:
  * The LRCK inversion issue means we need a new compatible for the A64.
  * Some controls are named inaccurately, so they are renamed.
  * Likewise, the DAPM widgets used in device trees were either named
    wrong, or the device trees were using the wrong widgets in the first
    place. (Specifically, the links between the analog codec and digital
    codec happen at the ADC and DAC, not AIF1.)

I tended to take the philosophy of "while I'm breaking things, I might
as well do them right", so I've probably made a few more changes than
absolutely necessary. I'm not sure about where all of the policy
boundaries are, about how far I should go to maintain compatibility. For
example, for the DT widget usage, I could:
  * Rename everything and update the DTS files (which is what I did)
  * Keep the old (misleading/wrong) name for the widgets, but repurpose
    them to work correctly
      (i.e. "ADC Left" would be named "AIF1 Slot 0 Left ADC", but it
       would work just like "ADC Left" does in this patchset)
  * Keep the old widgets around as a compatibility layer, but add new
    widgets and update the in-tree DTS files to use them
      (i.e. "ADC Left" would have a path from "AIF1 Slot 0 Left ADC",
       but "AIF1 Slot 0 Left ADC" would be a no-op widget)
  * Something else entirely

There are several trivial fixes in here, and there are several commits
that just add new features without changing any existing behavior, but
there is enough changing that I thought it would be best to send the
whole thing as an RFC. I'm more than happy to reorganize this into one
or several patchsets in future revisions. It doesn't have to all go in
at once.

This has all been tested on the PinePhone. For example, I've
successfully routed a voice call between the modem at AIF2 and a
Bluetooth headset at AIF3, merged with an audio file played from AIF1.
Unfortunately, the PinePhone does not have a DTS upstream yet (partially
due to the audio driver situation), so I don't have an example DTS in
this patchset.

Thanks for any feedback,
Samuel

Samuel Holland (34):
  ASoC: dt-bindings: Add a separate compatible for the A64 codec
  ASoC: sun8i-codec: LRCK is not inverted on A64
  arm64: dts: allwinner: a64: Fix the audio codec compatible
  ASoC: sun8i-codec: Remove unused dev from codec struct
  ASoC: sun8i-codec: Remove incorrect SND_SOC_DAIFMT_DSP_B
  ASoC: sun8i-codec: Fix setting DAI data format
  ASoC: sun8i-codec: Remove extraneous widgets
  ASoC: sun8i-codec: Fix direction of AIF1 outputs
  ASoC: sun8i-codec: Fix broken DAPM routing
  ASoC: sun8i-codec: Advertise only hardware-supported rates
  ASoC: sun8i-codec: Enforce parameter symmetry
  ASoC: sun8i-codec: Fix AIF1 MODCLK widget name
  ASoC: sun8i-codec: Fix AIF1_ADCDAT_CTRL field names
  ASoC: sun8i-codec: Fix AIF1_MXR_SRC field names
  ASoC: sun8i-codec: Fix ADC_DIG_CTRL field name
  ASoC: sun8i-codec: Fix field bit number indentation
  ASoC: sun8i-codec: Sort masks in a consistent order
  ASoC: sun8i-codec: Allow all clock inversion permutations
  ASoC: sun8i-codec: Support mono DAI configurations
  ASoC: sun8i-codec: Support 8/20/24-bit word sizes
  ASoC: sun8i-codec: Clean up module/clock hierarchy
  ASoC: sun8i-codec: Clean up AIF1 Slot 0 widgets
  ASoC: sun8i-codec: Clean up DAC widgets
  ASoC: sun8i-codec: Prepare to support multiple AIFs
  ASoC: sun8i-codec: Add support for AIF2
  ASoC: sun8i-codec: Add support for AIF3
  ASoC: sun8i-codec: Add AIF mono/stereo controls
  ASoC: sun8i-codec: Add AIF loopback controls
  ASoC: sun8i-codec: Add AIF, ADC, and DAC volume controls
  ASoC: dt-bindings: Bump sound-dai-cells on sun8i-codec
  ARM: dts: sun8i-a33: Allow using multiple codec DAIs
  arm64: dts: allwinner: a64: Allow using multiple codec DAIs
  arm64: dts: allwinner: a64: Allow multiple DAI links
  arm64: dts: allwinner: a64: Add pinmux for AIF2/AIF3

 .../sound/allwinner,sun8i-a33-codec.yaml      |    6 +-
 arch/arm/boot/dts/sun8i-a33-olinuxino.dts     |    6 +-
 arch/arm/boot/dts/sun8i-a33.dtsi              |   10 +-
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts |    8 +-
 .../dts/allwinner/sun50i-a64-orangepi-win.dts |    8 +-
 .../boot/dts/allwinner/sun50i-a64-pine64.dts  |    8 +-
 .../dts/allwinner/sun50i-a64-pinebook.dts     |    8 +-
 .../boot/dts/allwinner/sun50i-a64-pinetab.dts |   14 +-
 .../allwinner/sun50i-a64-sopine-baseboard.dts |    8 +-
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts |    8 +-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   47 +-
 sound/soc/sunxi/sun8i-codec.c                 | 1056 +++++++++++++----
 12 files changed, 890 insertions(+), 297 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
