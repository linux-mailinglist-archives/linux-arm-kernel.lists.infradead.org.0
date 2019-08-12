Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916F389813
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/Bovtr7iVm6P4MUPQbExEvS5yikoGjKTU7tKucsTh0=; b=gBHT5Lh4YtUnMw
	61KH+E17fLCw5LFXpNHmyBhVS5Oy58R72qY6Hu8XfvG1tVqrhhh5K9+MiE3qun69Bhai99EHuLRiE
	U+CvjiDbz46wffgTgDv6CkA2yoMHga1T24LLpfFxZ/MEU5VGu5Md+W0PN2i2TeA8z6Ll35arEoOtX
	QPVS/acltWDZbsf1fKQAUyLMcj9/9f7LMiLaXmetgGcw3sXDsxANVFuHMwJJu4gHMqWoZJTkNh8ti
	Ov4knCDBPyxInZrLGNBjSBS+FeZFUEOmnyqmgfxPzUzzA9HFwktbnEdfciymzX0N8puKuj3w+8P5a
	/EDAzhaL+dmoPXvOn41g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx51D-0001Al-S3; Mon, 12 Aug 2019 07:45:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx50k-0000MF-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:45:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so103738362wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 00:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=axx5t1pQziCogZokCRaPN9srE7gDApf+a9vIu6w+Yk4=;
 b=tfgUI5T++M6iHqMqem1ZMPsuh/DJUBAIUNiuHKoVjVd/Hzq+a1Kzo4lGqVWrLZ6Zo3
 ZAr6IbA8x/pfpaIsqMJ4y0C5+6gfu+KHaPY4a1+SATevORrUdRBOMRnl3gCYx3NW0pzt
 2dwgAhpbjA4E3S5QqPpBjA2dEuPdRA3upEDbEYqH45NEoIMxRDDjIJdjShklUkqU5x+i
 szOgZI/XhsxE5X+ipK8CG6PmICu3SV5/6fk5W03NyiYpeFt8v6GGJmfw7yqNMFteISlC
 txROC1BLOs9by1xXiLAWQq3n/F9F7sAmhaEtJt2XLESE8eT4DRXHPQPUIXQtrU0oeYuT
 Mulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=axx5t1pQziCogZokCRaPN9srE7gDApf+a9vIu6w+Yk4=;
 b=Jeuo2sLx0eLcXX+eOCuqKtvaKpPegqTvb1B/A/YRua5zf7wFmNLOnwL9gfBawB7jEs
 L1RZx0ZFXxpq9PrOMm4TscLsO5LkHwNLJtmbDbjyzGzGO1uOctd0f//xvjkaJQFynU5S
 AxBGQM8ugjkoLwjWdc6Qz1paQb3aqw7kduCaKC9NYV4uXiH5SNk5yQFug9bUlVMUfFbg
 nX3FGNLb/QFg5+TIxnVBgJesPQRQCwctLy4HrJmAj1BLQUM5v3WwiB00MS91itBcmKPn
 gM0tDH4GUtnZDdHhw3I4kPCAf5xn0+OuUPas7iD15Fp7mymzeZmcPDQpkaZmshKAq4A9
 gcIA==
X-Gm-Message-State: APjAAAXtsm1z2sWo0yNoAE+ZUwLjjq09ajo7gAtifXJCgUIoFBcmgGSK
 fq/t+LXnWPMApfpU3fYAUJlNtl1n
X-Google-Smtp-Source: APXvYqwimf6/yTeGd34WQ+E48bgUvFXw45Oi2gN+Lu+PXH39ryjbfIhfxq7h9T3upcatBs1YMoVbwg==
X-Received: by 2002:adf:f48d:: with SMTP id l13mr33506400wro.190.1565595896607; 
 Mon, 12 Aug 2019 00:44:56 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id a81sm5050776wma.3.2019.08.12.00.44.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 00:44:55 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v8 0/4] Add support for Orange Pi 3
Date: Mon, 12 Aug 2019 09:44:53 +0200
Message-ID: <2218280.0sI6yjypBf@jernej-laptop>
In-Reply-To: <20190806155744.10263-1-megous@megous.com>
References: <20190806155744.10263-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_004459_053307_A369267D 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne torek, 06. avgust 2019 ob 17:57:39 CEST je megous@megous.com napisal(a):
> From: Ondrej Jirman <megous@megous.com>
> 
> This series implements support for Xunlong Orange Pi 3 board. There
> are only a few patches remaining.
> 
> - ethernet support - just a DT change (patch 1)
> - HDMI support (patches 2-4)
> 
> For some people, ethernet doesn't work after reboot because u-boot doesn't
> support AXP805 PMIC, and will not turn off the etherent PHY regulators.
> So the regulator controlled by gpio will be shut down, but the other one
> controlled by the AXP PMIC will not.
> 
> This is a problem only when running with a builtin driver. This needs
> to be fixed in u-boot.
> 
> 
> Please take a look.

Is there anything missing? It would be nice to get this in 5.4. There is a lot 
of H6 boards which needs DDC bus enable mechanism (part of H6 reference 
design), including Beelink GS1 which already has HDMI node in mainline kernel 
DT, but due to disabled DDC lines works only with 1024x768 (fallback 
resolution in DRM core).

Best regards,
Jernej

> 
> thank you and regards,
>   Ondrej Jirman
> 
> Changes in v8:
> - added reviewed-by tags
> - dropped already applied patches
> - added more info about the phy initialization issue after reset
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
>  4 files changed, 123 insertions(+), 4 deletions(-)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
