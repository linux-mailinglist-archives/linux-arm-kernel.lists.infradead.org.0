Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A12681C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5EoesIYW/D6DOtDkvQ1quDB5hZAaDuziWsyvOTTsFMk=; b=aCBJwrkpfehz7Q
	SIqELUPS6KiA5JtlW6We6Ny/OlUd/Uv5xhScez+m51UHlES355fBu5ZhElz02wqdXh0seeMxCZjcs
	fEH9rOOPMfMloUnqJubTzCHfRpPzy+jWrpquRmejb7SXVy6r2qglgKpf5MbinBG/Q3eJQfTQdzZvj
	4ZYd2j4xub68pvjOsDOTcIIevPisRdKjL7d6rjFiOsw1HXrzfx5FecM6RK/Sf2UmZVywcD9ZldFji
	4HFxe6cTljd1VEnnQCrXKXUI840YClXtxxBFl95m28imO2/eqFy0UsfGAGv+nwAU4nklL2wxY+AXS
	t8GeuKaDHSm6Ilc8WfPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTU0R-0002YD-UC; Wed, 22 May 2019 16:22:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTzG-00012g-MU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:21:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKdr8102263;
 Wed, 22 May 2019 11:20:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558542039;
 bh=Gpb1vaUdYj+cDL8YzUJEgAabIosE4tzV3esirEzT5bc=;
 h=From:To:CC:Subject:Date;
 b=hJkryzLGiqUHyZsDkaWVfinO/co2x5l0xtABReY1fM9yvC2pLvFu68aNHRfIE+j6m
 3F7pCq5vpxFYQFEzOAVSxEvQdhG1wqbQ5LEZp6+UwLGDUFHKJpfFRz0gEYZNs2fwoK
 Gk5/RUivXFH7r8IUST5s9Bwwqi6WT76wgNQHdpao=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4MGKdFP099352
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 May 2019 11:20:39 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 22
 May 2019 11:20:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 22 May 2019 11:20:38 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKceh104530;
 Wed, 22 May 2019 11:20:38 -0500
From: Nishanth Menon <nm@ti.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Santosh
 Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH 0/6] arm64: Initial support Texas Instrument's J721E Platform
Date: Wed, 22 May 2019 11:19:15 -0500
Message-ID: <20190522161921.20750-1-nm@ti.com>
X-Mailer: git-send-email 2.21.0.777.g83232e38648b
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_092106_810498_7CC6BA87 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Tero Kristo <t-kristo@ti.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds support for the latest new SoC, J721E, from Texas Instruments.

The series is an based off v5.2-rc1 and has the following driver
dependencies for a successful boot:
1.  https://lore.kernel.org/lkml/20190429131533.25122-1-afd@ti.com (for newer firmware)
2.  https://lore.kernel.org/linux-arm-kernel/1555093342-428-1-git-send-email-t-kristo@ti.com/
    - Clock IDs cannot be guarenteed to be sequential, has to be
      discovered from hardware description in dts
    - Clock IDs on this massive chip also exceeds 255, so, the support
      for the same is expected in follow on patches.

The full series is available here (including dependencies):
https://github.com/nmenon/linux-2.6-playground/commits/upstream/v5.2-rc1/j7es-base-v1

Boot Log: https://pastebin.ubuntu.com/p/j3NtfF8FQr/

NOTE:
 - If Greg is ok, we can pick up the uart compatibility via the k3 tree,
   else, I can spawn it off the series.
 - I will resubmit patch 6 (defconfig update) separately once again once
   patches 1-5 hit the next tree or for 5.3-rc2 which ever is convenient.

The J721E SoC belongs to the K3 Multicore SoC architecture platform
for automotive applications such as infotainment, cluster, premium
Audio, Gateway, industrial and a range of broad market applications.
This SoC is designed around reducing the system cost by eliminating
the need of an external system MCU and is targeted towards ASIL-B/C
certification/requirements in addition to allowing complex software
and system use-cases.

The Linux development follows AM654 in most of the configurations, but
adds new capabilities (details in follow on patches).

See J721E Technical Reference Manual (SPRUIL1, May 2019)
for further details: http://www.ti.com/lit/pdf/spruil1

Nishanth Menon (6):
  dt-bindings: arm: ti: Add bindings for J721E SoC
  dt-bindings: serial: 8250_omap: Add compatible for J721E UART
    controller
  arm64: dts: ti: Add Support for J721E SoC
  soc: ti: Add Support for J721E SoC config option
  arm64: dts: ti: Add support for J721E Common Processor Board
  arm64: defconfig: Enable TI's J721E SoC platform

 .../devicetree/bindings/arm/ti/k3.txt         |   3 +
 .../bindings/serial/omap_serial.txt           |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../dts/ti/k3-j721e-common-proc-board.dts     |  50 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 202 ++++++++++++++++++
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  72 +++++++
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   |  29 +++
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          | 176 +++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/soc/ti/Kconfig                        |   5 +
 10 files changed, 541 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e.dtsi

-- 
2.21.0.777.g83232e38648b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
