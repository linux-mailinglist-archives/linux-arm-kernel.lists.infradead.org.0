Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840865B78F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wl+d75kdKHfwGIdKoajF8qU1STkToiEW07YpRbdGino=; b=LuWjtMvxe1mwV+
	1VpvwxD5/kmCN7zireHran3eszopzgCDNVMSeIwv/kvYsRtl/caZK6X2uW5uWvU6apesesSdT3UE0
	b938fn22UmrJq2wc1UsQv3amZYfzqAQQ/DxFsdrudyfM4PNxlX5tb9mvF9X2dnvxkzvFAB7SgW+rr
	9uqmZJtnOPux8TVMOVXnJ69/v06hRDzu815ldhYZPoPqMyxHeylZ4Ls5+DVBpPuKsTeaM9gwDyogV
	ELiIx4215XtRhrUn8WcvAbX/qVYHF6gIq+V3bZamBMbYx/oqhvvU+/oBxPzVmMs8hxR5cuCxbIvic
	qa2qTX0h5VdoLzcYnJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsNV-0003G0-Pr; Mon, 01 Jul 2019 09:13:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsN6-0003DL-Nm
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id n9so3133647wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h5u4pWU3fhpBiHxumPv/qTZvnc0aCekcJz77EzSTwqA=;
 b=Y/+nvdVSW313vqjXZLRZxPJSbMTY9V5q7d9kbNc707FQ5DLekBH9JBsqxcqQSdcpsG
 fa9fbsfFISHQYuSag01PKjhD83+23p8PsdwbCp6pLzymoDUwiIVRvK4/+jpO8JTVE1+a
 VvVSu1ae4DHEwx1lAL0LzX6VXG4GNQybC3ts7Z2vwR2gFq4KUWAJMLBjtMaGjD6NVTdv
 OLEZU+KjrXbbZtizvbXrdIf3H1cn0/yYeD4OJUF9i7JYk1covruE8wiu3q+SvWM7oq1l
 b38IsjfQaAtcb9JYO7ZSRG5G0gWBlvmfIWH+SxRWLqT1JkrWBCVlFXlw0AkG+l+Tc+88
 +p3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h5u4pWU3fhpBiHxumPv/qTZvnc0aCekcJz77EzSTwqA=;
 b=ibUHLnm731Yxgo8cQfPQO3XUABOymMLCxGXEas7zrJQJRBk2WFAwQ8JkXc5XBblDKm
 2eDl9p43plNIXIJWzfQkHBU096OgvaRq+ZGFff0LobsD2zZoD7iCeYLLe5DBLg/nNFSF
 W1ShFNYDwCCnDUDeTXE3khB3aEBJTv9g7J6kR2EGIKi+o0XhqrLnpfD2kpsJqkCY3jlx
 ZZQsmdGIc9y8i3L9IUi8ZiZeBoOuKT9Bkt7Bq33YnwtBOIp43yjrf2VYXdGPzU0PD98H
 4QNxqLykcBFa8IRPZI29sLWDc/SdYfAkSDMthw4ogsHqtX0WMgZK4+SlbTcxwjKSddQi
 xIHw==
X-Gm-Message-State: APjAAAWz2/TcVHKJXu6zZKXe/x7tLw9piCooNGUo7pKHZGEf5SpP+ohx
 ULRXPzjMxJh1cwr80BDvFtvWTw==
X-Google-Smtp-Source: APXvYqz2UhQEnseZ8WNhpF/O9vEWNicypD7qyv62oJG8BxzOAHVHA2jQIKd9fwd+Rev2X/o90QCKlw==
X-Received: by 2002:a1c:df46:: with SMTP id w67mr15810427wmg.69.1561972390865; 
 Mon, 01 Jul 2019 02:13:10 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 00/14] arm64: g12a: add support for DVFS
Date: Mon,  1 Jul 2019 11:12:44 +0200
Message-Id: <20190701091258.3870-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021312_771908_97D50DAC 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Changes since RFT/RFC v2 at [4]:
- Rebased on linux-amlogic v5.3/dt64 and clk-meson v5.3/drivers trees
- fixed mesure/measure in patch 5
- added Kevin's review tags

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
[4] https://patchwork.kernel.org/cover/11017273/

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

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 2416 ++++++++++++++++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |   55 +
 .../boot/dts/amlogic/meson-g12a-u200.dts      |   54 +
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |   52 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 2455 +----------------
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
 17 files changed, 3390 insertions(+), 2436 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
