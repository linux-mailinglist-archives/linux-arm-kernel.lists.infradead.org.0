Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC71A4967
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbts5w60savKmXur0huIieA+TM9oovoZwILCfQ3YR5c=; b=T1m1lwfrhXMyJL
	Z69Bt6PByJpOk6DU9mM7D3DxDo/hpKiunQoZkX857TbTII55cFMCxL5AvHkGQ5RgT7CcTPhsCnm+u
	GnNm0UwgpZs06O/MppPBG0sCoUzNCDLIJzQYz7X4Kv5MClgs9rG7T6Gn0hdMJy1RiBwArkq7iTaVj
	7KPk7zkA9CAr8GvtV4YIj5ztwB9fDp9+Cp5eOdp4fqTdBRb1oO3k6Pb7syeLYN6w8ZsDHnaYa9sUY
	5oGPRIE3cxhK012hsa4tAk9EHsgkbQjvTt1L5v5Xu+YuITlqAyFe0fJii35s18tBC0+suwyCKuP5I
	H5wvMfo9FyKZ38NeWxWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxei-0002F3-Ku; Fri, 10 Apr 2020 17:41:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxeY-0002D0-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:41:20 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 445DBFF810;
 Fri, 10 Apr 2020 17:41:14 +0000 (UTC)
Date: Fri, 10 Apr 2020 19:41:13 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 5/5] rtc: at91sam9: add microchip,sam9x60-rtt
Message-ID: <20200410174113.GZ3628@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586536019-12348-6-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_104118_848259_1F128D10 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch must come first. Also, the correct prefix is
dt-bindings: rtc:

On 10/04/2020 19:26:59+0300, Claudiu Beznea wrote:
> Add microchip,sam9x60-rtt to compatible list.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
> index 6ae79d1843f3..b2f913ff6c69 100644
> --- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
> @@ -1,7 +1,7 @@
>  Atmel AT91SAM9260 Real Time Timer
>  
>  Required properties:
> -- compatible: should be: "atmel,at91sam9260-rtt"
> +- compatible: should be: "atmel,at91sam9260-rtt" or "microchip,sam9x60-rtt"

If you had a fallback on atmel,at91sam9260-rtt, this would make merging
this series easier as this removes the need for 1/5 and 2/5.

I think 2/5 may be useful in the future but as far as the aic fixup
is concerned, both IPs are identical.

>  - reg: should encode the memory region of the RTT controller
>  - interrupts: rtt alarm/event interrupt
>  - clocks: should contain the 32 KHz slow clk that will drive the RTT block.
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
