Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D9D19D267
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c2gnsB12ELHKU+X++FMlhh2/5TCmmTplnJHiU6v0P/U=; b=COK8fpkaRa3KLf
	6IL7ct/G+BkUaRvZ3PGZuz/wb13IZ0SSZYHBgmhBv9nnNXeVm5VzQ16eA32bAEi1S4AkhsHEbT2Qk
	fiA38c1dvu+Ge4/aE2SZohnnW9e5l6puyI0AiZHD2uzRTha8RNZEQCh/HmxkJbyfF+abs8hI8ufx6
	x3x2Qlq8aLGNBssHez/nxrzM+VganYALlyGJnNRbxhIr4d8Q2SSN2BGsHGREJo/x0zjoozsAoznkj
	qaBDBOhNSs3CD3KMknOxY7syfzVFckB1V8vCasPrXHaBDdHgHau/CoboKCBHkRye3v38cvPtcSYgp
	OcUAYYXcWBGV0XP/+ZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKHrr-0001lA-Ib; Fri, 03 Apr 2020 08:39:59 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKHrh-0001kF-Pp; Fri, 03 Apr 2020 08:39:51 +0000
Received: by mail-lj1-f194.google.com with SMTP id k21so6151359ljh.2;
 Fri, 03 Apr 2020 01:39:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PD/gVyIwg3r+VcHwOnpfggsYs/YXr+/JvVhetfbesIw=;
 b=DWijiTt/Cr+e+bVtq/PDQeuZoLXpAnph50OvKaTHwc9WXT6GaRHHbIrlQU2qKHezU2
 xaNS3MMt5VjZVflHFQBM2gVus+glPUmSO+zIf06YsEl9pmi6GN35tIZGCfGhan5RccIt
 qN4We5VM3I+7DT+5dI3hM81xCuuKwQHHjqI04qf1QAQu+yE43ExHEJGcTzHRoW2MuJvC
 jwDUums2DwGLne4ijY4Sddf9uPVpEUAZE3XBAUZO1aAKth5O+hZcwPGGddXbsEd2Uj+4
 DUknv004aUkRLktKY+IFKlufiEVrAT8+P8arNhuNF3w0tM4MRD80SdPmPwCLhvRYqLnX
 s42g==
X-Gm-Message-State: AGi0PuZ48lecjTkYm5C5RpINW9WRMk22aW/zCpPhSxxhC819XZQL2mM7
 uLxjhsRRqFQjayQ+nBFKevk=
X-Google-Smtp-Source: APiQypJVKfdqrvuRrf4SFDX/Bypn5x3Uaf7ccv1oLoFyGjQYKvsgDgEopjI4HIv9Hq8Mg0JyDNX0wQ==
X-Received: by 2002:a2e:9d85:: with SMTP id c5mr4182800ljj.168.1585903187578; 
 Fri, 03 Apr 2020 01:39:47 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id b26sm3820339lji.8.2020.04.03.01.39.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 01:39:46 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:36:17 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Message-ID: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_013949_842385_B757CB19 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Sebastian Reichel <sre@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, linux-omap@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 mikko.mutanen@fi.rohmeurope.com, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support ROHM BD99954 Battery Management IC

ROHM BD99954 is a Battery Management IC for 1-4 cell Lithium-Ion
secondary battery. BD99954 is intended to be used in space-constraint
equipment such as Low profile Notebook PC, Tablets and other
applications.

Series extracts a "linear ranges" helper out of the regulator
framework. Linear ranges helper is intended to help converting
real-world values to register values when conversion is linear. I
suspect this is useful also for power subsystem and possibly for clk.

Current implementation does not support inversely proportional ranges
but adding support for that could be helpful.

This version of series introduces new battry DT binding entries and
adds the parsing in power_supply_get_battery_info().

Changelog v8:
 Linear ranges
   - small improvements suggested by Andy Shevchenko, no functional changes

Changelog v7:
 General:
   - rebased on top of v5.6
 bd99954 driver:
   - fixed bunch of styling issues spotted by Andy Shevchenko
   - dropped ACPI table as ACPI properties are not supported at this
     version of driver.
   - added few acks

Changelog v6:
 generic:
   - rebased on top of 5.6-rc7.
 linear ranges:
   - moved to lib as requested by Greg KH
   - EXPORT_SYMBOL => EXPORT_SYMBOL_GPL
   - licence GPL-2.0, not later
   - added KUnit test for linear ranges

Changelog v5:
 generic:
   - rebased on top of 5.6-rc6.
 DT-bindings:
   - Dropped -charger extension from compatible and removed wildcard x.
 regulators:
   - squashed the regulator changes in one patch.
 power-supply KConfig:
   - fixed indentiation
   - dropped unnecessary 'default N' from BD99954.

Changelog v4:
 generic:
   - rebase and drop RFC.
 DT-bindings:
   - add I2C node address-cells and size-cells to fix yaml check errors
   - uncomment multipleOf:
 bd70528:
   - add patch which renames driver internal linear_range struct to
     avoid collision when regulator/driver.h (which gets included from
     rohm generic header) introduces the linear_range struct.
 regulators:
   - rebase to v5.6-rc2 and convert also the two newly introduced
     drivers to use linear_range struct instead of
     regulator_linear_range.
 linear_ranges:
   - Fix kerneldoc.

Changelog RFC-v3:
 DT-bindings:
   - fix the BD99954 binding (the *-microvolt Vs. *-microvolts issue is
     still there. Not sure which one is correct)
   - renabe tricklecharge-* binding to trickle-charge-* as suggested by
     Rob.
 - drop the linear-ranges helper which was written for BD70528 and
   extract the linear-range code from regulator framework instead.
 - refactor regulator framework to utilize extracted linear-ranges
   code.
 - change the struct regulator_linear_range to linear_range from
   regulator drivers.
 - refactor BD70528 to use regulator framework originated
   linear-ranges code.
 - change BD99954 to use linear-ranges code from regulator framework

Changelog RFC-v2:
 DT-bindings:
   - Used the battery parameters described in battery.txt
   - Added few new parameters to battery.txt
   - Added ASCII art charging profile chart for BD99954 to explain
     states and limits.
 Linear ranges:
   - Fixed division by zero error from linear-ranges code if step 0 is
     used.
 Power-supply core:
   - Added parsing of new battery parameters.
 BD99954 driver:
   - converted to use battery parameters from battery node
   - Added step 0 ranges for reg values which do not change voltage
   - added dt-node to psy-config

Patch 1:
	DT binding docs for the new battery parameters
Patch 2:
	BD99954 charger DT binding docs
Patch 3:
	Linear ranges helpers
Patch 4:
	Test for linear ranges helpers
Patch 5:
	Rename driver internal struct linear_range from bd70528-power
Patch 6:
	Use linear-ranges helpers in regulator framework and
	convert regulator drivers to use new linear_range struct.
Patch 7:
	Use linear-ranges helpers in bd70528 driver
Patch 8:
	Parsing of new battery parameters
Patch 9:
	ROHM BD99954 charger IC driver
Patch 10:
	Fix Kconfig help text indentiation for other entries as well.

---


Matti Vaittinen (10):
  dt-bindings: battery: add new battery parameters
  dt_bindings: ROHM BD99954 Charger
  lib: add linear ranges helpers
  lib/test_linear_ranges: add a test for the 'linear_ranges'
  power: supply: bd70528: rename linear_range to avoid collision
  regulator: use linear_ranges helper
  power: supply: bd70528: use linear ranges
  power: supply: add battery parameters
  power: supply: Support ROHM bd99954 charger
  power: supply: Fix Kconfig help text indentiation

 .../bindings/power/supply/battery.txt         |    6 +
 .../bindings/power/supply/rohm,bd99954.yaml   |  155 +++
 drivers/power/supply/Kconfig                  |   34 +-
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/bd70528-charger.c        |  140 +-
 drivers/power/supply/bd99954-charger.c        | 1149 +++++++++++++++++
 drivers/power/supply/power_supply_core.c      |    8 +
 drivers/regulator/88pg86x.c                   |    4 +-
 drivers/regulator/88pm800-regulator.c         |    4 +-
 drivers/regulator/Kconfig                     |    1 +
 drivers/regulator/act8865-regulator.c         |    4 +-
 drivers/regulator/act8945a-regulator.c        |    2 +-
 drivers/regulator/arizona-ldo1.c              |    2 +-
 drivers/regulator/arizona-micsupp.c           |    4 +-
 drivers/regulator/as3711-regulator.c          |    6 +-
 drivers/regulator/as3722-regulator.c          |    4 +-
 drivers/regulator/axp20x-regulator.c          |   16 +-
 drivers/regulator/bcm590xx-regulator.c        |    8 +-
 drivers/regulator/bd70528-regulator.c         |    8 +-
 drivers/regulator/bd71828-regulator.c         |   10 +-
 drivers/regulator/bd718x7-regulator.c         |   26 +-
 drivers/regulator/da903x.c                    |    2 +-
 drivers/regulator/helpers.c                   |  130 +-
 drivers/regulator/hi6421-regulator.c          |    4 +-
 drivers/regulator/lochnagar-regulator.c       |    4 +-
 drivers/regulator/lp873x-regulator.c          |    4 +-
 drivers/regulator/lp87565-regulator.c         |    2 +-
 drivers/regulator/lp8788-buck.c               |    2 +-
 drivers/regulator/max77650-regulator.c        |    2 +-
 drivers/regulator/mcp16502.c                  |    4 +-
 drivers/regulator/mp8859.c                    |    2 +-
 drivers/regulator/mt6323-regulator.c          |    6 +-
 drivers/regulator/mt6358-regulator.c          |    8 +-
 drivers/regulator/mt6380-regulator.c          |    6 +-
 drivers/regulator/mt6397-regulator.c          |    6 +-
 drivers/regulator/palmas-regulator.c          |    4 +-
 drivers/regulator/qcom-rpmh-regulator.c       |    2 +-
 drivers/regulator/qcom_rpm-regulator.c        |   14 +-
 drivers/regulator/qcom_smd-regulator.c        |   70 +-
 drivers/regulator/rk808-regulator.c           |   10 +-
 drivers/regulator/s2mps11.c                   |   14 +-
 drivers/regulator/sky81452-regulator.c        |    2 +-
 drivers/regulator/stpmic1_regulator.c         |   18 +-
 drivers/regulator/tps65086-regulator.c        |   10 +-
 drivers/regulator/tps65217-regulator.c        |    4 +-
 drivers/regulator/tps65218-regulator.c        |    6 +-
 drivers/regulator/tps65912-regulator.c        |    4 +-
 drivers/regulator/twl-regulator.c             |    4 +-
 drivers/regulator/twl6030-regulator.c         |    2 +-
 drivers/regulator/wm831x-dcdc.c               |    2 +-
 drivers/regulator/wm831x-ldo.c                |    4 +-
 drivers/regulator/wm8350-regulator.c          |    2 +-
 drivers/regulator/wm8400-regulator.c          |    2 +-
 include/linux/linear_range.h                  |   48 +
 include/linux/power/bd99954-charger.h         | 1075 +++++++++++++++
 include/linux/power_supply.h                  |    4 +
 include/linux/regulator/driver.h              |   27 +-
 lib/Kconfig                                   |    3 +
 lib/Kconfig.debug                             |   11 +
 lib/Makefile                                  |    2 +
 lib/linear_ranges.c                           |  241 ++++
 lib/test_linear_ranges.c                      |  228 ++++
 62 files changed, 3231 insertions(+), 356 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
 create mode 100644 drivers/power/supply/bd99954-charger.c
 create mode 100644 include/linux/linear_range.h
 create mode 100644 include/linux/power/bd99954-charger.h
 create mode 100644 lib/linear_ranges.c
 create mode 100644 lib/test_linear_ranges.c


base-commit: 7111951b8d49 ("Linux 5.6")
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
