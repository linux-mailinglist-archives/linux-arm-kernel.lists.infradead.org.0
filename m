Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D760B1AE382
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Wg9DQplYitxMSsZuqO/8vOsVzgdQy5nel2aSiwwzAk=; b=RGEv0sOzTDJ+SdLPrKcUO06X8
	cQx5QuqBdIyHNqsOzYcAM2fU8xD67FqeIAEpSdf3qtDTJpt6v3dUgePcJzYsFdJ54E3es89+IeRdC
	wAJ2ga0c7hSEilEd0127ElDY2D9w8XQycJN5QaVANGdpb9TzMPBFP5im30nf+r2JWzzE25Txj85/y
	PlGIY45mCLg/ERu2geVhAAL2qOkSaXqCvtMO2piDqLXUkJtgJkx+eeVtK6xCoZdXrk22CtUoKgBde
	RU0xkwrx5HxzsrJS/OUUYMB0YEaNADsRjQB/PPATiJHWLxOtWwsSKE4G4DuOz59S46UT8t/zYo5Cc
	aOTwll1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUZd-0002ae-E1; Fri, 17 Apr 2020 17:14:41 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUZT-0002a3-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587143671; x=1618679671;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Z97YOUsyGakXRlsIeAgnyUr2EaXM9GuayVOBY7SPxZQ=;
 b=dP7XBV97DzGcuJ29qQ1DUGChnEKyUa4j0jw5LJrAD7hkYaUbcjX8JT/6
 GX236jTYfcxS9DWxaN2blwTvcUOPMyY+f5JyCCavVqedSBIH/gDf/gPP4
 7xJQue20rvUi9EdcNK8QgLR93eJ4lLuxze7RVKFkruG17FyvJrvQiA4Q7
 azPMjzXw2OaMLMbtcDOpBci7ckZO38KAVNbdOa97b/6EYRBx3uVQMty99
 2MGMynnagbs51S5vK+uiDtqpj+Quff9pAAsqSR27ENxeL+uNygZ89PCLH
 g3H/bUlpqR+Vjnx9M7yaSmHDCpQea5wcvBnd5ZnmspL+mEt7YiovH9lxb g==;
IronPort-SDR: 2IIOiNY0TIQc5JY3syiYgx9veibgSIDFWqVrAw4gP5rQmScuOeqMwWeSQnU5PNv41NA3s7nLmT
 N8uv3OkbkBi/1gpYfsEViAWgwvSEeouk8YbKj+fGplpShSgSDnu0kRLh1vDu8KTkoUULv3H6Ly
 XSWx/5gOVUHMaWYVVLPfYL8Q/LZinTaV14+QBnzstDFhmx1Iazzs5dd+fEBE6x1lbRZqzF7KZo
 qbGYDZsA9vu5fgoEQSg4wOoNDsa6QDTyCNWJtFM70j7lGzKGYM3MjjLf/WNZqFaPBvodYpkbRe
 MKY=
X-IronPort-AV: E=Sophos;i="5.72,395,1580799600"; d="scan'208";a="73717575"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Apr 2020 10:14:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Apr 2020 10:14:04 -0700
Received: from [10.171.246.39] (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Apr 2020 10:14:20 -0700
Subject: Re: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>,
 <f.fainelli@gmail.com>, <linux@armlinux.org.uk>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <61762f4b-03fa-5484-334e-8515eed485e2@microchip.com>
Date: Fri, 17 Apr 2020 19:14:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_101431_396692_F3DFBDBE 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, pthombar@cadence.com, antoine.tenart@bootlin.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/04/2020 at 19:44, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Adapt the Wake-on-Lan feature to the Cadence GEM Ethernet controller.
> This controller has different register layout and cannot be handled by
> previous code.
> We disable completely interrupts on all the queues but the queue 0.
> Handling of WoL interrupt is done in another interrupt handler
> positioned depending on the controller version used, just between
> suspend() and resume() calls.
> It allows to lower pressure on the generic interrupt hot path by
> removing the need to handle 2 tests for each IRQ: the first figuring out
> the controller revision, the second for actually knowing if the WoL bit
> is set.
> 
> Queue management in suspend()/resume() functions inspired from RFC patch
> by Harini Katakam <harinik@xilinx.com>, thanks!
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>   drivers/net/ethernet/cadence/macb.h      |   3 +
>   drivers/net/ethernet/cadence/macb_main.c | 121 ++++++++++++++++++++---
>   2 files changed, 109 insertions(+), 15 deletions(-)

[..]

> @@ -4534,23 +4564,56 @@ static int __maybe_unused macb_suspend(struct device *dev)
>   	struct macb_queue *queue = bp->queues;
>   	unsigned long flags;
>   	unsigned int q;
> +	int err;
>   
>   	if (!netif_running(netdev))
>   		return 0;
>   
>   	if (bp->wol & MACB_WOL_ENABLED) {
> -		macb_writel(bp, IER, MACB_BIT(WOL));
> -		macb_writel(bp, WOL, MACB_BIT(MAG));
> -		enable_irq_wake(bp->queues[0].irq);
> -		netif_device_detach(netdev);
> -	} else {
> -		netif_device_detach(netdev);
> +		spin_lock_irqsave(&bp->lock, flags);
> +		/* Flush all status bits */
> +		macb_writel(bp, TSR, -1);
> +		macb_writel(bp, RSR, -1);
>   		for (q = 0, queue = bp->queues; q < bp->num_queues;
> -		     ++q, ++queue)
> -			napi_disable(&queue->napi);
> -		rtnl_lock();
> -		phylink_stop(bp->phylink);
> -		rtnl_unlock();
> +		     ++q, ++queue) {
> +			/* Disable all interrupts */
> +			queue_writel(queue, IDR, -1);
> +			queue_readl(queue, ISR);
> +			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +				queue_writel(queue, ISR, -1);
> +		}
> +		/* Change interrupt handler and
> +		 * Enable WoL IRQ on queue 0
> +		 */
> +		if (macb_is_gem(bp)) {
> +			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
> +			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
> +					       IRQF_SHARED, netdev->name, bp->queues);
> +			if (err) {
> +				dev_err(dev,
> +					"Unable to request IRQ %d (error %d)\n",
> +					bp->queues[0].irq, err);
> +				return err;
> +			}
> +			queue_writel(bp->queues, IER, GEM_BIT(WOL));
> +			gem_writel(bp, WOL, MACB_BIT(MAG));
> +		} else {
> +			queue_writel(bp->queues, IER, MACB_BIT(WOL));
> +			macb_writel(bp, WOL, MACB_BIT(MAG));
> +		}
> +		spin_unlock_irqrestore(&bp->lock, flags);
> +
> +		enable_irq_wake(bp->queues[0].irq);
> +	}
> +
> +	netif_device_detach(netdev);
> +	for (q = 0, queue = bp->queues; q < bp->num_queues;
> +	     ++q, ++queue)
> +		napi_disable(&queue->napi);
> +
> +	if (!(bp->wol & MACB_WOL_ENABLED)) {
> +		phy_stop(netdev->phydev);
> +		phy_suspend(netdev->phydev);

Bug here: you must read:

		rtnl_lock();
		phylink_stop(bp->phylink);
		rtnl_unlock();

Instead of the 2 previous lines. I'll correct in v2.

Sorry for the regression.


>   		spin_lock_irqsave(&bp->lock, flags);
>   		macb_reset_hw(bp);
>   		spin_unlock_irqrestore(&bp->lock, flags);
> @@ -4575,20 +4638,48 @@ static int __maybe_unused macb_resume(struct device *dev)

[..]
BTW: I have issue having a real resume event from the phy with this 
series. I'm investigating that but didn't find anything for now.

Observation #1: when the WoL is not enabled, I don't have link issue. 
But the path in suspend/resume is far more intrusive in phy state.

Observation #2: when WoL is enabled, I need to do a full ifdown/ifup 
sequence for gain access again to the link:

ip link show eth0
2: eth0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast 
state DOWN mode DEFAULT group default qlen 1000
     link/ether 54:10:ec:be:50:b0 brd ff:ff:ff:ff:ff:ff

ifdown eth0 && ifup eth0

ip link show eth0
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast 
state UP mode DEFAULT group default qlen 1000
     link/ether 54:10:ec:be:50:b0 brd ff:ff:ff:ff:ff:ff

Observation #3: I didn't experience this behavior while playing with the 
WoL on my 4.19 kernel before porting to Mainline.

Best regards,
-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
