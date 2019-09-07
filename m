Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB67AC504
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 08:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mngiQFgMBAD5z5x+/e89ikNgexk+6b6oWhNdYDjYTVU=; b=d/17vcpU+JmciJ
	kn4QYnBvjmpX/08MsXuxo1fCPjAdJR+TLa2hMZa6eGsh0X8qDrnacLsJ4oLWPTCOx3LtO7HrFvRdY
	WS3u8R4r48/w1ZRgdyScRWo3q0jyO/NGbox/SY1FkihdAzsuu3PCqzXFcFsTSU8Ek1BRX7AcgCIN8
	iAhQN4CPsJxS5z+r1qPMvVy+hN3+ZX1tMQw6vxYqo9V/dU3uubz2QYqwmitjQ4OLtn7/Ezay+quou
	bcRxlOZhQ9B1SjGocrMcY6V7HungFwLo0rMZUbqNUOO0MpZXXbzfG8r65j2G1vcxYFHSvhc+BAoYb
	+kieZczJ5GKZJ2b4PzQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Uec-0002k3-3F; Sat, 07 Sep 2019 06:57:02 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ue7-0002Zj-Ja
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 06:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567839378;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=H2SIQXvx8PjyvicidlZPlLPHdfve4slDgeqzzBpA4xM=;
 b=XUY2lutCeSagYDZIfq1nUy/yCoWQTgg8vzzk1wOyLXtc95Xx4JaTgMJx9KbXhHdhC3
 cAdj1iNHZ8xvp7eXc4+uSNaNboNL89NxZcCn1E/QNC3e10+8bh+v0eMaJmC8uJSUudtq
 Y9hT7TojcFOB7dHZqL9edASPjyZyUh9RctXuHGNChrNPv5AQ3JI1pQ/I2AIfSarZ8b40
 d9EeyS/Oyae6NE8/RxV/f4ADoYjJ6cLs6QOLuPTe+FkWz9U9IZUFIHpQJCgFysGwdWwJ
 3TB1iFnESKiHZQJeenQEYxPxSZMJyLWg2JBX54PtV/cOmUCDqjMGI9vTgNmouU3nhkRk
 9S/w==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXL8GTntuxg="
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v876uGqXD
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sat, 7 Sep 2019 08:56:16 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Adam Ford <aford173@gmail.com>,
 =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Roger Quadros <rogerq@ti.com>, Teresa Remmet <t.remmet@phytec.de>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: [PATCH 0/4] OMAP3: convert opp-v1 to opp-v2 and read speed binned /
 720MHz grade bits
Date: Sat,  7 Sep 2019 08:56:11 +0200
Message-Id: <cover.1567839375.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_235632_223285_D3A46DE3 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes PATCH V1:
* fix typo in omap3-ldp.dts
  (reported by Tony Lindgren <tony@atomide.com>)
* extend commit message to describe the bit patterns needed
  for opp-supported-hw
* add error check to ioremap()
  (suggested by Christ van Willegen <cvwillegen@gmail.com>)
* update Documentation/devicetree/bindings/arm/omap/omap.txt
* change bulk update to use "ti,omap3430" and "ti,omap3630"
* update OPP4 of omap3430 to 1275 mV since it was not a valid
  voltage for the twl4030 driver (reported by Tony Lindgren
  <tony@atomide.com>)

RFC V2 2019-09-04 10:53:43:
* merge separate patch to remove opp-v1 table from n950-n9 into
  the general omap3xxx.dtsi patch
  (suggested by Viresh Kumar <viresh.kumar@linaro.org>)
* add legacy compatibility to ti,omap3430 and ti,omap3630 for
  the ti-cpufreq driver
* make driver and omap3xxx.dtsi patches pass checkpatch
* add bulk patch to explicitly define compatibility to ti,omap3430
  and ti,omap36xx in addition to ti,omap3 of all in-tree boards
  where it was missing

RFC V1 2019-09-02 12:55:55:

This patch set converts the omap3 opp tables to opp-v2 format
and extends the ti-cpufreq to support omap3.

It adds 720 MHz (omap34xx) and 1 GHz (omap36xx) OPPs but
tells the ti-cpufreq driver to disable them if the speed
binned / 720MHz grade eFuse bits indicate that the chip
is not rated for that speed. 

It has been tested (for chip variant detection, not reliability
of the high speed OPPs) on:

* BeagleBoard C2 (omap3530 600MHz)
* BeagleBoard XM B (dm3730 800MHz)
* GTA04A4 (dm3730 800MHz)
* GTA04A5 (dm3730 1GHz)


H. Nikolaus Schaller (4):
  cpufreq: ti-cpufreq: add support for omap34xx and omap36xx
  ARM: dts: replace opp-v1 tables by opp-v2 for omap34xx and omap36xx
  ARM: dts: omap3: bulk convert compatible to be explicitly ti,omap3430
    or ti,omap3630 or ti,am3517
  DTS: bindings: omap: update bindings documentation

 .../devicetree/bindings/arm/omap/omap.txt     | 30 +++---
 arch/arm/boot/dts/am3517_mt_ventoux.dts       |  2 +-
 .../boot/dts/logicpd-som-lv-35xx-devkit.dts   |  2 +-
 .../boot/dts/logicpd-torpedo-35xx-devkit.dts  |  2 +-
 arch/arm/boot/dts/omap3-beagle-xm.dts         |  2 +-
 arch/arm/boot/dts/omap3-beagle.dts            |  2 +-
 arch/arm/boot/dts/omap3-cm-t3530.dts          |  2 +-
 arch/arm/boot/dts/omap3-cm-t3730.dts          |  2 +-
 arch/arm/boot/dts/omap3-devkit8000-lcd43.dts  |  2 +-
 arch/arm/boot/dts/omap3-devkit8000-lcd70.dts  |  2 +-
 arch/arm/boot/dts/omap3-devkit8000.dts        |  2 +-
 arch/arm/boot/dts/omap3-gta04.dtsi            |  2 +-
 arch/arm/boot/dts/omap3-ha-lcd.dts            |  2 +-
 arch/arm/boot/dts/omap3-ha.dts                |  2 +-
 arch/arm/boot/dts/omap3-igep0020-rev-f.dts    |  2 +-
 arch/arm/boot/dts/omap3-igep0020.dts          |  2 +-
 arch/arm/boot/dts/omap3-igep0030-rev-g.dts    |  2 +-
 arch/arm/boot/dts/omap3-igep0030.dts          |  2 +-
 arch/arm/boot/dts/omap3-ldp.dts               |  2 +-
 arch/arm/boot/dts/omap3-lilly-a83x.dtsi       |  2 +-
 arch/arm/boot/dts/omap3-lilly-dbb056.dts      |  2 +-
 arch/arm/boot/dts/omap3-n9.dts                |  2 +-
 arch/arm/boot/dts/omap3-n950-n9.dtsi          |  7 --
 arch/arm/boot/dts/omap3-n950.dts              |  2 +-
 .../arm/boot/dts/omap3-overo-storm-alto35.dts |  2 +-
 .../boot/dts/omap3-overo-storm-chestnut43.dts |  2 +-
 .../boot/dts/omap3-overo-storm-gallop43.dts   |  2 +-
 .../arm/boot/dts/omap3-overo-storm-palo35.dts |  2 +-
 .../arm/boot/dts/omap3-overo-storm-palo43.dts |  2 +-
 .../arm/boot/dts/omap3-overo-storm-summit.dts |  2 +-
 arch/arm/boot/dts/omap3-overo-storm-tobi.dts  |  2 +-
 .../boot/dts/omap3-overo-storm-tobiduo.dts    |  2 +-
 arch/arm/boot/dts/omap3-pandora-1ghz.dts      |  2 +-
 arch/arm/boot/dts/omap3-sbc-t3530.dts         |  2 +-
 arch/arm/boot/dts/omap3-sbc-t3730.dts         |  2 +-
 arch/arm/boot/dts/omap3-sniper.dts            |  2 +-
 arch/arm/boot/dts/omap3-thunder.dts           |  2 +-
 arch/arm/boot/dts/omap3-zoom3.dts             |  2 +-
 arch/arm/boot/dts/omap3430-sdp.dts            |  2 +-
 arch/arm/boot/dts/omap34xx.dtsi               | 65 +++++++++++--
 arch/arm/boot/dts/omap36xx.dtsi               | 53 +++++++++--
 drivers/cpufreq/cpufreq-dt-platdev.c          |  2 +-
 drivers/cpufreq/ti-cpufreq.c                  | 91 ++++++++++++++++++-
 43 files changed, 245 insertions(+), 77 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
