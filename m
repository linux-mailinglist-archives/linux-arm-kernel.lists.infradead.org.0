Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28968F2C8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ozn8kBGKRDhhA+CELFenVSfBgf+m4oWJJkhegEjEeFk=; b=I2baGnQzcs5AMq
	UdrVCNKauRbGlF8Ou6utD0x88Waq6vemXsAzvosY+ARTeJ6EMEkI/2yQVspTPjA3WkLKWS2EddII+
	velalxolng3c/a2P0KcSTMTWxF4Fz2xBp5EK9fFnWb2qjo9bTets3NK7A10Bz9VwwG93YuTkYbzE6
	oSMBZfcheC8e6cqhG5KH5d3QpTkDIeWlTGbYT29VbonFLbJDE/NxcLreUrkIiH3rDDCIXqo76P3HJ
	X9EmojAFjPOgolF5mlY8qdoJjPM0NfBogLD5L7eNEQmPxNW1c5R0pOF7vzYnxCnDAYY8tP6oBqVhq
	w0wSmpUqHlSmlx9A+iPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSf6S-00064V-QM; Thu, 07 Nov 2019 10:33:24 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf4M-0003sk-U6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1573122662;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=BCezxGBczgwx6WnpD9WpD6BoeSXRFmawJLv4RTWC5Kk=;
 b=p5pkxLOdH7Dv7OQLoiRzOb2Uub4Q8VeibliOdVvEm/GRvU7S9mkSzl8nGImTa9+h7w
 EvpSHlcwX7hhtrFsCmlF4xWpQYpwkGhVjaeQgUVwG48NK8jXsXQTSkWomDlachqLO8Uv
 mlh+7fQ8o8DiR0hKrjHS5ywD8zdJrx3Y+too1aFwGp1We7C+Lghhzkjl3cThCIAehCgk
 vfwUP8SMJt5MwLD938SATbs9+deFSSEFEDzUkTWs7I3sbpdHbKP3KXXjCJaTMWA3yBiB
 9H0agfCGEvAZ3r+gB0NXgPy556y/Bvix0NjPhchAwqT13E/yrKaheA8n5K8D5HS1IuiX
 Z2MQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7PR5/L9P0"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3vA7AUkdRo
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 7 Nov 2019 11:30:46 +0100 (CET)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Mike Rapoport <rppt@linux.ibm.com>, David Sterba <dsterba@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Petr Mladek <pmladek@suse.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v3 00/12] OpenPandora: make wl1251 connected to mmc3 sdio port
 of OpenPandora work again
Date: Thu,  7 Nov 2019 11:30:33 +0100
Message-Id: <cover.1573122644.git.hns@goldelico.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
DT: Pandora: fixes and extensions
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023115_120136_E6CB77C2 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 linux-mmc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* add a revisit note for special wl1251 handling code because it should
  be solved more generic in mmc core - suggested by Ulf Hansson <ulf.hansson@linaro.org>
* remove init_card callback from platform_data/hsmmc-omap.h - suggested by Ulf Hansson <ulf.hansson@linaro.org>
* remove obstructive always-on for vwlan regulator - suggested by Ulf Hansson <ulf.hansson@linaro.org>
* rename DT node - suggested by Rob Herring <robh@kernel.org>
* fix ARM: dts: subject prefix - suggested by Tony Lindgren <tony@atomide.com>
* also remove omap2_hsmmc_info and obc-y line in Makefile - suggested by Tony Lindgren <tony@atomide.com>

PATCH V2 2019-10-19 20:41:47:
* added acked-by for wl1251 patches - Kalle Valo <kvalo@codeaurora.org>
* really removed old pdata-quirks code (not through #if 0)
* splited out a partial revert of
	efdfeb079cc3b ("regulator: fixed: Convert to use GPIO descriptor only")
  because that was introduced after v4.19 and stops the removal of
  the pdata-quirks patch from cleanly applying to v4.9, v4.14, v4.19
  - reported by Sasha Levin <sashal@kernel.org>
* added a new patch to remove old omap hsmmc since pdata quirks
  were last user - suggested by Tony Lindgren <tony@atomide.com>

PATCH V1 2019-10-18 22:25:39:
Here we have a set of scattered patches to make the OpenPandora WiFi work again.

v4.7 did break the pdata-quirks which made the mmc3 interface
fail completely, because some code now assumes device tree
based instantiation.

Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")

v4.11 did break the sdio qirks for wl1251 which made the driver no longer
load, although the device was found as an sdio client.

Fixes: 884f38607897 ("mmc: core: move some sdio IDs out of quirks file")

To solve these issues:
* we convert mmc3 and wl1251 initialization from pdata-quirks
  to device tree
* we make the wl1251 driver read properties from device tree
* we fix the mmc core vendor ids and quirks
* we fix the wl1251 (and wl1271) driver to use only vendor ids
  from header file instead of (potentially conflicting) local
  definitions


H. Nikolaus Schaller (12):
  Documentation: dt: wireless: update wl1251 for sdio
  net: wireless: ti: wl1251 add device tree support
  ARM: dts: pandora-common: define wl1251 as child node of mmc3
  mmc: host: omap_hsmmc: add code for special init of wl1251 to get rid
    of pandora_wl1251_init_card
  omap: pdata-quirks: revert pandora specific gpiod additions
  omap: pdata-quirks: remove openpandora quirks for mmc3 and wl1251
  omap: remove omap2_hsmmc_info in old hsmmc.[ch] and update Makefile
  mmc: host: omap-hsmmc: remove init_card pdata callback from pdata
  mmc: sdio: fix wl1251 vendor id
  mmc: core: fix wl1251 sdio quirks
  net: wireless: ti: wl1251 use new SDIO_VENDOR_ID_TI_WL1251 definition
  net: wireless: ti: remove local VENDOR_ID and DEVICE_ID definitions

 .../bindings/net/wireless/ti,wl1251.txt       |  26 +++
 arch/arm/boot/dts/omap3-pandora-common.dtsi   |  36 +++-
 arch/arm/mach-omap2/Makefile                  |   3 -
 arch/arm/mach-omap2/common.h                  |   1 -
 arch/arm/mach-omap2/hsmmc.c                   | 171 ------------------
 arch/arm/mach-omap2/hsmmc.h                   |  32 ----
 arch/arm/mach-omap2/pdata-quirks.c            | 105 -----------
 drivers/mmc/core/quirks.h                     |   7 +
 drivers/mmc/host/omap_hsmmc.c                 |  30 ++-
 drivers/net/wireless/ti/wl1251/sdio.c         |  23 ++-
 drivers/net/wireless/ti/wlcore/sdio.c         |   8 -
 include/linux/mmc/sdio_ids.h                  |   2 +
 include/linux/platform_data/hsmmc-omap.h      |   3 -
 13 files changed, 111 insertions(+), 336 deletions(-)
 delete mode 100644 arch/arm/mach-omap2/hsmmc.c
 delete mode 100644 arch/arm/mach-omap2/hsmmc.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
