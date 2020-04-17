Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6F71ADDA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fpd05qUUx2SjXlsPFXFwTQPbL7xqwIeg4BRUoiKbepg=; b=N6BppO35QWam7GgbVKdiZzuj+
	fmhl279dmjcnpHpUt16jUqeS/27QN03S04h50AsoEqgab9nITWlbX8+oWbb6sJqgMov5XLGj/RdDn
	A65br8BeHpbuBmJy8P8Vona+/ZXlhtUNVdmTBhwcqt2H7NojqszjOWAlbkWd8xbNyyC+NwBxsHVjP
	jWv2MD6J+xXTbmwjZ0YerADc/4gmXxH5iBiHVxXa8Sonb23/3Ebj80jevHsjom7PG5xHZDn2M0US9
	9eoIbTs4raSiJerk8kbpEm0nrtP1BJKy+1jbraxGEN9BMZ8exAh91neq/Zp6qLnvgaaT2mgoSm3GZ
	G9dZevWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQZ0-0001g0-KJ; Fri, 17 Apr 2020 12:57:46 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQYs-0001fI-Rm
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587128258; x=1618664258;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Ew4XnWdKx8Yo/vg5CuEUoLqg3uZ1q1ugduFZ1gg4Zo0=;
 b=CSeYgX9Xl01m84dldnWoCkbNrv+QjuKPi9xOZYkGdMDXGmjW3iGKMIjS
 L0mNzWl0+gxE/CiE6zHlAkkXE4XttJOOtDO2lqRL/EBXV/bk2WV5FcPZ1
 OPwCTjioMyFI6xUVnSLm3620ELmfonDDK8vLMSu5uM52wTadHiq5jvPda
 UvmZ/d7pKKAYUbb3zG6cC3fkJwY0+tOuhafeOLltMmuC878aLAv/yujkQ
 zjoLQfPFKolQROXyLvNYuAoYYppxiAkHev/DovV1TyzTXKt2wPkNe+IkD
 9Iai9ZskD67hc96T4egCT8fPjX6HCxcH50vh2kF/0eX80bNW3glBGRxv2 w==;
IronPort-SDR: 0mHhU6xW5jYa0gqmqanFE4tSK3UAVzOjw5acDrYaN7LBhfWb2ovNjS/kDasbC4xXs5LIKWQPh7
 8VSh2K2JUOckp2khKniaon5rvj0lFIvNq5rOIALJkLXowIIMQo/lZPgHk/IbxioFj2GCqVHYfj
 llBltPxhXq8/XnDfoeXkdyfMjQJK0Mwbl7jVzwCjx/rUvLttPnllJTXPH0C71xPls41rQ12wz5
 v4nt8j/10W4Aq2dXuHy4RIPGYSd4HOHEm2rez52b+GOKYzJeHFon/tyBOShuntwjlA+gA+FipR
 3Jc=
X-IronPort-AV: E=Sophos;i="5.72,395,1580799600"; 
   d="scan'208";a="9536051"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Apr 2020 05:57:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Apr 2020 05:57:37 -0700
Received: from [10.205.29.56] (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 17 Apr 2020 05:57:12 -0700
Subject: Re: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
To: Florian Fainelli <f.fainelli@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
 <6fc99e01-6d64-4248-3627-aa14a914df72@gmail.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <ef8b4010-956f-6e66-dbda-7c9999fec813@microchip.com>
Date: Fri, 17 Apr 2020 14:57:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6fc99e01-6d64-4248-3627-aa14a914df72@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_055738_945687_BEF748E0 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Florian,

Thank you for your review of the series!


On 16/04/2020 at 21:25, Florian Fainelli wrote:
> On 4/16/2020 10:44 AM, nicolas.ferre@microchip.com wrote:
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
> 
> [snip]
> 
>>
>> +static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
>> +{
>> +     struct macb_queue *queue = dev_id;
>> +     struct macb *bp = queue->bp;
>> +     u32 status;
>> +
>> +     status = queue_readl(queue, ISR);
>> +
>> +     if (unlikely(!status))
>> +             return IRQ_NONE;
>> +
>> +     spin_lock(&bp->lock);
>> +
>> +     if (status & GEM_BIT(WOL)) {
>> +             queue_writel(queue, IDR, GEM_BIT(WOL));
>> +             gem_writel(bp, WOL, 0);
>> +             netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
>> +                         (unsigned int)(queue - bp->queues),
>> +                         (unsigned long)status);
>> +             if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
>> +                     queue_writel(queue, ISR, GEM_BIT(WOL));
> 
> You would also need a pm_wakeup_event() call here to record that this
> device did wake-up the system.

Oh yes, indeed that's missing. I'll add it to my v2.

Thanks. Best regards,
   Nicolas


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
