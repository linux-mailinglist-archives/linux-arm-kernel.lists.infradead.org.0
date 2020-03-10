Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3651717FFC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CacZQWOgTAPMZvqGEyrQaFhdRbp+uRJBnomYnT9OscA=; b=LUdaG7rs2WCSdi
	+BUFhdKKZJnIA2uKUHvD10CzdY4RHZat/TKjhQJFcF4iV8nOsb1+TmSzBNfnCy0UUkKrXdhuz1xEZ
	+HdlNEZHI25ItyRObCe3CsnPEIxMYOcv/9jAtUEG4plC/WwBHHQknNnB+uzPFWKP+MBkoOA8N9vl/
	/rGOHjC2HUAwH7zZUJuaLymfWGwW9sbU9yF/9S6mN6+EweJHefoG2/mlgq8QtSdcCTV0wn68RzFzk
	uyKRh2a9ZL3GbBRZpILN2qeYcs3aawMLRCX/knY/DOoF8c0dmjl6Fpx3fwF5elXJ03POv4m5yH97e
	4kMpVrXkrUA1KfVcsnJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfVS-00030I-Es; Tue, 10 Mar 2020 14:05:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfV8-0002zs-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1583849092; bh=E024hw0nCcOAz/evtUeh0SKgeswiCLbymOv+Vx8NBeE=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=E8boOYMHPpL1w1uF1IVT3DJGWFABQDdAcfZtNaNhdKlmQScsKUlgFNmMBLqb0n7Ni
 Oj1qpMNZz3sFL8LqTXtcjanCirwI+z0qDA2E2WY6yh7uMt5pLkwGC0IjesrmeyZHhG
 cg6bMYy7FZJ6MceeYI+i7Ss68wVXfHVrOk2nu5to=
Date: Tue, 10 Mar 2020 15:04:52 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [linux-sunxi] [PATCH 2/2] ARM: dts: sun4i: Add support for
 Topwise A721 tablet
Message-ID: <20200310140452.cfzw2o7al6uf2fpp@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Pascal Roeleven <dev@pascalroeleven.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
 <20200310102725.14591-3-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310102725.14591-3-dev@pascalroeleven.nl>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_070454_369627_1C23A30C 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 11:27:24AM +0100, Pascal Roeleven wrote:
> The Topwise A721/LY-F1 tablet is a tablet sold around 2012 under
> different brands. The mainboard mentions A721 clearly, so this tablet
> is best known under this name.
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
> ---
>  arch/arm/boot/dts/Makefile                   |   3 +-
>  arch/arm/boot/dts/sun4i-a10-topwise-a721.dts | 302 +++++++++++++++++++
>  2 files changed, 304 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/sun4i-a10-topwise-a721.dts
> 
> +/dts-v1/;
> +#include "sun4i-a10.dtsi"
> +#include "sunxi-common-regulators.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "Topwise A721";
> +	compatible = "topwise,a721", "allwinner,sun4i-a10";

And you also need to add the compatible to:

  Documentation/devicetree/bindings/arm/sunxi.yaml

regards,
	o.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
