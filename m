Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CFD1185C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1wxNNXXBvL0E9QV8dxxLJTqC2s6rMAxwBQ9tuV/jRk=; b=DMXMxjBIEnGeLa
	3+dTSOMyxsYxUZEdSlVWOCCP2MeaYrESESIUlI2mOEi3c4qtrTw0UqEw/PUE5xfCEoErINta5viGy
	cu2dCMFsQaq+BH4jCrSLtXDsZVKTlbXpRTOOvxn9W6Shb8dGQj46j0GQ1ygD/TTRD5oR4ZdZt9SlT
	YkD5245HuVQW2vU04IfC2FzxRH1edhc3XOJxi7jzWaPznCe9ltkiu1W/exVXOxxFrIlrvKNkJxrYU
	8v+zFLVlQXdZQpzbO6YYPI0C+Qn/aaSDa1KuSt/PwLGKu0fo3SY/fwqIdaf1LE+oCPg65j/+lZubA
	XE/AZEgMmLOBWVlXYvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedJu-0004OV-Ik; Tue, 10 Dec 2019 11:04:46 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedJl-0004Ne-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:04:39 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0C0A6FF802;
 Tue, 10 Dec 2019 11:04:21 +0000 (UTC)
Date: Tue, 10 Dec 2019 12:04:19 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Message-ID: <20191210110419.GI1463890@piout.net>
References: <20191120145536.17884-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120145536.17884-1-robh@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_030437_804607_AFDFA497 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Peter Rosin <peda@axentia.se>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/11/2019 08:55:36-0600, Rob Herring wrote:
> The bindings described in axentia.txt are already covered by
> atmel-at91.yaml, so remove the file.
> 
> Cc: Peter Rosin <peda@axentia.se>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  .../devicetree/bindings/arm/axentia.txt       | 28 -------------------
>  MAINTAINERS                                   |  1 -
>  2 files changed, 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/axentia.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/axentia.txt b/Documentation/devicetree/bindings/arm/axentia.txt
> deleted file mode 100644
> index de58f2463880..000000000000
> --- a/Documentation/devicetree/bindings/arm/axentia.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Device tree bindings for Axentia ARM devices
> -============================================
> -
> -Linea CPU module
> -----------------
> -
> -Required root node properties:
> -compatible = "axentia,linea",
> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
> -and following the rules from atmel-at91.txt for a sama5d31 SoC.
> -
> -
> -Nattis v2 board with Natte v2 power board
> ------------------------------------------
> -
> -Required root node properties:
> -compatible = "axentia,nattis-2", "axentia,natte-2", "axentia,linea",
> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
> -and following the rules from above for the axentia,linea CPU module.
> -
> -
> -TSE-850 v3 board
> -----------------
> -
> -Required root node properties:
> -compatible = "axentia,tse850v3", "axentia,linea",
> -	     "atmel,sama5d31", "atmel,sama5d3", "atmel,sama5";
> -and following the rules from above for the axentia,linea CPU module.
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 97b28c913813..8d711f764dfb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2859,7 +2859,6 @@ AXENTIA ARM DEVICES
>  M:	Peter Rosin <peda@axentia.se>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/arm/axentia.txt
>  F:	arch/arm/boot/dts/at91-linea.dtsi
>  F:	arch/arm/boot/dts/at91-natte.dtsi
>  F:	arch/arm/boot/dts/at91-nattis-2-natte-2.dts
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
