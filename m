Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8434319335B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 23:06:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ocv9XHKz8hFDP49CDWBgEJNqVUZbJObwFfHiYgmnY5k=; b=CDFjDhkwl62glN
	mm61QENtXpLJhice6BFnEePvxaEa/LANMMAX3ersNgY8BuP+BRMHet0xolRcz0JnDaSAGp25B7nRe
	0pGm5t+cAgD+k0xlDzUcsgfVwiuL+jaX6+t5h9u7+FJOHXDE0YwK3EWZyYT8Sh40fIuou3FDFKlvJ
	ZwNjAzB4NE9slCvQu9TozWE44XxzcjJ38op4/u1mddk6OAgG5NUHndnU4pU4LBU7WZte1KBq2sWvm
	rJdLOy1BgOkRC8vneQ6vvbkZ4vSeRxT4Kdi9vB+CUGuvKWxV6pBALW4BUFsKFWUMn4JKRQPxzx6PY
	xkVbCYMjAuFTVuRaYzLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHEA0-0001VV-22; Wed, 25 Mar 2020 22:06:04 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHE9k-0001Tb-VJ; Wed, 25 Mar 2020 22:05:50 +0000
Received: by mail-il1-f177.google.com with SMTP id 7so3500002ill.2;
 Wed, 25 Mar 2020 15:05:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b/UNNUiqZNH/+Iv9VGZJuE2UKU7Uzk2Xjaa2yHi3k54=;
 b=Y68Nk7u+bJ6ksVT7wArbg+a7CvzPUkrO29rsHvyVhd3pUHsKSXu4ogINZ2wCH8080K
 tHwfJXheRhFe/MZHJeaMm8Ar6sallSaiDOxkzgKV19nEADQwVJF23tiKesDIMVildDrN
 BfmCqAiW/pqGqYn3GlwER9OSeUAn6IffclQKb+WTdR5d05edxyevCoqYVC1w6nggUIQR
 Tsy5A8+8T/5Pb5JDHKRFz/FeqYXfwxSo4o+HIohx2WM0ZeDHteSVw6OoDDqH+ToXrNVO
 b/3msmiMRJckvD2X+L/JlDV9kBB3wwXr7c2jL5vOCAup681NPW4kMQOZ8Kyq2+KcfhIo
 ISXA==
X-Gm-Message-State: ANhLgQ3tqk3oOLe19pzOq2Rp0Vl0WcduuIlbIWyeac+39PbPp6QioUDg
 I+mIAK7bu1wVZBzrmqbiLQ==
X-Google-Smtp-Source: ADFU+vt2kokrkcEpGRLO2UvFmwmQbT400vUIkyFS/Pwj5bVyFFr+iqUWdZpWVM9WT6gFsFQdf7TdIQ==
X-Received: by 2002:a92:83ca:: with SMTP id p71mr5277381ilk.278.1585173944474; 
 Wed, 25 Mar 2020 15:05:44 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.250])
 by smtp.googlemail.com with ESMTPSA id v8sm102390ioh.40.2020.03.25.15.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:05:43 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/4] dt-bindings: additionalProperties clean-up
Date: Wed, 25 Mar 2020 16:05:37 -0600
Message-Id: <20200325220542.19189-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_150549_011159_C4EAE689 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.177 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-media@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting 'additionalProperties: false' is frequently omitted, but is
important in order to check that there aren't extra undocumented
properties in a binding.

This series is a bunch of fixes in patches 1-3 found by setting
'additionalProperties: false' and then patch 4 sets additionalProperties
on a bunch of schema.

Rob


Rob Herring (4):
  dt-bindings: iio/accel: Drop duplicate adi,adxl345/6 from
    trivial-devices.yaml
  dt-bindings: sram: qcom: Clean-up 'ranges' and child node names
  dt-bindings: Clean-up schema errors due to missing
    'addtionalProperties: false'
  dt-bindings: Add missing 'additionalProperties: false'

 .../arm/altera/socfpga-clk-manager.yaml       |  2 ++
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   |  2 ++
 .../bindings/arm/msm/qcom,llcc.yaml           |  2 ++
 .../devicetree/bindings/arm/renesas,prr.yaml  |  2 ++
 .../bindings/arm/samsung/exynos-chipid.yaml   |  2 ++
 .../devicetree/bindings/arm/samsung/pmu.yaml  |  2 ++
 .../arm/samsung/samsung-secure-firmware.yaml  |  2 ++
 .../bindings/arm/stm32/st,stm32-syscon.yaml   |  2 ++
 .../devicetree/bindings/clock/fsl,plldig.yaml |  5 ++++
 .../bindings/clock/imx8mn-clock.yaml          |  2 ++
 .../bindings/clock/imx8mp-clock.yaml          |  2 ++
 .../bindings/clock/milbeaut-clock.yaml        |  2 ++
 .../bindings/clock/qcom,gcc-apq8064.yaml      |  2 ++
 .../bindings/clock/qcom,gcc-ipq8074.yaml      |  2 ++
 .../bindings/clock/qcom,gcc-msm8996.yaml      |  2 ++
 .../bindings/clock/qcom,gcc-msm8998.yaml      |  2 ++
 .../bindings/clock/qcom,gcc-qcs404.yaml       |  2 ++
 .../bindings/clock/qcom,gcc-sc7180.yaml       |  2 ++
 .../bindings/clock/qcom,gcc-sm8150.yaml       |  2 ++
 .../devicetree/bindings/clock/qcom,gcc.yaml   |  2 ++
 .../devicetree/bindings/clock/qcom,mmcc.yaml  |  2 ++
 .../bindings/clock/qcom,msm8998-gpucc.yaml    |  2 ++
 .../bindings/clock/qcom,rpmhcc.yaml           |  2 ++
 .../bindings/clock/qcom,sc7180-dispcc.yaml    |  2 ++
 .../bindings/clock/qcom,sc7180-gpucc.yaml     |  2 ++
 .../bindings/clock/qcom,sc7180-videocc.yaml   |  2 ++
 .../bindings/clock/qcom,sdm845-dispcc.yaml    |  2 ++
 .../bindings/clock/qcom,sdm845-gpucc.yaml     |  2 ++
 .../bindings/clock/qcom,sdm845-videocc.yaml   |  2 ++
 .../bindings/display/amlogic,meson-vpu.yaml   |  2 ++
 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  2 ++
 .../devicetree/bindings/dsp/fsl,dsp.yaml      |  2 ++
 .../devicetree/bindings/eeprom/at24.yaml      |  2 ++
 ...ntel,ixp4xx-network-processing-engine.yaml |  3 +++
 .../bindings/gpio/brcm,xgs-iproc-gpio.yaml    |  2 ++
 .../gpio/socionext,uniphier-gpio.yaml         |  4 +++
 .../bindings/gpio/xylon,logicvc-gpio.yaml     |  2 ++
 .../bindings/gpu/arm,mali-bifrost.yaml        |  8 +++---
 .../bindings/gpu/arm,mali-midgard.yaml        |  5 ++++
 .../bindings/gpu/arm,mali-utgard.yaml         |  2 ++
 .../bindings/gpu/samsung-rotator.yaml         |  2 ++
 .../bindings/hwmon/adi,adm1177.yaml           |  2 ++
 .../bindings/hwmon/adi,ltc2947.yaml           |  2 ++
 .../bindings/hwmon/pmbus/ti,ucd90320.yaml     |  2 ++
 .../devicetree/bindings/hwmon/ti,tmp513.yaml  |  2 ++
 .../bindings/iio/accel/adi,adxl345.yaml       | 10 +++++---
 .../bindings/iio/accel/bosch,bma400.yaml      |  2 ++
 .../bindings/iio/adc/adi,ad7192.yaml          |  1 -
 .../bindings/iio/adc/adi,ad7780.yaml          |  2 ++
 .../bindings/iio/adc/avia-hx711.yaml          |  2 ++
 .../bindings/iio/adc/lltc,ltc2496.yaml        |  2 ++
 .../bindings/iio/adc/microchip,mcp3911.yaml   |  2 ++
 .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml  |  2 ++
 .../iio/chemical/plantower,pms7003.yaml       |  2 ++
 .../iio/chemical/sensirion,sps30.yaml         |  2 ++
 .../bindings/iio/dac/lltc,ltc1660.yaml        |  2 ++
 .../bindings/iio/light/adux1020.yaml          |  2 ++
 .../devicetree/bindings/iio/light/bh1750.yaml |  2 ++
 .../bindings/iio/light/isl29018.yaml          |  2 ++
 .../bindings/iio/light/noa1305.yaml           |  2 ++
 .../bindings/iio/light/stk33xx.yaml           |  2 ++
 .../bindings/iio/light/tsl2583.yaml           |  2 ++
 .../bindings/iio/light/tsl2772.yaml           |  2 ++
 .../bindings/iio/light/veml6030.yaml          |  2 ++
 .../bindings/iio/pressure/asc,dlhl60d.yaml    |  2 ++
 .../bindings/iio/pressure/bmp085.yaml         |  5 ++++
 .../iio/proximity/devantech-srf04.yaml        |  2 ++
 .../bindings/iio/proximity/parallax-ping.yaml |  2 ++
 .../bindings/iio/temperature/adi,ltc2983.yaml |  2 ++
 .../bindings/input/gpio-vibrator.yaml         |  2 ++
 .../bindings/input/max77650-onkey.yaml        |  3 +++
 .../intel,ixp4xx-interrupt.yaml               |  2 ++
 .../bindings/iommu/samsung,sysmmu.yaml        |  2 ++
 .../bindings/leds/leds-max77650.yaml          |  3 +++
 .../bindings/leds/rohm,bd71828-leds.yaml      |  3 +++
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       |  2 ++
 .../bindings/media/amlogic,gx-vdec.yaml       |  2 ++
 .../media/amlogic,meson-gx-ao-cec.yaml        | 11 +++++---
 .../bindings/media/renesas,ceu.yaml           |  2 ++
 .../devicetree/bindings/mfd/max77650.yaml     |  2 ++
 .../bindings/mfd/rohm,bd71828-pmic.yaml       |  5 ++++
 .../misc/intel,ixp4xx-ahb-queue-manager.yaml  |  2 ++
 .../bindings/net/ti,cpsw-switch.yaml          | 25 +++++++++++++------
 .../phy/allwinner,sun50i-h6-usb3-phy.yaml     |  2 ++
 .../phy/amlogic,meson-g12a-usb3-pcie-phy.yaml |  2 ++
 .../bindings/phy/intel,lgm-emmc-phy.yaml      |  2 ++
 .../bindings/phy/marvell,mmp3-hsic-phy.yaml   |  2 ++
 .../bindings/phy/ti,phy-j721e-wiz.yaml        |  2 ++
 .../pinctrl/aspeed,ast2400-pinctrl.yaml       |  2 ++
 .../pinctrl/aspeed,ast2500-pinctrl.yaml       |  2 ++
 .../pinctrl/aspeed,ast2600-pinctrl.yaml       |  2 ++
 .../bindings/pinctrl/st,stm32-pinctrl.yaml    |  2 ++
 .../bindings/power/amlogic,meson-ee-pwrc.yaml |  2 ++
 .../bindings/power/reset/syscon-poweroff.yaml |  2 ++
 .../bindings/power/reset/syscon-reboot.yaml   |  2 ++
 .../power/supply/max77650-charger.yaml        |  3 +++
 .../devicetree/bindings/ptp/ptp-idtcm.yaml    |  2 ++
 .../regulator/max77650-regulator.yaml         |  5 +++-
 .../bindings/reset/amlogic,meson-reset.yaml   |  2 ++
 .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  |  2 ++
 .../bindings/rng/amlogic,meson-rng.yaml       |  2 ++
 .../devicetree/bindings/rng/brcm,bcm2835.yaml |  2 ++
 .../bindings/rtc/renesas,sh-rtc.yaml          |  2 ++
 .../devicetree/bindings/rtc/st,stm32-rtc.yaml |  2 ++
 .../bindings/serial/amlogic,meson-uart.yaml   |  2 ++
 .../bindings/soc/amlogic/amlogic,canvas.yaml  |  2 ++
 .../bindings/sound/adi,adau7118.yaml          |  2 ++
 .../bindings/sound/qcom,wcd934x.yaml          |  2 ++
 .../bindings/sound/renesas,fsi.yaml           |  2 ++
 .../bindings/sound/samsung,odroid.yaml        |  2 ++
 .../bindings/sound/samsung-i2s.yaml           |  2 ++
 .../devicetree/bindings/sram/qcom,ocmem.yaml  | 14 ++++++-----
 .../bindings/thermal/amlogic,thermal.yaml     |  4 +++
 .../bindings/timer/arm,arch_timer.yaml        |  2 ++
 .../bindings/timer/arm,arch_timer_mmio.yaml   |  4 +++
 .../bindings/timer/arm,global_timer.yaml      |  2 ++
 .../bindings/timer/intel,ixp4xx-timer.yaml    |  2 ++
 .../timer/samsung,exynos4210-mct.yaml         |  2 ++
 .../devicetree/bindings/trivial-devices.yaml  |  6 ++---
 119 files changed, 296 insertions(+), 29 deletions(-)

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
