Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54337DA708
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LAEMrZzymolJR0PEUdCl3351Fr1Wu66Gw75gmL8KTc=; b=kbAOOZQArzlJe/
	lluUyZ08n5kw74cbg8DFwwlUNGmO5CMMUfnBoFb5xGi5sQG+e8GhjlINIkz+RLZWfZBsdB+BWRDSQ
	QB3qJN7yAOSXeV4PYfL5RmVONfUS9ue7s/xhMv69uaeTqXn60n2H1bffpk0TFXk2a2spHqvCcP8h7
	OSqRFlQ+Cth0uLiaAK4udmO2v7ogRiGhXvD+dGp4w5VVvflrPq/3g4dCAnA3pDbvHAXfzQQycWVpJ
	HDaeRuYjhIaXl5GGzMvR3h7znt9ZNvgoBAFXkDwSra7AUkX8xoBEmdDaBQSkq4jrGgzFVDF2rDXNS
	lF+2MlyJv7DrbtsTk3kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0vk-0000pq-Hy; Thu, 17 Oct 2019 08:14:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0vc-0000pK-5H
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:14:37 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0vR-00060Q-S8; Thu, 17 Oct 2019 10:14:25 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0vO-0005qG-7s; Thu, 17 Oct 2019 10:14:22 +0200
Date: Thu, 17 Oct 2019 10:14:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 00/10] Add support for more Kontron i.MX6UL/ULL SoMs and
 boards
Message-ID: <20191017081422.65m5dtqznsanfftp@pengutronix.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016150622.21753-1-frieder.schrempf@kontron.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:12:59 up 152 days, 14:31, 99 users,  load average: 0.23, 0.11,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011436_202315_322627D7 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frieder,

On 19-10-16 15:06, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> In order to support more of the i.MX6UL/ULL-based SoMs and boards by
> Kontron Electronics GmbH, we restructure the devicetrees to share common
> parts and add new devicetrees for the missing boards.
> 
> Currently there are the following SoM flavors:
>   * N6310: SoM with i.MX6UL-2, 256MB RAM, 256MB SPI NAND
>   * N6311: SoM with i.MX6UL-2, 512MB RAM, 512MB SPI NAND (new)
>   * N6411: SoM with i.MX6ULL, 512MB RAM, 512MB SPI NAND (new)
> 
> Each of the SoMs also features 1MB SPI NOR and an Ethernet PHY. The carrier
> board for the evalkit is the same for all SoMs.
> 
> Frieder Schrempf (10):
>   ARM: dts: imx6ul-kontron-n6310: Move common SoM nodes to a separate
>     file
>   ARM: dts: Add support for two more Kontron SoMs N6311 and N6411
>   ARM: dts: imx6ul-kontron-n6310-s: Move common nodes to a separate file
>   ARM: dts: Add support for two more Kontron evalkit boards 'N6311 S'
>     and 'N6411 S'
>   ARM: dts: imx6ul-kontron-n6x1x: Add 'chosen' node with 'stdout-path'
>   ARM: dts: imx6ul-kontron-n6x1x-s: Specify bus-width for SD card and
>     eMMC
>   ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply and overcurrent
>     polarity to usb nodes
>   ARM: dts: imx6ul-kontron-n6x1x-s: Remove an obsolete comment and fix
>     indentation
>   dt-bindings: arm: fsl: Add more Kontron i.MX6UL/ULL compatibles
>   MAINTAINERS: Add an entry for Kontron Electronics ARM board support

Did you send all patches to same To: and Cc:?

Regards,
  Marco

> 
>  .../devicetree/bindings/arm/fsl.yaml          |  14 +
>  MAINTAINERS                                   |   6 +
>  arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 405 +----------------
>  .../boot/dts/imx6ul-kontron-n6310-som.dtsi    |  95 +---
>  arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts  |  16 +
>  .../boot/dts/imx6ul-kontron-n6311-som.dtsi    |  40 ++
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 422 ++++++++++++++++++
>  .../dts/imx6ul-kontron-n6x1x-som-common.dtsi  | 129 ++++++
>  arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts |  16 +
>  .../boot/dts/imx6ull-kontron-n6411-som.dtsi   |  40 ++
>  10 files changed, 685 insertions(+), 498 deletions(-)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-s.dts
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-som.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-s.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-som.dtsi
> 
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
