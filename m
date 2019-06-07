Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CC73824B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 02:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=qq9JPT0GEQ/H5y4wwgW0XedsIeRFvjv0LUXrEg3Keoo=; b=cWiywwPpQTwkC7
	Vs6ISl7A86D5JPgmT7yGfgfQjSzJbxsho6pv6p7fxW6ScsVthfAVZwefsfN/Ejn3e1RHKO12KeDRH
	U+g0AdHMaQIsAqtDhuiufqD4kzHjdCQ6ezoXBfn4hCzHcC6rVQ2BLrb3vz/K6M8+7sLtOmkOxPgGH
	16l1kyKyXb8qIihpvD/E4ntll2uvduVsYh47SpT0WoNZUbXjmk4LHwjDe7Mw+qXDggaXop0et083E
	e6gQUmFD2uDVH1s9rbx7qvurhtZOiEcrp9DbXoEbKcHNHeync3Z3DA7SJEGH17eJimhVvTzmphBt+
	7BfZ8XTZt2Qtlkv3xioQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ33R-0003MO-16; Fri, 07 Jun 2019 00:48:25 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ33C-0003L4-Sr
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 00:48:13 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D1CC883645;
 Fri,  7 Jun 2019 12:47:55 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1559868475;
 bh=h8GfrivEaJj042vYLp1gJzMOsrQwukxIiCoNK8N8T9s=;
 h=From:To:CC:Subject:Date:References;
 b=r18etF92Ubre9H+ccz6XnvCIPBNCqF1QKY9xST4bnJmQU0Bimo25TWOBUK0dOG7ky
 Bgm70JZS+0pvk9tXCLzrdcKLgJjgVESSLWhbVHZ/d4uUMi+2IjEgdHled7QU6blonc
 +BEnzkO4oeomDWmS6mzwxveagc1+1abdRjB55+90bRCNmhnhRnx6KrrWkvXu7nrVkM
 u0OBrpsXnX+S85XgLl1qjpfswwRTBWJpE67In9FH6hyjoZeA5CgLpY+QVnkhxHbqCm
 j9Oi7ddf8UWeDLNo/nm6D41JoUNJDB6dCyjLnd4IISjTSqcj+RaGhTFkMWp7PkpdfM
 uggLVCXQb+SKg==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cf9b4370001>; Fri, 07 Jun 2019 12:47:56 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Fri, 7 Jun 2019 12:47:51 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Fri, 7 Jun 2019 12:47:51 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "bp@alien8.de"
 <bp@alien8.de>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "james.morse@arm.com" <james.morse@arm.com>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>, "gregory.clement@bootlin.com"
 <gregory.clement@bootlin.com>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson
 <olof@lixom.net>
Subject: Re: [PATCH v8 0/9] EDAC drivers for Armada XP L2 and DDR
Thread-Topic: [PATCH v8 0/9] EDAC drivers for Armada XP L2 and DDR
Thread-Index: AQHVBxlTMstd+GrP+EKH5co1CKKfyQ==
Date: Fri, 7 Jun 2019 00:47:50 +0000
Message-ID: <9d41bbc106b24670a5dfe0993bd54274@svr-chch-ex1.atlnz.lc>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_174811_318220_AF267135 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

On 10/05/19 10:15 PM, Chris Packham wrote:
> The Reviews/Acks have been given so this should be good to go in via the ARM
> tree as planned.
> 
> http://lists.infradead.org/pipermail/linux-arm-kernel/2017-August/525561.html
> 
> This series adds drivers for the L2 cache and DDR RAM ECC functionality as
> found on the MV78230/MV78x60 SoCs. Jan has tested these changes with the
> MV78460 (on a custom board with a DDR3 ECC DIMM), Chris has tested these
> changes with 88F6820 and 98dx3236 (both a custom boards with fixed DDR3 + ECC).
> 
> Also contained in this series is an additional debugfs wrapper.

Ping?

> 
> Compared to the previous v7 series this has been rebased against 5.1 requiring
> some changes in the devicetree binding documentation.
> 
> Compared to the previous v6 series I've dropped the marvell,ecc-disable
> property.
> 
> Compared to the previous v5 series I've split the dt-binding documentation into
> its own patch and updated armada_xp_edac.c to use a SPDX license.
> 
> Compared to the previous v4 series I've added my s-o-b to some of Jan's
> patches and rebased against v4.19.0.
> 
> Compared to the previous v3 series, the following changes have been made:
> - Use shorter names for the AURORA ECC and parity registers
> - Numerous formatting changes to edac/armada_xp.c (as requested by Boris)
> - Added support for Armada-38x and 98dx3236 SoCs
> 
> Compared to the previous v2 series, the following changes have been made:
> - Allocate EDAC structures later during probing and drop devres support
>    patches (requested by Boris)
> - Make drvdata->width usage consistent according to the comment (suggested by
>    Chris)
> 
> Compared to the previous v1 series, the following changes have been made:
> - Add the aurora-l2 register defines earlier in the series (suggested by
>    Russell King and Gregory CLEMENT )
> - Changed the DT vendor prefix from "arm" to "marvell" for the ecc-enable/disable
>    properties on the aurora-l2 (suggested by Russell King)
> - Fix some warnings reported by checkpatch
> 
> Compared to the original RFC series, the following changes have been made:
> - Integrated Chris' patches for parity and ECC configuration via DT
> - Merged the DDR RAM and L2 cache drivers (as requested by Boris, analogous
>    to fsl_ddr_edac.c and mpc85xx_edac.c)
> - Added myself to MAINTAINERS (requested by Boris)
> - L2 cache: Track the msg size and use snprintf (review comment by Chris)
> - L2 cache: Split error injection from the check function (review comment by
>    Chris)
> - DDR RAM: Allow 16 bit width in addition to 32 and 64 bit (review comment by
>    Chris)
> - Use of_match_ptr() (review comments by Chris)
> - Minor checkpatch cleanups
> 
> 
> Chris Packham (4):
>    ARM: l2x0: support parity-enable/disable on aurora
>    dt-bindings: ARM: document marvell,ecc-enable binding
>    ARM: l2x0: add marvell,ecc-enable property for aurora
>    EDAC: armada_xp: Add support for more SoCs
> 
> Jan Luebbe (5):
>    ARM: l2c: move cache-aurora-l2.h to asm/hardware
>    ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
>    ARM: aurora-l2: add defines for parity and ECC registers
>    EDAC: Add missing debugfs_create_x32 wrapper
>    EDAC: Add driver for the Marvell Armada XP SDRAM and L2 cache ECC
> 
>   .../devicetree/bindings/arm/l2c2x0.yaml       |   4 +
>   MAINTAINERS                                   |   6 +
>   .../asm/hardware}/cache-aurora-l2.h           |  50 +-
>   arch/arm/mm/cache-l2x0.c                      |  18 +-
>   drivers/edac/Kconfig                          |   7 +
>   drivers/edac/Makefile                         |   1 +
>   drivers/edac/armada_xp_edac.c                 | 635 ++++++++++++++++++
>   drivers/edac/debugfs.c                        |  11 +
>   drivers/edac/edac_module.h                    |   5 +
>   9 files changed, 733 insertions(+), 4 deletions(-)
>   rename arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h (50%)
>   create mode 100644 drivers/edac/armada_xp_edac.c
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
