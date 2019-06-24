Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4341E4FE48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rSgUcIHr/3QC24jTpNlATyepvhJ4DceOtkTW87P2CI=; b=NZOpYMlyJb4diO
	cjaC1nlK/+Zcd1meV/YLJOfVnzUhSD9mqSUxz3d1yL7mabmHOu+vYrDVPAmtu2+/bCafAW1Wp/1+1
	Op4Qu70SelhJ268QQ12u7oqPQhiwLItVkV94StuljeTjPoFLr7+2o49RKh7r2x8yQlRz50ucVcCJ+
	9dTyCnBxShx/RVIt5ySI5gr3BspFw9FWjleTyXwstv2nMrQhz5EkITLoVwJO5t8kKEnKuVcdw0FCO
	25oZaZeKJQmN6zATfVKJgAw7qYwiEmQoNpqm5zWJXcpszGJ3jfkd5cteGQ+6TjaZGF91BGWkuUmn9
	/LT8Cr/s3CsodT2vIgNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfCfW-0006B6-U2; Mon, 24 Jun 2019 00:17:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfCfL-0006AR-ER
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:17:01 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 312382073F;
 Mon, 24 Jun 2019 00:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561335418;
 bh=rlOHzwEHb6pqbLmFFdbDpWnjpgMeLjwtJXHuyHU99k4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=roJv8fNnUZ0dRiuDvVUwCMeTZKp+rYD7LINPyt/Equnhsgqrl0uw2KlYXz3yv/oOz
 LsjbdcChTu9SBpwoJkep+EimMkvVRkjQ0BK0ZtsArotoz5QR34PwqBsyCMuDxcASBL
 BZJmJN/MJsDoVQKxEcXbXI5c6+E4rwQscQOAaLSc=
Date: Mon, 24 Jun 2019 08:16:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v5 00/15] add ecspi ERR009165 for i.mx6/7 soc family
Message-ID: <20190624001643.GB3800@dragon>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <1561135476.7537.5.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561135476.7537.5.camel@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_171659_529038_6C43C218 
X-CRM114-Status: GOOD (  25.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 08:42:48AM +0000, Robin Gong wrote:
> Hello Shawn/Will,
> =A0 Do you have comments for this V5 patch set? I got tags from Mark,
> Vinod and Rob.

I'm fine with the DTS change, but not sure how the series should be
merged.

Shawn

> =

> On 2019-06-10 at 08:17 +0000, yibin.gong@nxp.com wrote:
> > From: Robin Gong <yibin.gong@nxp.com>
> > =

> > =A0 There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
> > transfer to be send twice in DMA mode. Please get more information
> > from:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww
> > .nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=3D02%7C01%7Cyibin
> > .gong%40nxp.com%7C67d3e78fe5ef4428b3af08d6ed7beb74%7C686ea1d3bc2b4c6f
> > a92cd99c5c301635%7C0%7C1%7C636957513814970412&amp;sdata=3D%2F9sbrDEmIpu
> > OazcIAVpIrELZMEjO94%2Bjen7wOOlVsVk%3D&amp;reserved=3D0. The workaround
> > is adding
> > new sdma ram script which works in XCH=A0=A0mode as PIO inside sdma
> > instead
> > of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue should
> > be
> > exist on all legacy i.mx6/7 soc family before i.mx6ul.
> > =A0 NXP fix this design issue from i.mx6ul, so newer chips including
> > i.mx6ul/
> > 6ull/6sll do not need this workaroud anymore. All other i.mx6/7/8
> > chips
> > still need this workaroud. This patch set add new 'fsl,imx6ul-ecspi'
> > for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need
> > errata
> > or not.
> > =A0 The first two reverted patches should be the same issue, though, it
> > seems 'fixed' by changing to other shp script. Hope Sean or Sascha
> > could
> > have the chance to test this patch set if could fix their issues.
> > =A0 Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not
> > work
> > on i.mx8mm because the event id is zero.
> > =

> > PS:
> > =A0=A0=A0Please get sdma firmware from below linux-firmware and copy it=
 to
> > your
> > local rootfs /lib/firmware/imx/sdma.
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit
> > .kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ffirmware%2Flinux-
> > firmware.git%2Ftree%2Fimx%2Fsdma&amp;data=3D02%7C01%7Cyibin.gong%40nxp.
> > com%7C67d3e78fe5ef4428b3af08d6ed7beb74%7C686ea1d3bc2b4c6fa92cd99c5c30
> > 1635%7C0%7C1%7C636957513814970412&amp;sdata=3DxXHBWpSaSLmMosb%2FajOAiXn
> > nkxaYV6HCt25OOzgRLbI%3D&amp;reserved=3D0
> > =

> > v2:
> > =A0 1.Add commit log for reverted patches.
> > =A0 2.Add comment for 'ecspi_fixed' in sdma driver.
> > =A0 3.Add 'fsl,imx6sll-ecspi' compatible instead of 'fsl,imx6ul-ecspi'
> > =A0=A0=A0=A0rather than remove.
> > v3:
> > =A0 1.Confirm with design team make sure ERR009165 fixed on
> > i.mx6ul/i.mx6ull
> > =A0=A0=A0=A0/i.mx6sll, not fixed on i.mx8m/8mm and other i.mx6/7 legacy
> > chips.
> > =A0=A0=A0=A0Correct dts related dts patch in v2.
> > =A0 2.Clean eratta information in binding doc and new 'tx_glitch_fixed'
> > flag
> > =A0=A0=A0=A0in spi-imx driver to state ERR009165 fixed or not.
> > =A0 3.Enlarge burst size to fifo size for tx since tx_wml set to 0 in
> > the
> > =A0=A0=A0=A0errata workaroud, thus improve performance as possible.
> > v4:
> > =A0 1.add Ack tag from Mark and Vinod
> > =A0 2. remove checking 'event_id1' zero as 'event_id0'.
> > v5:
> > =A0 1.Add another patch for compatible with the current uart driver
> > which
> > =A0=A0=A0=A0using rom script, so both uart ram script and rom script
> > supported
> > =A0=A0=A0=A0in latest firmware, by default uart rom script used. UART d=
river
> > =A0=A0=A0=A0will be broken without this patch. Latest sdma firmware has=
 been
> > =A0=A0=A0=A0already updated in linux-firmware.=A0
> > =

> > Robin Gong (15):
> > =A0 Revert "ARM: dts: imx6q: Use correct SDMA script for SPI5 core"
> > =A0 Revert "ARM: dts: imx6: Use correct SDMA script for SPI cores"
> > =A0 Revert "dmaengine: imx-sdma: refine to load context only once"
> > =A0 dmaengine: imx-sdma: remove dupilicated sdma_load_context
> > =A0 dmaengine: imx-sdma: add mcu_2_ecspi script
> > =A0 spi: imx: fix ERR009165
> > =A0 spi: imx: remove ERR009165 workaround on i.mx6ul
> > =A0 spi: imx: add new i.mx6ul compatible name in binding doc
> > =A0 dmaengine: imx-sdma: remove ERR009165 on i.mx6ul
> > =A0 dma: imx-sdma: add i.mx6ul/6sx compatible name
> > =A0 dmaengine: imx-sdma: fix ecspi1 rx dma not work on i.mx8mm
> > =A0 ARM: dts: imx6ul: add dma support on ecspi
> > =A0 ARM: dts: imx6sll: correct sdma compatible
> > =A0 arm64: defconfig: Enable SDMA on i.mx8mq/8mm
> > =A0 dmaengine: imx-sdma: add uart rom script
> > =

> > =A0.../devicetree/bindings/dma/fsl-imx-sdma.txt=A0=A0=A0=A0=A0=A0=A0|=
=A0=A02 +
> > =A0.../devicetree/bindings/spi/fsl-imx-cspi.txt=A0=A0=A0=A0=A0=A0=A0|=
=A0=A01 +
> > =A0arch/arm/boot/dts/imx6q.dtsi=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A02 +-
> > =A0arch/arm/boot/dts/imx6qdl.dtsi=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A08 +-
> > =A0arch/arm/boot/dts/imx6sll.dtsi=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A02 +-
> > =A0arch/arm/boot/dts/imx6ul.dtsi=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A08 ++
> > =A0arch/arm64/configs/defconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0|=A0=A03 +
> > =A0drivers/dma/imx-sdma.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| 88
> > ++++++++++++++++------
> > =A0drivers/spi/spi-imx.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| 61
> > ++++++++++++---
> > =A0include/linux/platform_data/dma-imx-sdma.h=A0=A0=A0=A0=A0=A0=A0=A0=
=A0| 11 ++-
> > =A010 files changed, 145 insertions(+), 41 deletions(-)
> > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
