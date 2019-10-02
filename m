Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27D1C4AE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk0TAQFYzrGvrjKvrKeEU8apBIEL1wINUB/2bbVv0l4=; b=r0v7evK9vs3DiZ
	NG7aniv3VSZywUOu1p426ZjpCDIBnqYdXqhLNTSqRlV6OIkQ/wff3Jv1KudEHQfs5rARPcB0CN2ru
	+D5LjNCZ6lkNpSimWna8YKyrBtyWUVXRuAY1Twlx7wzz+HZoHjR/cD//ZNKOSV2tDhJZABSUU3nHa
	q2pLibaudpPsUswo7YxZe7A0CNcLw1Pezk71YOFFoniIjueGPSI2UEn9wZzuVY4f2RxPGZeFJGbUR
	uHPH4E1Nk94xdLpnl6/Z4En2n7WqWQ3/LhWCQmHPlFMnqcCH8OympBvw6EacOkOxXzwOvLkgXDgYJ
	+S4NLISX0Uzv1Oc5Hy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbNf-0003XK-C5; Wed, 02 Oct 2019 09:57:11 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbNV-0003NW-Uf
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:57:04 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id ED5F9240015;
 Wed,  2 Oct 2019 09:56:51 +0000 (UTC)
Date: Wed, 2 Oct 2019 11:56:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: sam9x60_wdt: add bindings
Message-ID: <20191002095627.GK4106@piout.net>
References: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570001371-8174-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_025702_141258_F28FB25B 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, wim@linux-watchdog.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 07:35:23+0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Add bindings for Microchip SAM9X60 Watchdog Timer
> 
> It has the same bindings as
> Documentation/devicetree/bindings/watchdog/atmel-sama5d4-wdt.txt
> except the compatible.
> 

Maybe it can then use the same documentation file. However, I think you
should already use the yaml dt bindings schema instead of a simple text
file.

> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  .../devicetree/bindings/watchdog/sam9x60-wdt.txt   | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/sam9x60-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/sam9x60-wdt.txt b/Documentation/devicetree/bindings/watchdog/sam9x60-wdt.txt
> new file mode 100644
> index 00000000..74b4e2d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/sam9x60-wdt.txt
> @@ -0,0 +1,34 @@
> +* Microchip SAM9X60 Watchdog Timer (WDT) Controller
> +
> +Required properties:
> +- compatible: "microchip,sam9x60-wdt"
> +- reg: base physical address and length of memory mapped region.
> +
> +Optional properties:
> +- timeout-sec: watchdog timeout value (in seconds).
> +- interrupts: interrupt number to the CPU.
> +- atmel,watchdog-type: should be "hardware" or "software".
> +	"hardware": enable watchdog fault reset. A watchdog fault triggers
> +		    watchdog reset.
> +	"software": enable watchdog fault interrupt. A watchdog fault asserts
> +		    watchdog interrupt.
> +- atmel,idle-halt: present if you want to stop the watchdog when the CPU is
> +		   in idle state.
> +	CAUTION: This property should be used with care, it actually makes the
> +	watchdog not counting when the CPU is in idle state, therefore the
> +	watchdog reset time depends on mean CPU usage and will not reset at all
> +	if the CPU stop working while it is in idle state, which is probably
> +	not what you want.
> +- atmel,dbg-halt: present if you want to stop the watchdog when the CPU is
> +		  in debug state.
> +
> +Example:
> +	watchdog@ffffff80 {
> +		compatible = "microchip,sam9x60-wdt";
> +		reg = <0xffffff80 0x24>;
> +		interrupts = <1 IRQ_TYPE_LEVEL_HIGH 5>;
> +		timeout-sec = <10>;
> +		atmel,watchdog-type = "hardware";
> +		atmel,dbg-halt;
> +		atmel,idle-halt;
> +	};
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
