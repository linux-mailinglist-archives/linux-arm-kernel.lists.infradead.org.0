Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E64BA1C6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 12:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LguYym5nM07zla8z+aQQ0mcOUYYBTEBl25JDTzqdWLI=; b=T35h1BvgiU2ys4
	Dky/rl7++TfU+KgakPqkdQRS1CyYVFvgg9HIDr8roRf0JdnAeJepjayMvxjwZR32NojAkuoule1gY
	+4poydizKeYKBBTHZ/F/6gYjpz3TjwBviVT36d4kisShQaBz9HyXRL3oc90XOLIL//XsYVNswsfST
	pkG+7P5PCKLagw57dWI/j7MlQv7Sn3vgBLa7qKpHsYWaINmkRpqJFsfzXkll1Fi70EtwX3gazqjGx
	vYbN4+9jRQXiWicha/Yj3FWIoAMEUaCKA6xQourmM6W9IMbnU7vQeteIXUM3hdPHZ4ZiR7mVeDwZJ
	bsB2e0AVVUmBWiotuM+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBz2h-0004dd-Jx; Sun, 22 Sep 2019 10:24:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBz2N-0004cx-Jb
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 10:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xLiXZz7ulDDbMepjtUEDk/czdplbAPrLVsiUAga50wQ=; b=n+DGehhQ0RbNTVJJuJ0+13oRC
 DHFvF3/9U17e5nVkuqL3nFLPMrqQoctaZ4ailL1SnuHK/GeA7ku+b0QtTjNb+uvv1UL1BGaJnQGe7
 I/r6j0M4laB44+NXa7tqpke55v3XrDyk/I+p04uK60s2L7tLSQi+YPwXM/LJm6orSmMW/0tjEWR37
 qDiM72wn84jyAlcpuSSDuOJEAlerhGeeiM+ScxV//+8flhv3GexfoqNyxA3za5V5jO2Xei8KXB5fV
 9FwtXCQzpMLdl0x+EhVafyo/m8Mh96SyqXnzKgCkiJKDqY6Mphl+pbHdYbA5y2nmzSz/C8ST43Ob+
 ZwjeKJgLA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:35104)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iBz20-0006RF-Dv; Sun, 22 Sep 2019 11:23:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iBz1p-0007e5-Px; Sun, 22 Sep 2019 11:23:41 +0100
Date: Sun, 22 Sep 2019 11:23:41 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>,
 dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 0/3] Fix sdhci-of-esdhc DMA coherency
Message-ID: <20190922102341.GO25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_032415_823648_FFE7258E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The following patch set is a result of looking at the ADMA errors
observed on SolidRun's LX2160A board, caused by coherency mismatch
between DT and hardware.

The first patch improves the debugging by dumping the ADMA table
using the DMA address, which can be compared with the DMA address
reported in the register dump.  It also prints the interrupt status
that we read, whereas the register dump contains the _cleared_
interrupt status.

The second patch modifies sdhci-of-esdhc to set the DMA snoop bit
depending on whether DT marks the device as coherent or not.  With
this patch applied, driver will now set the hardware to match the
contents of DT, rather than always DMA snooping.  As explained by
Robin, if the hardware snoops the CPU caches, but the DMA API layer
does not expect this, the hardware can read stale data.  The hardware
state and the DMA API must always agree wrt this, for the sake of
data integrity.  Mismatch risks substantial filesystem corruption.

The third patch marks the LX2160A esdhc devices as dma-coherent.
Other users of the driver are not touched; I do not have the
information to know whether DMA snooping (coherency) is available
on other SoCs using this driver.  However, given the risk of
filesystem corruption, it is important no matter what that the
DMA API layer and the hardware agree - even if it means defaulting
to being non-coherent.

 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi |  2 ++
 drivers/mmc/host/sdhci-of-esdhc.c              |  7 ++++++-
 drivers/mmc/host/sdhci.c                       | 15 ++++++++++-----
 3 files changed, 18 insertions(+), 6 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
