Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2111B2176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ab3WPlXSIbcZGCXWmp5n/5FjTCbVphLtAFBVT9i2Rc=; b=bCDdsLRMI4Cijd
	BVA7FDVO/JneBbVtEo6rraD74Wit22+VpqeVLq707Ah4CzVuD1cf1c8Dx6FLRQJ7LUpVHqi5Tle1A
	MSbWUwBj2NpYBGQWxNRBO+AVY/6Tmrid6hRgKA8LrwUGlaEoYyYmCBdc3/Ei1WOlXhypzfddCLMg+
	y72daSaux6VxPRqyQVUF4mQirC36GIntwF7Ms5oEAriow458DNMzk61qwGnmevIml9KW27ZyYUIU+
	0iYMVJGC6SmdKBvhBt29I4oQoSagpeYv5H4EUY4wqjAThQLQLVGgJDFc6lUSHxpoCOXIkLeRVdXVR
	hfW7L4aSdG/0d4f1LG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoAY-0003lg-RF; Tue, 21 Apr 2020 08:22:14 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoAM-0003j1-0k
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587457321; x=1618993321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9DQtAlowEyF6tSUkJ7gs2+Qf1sLHaoWee2vwnTVpFJY=;
 b=l7HHDwFwlQgaYB6MWAf9DBTNZON3hqDAWmqv7lbPmYpU+uzD1quueVYB
 LupTFV1YgD4Ekai/EgMMwPxigGFyQf5jYCizgtGwPoS0LEpddGGqwB0us
 YQQBZHbDF94oDCU0l0yAYhf3ziO/PVnJnm5hQSrX32oqN6PGh1X0XO7v1
 m8/K8DupSNLVI51ZosyhSrnJcLsVk47rQMCL89k5arWEeqiFgIMjL/1au
 MDrMi/2KjjHdC2HRxkHL42paUF6Yr0M2nemquhY0vmSdk3JeJodyCJN3t
 OFU9+52CdJO6hfgUmMbuU50/TmjTceRbykvhr+scUJQSQTTEgSHF2mkOA Q==;
IronPort-SDR: KSg3GLb8szZk24q82Ncn/9o5zNf0nVnIxMwGZ9xYKExGgjPq3rKboyG8XLFvNytikeTnBbvN71
 bxxxbkudEd1ZTgBykagqEf9WF7hPPblxvS4vXroAXzC53Sa2b+tHqooRyIOFqaKEGlRvSin1hZ
 QAj+OLlabkTUEiPiL6fXuGTtoCs8e5Vr3aUuWzIdFAk+C9FcaacNQlzR+3GiOklg9vCqUUG142
 iYJI4rcuyxrrZawGTbuZj91tHi5TYHGMnAfJLtEqyJ6v6278PbU+0p7hjFicv5oepSjwrPODUp
 ZZU=
X-IronPort-AV: E=Sophos;i="5.72,409,1580799600"; d="scan'208";a="74003343"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Apr 2020 01:21:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 01:21:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Apr 2020 01:21:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3uwkSmX5BX8CYzUvwRMLzWcX5anoqg/jta4OXdjL8M4Yq2ytpTWO5EhcfLN7yJbv0tRIjZmoSEduqhzNJr5slyvlHx7N4zLaYUfA2pNGMDTgbqOwMyUWs+U6sNJkA108Af2zyuYurq55xsiMAChm+9E5UuJ5tXhLGuF40/E6bXjST1+yMMTyzSd4fntiD5RPFRMuj0KPO3VX5V4aQlGHMjQ1JOPwiBcmltGi3HrqIlL1BoLg8eNi4DiQYJf5VXSmeT6swtbc5KKaMXml5mv+uTpIMQSv7gc8Fj7Yv+8ijZoA+DT6ZUeEgHDXGUq+m5ZYMXQjwBOT2foXw/iMp6ibQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfVuZ0u7doysy+diIY/HGThsuboI0LpSFmyZBqz7CDc=;
 b=W/eUOsgfjWh6GYzltBUyKmNwhLcHBhNwjm0UzzXYGCeQNA1RcCLtCZZhr8sqvIosiC2YFCqISdeiioHBuRvo6+jA9ektTSUziWCTx8WvOFTfNsrTIlFzfZg52ISK6nKVFxg77+/oXk2IKxNk6UAQREz/w5tncgoPVWCGSqjXa/93lPEZp6HIL18nN8KQEv2w7vQeMsa++AfT28edZTaruEz9fTCDQidnYlWTlHDaUqc31z5y6iVGnnJN8xbWbbbShXOM3EkCRMDSrVHrVso7iPKk625ZDFSdHWrGCKojxQZpgvzLMQxts8OTSzDztOgLZ6vsj78VoHsLdKUluLb8sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfVuZ0u7doysy+diIY/HGThsuboI0LpSFmyZBqz7CDc=;
 b=bCGCZa2o5cybwAm3xzR0btYhBudC4fqKCsh/Ufz5eCNMhN3llSgwKcY7CXHyM9Pr8euzDJIoJMrPaVP4lb/qux++z1/xRb2lFkIZILaQ6/8roZLASdcG4Mv1pn/Bsi3+9ohmiN5lvk1EyT05zHMXPzmvXwwyA5oFp/GBDFe1SuI=
Received: from SN6PR11MB2830.namprd11.prod.outlook.com (2603:10b6:805:57::21)
 by SN6PR11MB3454.namprd11.prod.outlook.com (2603:10b6:805:c1::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Tue, 21 Apr
 2020 08:21:48 +0000
Received: from SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::7d58:c548:530f:985e]) by SN6PR11MB2830.namprd11.prod.outlook.com
 ([fe80::7d58:c548:530f:985e%4]) with mapi id 15.20.2900.028; Tue, 21 Apr 2020
 08:21:48 +0000
From: <Nicolas.Ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>,
 <Claudiu.Beznea@microchip.com>, <harini.katakam@xilinx.com>,
 <f.fainelli@gmail.com>, <linux@armlinux.org.uk>
Subject: Re: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
Thread-Topic: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
Thread-Index: AQHWF7XmxtnWGGqiwUmnXwZJVbFung==
Date: Tue, 21 Apr 2020 08:21:48 +0000
Message-ID: <8fcf4a8a-362c-a71f-c99e-be9500db7371@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
 <61762f4b-03fa-5484-334e-8515eed485e2@microchip.com>
In-Reply-To: <61762f4b-03fa-5484-334e-8515eed485e2@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Nicolas.Ferre@microchip.com; 
x-originating-ip: [2a01:cb1c:8c:b200:cc65:e7d5:efed:3aa2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21bd8544-b71b-4c82-0de0-08d7e5cd0954
x-ms-traffictypediagnostic: SN6PR11MB3454:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB34549AEAEB1A82A41D7570DCE0D50@SN6PR11MB3454.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(376002)(366004)(136003)(396003)(39860400002)(346002)(53546011)(6506007)(2616005)(71200400001)(76116006)(66946007)(8936002)(66476007)(91956017)(186003)(7416002)(2906002)(5660300002)(31686004)(66556008)(66446008)(64756008)(81156014)(8676002)(4326008)(110136005)(36756003)(6512007)(31696002)(86362001)(54906003)(316002)(478600001)(6486002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TZ8F3FiXAy7VKKZAnUliZXQUA+ojN0kgjAuY84pRBwb24Cx6NbUpaLovBMEsGaeZcIhrMsDdmYYMt20BpNtqIG91+F+fv6Pyvnj2FH7OB4p1Adt139Jf3FvSn7UHdbZRXxI3jbmG3WM62+My48Y0yZOeNlGJJQgoJUjqOx3iC3U1irN8ppQEHOQm1RGB/611s4fZ6aGMEGtmBZ7QToLRFbckkt0mspIWlvzwStclM/eShM5g2M36BkQcbjwtim30b/4oEamHaIlMNg/y/wimD93Z55XK42Lx4hzugJF4vwNSKaHC66/AeVX71OzoViY0He1MJq/uQXIHz9pd13LkFUliKk8+OwN4we+IqtrFDXOHZ0vJzCpCJynFXaJhGBAEFx9yoeKtGygND7tPLhu7h37jVjrIHYUwLg7eZzQYxibOhX89OMUchmljocrkwXgj
x-ms-exchange-antispam-messagedata: dGxuMXTqmj+nhWMSCkjE3xm8fv56OVAXfu2dC47UReXbVJfSo7zMYXMKHJ51DeGyaBgY1jEJPdH/edWciPJPZM1WqilpyeUF7lzubogDrIJyeDfpBsokENNoarStr3sOMhp0UTCH5LouNxpazHSfRQGYgbVVidKuTcnCwg0wo7rC80+TKdsjSG+G9/PROHhSa1yLy7UtcFzNjmM4cI46Bw==
Content-ID: <6B9155F7FF221448B790C7012F8DF301@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 21bd8544-b71b-4c82-0de0-08d7e5cd0954
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 08:21:48.2576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: akiQvFzyjaZcZM1jtYnS5OKfWhRZRt0YU3+39eAO+ymcmzbN/D4InCwJksi0Rb++k1Crh0AqUw8PJ502QDZEMLXcplWSg9Rn5s8Fj11HeVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_012202_160382_2A9662CE 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, sergio.prado@e-labworks.com,
 pthombar@cadence.com, antoine.tenart@bootlin.com, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 at 19:14, Nicolas Ferre wrote:
> On 16/04/2020 at 19:44, nicolas.ferre@microchip.com wrote:
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
>> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>> ---
>>    drivers/net/ethernet/cadence/macb.h      |   3 +
>>    drivers/net/ethernet/cadence/macb_main.c | 121 ++++++++++++++++++++---
>>    2 files changed, 109 insertions(+), 15 deletions(-)
> 
> [..]
> 
>> @@ -4534,23 +4564,56 @@ static int __maybe_unused macb_suspend(struct device *dev)
>>    	struct macb_queue *queue = bp->queues;
>>    	unsigned long flags;
>>    	unsigned int q;
>> +	int err;
>>    
>>    	if (!netif_running(netdev))
>>    		return 0;
>>    
>>    	if (bp->wol & MACB_WOL_ENABLED) {
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
>>    		for (q = 0, queue = bp->queues; q < bp->num_queues;
>> -		     ++q, ++queue)
>> -			napi_disable(&queue->napi);
>> -		rtnl_lock();
>> -		phylink_stop(bp->phylink);
>> -		rtnl_unlock();
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
>> +			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
>> +			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
>> +					       IRQF_SHARED, netdev->name, bp->queues);
>> +			if (err) {
>> +				dev_err(dev,
>> +					"Unable to request IRQ %d (error %d)\n",
>> +					bp->queues[0].irq, err);
>> +				return err;
>> +			}
>> +			queue_writel(bp->queues, IER, GEM_BIT(WOL));
>> +			gem_writel(bp, WOL, MACB_BIT(MAG));
>> +		} else {
>> +			queue_writel(bp->queues, IER, MACB_BIT(WOL));
>> +			macb_writel(bp, WOL, MACB_BIT(MAG));
>> +		}
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
>> +		phy_stop(netdev->phydev);
>> +		phy_suspend(netdev->phydev);
> 
> Bug here: you must read:
> 
> 		rtnl_lock();
> 		phylink_stop(bp->phylink);
> 		rtnl_unlock();
> 
> Instead of the 2 previous lines. I'll correct in v2.
> 
> Sorry for the regression.
> 
> 
>>    		spin_lock_irqsave(&bp->lock, flags);
>>    		macb_reset_hw(bp);
>>    		spin_unlock_irqrestore(&bp->lock, flags);
>> @@ -4575,20 +4638,48 @@ static int __maybe_unused macb_resume(struct device *dev)
> 
> [..]
> BTW: I have issue having a real resume event from the phy with this
> series. I'm investigating that but didn't find anything for now.
> 
> Observation #1: when the WoL is not enabled, I don't have link issue.
> But the path in suspend/resume is far more intrusive in phy state.
> 
> Observation #2: when WoL is enabled, I need to do a full ifdown/ifup
> sequence for gain access again to the link:
> 
> ip link show eth0
> 2: eth0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast
> state DOWN mode DEFAULT group default qlen 1000
>       link/ether 54:10:ec:be:50:b0 brd ff:ff:ff:ff:ff:ff
> 
> ifdown eth0 && ifup eth0
> 
> ip link show eth0
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast
> state UP mode DEFAULT group default qlen 1000
>       link/ether 54:10:ec:be:50:b0 brd ff:ff:ff:ff:ff:ff
> 
> Observation #3: I didn't experience this behavior while playing with the
> WoL on my 4.19 kernel before porting to Mainline.

I've reviewed this series to fix this last issues. It's was a 
combination of runtime_pm not handled properly and a mix of 
netif_carrier_* call with phylink calls not well positioned nor balanced 
between suspend and resume.

I have a v2 series that I'm preparing for today: Harini, I prefer to 
post it now so it could avoid that you hit the same issues as me while 
testing on your platform.

Best regards,
    Nicolas


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
