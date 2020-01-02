Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73AE12E17E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 02:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=asTDge2AgyNdWeHnY+7T4NEweRMd4fYbeeBLZO2uczU=; b=CHX
	ynd0d3Yr4sCleaHHqLD8RnQ5dRovXKJhFyIFBcXyNQx+4Z2aM9a8Rom6X8y5xtnxRQphE3yo49M68
	hSBMGal7jvqivlC6Rhtm1xBA4wLOXrpjcDTO+03R5L0ZRYLH7mYkYAP7b/OSXcqElttnq7OWfHJA6
	M8/TU1IjIN4S25WUzwUu1COaemygGU6K9+SSFIzZqxBwYF8ieaTNTZyw2hFG1NggzJPNHLgiSnLb4
	BmteWqeaXVG/RybW2DLzfjCaRJ86pPLBLLGlw814U5u9EGtvz48rhsEwna2Hb/ejjWsVv6ZqSHx6v
	paPT2J8L4S9S/mKMElJQ+owNUok4mdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1impH6-0004Up-Eg; Thu, 02 Jan 2020 01:27:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1impGk-0004Oo-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 01:27:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C33C31B;
 Wed,  1 Jan 2020 17:27:18 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6A423F703;
 Wed,  1 Jan 2020 17:27:16 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 0/3] ARM: dts: sun8i: R40: DT fixes and updates
Date: Thu,  2 Jan 2020 01:26:54 +0000
Message-Id: <20200102012657.9278-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_172722_888617_76114E26 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

some changes I made to the R40 .dtsi when playing around with a
Bananapi M2 Berry board:
- The GICC region is wrongly reported as 4K only, preventing KVM
  from using its VGIC emulation.
- The PMU node is missing, similar story as with the other SoCs: this
  time the SPI numbers are not even mentioned in the manual.
- I hooked up a SPI flash to the PortC SPI0 header pins (from which
  the board can even boot from). So patch 3 adds the SPI nodes and its
  pinmux setup, in case people need this for their peripherals.

Please have a look and apply!

Cheers,
Andre.

Andre Przywara (3):
  ARM: dts: sun8i: R40: Upgrade GICC reg size to 8K
  ARM: dts: sun8i: R40: Add PMU node
  ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes

 arch/arm/boot/dts/sun8i-r40.dtsi | 108 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 103 insertions(+), 5 deletions(-)

-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
