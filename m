Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E764139553
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wsdyHc/AcGQnVZjETVtCoZ5yH8Iyk2z9iIeyPfiY4HI=; b=GwCM1NdJ6L0K+T
	wWRJ7Ped/2XC3+JGpGvdpospQaeZ4xOau4m8HEOjEu/OuO2jDklsMoMxKnH8uGt8FBv5vtXm8b4nL
	eYqqvb078MYWtZakLsut6KDt3rIXHFpiYb8P4UXAZHZa6IRkjI1USVSHlzznhkpinpi9EHKryiOIs
	C0rzf0YMNw7SkG4IzCUo35/HpQF6GAngUnbByVZa6IzRJRiaX2UitAHQ/b9s6ws+QazZ3nvFtBjly
	JNPSulWHEEz5+9Q6adfGT1zMByw76D3mexx4ujY+2aMAp06AbRwnWfpyB0OKSkJGnayVfyABJk0d5
	KnatMq+7KNgxOc+jh6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir23E-0004kg-7n; Mon, 13 Jan 2020 15:54:48 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir233-0004jr-VG
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:54:40 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 05650E000B;
 Mon, 13 Jan 2020 15:54:23 +0000 (UTC)
Date: Mon, 13 Jan 2020 16:54:23 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.6 #1
Message-ID: <20200113155423.GA1357189@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_075438_276216_D7FF6533 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Here is the first AT91 DT pull request for 5.6. A few new boards and not
so urgent fixes this cycle. I may have a second pull request by then end
of the week with the sam9x60 device tree.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.6-dt-1

for you to fetch changes up to a7e0f3fc01df4b1b7077df777c37feae8c9e8b6d:

  ARM: dts: at91: sama5d3: define clock rate range for tcb1 (2020-01-10 18:25:14 +0100)

----------------------------------------------------------------
AT91 DT for 5.6

 - Fix sama5d3 peripheral clock rate range
 - New boards: Overkiz Smartikz and Kizbox Mini, Microchip SAMA5D27
   wlsom1-ek
 - sama5d2 sdmcc fixes

----------------------------------------------------------------
Alexandre Belloni (3):
      ARM: dts: at91: nattis 2: remove unnecessary include
      ARM: dts: at91: sama5d3: fix maximum peripheral clock rates
      ARM: dts: at91: sama5d3: define clock rate range for tcb1

Andrei Stefanescu (1):
      ARM: dts: at91: sama5d2: mark secumod as a GPIO controller

Eugen Hristev (3):
      dt-bindings: ARM: at91: Document SAMA5D27 WLSOM1 and Evaluation Kit
      ARM: dts: at91: sama5d27_wlsom1: add SAMA5D27 wlsom1 and wlsom1-ek
      ARM: dts: at91: sama5d27_som1_ek: add i2c filters properties

Ingo van Lil (1):
      ARM: dts: at91: Reenable UART TX pull-ups

Kamel Bouhara (3):
      ARM: dts: at91: rearrange kizbox dts using aliases nodes
      dt-bindings: arm: at91: Document Kizboxmini and Smartkiz boards binding
      ARM: dts: at91: add smartkiz support and a common kizboxmini dtsi file

Ludovic Desroches (1):
      ARM: dts: at91: sama5d2: set the sdmmc gclk frequency

Nicolas Ferre (1):
      ARM: dts: at91: sama5d27_som1_ek: add the microchip,sdcal-inverted on sdmmc0

Razvan Stefanescu (1):
      ARM: dts: at91: sama5d2: disable pwm0 by default

 .../devicetree/bindings/arm/atmel-at91.yaml        |  25 ++
 arch/arm/boot/dts/Makefile                         |   6 +-
 arch/arm/boot/dts/at91-kizbox.dts                  | 172 ++++++------
 arch/arm/boot/dts/at91-kizboxmini-base.dts         |  24 ++
 ...-kizboxmini.dts => at91-kizboxmini-common.dtsi} | 163 ++++++-----
 arch/arm/boot/dts/at91-kizboxmini-mb.dts           |  26 ++
 arch/arm/boot/dts/at91-kizboxmini-rd.dts           |  49 ++++
 arch/arm/boot/dts/at91-nattis-2-natte-2.dts        |   1 -
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi          |   4 +
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts        |   6 +
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi        | 304 +++++++++++++++++++++
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts      | 270 ++++++++++++++++++
 arch/arm/boot/dts/at91-smartkiz.dts                | 109 ++++++++
 arch/arm/boot/dts/at91sam9260.dtsi                 |  16 +-
 arch/arm/boot/dts/at91sam9261.dtsi                 |   6 +-
 arch/arm/boot/dts/at91sam9263.dtsi                 |   6 +-
 arch/arm/boot/dts/at91sam9g45.dtsi                 |   8 +-
 arch/arm/boot/dts/at91sam9rl.dtsi                  |   8 +-
 arch/arm/boot/dts/sama5d2.dtsi                     |  10 +-
 arch/arm/boot/dts/sama5d3.dtsi                     |  28 +-
 arch/arm/boot/dts/sama5d3_can.dtsi                 |   4 +-
 arch/arm/boot/dts/sama5d3_tcb1.dtsi                |   1 +
 arch/arm/boot/dts/sama5d3_uart.dtsi                |   4 +-
 23 files changed, 1037 insertions(+), 213 deletions(-)
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini-base.dts
 rename arch/arm/boot/dts/{at91-kizboxmini.dts => at91-kizboxmini-common.dtsi} (51%)
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
 create mode 100644 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
 create mode 100644 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
 create mode 100644 arch/arm/boot/dts/at91-smartkiz.dts

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
