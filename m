Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F374B1B2B49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TJOFHQCCAQnPY1LEI7Qn3lRx8RqL2lE6PViq53t/fSU=; b=mXYxVS2CqX3rDxBCSzQ39ToJL
	vpu8Q3tyPzgUrFzAkuoP7YMtyI0Rm2YA22jJxQLTGX3LALYXvGvuumClSRej58EhjA4wlwPjjV4bZ
	WL/qT+0S2i8j3VutekhEwkK2K+OsO8ofe72gFET5k63jmtQptsXYxV8Dsi5MxCAami16e1fMr5lyV
	WavJQo8OV72kHv8KYjh7U328J8tM0FDKZnsCkf2EgNmOYoeb2NvwatcYBHeVeljFXgGVt+bN0u0j1
	vmm9HIml7OSgBjBcBNz5O7xKgXaaYhu7BwHK3wgr2L3UozozIlg9dBhPPD71N6F6dt46TL138uf3q
	U/lHm/7lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuy1-0003dI-M4; Tue, 21 Apr 2020 15:37:45 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQuxr-0003bg-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:37:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587483455; x=1619019455;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=lW4uHGsnpzwFM+faXKPSaaKQRdb/6mWKe2OT5jhIAU0=;
 b=eJ0F8nEZ5UX/rquYktQAGvNEYuR5ORWmDQ7Ez4zfR/Dus56y8Ki/LB/m
 QxcLPl0NdMGV8DF/LtXaIchLd2HIgAttKKoGqrOg/ZM3yOZkRcH71O0Ao
 zZdr1fwXQG1qRS1kHv1eZazPV+pxkhVlyOFsb0mcP+rFqDt1E02hWyw+e
 mwDCtgEg0O9oIXQnZ3CJxxV1Dcx2AH/BchX06mtxXZ+c6qJR6s9Gx/RJo
 g08m9OrQpo4BK90BnJji1JW4ZHdpWDEgFdHcfKN06x++oXfVn04lBvdiw
 dKc9B91j68pXctCw6pRWCvY6CtERPSQ3fNbSvRIewQBHPMuNjJOMkT2nS A==;
IronPort-SDR: XBMsN1uxujrpfSYRmplkz/S2DyIBVqtFtAiVD4i7jT8NhsPygMhvfVNctjd5BO0cBzyJ3SPI7s
 r+XeyE/mVNG+BqEJAu/eGqVNCQP3rIQQV2TxHwtjz0ft3TyhefyQW/QDhTGM0WNLUXO0Scjc5O
 5Gr5GJoXcbHBHCcf4nQYaZyCxrOVr6AESZAF6B9sIbb5lRYJZxjZTw9ePHBvU7hdVcHo/fflrX
 8sXrY58QWxx1wFQ/codSR9GyWl2OHum4ZanWuf/zLpldQswkFFoLoNR1oCR5pyhg4JyCzs9P/d
 cug=
X-IronPort-AV: E=Sophos;i="5.72,410,1580799600"; d="scan'208";a="76714501"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 08:37:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 08:37:35 -0700
Received: from [10.205.29.91] (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 21 Apr 2020 08:37:27 -0700
Subject: Re: [PATCH v2 6/7] net: macb: WoL support for GEM type of Ethernet
 controller
To: Claudiu Beznea - M18063 <Claudiu.Beznea@microchip.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "harini.katakam@xilinx.com"
 <harini.katakam@xilinx.com>
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
 <a0ba982bed5adcd7cdb5bd526855702bb8a1c8fd.1587463802.git.nicolas.ferre@microchip.com>
 <299e181e-de7c-ec01-6214-c0bd3256df76@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <db8540ea-72e2-0e59-d77a-daa44b6a0e6d@microchip.com>
Date: Tue, 21 Apr 2020 17:37:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <299e181e-de7c-ec01-6214-c0bd3256df76@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_083735_587160_1B88369E 
X-CRM114-Status: GOOD (  28.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "sergio.prado@e-labworks.com" <sergio.prado@e-labworks.com>,
 "antoine.tenart@bootlin.com" <antoine.tenart@bootlin.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "David S.
 Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/04/2020 at 17:13, Claudiu Beznea - M18063 wrote:
> Hi Nicolas,

Claudiu,

Thanks for your feedback.

> On 21.04.2020 13:41, nicolas.ferre@microchip.com wrote:
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Adapt the Wake-on-Lan feature to the Cadence GEM Ethernet controller.
>> This controller has different register layout and cannot be handled by
>> previous code.
>> We disable completely interrupts on all the queues but the queue 0.
>> Handling of WoL interrupt is done in another interrupt handler
>> positioned depending on the controller version used, just between
>> suspend() and resume() calls.
>> It allows to lower pressure on the generic interrupt hot path by
>> removing the need to handle 2 tests for each IRQ: the first figuring out
>> the controller revision, the second for actually knowing if the WoL bit
>> is set.
>>
>> Queue management in suspend()/resume() functions inspired from RFC patch
>> by Harini Katakam <harinik@xilinx.com>, thanks!
>>
>> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
>> Cc: Harini Katakam <harini.katakam@xilinx.com>
>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>> ---
>> Changes in v2:
>> - Addition of pm_wakeup_event() in WoL IRQ
>> - In macb_resume(), removal of setting the MPE bit in NCR register which is not
>>    needed in any case: IP is reset on the usual path and kept alive if WoL is used
>> - In macb_resume(), complete reset of the controller is kept only for non-WoL
>>    case. For the WoL case, we only replace the usual IRQ handler.
>>
>>   drivers/net/ethernet/cadence/macb.h      |   3 +
>>   drivers/net/ethernet/cadence/macb_main.c | 134 ++++++++++++++++++++---
>>   2 files changed, 119 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
>> index ab827fb4b6b9..4f1b41569260 100644
>> --- a/drivers/net/ethernet/cadence/macb.h
>> +++ b/drivers/net/ethernet/cadence/macb.h
>> @@ -90,6 +90,7 @@
>>   #define GEM_SA3T		0x009C /* Specific3 Top */
>>   #define GEM_SA4B		0x00A0 /* Specific4 Bottom */
>>   #define GEM_SA4T		0x00A4 /* Specific4 Top */
>> +#define GEM_WOL			0x00b8 /* Wake on LAN */
>>   #define GEM_EFTSH		0x00e8 /* PTP Event Frame Transmitted Seconds Register 47:32 */
>>   #define GEM_EFRSH		0x00ec /* PTP Event Frame Received Seconds Register 47:32 */
>>   #define GEM_PEFTSH		0x00f0 /* PTP Peer Event Frame Transmitted Seconds Register 47:32 */
>> @@ -396,6 +397,8 @@
>>   #define MACB_PDRSFT_SIZE	1
>>   #define MACB_SRI_OFFSET		26 /* TSU Seconds Register Increment */
>>   #define MACB_SRI_SIZE		1
>> +#define GEM_WOL_OFFSET		28 /* Enable wake-on-lan interrupt */
>> +#define GEM_WOL_SIZE		1
>>   
>>   /* Timer increment fields */
>>   #define MACB_TI_CNS_OFFSET	0
>> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
>> index 8cf8e21fbb07..56ce39dd1cc0 100644
>> --- a/drivers/net/ethernet/cadence/macb_main.c
>> +++ b/drivers/net/ethernet/cadence/macb_main.c
>> @@ -1513,6 +1513,35 @@ static void macb_tx_restart(struct macb_queue *queue)
>>   	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
>>   }
>>   
>> +static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
>> +{
>> +	struct macb_queue *queue = dev_id;
>> +	struct macb *bp = queue->bp;
>> +	u32 status;
>> +
>> +	status = queue_readl(queue, ISR);
>> +
>> +	if (unlikely(!status))
>> +		return IRQ_NONE;
>> +
>> +	spin_lock(&bp->lock);
>> +
>> +	if (status & GEM_BIT(WOL)) {
>> +		queue_writel(queue, IDR, GEM_BIT(WOL));
>> +		gem_writel(bp, WOL, 0);
>> +		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
>> +			    (unsigned int)(queue - bp->queues),
>> +			    (unsigned long)status);
>> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
>> +			queue_writel(queue, ISR, GEM_BIT(WOL));
>> +		pm_wakeup_event(&bp->pdev->dev, 0);
>> +	}
>> +
>> +	spin_unlock(&bp->lock);
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>>   static irqreturn_t macb_interrupt(int irq, void *dev_id)
>>   {
>>   	struct macb_queue *queue = dev_id;
>> @@ -3306,6 +3335,8 @@ static const struct ethtool_ops macb_ethtool_ops = {
>>   static const struct ethtool_ops gem_ethtool_ops = {
>>   	.get_regs_len		= macb_get_regs_len,
>>   	.get_regs		= macb_get_regs,
>> +	.get_wol		= macb_get_wol,
>> +	.set_wol		= macb_set_wol,
>>   	.get_link		= ethtool_op_get_link,
>>   	.get_ts_info		= macb_get_ts_info,
>>   	.get_ethtool_stats	= gem_get_ethtool_stats,
>> @@ -4534,20 +4565,54 @@ static int __maybe_unused macb_suspend(struct device *dev)
>>   	struct macb_queue *queue = bp->queues;
>>   	unsigned long flags;
>>   	unsigned int q;
>> +	int err;
>>   
>>   	if (!netif_running(netdev))
>>   		return 0;
>>   
>>   	if (bp->wol & MACB_WOL_ENABLED) {
>> -		macb_writel(bp, IER, MACB_BIT(WOL));
>> -		macb_writel(bp, WOL, MACB_BIT(MAG));
>> -		enable_irq_wake(bp->queues[0].irq);
>> -		netif_device_detach(netdev);
>> -	} else {
>> -		netif_device_detach(netdev);
>> +		spin_lock_irqsave(&bp->lock, flags);
>> +		/* Flush all status bits */
>> +		macb_writel(bp, TSR, -1);
>> +		macb_writel(bp, RSR, -1);
>>   		for (q = 0, queue = bp->queues; q < bp->num_queues;
>> -		     ++q, ++queue)
>> -			napi_disable(&queue->napi);
>> +		     ++q, ++queue) {
>> +			/* Disable all interrupts */
>> +			queue_writel(queue, IDR, -1);
>> +			queue_readl(queue, ISR);
>> +			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
>> +				queue_writel(queue, ISR, -1);
>> +		}
>> +		/* Change interrupt handler and
>> +		 * Enable WoL IRQ on queue 0
>> +		 */
>> +		if (macb_is_gem(bp)) {
> 
> Couldn't this starting here:
> 
>> +			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
>> +			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
>> +					       IRQF_SHARED, netdev->name, bp->queues);
>> +			if (err) {
>> +				dev_err(dev,
>> +					"Unable to request IRQ %d (error %d)\n",
>> +					bp->queues[0].irq, err);
>> +				return err;
>> +			}
> 
> ending ^ (and the equivalent in resume function) be avoided by moving the
> content of gem_wol_interrupt:
> 
> +	if (status & GEM_BIT(WOL)) {
> +		queue_writel(queue, IDR, GEM_BIT(WOL));
> +		gem_writel(bp, WOL, 0);
> +		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
> +			    (unsigned int)(queue - bp->queues),
> +			    (unsigned long)status);
> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +			queue_writel(queue, ISR, GEM_BIT(WOL));
> +		pm_wakeup_event(&bp->pdev->dev, 0);
> +	}
> 
> at the beginning of macb_interrupt() and issuing a return after
> pm_wakeup_event()?
> 
> Instead of these:
> 
>> +			queue_writel(bp->queues, IER, GEM_BIT(WOL));
>> +			gem_writel(bp, WOL, MACB_BIT(MAG));
>> +		} else {
>> +			queue_writel(bp->queues, IER, MACB_BIT(WOL));
>> +			macb_writel(bp, WOL, MACB_BIT(MAG));
>> +		}
> 
> You could use:
> 		queue_writel(bp->queues, IER, GEM_BIT(WOL));
> 		macb_or_gem_writel(bp, WOL, MACB_BIT(MAG))

This was my first though, even if it added one more test to the 
interrupt routine even when WoL is not enabled.

But where it's becoming annoying is that what you highlight above as:
if (status & GEM_BIT(WOL))
for GEM, is actually:
if (status & MACB_BIT(WOL))
for MACB...
which means that we have to test controller's revision for each 
interrupt before knowing if the WoL one is activated or not. To my mind, 
it's really loosing CPU power where we are already chasing for it in our 
little SoC configurations. Moreover for something which is fairly 
specialized to some use cases.

If found a solution by specializing the IRQ routine just during 
suspend/resume.


>> +		spin_unlock_irqrestore(&bp->lock, flags);
>> +
>> +		enable_irq_wake(bp->queues[0].irq);
>> +	}
>> +
>> +	netif_device_detach(netdev);
>> +	for (q = 0, queue = bp->queues; q < bp->num_queues;
>> +	     ++q, ++queue)
>> +		napi_disable(&queue->napi);
>> +
>> +	if (!(bp->wol & MACB_WOL_ENABLED)) {
>>   		rtnl_lock();
>>   		phylink_stop(bp->phylink);
>>   		rtnl_unlock();
>> @@ -4575,7 +4640,9 @@ static int __maybe_unused macb_resume(struct device *dev)
>>   	struct net_device *netdev = dev_get_drvdata(dev);
>>   	struct macb *bp = netdev_priv(netdev);
>>   	struct macb_queue *queue = bp->queues;
>> +	unsigned long flags;
>>   	unsigned int q;
>> +	int err;
>>   
>>   	if (!netif_running(netdev))
>>   		return 0;
>> @@ -4584,29 +4651,60 @@ static int __maybe_unused macb_resume(struct device *dev)
>>   		pm_runtime_force_resume(dev);
>>   
>>   	if (bp->wol & MACB_WOL_ENABLED) {
>> -		macb_writel(bp, IDR, MACB_BIT(WOL));
>> -		macb_writel(bp, WOL, 0);
>> +		spin_lock_irqsave(&bp->lock, flags);
>> +		/* Disable WoL */
>> +		if (macb_is_gem(bp)) {
>> +			queue_writel(bp->queues, IDR, GEM_BIT(WOL));
>> +			gem_writel(bp, WOL, 0);
>> +		} else {
>> +			queue_writel(bp->queues, IDR, MACB_BIT(WOL));
>> +			macb_writel(bp, WOL, 0);
>> +		}
>> +		/* Clear ISR on queue 0 */
>> +		queue_readl(bp->queues, ISR);
>> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
>> +			queue_writel(bp->queues, ISR, -1);
>> +		/* Replace interrupt handler on queue 0 */
>> +		devm_free_irq(dev, bp->queues[0].irq, bp->queues);
>> +		err = devm_request_irq(dev, bp->queues[0].irq, macb_interrupt,
>> +				       IRQF_SHARED, netdev->name, bp->queues);
>> +		if (err) {
>> +			dev_err(dev,
>> +				"Unable to request IRQ %d (error %d)\n",
>> +				bp->queues[0].irq, err);
>> +			return err;
>> +		}
>> +		/* Enable interrupts */
>> +		for (q = 0, queue = bp->queues; q < bp->num_queues;
>> +		     ++q, ++queue)
>> +			queue_writel(queue, IER,
>> +				     bp->rx_intr_mask |
>> +				     MACB_TX_INT_FLAGS |
>> +				     MACB_BIT(HRESP));
>> +		spin_unlock_irqrestore(&bp->lock, flags);
>> +
>>   		disable_irq_wake(bp->queues[0].irq);
>> -	} else {
>> -		macb_writel(bp, NCR, MACB_BIT(MPE));
>> +	}
>> +
>> +	for (q = 0, queue = bp->queues; q < bp->num_queues;
>> +	     ++q, ++queue)
>> +		napi_enable(&queue->napi);
>>   
>> +	if (!(bp->wol & MACB_WOL_ENABLED)) {
>>   		if (netdev->hw_features & NETIF_F_NTUPLE)
>>   			gem_writel_n(bp, ETHT, SCRT2_ETHT, bp->pm_data.scrt2);
>>   
>>   		if (!(bp->caps & MACB_CAPS_USRIO_DISABLED))
>>   			macb_or_gem_writel(bp, USRIO, bp->pm_data.usrio);
>>   
>> -		for (q = 0, queue = bp->queues; q < bp->num_queues;
>> -		     ++q, ++queue)
>> -			napi_enable(&queue->napi);
>> +		macb_init_hw(bp);
>> +		macb_set_rx_mode(netdev);
>> +		macb_restore_features(bp);
> 
> Even WoL may not be available in backup and self-refresh mode (present on
> SAMA5D2 devices), switching to BSR mode while WoL is enabled may lead to
> ethernet being unavailable after resuming. Did you manage to test this
> scenario?

WoL is not available for BSR. But... it's an interesting scenario indeed 
;-) Which I didn't test.

I have to think about it and come back with a solution to this. Thanks 
Claudiu for having found that.

>>   		rtnl_lock();
>>   		phylink_start(bp->phylink);
>>   		rtnl_unlock();
>>   	}
>>   
>> -	macb_init_hw(bp);
>> -	macb_set_rx_mode(netdev);
>> -	macb_restore_features(bp);
>>   	netif_device_attach(netdev);
>>   	if (bp->ptp_info)
>>   		bp->ptp_info->ptp_init(netdev);

Best regards,
-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
