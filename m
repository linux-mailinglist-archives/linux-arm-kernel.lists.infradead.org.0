Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0016C9EC50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DPSnI/iTkR96sJ/NZTdmVMGNcSN0tfahVwVYRW5K3w=; b=HCMDfLOPlvk1Xm
	nA1mwwd1uEAjD6UzeXx2hS3GoVbsTwpAMBLzIwvtH6RvbTyRqhtCtX844xC2n9Kt9AP0lr++9FSKv
	QfSQHGwK38A/Ne3nAaK7vL8Pd0koyqKV/BlrB9wmmbw1vDIt7Ozcat0pjqGXcheQ+4PeSIxN39zVl
	p3e613CYLXA5YY6fxwRuQf3S7OsjZJdUJ9nyg4g9ftMfViQBDiBexfWb/+GnoeIEKMJ94XaKgySai
	LdaNYVYnEYWhivxwx/slpcMUwsih8FEUJyLmHCeijGhnB9LinjaxtJueEPkEinO9ZtMXv5T0AfrKm
	R31/azpgUJiAVGEgVYEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dHc-0007fk-2n; Tue, 27 Aug 2019 15:21:20 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dHQ-0007fK-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:21:09 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3E6BC20018;
 Tue, 27 Aug 2019 15:20:56 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 05/20] arm64: dts: marvell: Prepare the introduction of
 AP807 based SoCs
In-Reply-To: <20190806145500.24109-6-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-6-miquel.raynal@bootlin.com>
Date: Tue, 27 Aug 2019 17:20:55 +0200
Message-ID: <87d0gqzlbc.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082108_269822_D3AFDC97 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Konstantin Porotchkin <kostap@marvell.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> Prepare the support for Marvell AP807 die. This die is very similar to
> AP806 but uses different DDR PHY. AP807 is a major component of CN9130
> SoC series.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 448 +----------------
>  arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 456 ++++++++++++++++++
>  2 files changed, 458 insertions(+), 446 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> index a23ddd46efc5..cdadb28f287e 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> @@ -5,454 +5,10 @@
>   * Device Tree file for Marvell Armada AP806.
>   */
>  
> -#include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/thermal/thermal.h>
> -
> -/dts-v1/;
> +#define AP_NAME		ap806

I didn't find where AP_NAME is used.

> +#include "armada-ap80x.dtsi"
[...]

> diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
> new file mode 100644
> index 000000000000..c44cd7c64bf6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi

[...]


> +	ap806 {

This file will be used for ap806 and for ap807 but the ap name will be
the same for both varirant?

Shouldn't you use the AP_NAME here?

Gregory

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
