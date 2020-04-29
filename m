Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C82A1BD6E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiwkJE1IIi5pT5pYHZ3Ulf5sCVivWEF/gL7IM0vljtk=; b=nR8yrCNtBPa/do
	T0T6UQvDufcc7ECcPCcDVZdvb2p+YDa4jBFptwElXGNdvnPuGlLRT7KI9YvmOtECnsYBieAqxcr3e
	vz8MlRMeRtcJBumRGnAillAhsxEVCPiLGm6MWXylI06lNquWP1clTVSh+9GmtZA1gmuqitlaIzqGo
	cJmx9ppktE2UTkoXzphf6P9AkAnF5cTBjiDzXRHefU7IfAn+DKecw1gZMSekaI2y7OBd9C99poimz
	ZuPAK0tpZqf54NgkKXOYZFJFhe5fPHQsu1h52dmlOE8zx+qq1r6sM89ad8OliqHTAt930yhP1Xzdi
	mLY7iVsHrrcoKPpYiS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThqO-0001UL-T4; Wed, 29 Apr 2020 08:13:24 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThqF-0001T6-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:13:16 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id 03T82qFe086043;
 Wed, 29 Apr 2020 16:02:52 +0800 (GMT-8)
 (envelope-from ryan_chen@aspeedtech.com)
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Wed, 29 Apr
 2020 16:12:46 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Wed, 29 Apr 2020 16:12:45 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: RE: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Thread-Topic: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Thread-Index: AQHWHdeQ1mqTBOPAdE+n+yVhmYVsFKiPNOCAgACLErA=
Date: Wed, 29 Apr 2020 08:12:45 +0000
Message-ID: <56add9c6e6b5410986325a1360466e4b@TWMBX02.aspeed.com>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
 <20200429075357.GA1957@kunai>
In-Reply-To: <20200429075357.GA1957@kunai>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.87]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 03T82qFe086043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_011315_558177_05DED900 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-----Original Message-----
From: Wolfram Sang [mailto:wsa@the-dreams.de] 
Sent: Wednesday, April 29, 2020 3:54 PM
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Brendan Higgins <brendanhiggins@google.com>; Benjamin Herrenschmidt <benh@kernel.crashing.org>; Joel Stanley <joel@jms.id.au>; Andrew Jeffery <andrew@aj.id.au>; linux-i2c@vger.kernel.org; openbmc@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org; linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status clear race condition.

On Wed, Apr 29, 2020 at 11:37:37AM +0800, ryan_chen wrote:
> In AST2600 there have a slow peripheral bus between CPU  and i2c 
> controller.
> Therefore GIC i2c interrupt status clear have delay timing, when CPU 
> issue write clear i2c controller interrupt status.
> To avoid this issue, the driver need have read after write  clear at 
> i2c ISR.
> 
> Signed-off-by: ryan_chen <ryan_chen@aspeedtech.com>

v0? is it a prototype?
[Ryan Chen] It is not prototype it is official patch.
And is there maybe a Fixes: tag for it?
[Ryan Chen] Yes it is a fix patch.

> ---
>  drivers/i2c/busses/i2c-aspeed.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c 
> b/drivers/i2c/busses/i2c-aspeed.c index 07c1993274c5..f51702d86a90 
> 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -603,6 +603,7 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>  	/* Ack all interrupts except for Rx done */
>  	writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
>  	       bus->base + ASPEED_I2C_INTR_STS_REG);
> +	readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>  	irq_remaining = irq_received;
>  
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
> @@ -645,9 +646,11 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
>  			irq_received, irq_handled);
>  
>  	/* Ack Rx done */
> -	if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
> +	if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
>  		writel(ASPEED_I2CD_INTR_RX_DONE,
>  		       bus->base + ASPEED_I2C_INTR_STS_REG);
> +		readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> +	}
>  	spin_unlock(&bus->lock);
>  	return irq_remaining ? IRQ_NONE : IRQ_HANDLED;  }
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
