Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80DD1E838A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiiMrpX0K9VK0ZV49fa3nzodDBGi2dORBeGpuzKGjW4=; b=hkBdS2J9p6PUWe
	FcS9TmHanXdFIf40TJiP/6ml9xtjzaQsfZhaxYEXwvlBTY9OhduhfmOAPP6NMXTV7EDfhP/q0vkQv
	8MMKt7N+k74RBkSWWlL8o16n5DOyT18pUeoC4/MwFrBGy6OoHERiioyBgUdmUbp2/9G/z1nfPjBIQ
	jDrMAcnS6wWMY3xzbzCcVOI0B1DsEUNJ4s79PhSqHIFvVHQQoKyhLl66rW5QjtswDLfCP/TLg6Xy+
	JhYc9gOGIVg3Foy3tRnGreUxfeaCX6P3RE2E1FbLZbR4TkWTPR+xXZZsu6HAgsMF48oQDfpNIf/2a
	MHgcdZiiTg+aZwyNdLyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehld-00066L-Kh; Fri, 29 May 2020 16:21:57 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehlT-00064u-JO
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:21:49 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 078768030772;
 Fri, 29 May 2020 16:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-5OvJZSG0eC; Fri, 29 May 2020 19:21:31 +0300 (MSK)
Date: Fri, 29 May 2020 19:21:30 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 00/10] spi: Adding support for Microchip Sparx5 SoC
Message-ID: <20200529162130.hsjcde27xhohl6jl@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_092147_997891_822CADE2 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Mark Brown <broonie@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Lars,

On Wed, May 13, 2020 at 04:00:21PM +0200, Lars Povlsen wrote:
> This is an add-on series to the main SoC Sparx5 series
> (Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).
> 
> The series add support for Sparx5 on top of the existing
> ocelot/jaguar2 spi driver.
> 
> It spins off the existing support for the MSCC platforms into a
> separate driver, as adding new platforms from the MSCC/Microchip
> product lines will further complicate (clutter) the original driver.
> 
> New YAML dt-bindings are provided for the resulting driver.
> 
> It is expected that the DT patches are to be taken directly by the arm-soc
> maintainers.

Regarding our cooperation. It can be implemented as follows. Since your patchset
is less cumbersome than mine and is more ready to be integrated into the generic DW
APB SSI code, it would be better to first make it through Mark', Andy' and my reviews
to be further merged into the kernel version of the driver. After that I'll have
my code altered so it could be applied on top of your patches. When everything
is done we'll have a more comprehensive DW APB SSI driver with poll-based
PIO operations support, new features like rx-delay, etc.

Thank you one more time for the series you've shared with us. Let's see what can
be done to improve it...

-Sergey

> 
> Lars Povlsen (10):
>   spi: dw: Add support for polled operation via no IRQ specified in DT
>   spi: dw: Add support for RX sample delay register
>   spi: dw: Add support for client driver memory operations
>   dt-bindings: spi: Add bindings for spi-dw-mchp
>   spi: spi-dw-mmio: Spin off MSCC platforms into spi-dw-mchp
>   dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
>   spi: spi-dw-mchp: Add Sparx5 support
>   arm64: dts: sparx5: Add SPI controller
>   arm64: dts: sparx5: Add spi-nor support
>   arm64: dts: sparx5: Add spi-nand devices
> 
>  .../bindings/spi/mscc,ocelot-spi.yaml         |  89 ++++
>  .../bindings/spi/snps,dw-apb-ssi.txt          |   7 +-
>  MAINTAINERS                                   |   2 +
>  arch/arm64/boot/dts/microchip/sparx5.dtsi     |  37 ++
>  .../boot/dts/microchip/sparx5_pcb125.dts      |  16 +
>  .../boot/dts/microchip/sparx5_pcb134.dts      |  22 +
>  .../dts/microchip/sparx5_pcb134_board.dtsi    |   9 +
>  .../boot/dts/microchip/sparx5_pcb135.dts      |  23 +
>  .../dts/microchip/sparx5_pcb135_board.dtsi    |   9 +
>  arch/mips/configs/generic/board-ocelot.config |   2 +-
>  drivers/spi/Kconfig                           |   7 +
>  drivers/spi/Makefile                          |   1 +
>  drivers/spi/spi-dw-mchp.c                     | 399 ++++++++++++++++++
>  drivers/spi/spi-dw-mmio.c                     |  93 ----
>  drivers/spi/spi-dw.c                          |  31 +-
>  drivers/spi/spi-dw.h                          |   4 +
>  16 files changed, 644 insertions(+), 107 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>  create mode 100644 drivers/spi/spi-dw-mchp.c
> 
> --
> 2.26.2
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
