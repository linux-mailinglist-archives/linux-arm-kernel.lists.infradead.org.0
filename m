Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4934B7A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TNDN6I7fy2RCM65/qbDcEFfRHze3QaXxn+uiQP/8zGU=; b=a/pxDKE75Fpgs1BpGmZUE+kad0
	dxlxdtv0s6mCVRyX1ASX6gDpm/mzWJ0BRWluOiEaguGhHuV9ihLGNfOCa+rvUncHGyujhOPw9znFB
	u4QHLlzlSG1qcoL8FRaRA+bot9kx1feFYwQXRmIT7tBjr4QU9xRcam6GtvCo7TfGv7b8UmgbG1wNK
	QawWZwkzQUuhxk/xEHHS9qIvdc8+e9+Vv3pcIoDHdFtks+p7fuBMITBQupz8JXdmdwD0TJrqqEqBC
	J2PPiCgR5reA80sbNKmAlxsHMSPyozYS6thAuchrbs5v0EjoxFQIkCeLaMUfCu7rTW5Q52MiJNYvX
	M69gfvtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZMk-0001Vp-Si; Wed, 19 Jun 2019 12:07:02 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZMc-0001VO-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:06:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5JC6pUx063692;
 Wed, 19 Jun 2019 07:06:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560946011;
 bh=Wmma7oI3Wv5wmLItigndGMpTeOPlaeyyklluCs2qWjc=;
 h=To:CC:From:Subject:Date;
 b=TZX02a8C4ecJmmPvx1ocm0fOs9qdOmpojgsnCPMtWjNeKoagCve8HQz1LEuWPfMvl
 ARJjqiQyGMqqdXg9WPI54uO5pgc3iT0x81ZpNl9FGwdvRNrOcLYMyG5gxzEDvfUAag
 G+76o4t/Rb06715qFIOnbKzCjhENhkhO0XUDYY+w=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5JC6pjH065374
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Jun 2019 07:06:51 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 19
 Jun 2019 07:06:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 19 Jun 2019 07:06:48 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5JC6ksm052606;
 Wed, 19 Jun 2019 07:06:46 -0500
To: <arm@kernel.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] Texas Instruments K3 SoC changes for 5.3
Message-ID: <479002be-d9cf-38d6-e7a7-82e71d439ff7@ti.com>
Date: Wed, 19 Jun 2019 15:06:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_050654_523439_9BACDD3F 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, "tony@atomide.com" <tony@atomide.com>, "J,
 Keerthy" <j-keerthy@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull the changes for Texas Instruments K3 SoC family changes for 5.3.

Thanks,
Tero

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.3

for you to fetch changes up to 78eccc2ac98e4166def294f02283f21cefd89591:

   arm64: dts: ti: k3-j721e: Add the MCU SRAM node (2019-06-19 11:59:49 
+0300)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for 5.3

- Add support for the new J721e SoC, includes basic peripherals needed for
   booting up the device
- New peripheral support added for AM654x:
   * TI SCI irqchip
   * GPIO
   * MCU SRAM
   * R5Fs
   * MSMC RAM
   * SERDES and PCIe

----------------------------------------------------------------
Keerthy (3):
       arm64: dts: ti: am6-wakeup: Add gpio node
       arm64: dts: ti: am6-main: Add gpio nodes
       arm64: dts: ti: am654-base-board: Add gpio_keys node

Kishon Vijay Abraham I (6):
       arm64: dts: k3-am6: Add "socionext,synquacer-pre-its" property to 
gic_its
       arm64: dts: k3-am6: Add mux-controller DT node required for 
muxing SERDES
       arm64: dts: k3-am6: Add SERDES DT node
       arm64: dts: k3-am6: Add PCIe Root Complex DT node
       arm64: dts: k3-am6: Add PCIe Endpoint DT node
       arm64: dts: ti: am654-base-board: Disable SERDES and PCIe

Lokesh Vutla (5):
       arm64: dts: ti: k3-am654: Update compatible for dmsc
       arm64: dts: ti: k3-am654: Add interrupt controllers in main domain
       arm64: dts: ti: k3-am654: Add interrupt controllers in wakeup domain
       arm64: dts: ti: k3-j721e: Add interrupt controllers in main domain
       arm64: dts: ti: k3-j721e: Add interrupt controllers in wakeup domain

Nishanth Menon (6):
       dt-bindings: arm: ti: Add bindings for J721E SoC
       dt-bindings: serial: 8250_omap: Add compatible for J721E UART 
controller
       arm64: dts: ti: Add Support for J721E SoC
       soc: ti: Add Support for J721E SoC config option
       arm64: dts: ti: Add support for J721E Common Processor Board
       arm64: defconfig: Enable TI's J721E SoC platform

Roger Quadros (1):
       arm64: dts: ti: k3-am65: Add MSMC RAM ranges in interconnect node

Suman Anna (5):
       arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
       arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
       arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes
       arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt 
controller node
       arm64: dts: ti: k3-j721e: Add the MCU SRAM node

  Documentation/devicetree/bindings/arm/ti/k3.txt    |   3 +
  .../devicetree/bindings/serial/omap_serial.txt     |   1 +
  arch/arm64/boot/dts/ti/Makefile                    |   2 +
  arch/arm64/boot/dts/ti/k3-am65-main.dtsi           | 201 +++++++++++++++++
  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi            |   8 +
  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi         |  28 ++-
  arch/arm64/boot/dts/ti/k3-am65.dtsi                |   8 +
  arch/arm64/boot/dts/ti/k3-am654-base-board.dts     |  51 +++++
  .../boot/dts/ti/k3-j721e-common-proc-board.dts     |  50 +++++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 243 
+++++++++++++++++++++
  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi    |  90 ++++++++
  arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi        |  29 +++
  arch/arm64/boot/dts/ti/k3-j721e.dtsi               | 177 +++++++++++++++
  arch/arm64/configs/defconfig                       |   1 +
  drivers/soc/ti/Kconfig                             |   5 +
  15 files changed, 896 insertions(+), 1 deletion(-)
  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
  create mode 100644 arch/arm64/boot/dts/ti/k3-j721e.dtsi
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
