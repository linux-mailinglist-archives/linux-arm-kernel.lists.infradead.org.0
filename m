Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005D55652B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fZ1zG8I3Fp7DyLbdZDUr5K92a9rgnOGWFSs3zrTGyh4=; b=fnTFC4aw0sGfX1
	Pt3q6c/Z25n8UeIvd2QDV3bNKhsJCg7hyS3cxrn5aDt4f/4XzMRechJjzdtNoivLeMF42KRTzwyjF
	jkLgL7YSZ1pT6lDZxHd5FEjHVX7YtJ8oidh5s/2KQaJu5Pxvg5JMVOFCpJH0woQ31PMKlM3Qb8lik
	KaZw9WDqEpdgYV5W0trb89d0ud+PqAo/fiYcnXdYmnF7l1rRaVMP1B5YNLHc3qQfrXOklR6kinxzj
	/D8OIgwyWhmvp4ELh7N6pdzJt4uhCv5OHdElT3UmYQklGo1O82wd4Qk5/O+YVPd7X2K1SBu/mdgKU
	tbhv4FVA85q7LbOYrwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3tg-0002b9-17; Wed, 26 Jun 2019 09:07:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3sz-0002WT-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so1780631wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mNkBOhUSKZktXVzPgYHzPfOcBUciHYL1qLyKm8m40Ho=;
 b=EmhhuBkjS/9rAtIkcIwpIcgZ3Gwn0zrnRkXyLjCQGmjeXCOilfqZFNx1wo3/FJFa7U
 9Zf3mWYjuMWiSMztjZ+t0JkNLNA6+0NxTB0hHImzdVdROhyBF+N/VFwugbb1cfquvnDM
 GigBE7k6TeDt+uMKPhQ6uMbUFN9qCJoBpsLPJXOVwMC1otSloUNC73MuEtir+kHO0GpJ
 tf6H17PB/xAW7OUvxq1AdK5eoVwnr8vjho6yMVp+WQGfyPxn3AUJX6jitZCBLI+iwgR1
 Yv64S3XIM0zji9dq5d9l+SNyhHmrsz6JnPZIiYZwTnGRwGDwbOdd2uQvWaS+1r9FPz7r
 kYxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mNkBOhUSKZktXVzPgYHzPfOcBUciHYL1qLyKm8m40Ho=;
 b=HWz8MLD/cgP2S6+mbUj6j7nEjxnrRxJXFlghL3h+hlamyoDYCqqakyfs0JKQNYbsUJ
 i7im4C8vlto5K6u1+gv4oEmYfYfv+zKGUJ4bcy0e/5+eC0PCIda4SPgQoroIRIBbNyaU
 s8fiQtHL/QK9LgdCHje51QruJO81H4qn8c2or+z7AkSxYOuA3bPnb9jQXK+u2ChdP2Ld
 WGVacNqWyjetbtmJP3ZCEW1a1xDPM9SOjo2PbJ9Fj6h6AD9UVxdej18iMrVda4xD+r/e
 nQLJ2U1Xe9aIot+ciw+iGARbegBASntTBXdLeC/95Av3Ev47ZEsqnpg9DuFw7xNSN226
 I7xg==
X-Gm-Message-State: APjAAAUL9kxyNcO2qsgWdJrIAUCd8NmXRJuOkQCpG4HacTS/J1C4jHA/
 1BlsU0jdUefRCfAPHojgk6lwTA==
X-Google-Smtp-Source: APXvYqwkO8aDGnvu8iP8rFMRwxiWuy/j1doyJakOZ/B3vub9BJrH3obe1f2ZF8drEhnPsKEo5ODJtQ==
X-Received: by 2002:adf:afde:: with SMTP id y30mr2683421wrd.197.1561539996153; 
 Wed, 26 Jun 2019 02:06:36 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:35 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 00/14] arm64: g12a: add support for DVFS
Date: Wed, 26 Jun 2019 11:06:18 +0200
Message-Id: <20190626090632.7540-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020637_863440_DDD1CE19 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A/G12B Socs embeds a specific clock tree for each CPU cluster :
cpu_clk / cpub_clk
|   \- cpu_clk_dyn
|      |  \- cpu_clk_premux0
|      |        |- cpu_clk_postmux0
|      |        |    |- cpu_clk_dyn0_div
|      |        |    \- xtal/fclk_div2/fclk_div3
|      |        \- xtal/fclk_div2/fclk_div3
|      \- cpu_clk_premux1
|            |- cpu_clk_postmux1
|            |    |- cpu_clk_dyn1_div
|            |    \- xtal/fclk_div2/fclk_div3
|            \- xtal/fclk_div2/fclk_div3
\ sys_pll / sys1_pll

This patchset adds notifiers on cpu_clk / cpub_clk, cpu_clk_dyn,
cpu_clk_premux0 and sys_pll / sys1_pll to permit change frequency of
the CPU clock in a safe way as recommended by the vendor Documentation
and reference code.

This patchset :
- introduces needed core and meson clk changes
- adds support for the G12B second cluster clock measurer ids
- protects clock measurer from cooncurent measures
- adds the clock notifiers
- moves the G12A DT to a common g12a-common dtsi
- adds the G12A and G12B OPPs
- enables DVFS on all supported boards

Dependencies:
- PWM AO input order fix at [1]
- PWM enhancements from Martin at [2]

Changes since RFT/RFC v1 at [3]:
- Added EXPORT_SYMBOL_GPL() to clk_hw_set_parent
- Added missing static to g12b_cpub_clk_mux0_div_ops and g12a_cpu_clk_mux_nb
- Simplified g12a_cpu_clk_mux_notifier_cb() without switch/case
- Fixed typo in "this the current path" in g12a.c
- Fixed G12B dtsi by adding back the sdio quirk
- Fixed G12A dtsi unwanted sdio quirk removal
- Fixed various checkpatch errors

[1] https://patchwork.kernel.org/patch/11006835/
[2] https://patchwork.kernel.org/patch/11006835/
[3] https://patchwork.kernel.org/cover/11006929/

Neil Armstrong (14):
  pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
  clk: core: introduce clk_hw_set_parent()
  clk: meson: regmap: export regmap_div ops functions
  clk: meson: eeclk: add setup callback
  soc: amlogic: meson-clk-measure: protect measure with a mutex
  soc: amlogic: meson-clk-measure: add G12B second cluster cpu clk
  clk: meson: g12a: add notifiers to handle cpu clock change
  clk: meson: g12a: expose CPUB clock ID for G12B
  arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi
  arm64: dts: meson-g12-common: add pwm_a on GPIOE_2 pinmux
  arm64: dts: meson-g12a: add cpus OPP table
  arm64: dts: meson-g12a: enable DVFS on G12A boards
  arm64: dts: meson-g12b: add cpus OPP tables
  arm64: dts: meson-g12b-odroid-n2: enable DVFS

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 2464 ++++++++++++++++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |   55 +
 .../boot/dts/amlogic/meson-g12a-u200.dts      |   55 +
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |   52 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 2502 +----------------
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |   96 +
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  145 +-
 drivers/clk/clk.c                             |    6 +
 drivers/clk/meson/clk-regmap.c                |   10 +-
 drivers/clk/meson/clk-regmap.h                |    5 +
 drivers/clk/meson/g12a.c                      |  500 +++-
 drivers/clk/meson/meson-eeclk.c               |    6 +
 drivers/clk/meson/meson-eeclk.h               |    1 +
 drivers/pinctrl/meson/pinctrl-meson-g12a.c    |    9 +
 drivers/soc/amlogic/meson-clk-measure.c       |   14 +-
 include/dt-bindings/clock/g12a-clkc.h         |    1 +
 include/linux/clk-provider.h                  |    1 +
 17 files changed, 3439 insertions(+), 2483 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
