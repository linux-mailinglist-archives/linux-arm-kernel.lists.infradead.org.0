Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE37BB7D8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4JPOBjrK7/BFiVNVBgFjgRMY5C8KX/Z9kcZAY2BU9k=; b=e47yNFlVjb1kCvAPlSwQPd8jO
	VM+kv3d7Hb2L6E/L2A2ehT7ETW62VBScqrcWqpGG4/hDSCkjfEIjbQ/rvTHAaXNr8hhdA3Hql4UQf
	MQVogXiRThl3o8+7L4avNGLh9z/7Jtx/Zyhd8G2HbjV+dPghNbrsPa0MFZRIRWiCHzcffMbbesQ+C
	ZBhmzVhXoTqUSeiNADUpGZ47B70Yrpv9iGBgjPI9/EZmj+rpyD0KrYLI0bFxKiiKX3fFqTS6VvFQ3
	urfic5Iiv5Msc4vB2LZGuJ6uSSWU3otkjx7F6Em83xwuIIZUSRxx7tHd/t+7b3jHqzlVkha9nzrVx
	ukh9uVcFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAy1F-0004rl-CG; Thu, 19 Sep 2019 15:06:53 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAy0t-0004rG-Io
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:06:33 +0000
X-Originating-IP: 86.207.98.53
Received: from [192.168.10.51]
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BED25C0002;
 Thu, 19 Sep 2019 15:06:18 +0000 (UTC)
Subject: Re: [PATCH] i2c: at91: Send bus clear command if SCL or SDA is down
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
From: kbouhara <kamel.bouhara@bootlin.com>
Message-ID: <1ed845e5-3835-f1aa-099a-b67c3bc16076@bootlin.com>
Date: Thu, 19 Sep 2019 17:06:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_080631_771575_FE88476B 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ludovic.desroches@microchip.com, alexandre.belloni@bootlin.com,
 wsa@the-dreams.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/11/19 11:58 AM, Codrin Ciubotariu wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SCL or the SDA pins. We can generate a bus clear command, hoping that
> the slave might release the pins.
>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>   drivers/i2c/busses/i2c-at91-master.c | 20 ++++++++++++++++++++
>   drivers/i2c/busses/i2c-at91.h        |  6 +++++-
>   2 files changed, 25 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index a3fcc35ffd3b..5f544a16db96 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -599,6 +599,26 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>   		at91_twi_write(dev, AT91_TWI_CR,
>   			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>   	}
> +
> +	/*
> +	 * After timeout, some faulty I2C slave devices might hold SCL/SDA down;
> +	 * we can send a bus clear command, hoping that the pins will be
> +	 * released
> +	 */
> +	if (!(dev->transfer_status & AT91_TWI_SDA) ||
> +	    !(dev->transfer_status & AT91_TWI_SCL)) {
> +		dev_dbg(dev->dev,
> +			"SDA/SCL are down; sending bus clear command\n");
> +		if (dev->use_alt_cmd) {
> +			unsigned int acr;
> +
> +			acr = at91_twi_read(dev, AT91_TWI_ACR);
> +			acr &= ~AT91_TWI_ACR_DATAL_MASK;
> +			at91_twi_write(dev, AT91_TWI_ACR, acr);
> +		}
> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);

This bit is not documented on SoCs before SAMA5D2/D4, this write 
shouldn't be done unconditionally.


-- 
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
