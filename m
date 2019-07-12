Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B98B66554
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RfIYy6IbPr5h2TESs60aWTg8oaiHhBTR17d1qlj2WMY=; b=Dr9LbQwK/YsGXX
	rhPXLeq/V2lVlhqo7HNub4QITVdPtZFwYDoLpTFwjPMKsnWYY+vYa0LKUYnbQmnaTZtMni3ik/swT
	PYMQJVOpL9BPZwtuN2YFVszAOiDElLtbuKcYFj73FPwuBwrvKe/qqWMdr3FCSjgBK/sCCtpMpcejd
	te7DS08FaRjz0If4/qNWGBY4kSaaDWAAHclsoX1pR7bgz4MbnUjYDV46WoLd21K7XNiBkT89W15xA
	bBoj4U1at4SEvSxtQYbZoPwvV0OywoDYvdKA41V6adTdVJTY6VFBUk7Pj7wqi/FaZtngbyeIv3DYZ
	fg6bW2zce+3aZsjqcmmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlma4-0001Jf-CS; Fri, 12 Jul 2019 03:50:44 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmYn-0007gT-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:49:27 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A8621891AE;
 Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1562903354;
 bh=FLxjHtuggLiz5nVvKIe0mf3/EtBD2P0X8+JkVp1mASM=;
 h=From:To:Cc:Subject:Date;
 b=Br40ZiRWlpUvVSScbaZIfyUDze1MgEJ55Bwu78uUkQ64DNNAYbMCn4yYRHOSdSe/E
 891/Yka6r4DHoezd4SPD8naXN0wecku/liXz4EYNAr7zfAz2nigyid5dKebA9kbHwU
 zIvVJVVCLYqzrTT0S2X6Ff8piRqym3zDN426Ze1sF/gl31s1PLZyVwuXxB0akDDvpD
 Lx9HU1d+AUvxpoxJf2UAeFhdw12FegARuGdhfEgutbMYf7dZAzLmI92H/FsXfaITWY
 7bxas5PoXJmw98Sp7Rb1XglC5FqP60qMOfmlpPgW5Z8D26wmxDM5y4eEWOJNSgGuPM
 fIOJJYapLvStA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d28033a0000>; Fri, 12 Jul 2019 15:49:14 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 081CE13EECF;
 Fri, 12 Jul 2019 15:49:16 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 3DC5B1E1D82; Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: bp@alien8.de, robh+dt@kernel.org, mark.rutland@arm.com,
 linux@armlinux.org.uk, patches@armlinux.org.uk, mchehab@kernel.org,
 james.morse@arm.com, jlu@pengutronix.de
Subject: [PATCH v9 0/8] EDAC drivers for Armada XP L2 and DDR
Date: Fri, 12 Jul 2019 15:48:56 +1200
Message-Id: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_204926_049367_3BD646B4 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I still seem to be struggling to get this on anyone's radar.

The Reviews/Acks have been given so this should be good to go in via the ARM
tree as planned.

http://lists.infradead.org/pipermail/linux-arm-kernel/2017-August/525561.html

This series adds drivers for the L2 cache and DDR RAM ECC functionality as
found on the MV78230/MV78x60 SoCs. Jan has tested these changes with the
MV78460 (on a custom board with a DDR3 ECC DIMM), Chris has tested these
changes with 88F6820 and 98dx3236 (both a custom boards with fixed DDR3 + ECC).

Also contained in this series is an additional debugfs wrapper.

Compared to the previous v8 series this has been rebased against
v5.2-5628-g753c8d9b7d81 to avoid some conflicts related to debugfs API changes.

Compared to the previous v7 series this has been rebased against 5.1 requiring
some changes in the devicetree binding documentation.

Compared to the previous v6 series I've dropped the marvell,ecc-disable
property.

Compared to the previous v5 series I've split the dt-binding documentation into
its own patch and updated armada_xp_edac.c to use a SPDX license.

Compared to the previous v4 series I've added my s-o-b to some of Jan's
patches and rebased against v4.19.0.

Compared to the previous v3 series, the following changes have been made:
- Use shorter names for the AURORA ECC and parity registers
- Numerous formatting changes to edac/armada_xp.c (as requested by Boris)
- Added support for Armada-38x and 98dx3236 SoCs

Compared to the previous v2 series, the following changes have been made:
- Allocate EDAC structures later during probing and drop devres support
  patches (requested by Boris)
- Make drvdata->width usage consistent according to the comment (suggested by
  Chris)

Compared to the previous v1 series, the following changes have been made:
- Add the aurora-l2 register defines earlier in the series (suggested by
  Russell King and Gregory CLEMENT )
- Changed the DT vendor prefix from "arm" to "marvell" for the ecc-enable/disable
  properties on the aurora-l2 (suggested by Russell King)
- Fix some warnings reported by checkpatch

Compared to the original RFC series, the following changes have been made:
- Integrated Chris' patches for parity and ECC configuration via DT
- Merged the DDR RAM and L2 cache drivers (as requested by Boris, analogous
  to fsl_ddr_edac.c and mpc85xx_edac.c)
- Added myself to MAINTAINERS (requested by Boris)
- L2 cache: Track the msg size and use snprintf (review comment by Chris)
- L2 cache: Split error injection from the check function (review comment by
  Chris)
- DDR RAM: Allow 16 bit width in addition to 32 and 64 bit (review comment by
  Chris)
- Use of_match_ptr() (review comments by Chris)
- Minor checkpatch cleanups


Chris Packham (4):
  ARM: l2x0: support parity-enable/disable on aurora
  dt-bindings: ARM: document marvell,ecc-enable binding
  ARM: l2x0: add marvell,ecc-enable property for aurora
  EDAC: armada_xp: Add support for more SoCs

Jan Luebbe (4):
  ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
  ARM: aurora-l2: add defines for parity and ECC registers
  EDAC: Add missing debugfs_create_x32 wrapper
  EDAC: Add driver for the Marvell Armada XP SDRAM and L2 cache ECC

 .../devicetree/bindings/arm/l2c2x0.yaml       |   4 +
 MAINTAINERS                                   |   6 +
 .../include/asm/hardware/cache-aurora-l2.h    |  50 +-
 arch/arm/mm/cache-l2x0.c                      |  16 +-
 drivers/edac/Kconfig                          |   7 +
 drivers/edac/Makefile                         |   1 +
 drivers/edac/armada_xp_edac.c                 | 635 ++++++++++++++++++
 drivers/edac/debugfs.c                        |  11 +
 drivers/edac/edac_module.h                    |   4 +
 9 files changed, 731 insertions(+), 3 deletions(-)
 create mode 100644 drivers/edac/armada_xp_edac.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
