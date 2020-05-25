Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0802C1E089B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FkBXJxYe/svx9jwqn7tSFB42YUgN0hnlP2lRSUfrtYs=; b=Jo2AusMsXoatE4tEjD3wZ0pZ2
	0oqW05H3Rrg6KPt2uWXzPAG9Wj2tbl7mKTccY/U9FP5FPjswgAfis/fT3i5M/AjsUIm4vTTUL/USL
	Y8d8UJ6KHCYZC4Ttzb8ymvagi9X4pPDM6nAfpiQih2vmx7mErN8g07so74gL/cnGcbjit2WrSmESp
	hjRsx4ewLsTrMrBpCKj9YXEPt6XCi9p1NHvd1V8Wkv39DPDH1BNb57olUYn01q1e8Sog6mrgYTKt3
	1+lYf0yDvjipZg9jrZTuNX5tYxhQJ6JhSovwqW5+lN31vb1IxnujweiXAlaLW0oNgWZT+Baz4WpP4
	WC8OV7BvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8Jm-0006Bb-5v; Mon, 25 May 2020 08:18:42 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8JZ-00069j-C5
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590394709; x=1621930709;
 h=subject:from:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=6Y1kKLNvw5tHAyMcE8lhbasGho0U1mzPQDK1AoxNCKM=;
 b=vphPBmkCkrSXRGqFg501njy+9EP2UsvngKSZ0XcMKX1F3wFtINfrdQSx
 xgcW7DNFYDyixTKui94fksg45x12xxjgmcXmEpckji5Azx51JkVp7CsGa
 h1og+pNBtnoaXj8OWcI1dv+/FFvRqJSp7kFfzXuXUdO3A6KGwD1NtkCc5
 0yCc/VjJ2npNoEo79VoWacFFe7h/h0uRFg9O3FerTjj6Z2GsgvcOaA/qZ
 GMiUGM2M+r1MCY0z58s42ZrcuhRek6pHaRk5C4vOzFGItKmhQX7GDZbJg
 +Tm3m3MOJ5OIHzWIaJ4Gufg2jFT9Npk9V00da0FwoI3Dm6pK60/p7PSyl w==;
IronPort-SDR: QCE16gf6KIchmmRAPv5H+Yck0P/9pBdRqngXm6N5t+pR/zMqFjatY9X2LyUdUM8avC4nnNnReC
 J3xZ4DE7o6c47z45PfCz796HoKAHI7VtDBivaOUBKiaWKQEy8mgMj18/WUm+vgTZEkDOY9vcX3
 731ASHcxE0A3er6HmVuSAdHSUdcWbmhxJTiELkep/wDIMKkvh8ZD2pQkzKSagAiveCkzVJqNB3
 3HVKCHkZB0oo/lKT7m/x0n+hCBru1RT3k5jqlNU3q+NoDzTVTYXqDAoOq+D0H9LJJQYf7NLm0Z
 OAw=
X-IronPort-AV: E=Sophos;i="5.73,432,1583218800"; d="scan'208";a="13411380"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 01:18:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 01:18:24 -0700
Received: from [10.205.29.90] (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 25 May 2020 01:18:12 -0700
Subject: Re: [PATCH v4 1/5] net: macb: fix wakeup test in runtime
 suspend/resume routines
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Jakub Kicinski <kuba@kernel.org>, <netdev@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>, <f.fainelli@gmail.com>, "Russell King - ARM
 Linux admin" <linux@armlinux.org.uk>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <dc30ff1d17cb5a75ddd10966eab001f67ac744ef.1588763703.git.nicolas.ferre@microchip.com>
 <20200506131843.22cf1dab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <347c9a4f-8a01-a931-c9d5-536339337f8a@microchip.com>
Organization: microchip
Message-ID: <e43e7ed6-c78a-7995-3f46-0bdbf32f361c@microchip.com>
Date: Mon, 25 May 2020 10:18:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <347c9a4f-8a01-a931-c9d5-536339337f8a@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_011829_462401_911935C3 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
 harini.katakam@xilinx.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/05/2020 at 12:03, Nicolas Ferre wrote:
> On 06/05/2020 at 22:18, Jakub Kicinski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On Wed, 6 May 2020 13:37:37 +0200 nicolas.ferre@microchip.com wrote:
>>> From: Nicolas Ferre <nicolas.ferre@microchip.com>
>>>
>>> Use the proper struct device pointer to check if the wakeup flag
>>> and wakeup source are positioned.
>>> Use the one passed by function call which is equivalent to
>>> &bp->dev->dev.parent.
>>>
>>> It's preventing the trigger of a spurious interrupt in case the
>>> Wake-on-Lan feature is used.
>>>
>>> Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
>>
>>           Fixes tag: Fixes: bc1109d04c39 ("net: macb: Add pm runtime support")
>>           Has these problem(s):
>>                   - Target SHA1 does not exist
> 
> Indeed, it's:
> Fixes: d54f89af6cc4 ("net: macb: Add pm runtime support")
> 
> David: do I have to respin or you can modify it?

David, all, I'm about to resend this series (alternative to "ping"), 
however:

1/ Now that it's late in the cycle, I'd like that you tell me if I 
rebase on net-next because it isn't not sensible to queue such (non 
urgeent) changes at rc7

2/ I didn't get answers from Russell and can't tell if there's a better 
way of handling underlying phylink error of phylink_ethtool_set_wol() in 
patch 3/5

Best regards,
   Nicolas

>>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>>> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>>> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
>>> Cc: Harini Katakam <harini.katakam@xilinx.com>
>>> ---
>>>    drivers/net/ethernet/cadence/macb_main.c | 4 ++--
>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
>>> index 36290a8e2a84..d11fae37d46b 100644
>>> --- a/drivers/net/ethernet/cadence/macb_main.c
>>> +++ b/drivers/net/ethernet/cadence/macb_main.c
>>> @@ -4616,7 +4616,7 @@ static int __maybe_unused macb_runtime_suspend(struct device *dev)
>>>         struct net_device *netdev = dev_get_drvdata(dev);
>>>         struct macb *bp = netdev_priv(netdev);
>>>
>>> -     if (!(device_may_wakeup(&bp->dev->dev))) {
>>> +     if (!(device_may_wakeup(dev))) {
>>>                 clk_disable_unprepare(bp->tx_clk);
>>>                 clk_disable_unprepare(bp->hclk);
>>>                 clk_disable_unprepare(bp->pclk);
>>> @@ -4632,7 +4632,7 @@ static int __maybe_unused macb_runtime_resume(struct device *dev)
>>>         struct net_device *netdev = dev_get_drvdata(dev);
>>>         struct macb *bp = netdev_priv(netdev);
>>>
>>> -     if (!(device_may_wakeup(&bp->dev->dev))) {
>>> +     if (!(device_may_wakeup(dev))) {
>>>                 clk_prepare_enable(bp->pclk);
>>>                 clk_prepare_enable(bp->hclk);
>>>                 clk_prepare_enable(bp->tx_clk);
>>
> 
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
