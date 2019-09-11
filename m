Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8202BB02EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v+1kOPqU9ZWUGNctlzXh4yvLs3QwY5gnt/cPUv3p/yY=; b=epmVEgcuNuktX2
	eeBTt3AUtgu9H2lHw20v4eV3LqGN6Tc8bG4mr0F3jA+EzsMQpIXscB99J3QYFjf4q7G7bDvBEo+J5
	7OK7Ub6HA6S1dKFRULGiH3ZT8yPCMltI47AVJ4xESdQg5NLjL4E04ywOi8p4+G5T4nmrfmaiMqlhQ
	VLY9ZGLpWSejbGJsO9vh8DvbYDa4rNN5U0o62LVfTKQpz+E9t7FJHeyP6ExS95KjMYcTWal2d2O8R
	60LXBJ8zCNQkGwfbhk1p5FenI1rJTszTt+z4fDRBmIeetAc0bE2Elt01U08ifvH+OZCbbGXL8SeoB
	2Mpvzzwh3w1uoK/e2q1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86iw-0007SS-Bo; Wed, 11 Sep 2019 17:48:10 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86i9-0006wI-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568224036;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=OlzypCaQKSjZuhd91T1qjCuJ5hWzxdmcL55w16GN85E=;
 b=rqZLZePZEnJWHBzLqpO6i3go4gMEQn08lrmKFBjFVcmOHuukOd/g+WbqtE9Hwn7CLV
 P6mkCRu1jy8pWGaL3LFA0n5p2kz+z6W+OKNZ1BuIs6xzK8ltvY69ObrY+4x1e2bAIyPy
 Ww2U1Bbz/kQg9bFFb37zaPFUPU8GZ0G4/OebbbA+j8MuPjQiuQocpOdlQ41v7yqOKYyD
 wFjVZ2EH0NVLiUa3/dBlsLKYZ7KxzUKiVinwwCGXD0NCu+BtpUkk2ouTfzIEtZ6uk4HS
 9FkNJeKdAgqcR/EGdyKkUJrmMY3wn4mfl/ueNnsCqWCOP4S3ZcJHWayBpF3+/bCMXcOg
 9FYA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7Nk1d2C6Y"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id u036f9v8BHlE8nq
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 11 Sep 2019 19:47:14 +0200 (CEST)
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
Subject: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed binned
 / 720MHz grade bits
Date: Wed, 11 Sep 2019 19:47:06 +0200
Message-Id: <cover.1568224032.git.hns@goldelico.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_104722_100902_A5657127 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

CHANGES V3:
* make omap36xx control the abb-ldo and properly switch mode
  (suggested by Adam Ford <aford173@gmail.com>)
* add a note about enabling the turbo-mode OPPs

PATCH V2 2019-09-07 19:46:58:
* fix ti-cpufreq to properly describe which compatible string is legacy
* add some reviewed-by and acked-by Tony Lindgren <tony@atomide.com>
* include am3517 patches by Adam Ford <aford173@gmail.com>
* review opp-suspend; and add turbo-mode; opp properties
* add a note how to disable an OPP in a board.dts file

PATCH V1 2019-09-07 08:56:19:
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


Adam Ford (2):
  cpufreq: ti-cpufreq: Add support for AM3517
  ARM: dts: Add OPP-V2 table for AM3517

H. Nikolaus Schaller (6):
  cpufreq: ti-cpufreq: add support for omap34xx and omap36xx
  ARM: dts: omap34xx & omap36xx: replace opp-v1 tables by opp-v2 for
  DTS: bindings: omap: update bindings documentation
  ARM: dts: omap3: bulk convert compatible to be explicitly ti,omap3430
    or ti,omap3630 or ti,am3517
  cpufreq: ti-cpufreq: omap36xx use "cpu0","vbb" if run in
    multi_regulator mode
  ARM: dts: omap36xx: using OPP1G needs to control the abb_ldo

 .../devicetree/bindings/arm/omap/omap.txt     |  30 +++--
 .../bindings/cpufreq/ti-cpufreq.txt           |   6 +-
 arch/arm/boot/dts/am3517.dtsi                 |  31 +++++
 arch/arm/boot/dts/am3517_mt_ventoux.dts       |   2 +-
 .../boot/dts/logicpd-som-lv-35xx-devkit.dts   |   2 +-
 .../boot/dts/logicpd-torpedo-35xx-devkit.dts  |   2 +-
 arch/arm/boot/dts/omap3-beagle-xm.dts         |   2 +-
 arch/arm/boot/dts/omap3-beagle.dts            |   2 +-
 arch/arm/boot/dts/omap3-cm-t3530.dts          |   2 +-
 arch/arm/boot/dts/omap3-cm-t3730.dts          |   2 +-
 arch/arm/boot/dts/omap3-devkit8000-lcd43.dts  |   2 +-
 arch/arm/boot/dts/omap3-devkit8000-lcd70.dts  |   2 +-
 arch/arm/boot/dts/omap3-devkit8000.dts        |   2 +-
 arch/arm/boot/dts/omap3-gta04.dtsi            |   2 +-
 arch/arm/boot/dts/omap3-ha-lcd.dts            |   2 +-
 arch/arm/boot/dts/omap3-ha.dts                |   2 +-
 arch/arm/boot/dts/omap3-igep0020-rev-f.dts    |   2 +-
 arch/arm/boot/dts/omap3-igep0020.dts          |   2 +-
 arch/arm/boot/dts/omap3-igep0030-rev-g.dts    |   2 +-
 arch/arm/boot/dts/omap3-igep0030.dts          |   2 +-
 arch/arm/boot/dts/omap3-ldp.dts               |   2 +-
 arch/arm/boot/dts/omap3-lilly-a83x.dtsi       |   2 +-
 arch/arm/boot/dts/omap3-lilly-dbb056.dts      |   2 +-
 arch/arm/boot/dts/omap3-n9.dts                |   2 +-
 arch/arm/boot/dts/omap3-n950-n9.dtsi          |   7 --
 arch/arm/boot/dts/omap3-n950.dts              |   2 +-
 .../arm/boot/dts/omap3-overo-storm-alto35.dts |   2 +-
 .../boot/dts/omap3-overo-storm-chestnut43.dts |   2 +-
 .../boot/dts/omap3-overo-storm-gallop43.dts   |   2 +-
 .../arm/boot/dts/omap3-overo-storm-palo35.dts |   2 +-
 .../arm/boot/dts/omap3-overo-storm-palo43.dts |   2 +-
 .../arm/boot/dts/omap3-overo-storm-summit.dts |   2 +-
 arch/arm/boot/dts/omap3-overo-storm-tobi.dts  |   2 +-
 .../boot/dts/omap3-overo-storm-tobiduo.dts    |   2 +-
 arch/arm/boot/dts/omap3-pandora-1ghz.dts      |   2 +-
 arch/arm/boot/dts/omap3-sbc-t3530.dts         |   2 +-
 arch/arm/boot/dts/omap3-sbc-t3730.dts         |   2 +-
 arch/arm/boot/dts/omap3-sniper.dts            |   2 +-
 arch/arm/boot/dts/omap3-thunder.dts           |   2 +-
 arch/arm/boot/dts/omap3-zoom3.dts             |   2 +-
 arch/arm/boot/dts/omap3430-sdp.dts            |   2 +-
 arch/arm/boot/dts/omap34xx.dtsi               |  66 ++++++++--
 arch/arm/boot/dts/omap36xx.dtsi               |  65 ++++++++--
 drivers/cpufreq/cpufreq-dt-platdev.c          |   2 +-
 drivers/cpufreq/ti-cpufreq.c                  | 119 +++++++++++++++++-
 45 files changed, 320 insertions(+), 80 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
