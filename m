Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9C91A492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0awc+TzYvy9mhDITbx4sT6+KcDy0AvW0rNnX3Ki1mXc=; b=odw3UptTR7ZmxY
	R0WVKKFyeECdPc6ukE6lNwyiIR9Ae/E+Z5CCEBBCvw4tYZdRxMdDcsmBEbz+fzJ6IUZcEyIjN+OLR
	Jt0g4CldA0pPe6jRjr48SWbGt/onMzFMD61QNWqxDie2+d9RCXl+04+9vXr4qAqvyfr1Te/t+ddnr
	E4G4qNnjHv9OBJXN9A5QV6gPb03uiKuGvLzLyK7QxJiUhCu4QVKhBZwrm2zFswqahnTaWUBVXW0a4
	hO92R9j/hnVHuBn6oMIiUBSVOmBxJE/W7ubFV80o6D6jJIXK5mhNkzyuymsScJ+CWcIK5x14NEsCW
	/X2zDkvoQpZouUTxBdTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPD90-0008Dc-7r; Fri, 10 May 2019 21:33:30 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPD8s-0008D3-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:33:23 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C24CD200003;
 Fri, 10 May 2019 21:33:19 +0000 (UTC)
Date: Fri, 10 May 2019 23:33:19 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 3/4] dt-bindings: clk: at91: add bindings for
 SAM9X60's slow clock controller
Message-ID: <20190510213319.GF7622@piout.net>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557487388-32098-4-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_143322_635241_1BD65483 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/05/2019 11:23:35+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Add bindings for SAM9X60's slow clock controller.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> 
> Hi Rob,
> 
> I didn't added your Reviewed-by tag to this version since I changed
> the driver with regards to clock-cells DT binding (and I though you
> may want to comment on this).
> 
> Thank you,
> Claudiu Beznea
> 
>  Documentation/devicetree/bindings/clock/at91-clock.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/at91-clock.txt b/Documentation/devicetree/bindings/clock/at91-clock.txt
> index b520280e33ff..13f45db3b66d 100644
> --- a/Documentation/devicetree/bindings/clock/at91-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/at91-clock.txt
> @@ -9,10 +9,11 @@ Slow Clock controller:
>  Required properties:
>  - compatible : shall be one of the following:
>  	"atmel,at91sam9x5-sckc",
> -	"atmel,sama5d3-sckc" or
> -	"atmel,sama5d4-sckc":
> +	"atmel,sama5d3-sckc",
> +	"atmel,sama5d4-sckc" or
> +	"microchip,sam9x60-sckc":
>  		at91 SCKC (Slow Clock Controller)
> -- #clock-cells : shall be 0.
> +- #clock-cells : shall be 1 for "microchip,sam9x60-sckc" otherwise shall be 0.
>  - clocks : shall be the input parent clock phandle for the clock.
>  
>  Optional properties:
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
