Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3A11D174C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SOsqEyoY5eBZKx+mb9gDod5sl6qo2X9pvSzXUgkS9pw=; b=GrXWl/AtAOwwQ0Vc7/dECbY5T
	ihpChUV4XCnILGz6FZ2oSB8LS7OZX5WKyAob/0Wk2/JmD++K65F2dGmIUf0+tclcmbBLUF2TqySV+
	yk0jmAGjiTinwyM5giO+cajluJ7xAhfQDrjkpL0v629yJAgF1tltKhsf9oBPicM/xE8JCQQVaT4XG
	Yv7xJpwNnTs3vDREOiwTjhEcatWQy/hSefxPGxNycLca1u0vajhl0eSKy8N+Rl9W9iqlIBuvGOUma
	j6ZJBUAaEcW2U5vgQTQyd3BTq8aowZt2G6bDsMFoRqfAGomERBOX5pnGWf6UJuRPp2LKw7JT6DTDK
	+rJI3BzZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsBO-0006bc-5P; Wed, 13 May 2020 14:16:26 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsB7-0006as-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589379369; x=1620915369;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=UzkFgk4KxPXdtpumytvjaT9DH3n8QRgbvV1ZsZ7ca9s=;
 b=UJogM0J71OFbu86bGuhubpX+0bTaBSWsD7hmKAJpzP4Yo93BxLT4KKaW
 Zpuh+5eH6AiuCbF8jh8HN27c4dH5L0RXYChGrHcu2nPFxGGLC/UzQ1vOY
 7hXKY/3/Svhq7cOO/x3PvTcAG8GrkxP6HMETtP3StzjGuy5cOlz3ocwPU
 JGfBQ+aJGrV3MFy1G9kFdqMPGj6p9+kKSXSC2pvSDsx2Onl4Ehpp/YdDs
 AoFpZJnisfKSDlaBPFOH2VSGC3h6rQUWqM+IvAkacv5yjQ9a2Q0fYVkHT
 7nd5NuJ12bw/TXUmDvBO7sJabVBWQZXcg+JD8vZJK4XfD91jw7GVYf2EX g==;
IronPort-SDR: BAhFBmj8YgfLl9K0CKFV6Il6Sh3mNN5rA25bxiNtKTAFHTSbtw1UbUhFshasWmVsDmrUmh34OF
 6V6JPqzxQ5e8fH9gJdbnXvkZS6ueKYbciyV84JBVSLybdKYySn2h39eApCA4yGMqbwSyCzbvRi
 1WXiyYmrxUPcL+c0JEmHlzOMbdn7wFxc14zIurUdvC/9by6sHYiDbdrj8O1lTqx48LSTISNCGK
 0mHXOw7MbZRfa8sRz171/iir+iS1yWQeYULipTTL777gBlA/OFTceROHJB1SQfarxYRdJrax7o
 v7g=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="76511186"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:16:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:16:08 -0700
Received: from [10.171.246.28] (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 07:16:05 -0700
Subject: Re: [PATCH v4 3/5] net: macb: fix macb_get/set_wol() when moving to
 phylink
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <4aeebe901fde6db70a5ca12b10e793dd2ee6ce60.1588763703.git.nicolas.ferre@microchip.com>
 <20200513130536.GI1551@shell.armlinux.org.uk>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <c0bc2167-e49e-1026-94e3-cb5931755389@microchip.com>
Date: Wed, 13 May 2020 16:16:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513130536.GI1551@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071609_717029_0A629B25 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S.
 Miller" <davem@davemloft.net>, harini.katakam@xilinx.com, Claudiu
 Beznea <claudiu.beznea@microchip.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Russell,

Thanks for the feedback.

On 13/05/2020 at 15:05, Russell King - ARM Linux admin wrote:
> On Wed, May 06, 2020 at 01:37:39PM +0200, nicolas.ferre@microchip.com wrote:
>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>
>> Keep previous function goals and integrate phylink actions to them.
>>
>> phylink_ethtool_get_wol() is not enough to figure out if Ethernet driver
>> supports Wake-on-Lan.
>> Initialization of "supported" and "wolopts" members is done in phylink
>> function, no need to keep them in calling function.
>>
>> phylink_ethtool_set_wol() return value is not enough to determine
>> if WoL is enabled for the calling Ethernet driver. Call it first
>> but don't rely on its return value as most of simple PHY drivers
>> don't implement a set_wol() function.
>>
>> Fixes: 7897b071ac3b ("net: macb: convert to phylink")
>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
>> Cc: Harini Katakam <harini.katakam@xilinx.com>
>> Cc: Antoine Tenart <antoine.tenart@bootlin.com>
>> ---
>>   drivers/net/ethernet/cadence/macb_main.c | 18 ++++++++++--------
>>   1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
>> index 53e81ab048ae..24c044dc7fa0 100644
>> --- a/drivers/net/ethernet/cadence/macb_main.c
>> +++ b/drivers/net/ethernet/cadence/macb_main.c
>> @@ -2817,21 +2817,23 @@ static void macb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
>>   {
>>        struct macb *bp = netdev_priv(netdev);
>>
>> -     wol->supported = 0;
>> -     wol->wolopts = 0;
>> -
>> -     if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET)
>> +     if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET) {
>>                phylink_ethtool_get_wol(bp->phylink, wol);
>> +             wol->supported |= WAKE_MAGIC;
>> +
>> +             if (bp->wol & MACB_WOL_ENABLED)
>> +                     wol->wolopts |= WAKE_MAGIC;
>> +     }
>>   }
>>
>>   static int macb_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
>>   {
>>        struct macb *bp = netdev_priv(netdev);
>> -     int ret;
>>
>> -     ret = phylink_ethtool_set_wol(bp->phylink, wol);
>> -     if (!ret)
>> -             return 0;
>> +     /* Pass the order to phylink layer.
>> +      * Don't test return value as set_wol() is often not supported.
>> +      */
>> +     phylink_ethtool_set_wol(bp->phylink, wol);
> 
> If this returns an error, does that mean WOL works or does it not?

In my use case (simple phy: "Micrel KSZ8081"), if I have the error 
"-EOPNOTSUPP", it simply means that this phy driver doesn't have the 
set_wol() function. But on the MAC side, I can perfectly wake-up on WoL 
event as the phy acts as a pass-through.

> Note that if set_wol() is not supported, this will return -EOPNOTSUPP.
> What about other errors?

True, I don't manage them. But for now this patch is a fix that only 
reverts to previous behavior. In other terms, it only fixes the regression.

But can I make the difference, and how, between?
1/ the phy doesn't support WoL and could prevent the WoL to happen on 
the MAC
2/ the phy doesn't implement (yet) the set_wol() function, if MAC can 
manage, it's fine


> If you want to just ignore the case where it's not supported, then
> this looks like a sledge hammer to crack a nut.

Do you suggest that I just don't call phylink_ethtool_set_wol() at all?

But what if the underlying phy does support WoL?

Best regards,
-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
