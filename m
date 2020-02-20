Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0720165872
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0gt6hKWAmibkv4rJxsFqoX22XqD7egz9yNsnbhT75CQ=; b=l/QkWn/8XG/Zjv
	YVmSw9j0TLRVMc57dx3M12KfvM+0iWfecE1x3DJUqEnxb9sn0smmvUkDTNfWC8MrqW5lalyDVIqy+
	djghE4hIag0p1etkYzR6Zt5TCADU6qf3e5WzlNusyxhovIQewyCFtoMIivf/79newrJhpLptxAtfE
	1RNGxTCb210Ymt1A2CNKlrDQSozQO7SbgG9O6u5+hboyNEYAkDqTnPmg9mRoaqhVYwJtO7UmoaPoe
	0Uvssmp/ZhVViBYrnIphbKqfjiTzRo+VCSZzwRcKgClutrQ7J241xyM6Xm9bPKxRX2rb1h+PiqgrU
	0Bb5zmUfhGaVbMRXR/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gL5-0003yB-MK; Thu, 20 Feb 2020 07:33:39 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gKw-0003xc-So; Thu, 20 Feb 2020 07:33:33 +0000
Received: by mail-lf1-f68.google.com with SMTP id r14so2252195lfm.5;
 Wed, 19 Feb 2020 23:33:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=wiE1MVBAq+dtJZbD9QhDjogT10xMsxH3KrA52tzGEaE=;
 b=EW2Rd8CoD+vSMQbiktzd8rShAs1tHZA0jqIIV54B7j4wxQLxOcV31CvcMv197iM1aB
 4O5A0FMza7kERJMxWK+jjZjJx/dYjlFdZ4Tz48Dw+hSKCr+Wm7qC4cvUy/8c8KX4ayqz
 CC6CKps7hTbri4PiUGNMglESdmZuBuT9mnrchNUO0gePmUef7jmO2lP3BwUBl5+t4uw+
 4bK3QdcZDXedxvkHyh1yF8KcGyQI4G4i0W8najRqr7HllgA1aqnBQSmQzVRECMmnmUtl
 rcl08ai5atnWEEdPuOBqJBtv9oFY/ALb/oIvprF1mkuZW0mYd6ifhnVuTrOd8D+NCXe+
 TXuQ==
X-Gm-Message-State: APjAAAUzX4bVcSdHKYXXLyLgMPH9gBDca6K0E21iWP5fz6nhpGoG9WA0
 ZyZe4GoUohsRxHinjD2WLAk=
X-Google-Smtp-Source: APXvYqydig+xF2Ywm6Iv7YBB1hG2cbKXIzbm+c80mkOrc6fpXIb3jtHpbOGYiojY8rsNm8HRCIfnww==
X-Received: by 2002:a19:6445:: with SMTP id b5mr15432764lfj.187.1582184007747; 
 Wed, 19 Feb 2020 23:33:27 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id w6sm1256991lfq.95.2020.02.19.23.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 23:33:27 -0800 (PST)
Date: Thu, 20 Feb 2020 09:33:14 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [RFC PATCH v3 0/8] Support ROHM BD99954 charger IC
Message-ID: <cover.1582182989.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_233330_933286_DCA2274E 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Milo Kim <milo.kim@ti.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Sebastian Reichel <sre@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Markus Laine <markus.laine@fi.rohmeurope.com>,
 devicetree@vger.kernel.org, Charles Keepax <ckeepax@opensource.cirrus.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>,
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
suspect this is usefull also for power subsystem and possibly for clk.

This version of series introduces new battry DT binding entries and
adds the parsing in power_supply_get_battery_info(). These properties
can be converted to ROHM specific properties and parsing can be moved
to the BD99954 driver if this does not seem like a right thing to do.
I just have a feeling the the BD99954 is not the only charger which
could utilize these.

We also add ROHM specific charger parameters for limiting the input
current(s). I think these parameters are pretty common and maybe the
"rohm,"-prefix should be dropped and we should try having common
input limiting properties for different chips?

Series is based on v5.5-rc7

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
	Rename struct regulator_linear_range to struct linear_range and
	convert regulator drivers to use renamed struct
Patch 5:
	Use linear-ranges helpers in regulator framework
Patch 6:
	Use linear-ranges helpers in bd70528 driver
Patch 7:
	Parsing of new battery parameters
Patch 8:
	ROHM BD99954 charger IC driver

---

Matti Vaittinen (8):
  dt-bindings: battry: add new battery parameters
  dt_bindings: ROHM BD99954 Charger
  drivers: base: add linear ranges helpers
  regulator: rename regulator_linear_range to linear_range
  regulator: use linear_ranges helper
  power: supply: bd70528: use linear ranges
  power: supply: add battery parameters
  power: supply: Support ROHM bd99954 charger

 .../bindings/power/supply/battery.txt         |    6 +
 .../bindings/power/supply/rohm,bd9995x.yaml   |  153 +++
 drivers/base/Kconfig                          |    3 +
 drivers/base/Makefile                         |    1 +
 drivers/base/linear_ranges.c                  |  246 ++++
 drivers/power/supply/Kconfig                  |   11 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/bd70528-charger.c        |  142 +-
 drivers/power/supply/bd99954-charger.c        | 1171 +++++++++++++++++
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
 58 files changed, 3000 insertions(+), 339 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,bd9995x.yaml
 create mode 100644 drivers/base/linear_ranges.c
 create mode 100644 drivers/power/supply/bd99954-charger.c
 create mode 100644 include/linux/linear_range.h
 create mode 100644 include/linux/power/bd99954-charger.h


base-commit def9d2780727 ("Linux 5.5-rc7")
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
