Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963831A96BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXDqDem2jEVo3td78+EowbeXAaeQ5+d7Z57jvpf+j/k=; b=opPkqVPGXkzZbc
	JYvcwqLHURTXuRJtOSwdb3q+uJsvK8kmftGScU8fUHmmV5ld2bSlQeXMsJ78xr0gVHhqR4Lw1Uss9
	VNPCzSOBLhIgNSi2bfSIrg9MuISg6UnVh/oN4tE7HFKIFHqYrjmA2/8p1JZNEk4IDawWBuOJuUtOo
	gA25W5m6O64WgkcSoFtQt867opRvPx5Xwb0iRbk31d+4t3xBXGh3rL0fxv7yMd6/qx4+1NYOq6qK+
	6O9gZ0EhWIJgekdZ6C4Vc6dZ8a4AfM2NDfYCWsxMS1InnhYNgCRmLlYeRQ8bTJHeFz5AJWc10elqo
	766NxZeYYBgQGaSRMB1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdXr-0000cV-Vx; Wed, 15 Apr 2020 08:37:19 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdWJ-0007sg-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586939729;
 s=strato-dkim-0002; d=goldelico.com;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=CAfnoN4m17go8Dw967b1uy/r86HBAZtFzBXJuBT/KA0=;
 b=thNh1e4BlHyrvlNQTPelk0nvSVlDL8CfmReokJcANiR2Ip7Lhgk3Uyd2+csUg5wgbi
 h6KvNWv0jpEDpwHHTpr+4Ef1GqO3nEjOL7hjsiV1bxHzgdzA9/22n+PsJey7y1sNC1q/
 5HHkr5wlSpwOrQH8ehBQUXVVxSqw8PyJ+7VjSO9GoqSlvK7lZolejVfOLDHj+Ox6Mgph
 iPmw5Zifx2L8Hjj+Z9MBSEUeV+pamaQ4eZlsm8mg0ubBYHnBwpYKw8va1PXn95GsYtuD
 GVh6R2W/jawlIafhIAqeN68UI8XhY/r6oP5UHiEALDwWb27zfTKMgeMkItoNn7KWZxZs
 HVcA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1OAA2UNf2M7O2CKN9ej"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3F8ZJ0Ih
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 10:35:19 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the PVRSGX
 GPU present in some OMAP SoC and JZ4780 (and many more)
Date: Wed, 15 Apr 2020 10:35:07 +0200
Message-Id: <cover.1586939718.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013543_788869_6A505779 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:4 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Philipp Rossak <embed3d@gmail.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 openpvrsgx-devgroup@letux.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, kernel@pyra-handheld.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* rebased to v5.7-rc1
* added DTS for for a31, a31s, a83t - by Philipp Rossak <embed3d@gmail.com>
* added DTS for "samsung,s5pv210-sgx540-120" - by Jonathan Bakker <xc-racer2@live.ca>
* bindings.yaml fixes:
  - added a31, a31
  - fixes for omap4470
  - jz4780 contains an sgx540-130 and not -120
  - a83t contains an sgx544-115 and not -116
  - removed "additionalProperties: false" because some SoC may need additional properties

PATCH V5 2020-03-29 19:38:32:
* reworked YAML bindings to pass dt_binding_check and be better grouped
* rename all nodes to "gpu: gpu@<address>"
* removed "img,sgx5" from example - suggested by Rob Herring <robh+dt@kernel.org>

PATCH V4 2019-12-17 19:02:11:
* MIPS: DTS: jz4780: removed "img,sgx5" from bindings
* YAML bindings: updated according to suggestions by Rob Herring
* MIPS: DTS: jz4780: insert-sorted gpu node by register address - suggested by Paul Cercueil

PATCH V3 2019-11-24 12:40:33:
* reworked YAML format with help by Rob Herring
* removed .txt binding document
* change compatible "ti,am335x-sgx" to "ti,am3352-sgx" - suggested by Tony Lindgren

PATCH V2 2019-11-07 12:06:17:
* tried to convert bindings to YAML format - suggested by Rob Herring
* added JZ4780 DTS node (proven to load the driver)
* removed timer and img,cores properties until we know we really need them - suggested by Rob Herring

PATCH V1 2019-10-18 20:46:35:

This patch series defines child nodes for the SGX5xx interface inside
different SoC so that a driver can be found and probed by the
compatible strings and can retrieve information about the SGX revision
that is included in a specific SoC. It also defines the interrupt number
to be used by the SGX driver.

There is currently no mainline driver for these GPUs, but a project [1]
is ongoing with the goal to get the open-source part as provided by TI/IMG
and others into drivers/gpu/drm/pvrsgx.

The kernel modules built from this project have successfully demonstrated
to work with the DTS definitions from this patch set on AM335x BeagleBone
Black, DM3730 and OMAP5 Pyra and Droid 4. They partially work on OMAP3530 and
PandaBoard ES but that is likely a problem in the kernel driver or the
(non-free) user-space libraries and binaries.

Wotk for JZ4780 (CI20 board) is in progress and there is potential to extend
this work to e.g. BananaPi-M3 (A83) and  some Intel Poulsbo and CedarView
devices.

[1]: https://github.com/openpvrsgx-devgroup


H. Nikolaus Schaller (8):
  dt-bindings: add img,pvrsgx.yaml for Imagination GPUs
  ARM: DTS: am33xx: add sgx gpu child node
  ARM: DTS: am3517: add sgx gpu child node
  ARM: DTS: omap34xx: add sgx gpu child node
  ARM: DTS: omap36xx: add sgx gpu child node
  ARM: DTS: omap4: add sgx gpu child node
  ARM: DTS: omap5: add sgx gpu child node
  MIPS: DTS: jz4780: add sgx gpu node

Jonathan Bakker (1):
  arm: dts: s5pv210: Add G3D node

Philipp Rossak (3):
  ARM: dts: sun6i: a31: add sgx gpu child node
  ARM: dts: sun6i: a31s: add sgx gpu child node
  ARM: dts: sun8i: a83t: add sgx gpu child node

 .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 122 ++++++++++++++++++
 arch/arm/boot/dts/am33xx.dtsi                 |  11 +-
 arch/arm/boot/dts/am3517.dtsi                 |   9 +-
 arch/arm/boot/dts/omap34xx.dtsi               |  11 +-
 arch/arm/boot/dts/omap36xx.dtsi               |   9 +-
 arch/arm/boot/dts/omap4.dtsi                  |  11 +-
 arch/arm/boot/dts/omap4470.dts                |  15 +++
 arch/arm/boot/dts/omap5.dtsi                  |  11 +-
 arch/arm/boot/dts/s5pv210.dtsi                |  15 +++
 arch/arm/boot/dts/sun6i-a31.dtsi              |  11 ++
 arch/arm/boot/dts/sun6i-a31s.dtsi             |  10 ++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  11 ++
 arch/mips/boot/dts/ingenic/jz4780.dtsi        |  11 ++
 13 files changed, 229 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
 create mode 100644 arch/arm/boot/dts/omap4470.dts

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
