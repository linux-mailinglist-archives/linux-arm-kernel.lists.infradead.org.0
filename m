Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED601D52E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu+iSFySfE3nP5YxJnocyn1ntbhoO3thUIINSts3A1Y=; b=VuPCtX+tY0H09Q
	MJ3w5YqIQfkvziC95TKJ1IYFy34Ijw2h3cfTMiGwx6HpDdWwtPx5heSAvsth8kQrCYrHZcMI898JN
	zXEvjQhF7u30ISSqQztNjXOoUa7YYMxnI53/XECIhNBLOroZlU1yLyW1x770s52Q3ojsftcL2t2VU
	sz1Qa12yh5q6501KIjHsGbkV0uVzdZ0wOhzcp7GorDvFIinjKUZ8ZaklTuoNQhsI9penKzNrKoADg
	pwGGLZA1TcUVIzXe06GKVF3QPIIvHLNumTWth/oL2db7CnCoh8MwRKAa09Ad1sYVOmMHAl3IkvDv/
	vqBtosgLkJMXPV1c5HYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbrO-0003Bf-UG; Fri, 15 May 2020 15:02:50 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbr7-0003A6-E8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:02:37 +0000
Received: from localhost (lfbn-lyo-1-1912-bdcst.w90-65.abo.wanadoo.fr
 [90.65.91.255]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 18597240009;
 Fri, 15 May 2020 15:02:28 +0000 (UTC)
Date: Fri, 15 May 2020 17:02:28 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: cristian.birsan@microchip.com
Subject: Re: [PATCH v2 0/7] usb: gadget: udc: atmel: add usb device support
 for SAM9x60 SoC
Message-ID: <20200515150228.GW34497@piout.net>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_080233_603193_FBC32AD5 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, balbi@kernel.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 15/05/2020 14:16:24+0300, cristian.birsan@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> This patch set adds usb device support for SAM9x60 SoC.
> The DPRAM memory for the USB High Speed Device Port (UDPHS) hardware
> block was increased and the allocation method is changed. This patch
> series simplifies the endpoint allocation scheme to acomodate this SoC
> and the old ones.
> 
> Changes in v2:
> - drop the patch that adds reference to pmc for sam9x60
> - use dt-bindings: usb prefix
> - enable usb device in device tree
> 
> Claudiu Beznea (1):
>   usb: gadget: udc: atmel: use of_find_matching_node_and_match
> 
> Cristian Birsan (6):
>   dt-bindings: usb: atmel: Update DT bindings documentation for sam9x60
>   usb: gadget: udc: atmel: simplify endpoint allocation
>   usb: gadget: udc: atmel: use 1 bank endpoints for control transfers
>   usb: gadget: udc: atmel: rename errata into caps
>   usb: gadget: udc: atmel: update endpoint allocation for sam9x60
>   ARM: dts: at91: sam9x60ek: enable usb device

This should probably be rebased on top of
https://lore.kernel.org/linux-arm-kernel/20200507155651.1094142-1-gregory.clement@bootlin.com/
so we avoid having to define the endpoints in the device tree in the
first place.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
