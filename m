Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9501C1A0E9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lZjFNC+qwx7SxmwFJSaseZJpBLb8m+WYM4wEYqUc9g=; b=GD/penXTpvKnvT
	N9V+uz5M5Po//pArmHqtUdOvaJCveQJ24gcIIqgrbM/pG0tmYvFjT+q/uJeGcWMAGXjF8r4qPDp6N
	bNeYdmbXdpYrk5pOrg7axd6R3uP66l7cz8DviZJEq0jIPb5eZ63cVX6l0PS0mloqwBbSUKmBIzQOK
	O0ZJX2PKUcoQd7iV/qq+r//PmJtugHl7Jki6fJFWkgKEzY+UvJG7wTWpT6rbUMJNMUCVw3GCXJnpo
	68OQ5IBUb5PkaL/UBULrosRFGl6cgcWiCx6i3rwUQrhBCfPXE99KdcUV7+IE8CsBXxMc5xwv0RD/G
	UAAltnKkKAnovcmy7Qtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoYC-0007XB-Mo; Tue, 07 Apr 2020 13:46:00 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoY6-0007WN-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 13:45:55 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B8FB3240006;
 Tue,  7 Apr 2020 13:45:48 +0000 (UTC)
Date: Tue, 7 Apr 2020 15:45:48 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: cristian.birsan@microchip.com
Subject: Re: [PATCH 3/7] usb: gadget: at91_udc: Update DT binding documentation
Message-ID: <20200407134548.GJ3628@piout.net>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
 <20200407122852.19422-4-cristian.birsan@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407122852.19422-4-cristian.birsan@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_064554_448289_E8401D01 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The prefix for this patch should be dt-bindings: usb:

On 07/04/2020 15:28:48+0300, cristian.birsan@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> Add sam9x60 binding.
> 
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> ---
>  Documentation/devicetree/bindings/usb/atmel-usb.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/atmel-usb.txt b/Documentation/devicetree/bindings/usb/atmel-usb.txt
> index 44e80153b148..bae2b928a014 100644
> --- a/Documentation/devicetree/bindings/usb/atmel-usb.txt
> +++ b/Documentation/devicetree/bindings/usb/atmel-usb.txt
> @@ -82,6 +82,7 @@ Required properties:
>  	       "atmel,at91sam9rl-udc"
>  	       "atmel,at91sam9g45-udc"
>  	       "atmel,sama5d3-udc"
> +	       "microchip,sam9x60-udc"
>   - reg: Address and length of the register set for the device
>   - interrupts: Should contain usba interrupt
>   - clocks: Should reference the peripheral and host clocks
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
