Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BEB2CA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 21:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbW2xq3p6PhU9LjlVko2p0SoehKkzLd/PXbL+Kr/wc8=; b=BV7gaKlsro6lxj
	H8r2PK8JV2VytVpJepqqp07NBbss8m3jhyYaaygTFoC0oKY5JFWb9s0H8DXZxmWZUN9o9xSolgZ0G
	eBNHvzvP7F7wET+zluC+VrXpXu2SpOGNzp9vrbbxq8NnTX8X1uFW6oRv04Txgrzxtggi9FqS4ID2z
	+cBnt7LtaTmFmNQ9V8KJPOT2CPA43KaCSrSlLE11E7/rmf1H1iEXzT6nvXcOg+bQNkHnsMfgBBQX6
	jT8TdqW3UMzekpWNXQv+dvPxTfs02QUHGxldIgVhMuj187bEuuI9yvL98p7qiOvbDxhrJHpCM4VaV
	xV31bA9vBmntyN8tj0qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9DMs-0007Bl-EV; Sat, 14 Sep 2019 19:05:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9DMf-0007Ax-2a
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 19:05:48 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: NamCnpYy7SPDNIB3inySM76wPEFDkbfm16Jv9c2QJO7rqBr18skMfsFHvgdYGBvU/O7zLERuLf
 sMp/3dM2X6MFofMZCc49ldEjcBZKAJ9XLk5J1vftjusHp+vZcM+Wt5GWC+evLq6iyou2dyYAIP
 2s+WfJvk6zxP6JLtyJSVfFCgvCIJgAfewFMp9x38PFg6qFOGq/e6rF7zUYWOnIcav5mAwHUb8m
 aW6QlCXClqr2pWjIzPSr5wrO10iAJts19F7p1YFXyIA9nU5nZGwZgTKtu/11LDhp78n1k4UNFh
 tgk=
X-IronPort-AV: E=Sophos;i="5.64,505,1559545200"; d="scan'208";a="50488026"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Sep 2019 12:05:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 14 Sep 2019 12:05:29 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 14 Sep 2019 12:05:29 -0700
Date: Sat, 14 Sep 2019 21:05:28 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH] i2c: at91: Send bus clear command if SCL or SDA is down
Message-ID: <20190914190528.wnxhcjo5s66qive6@sekiro>
Mail-Followup-To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, wsa@the-dreams.de
References: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_120545_129076_253A3603 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, wsa@the-dreams.de,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 12:58:54PM +0300, Codrin Ciubotariu wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SCL or the SDA pins. We can generate a bus clear command, hoping that
> the slave might release the pins.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

I'll be off for three weeks so if there are minor changes, you can keep my
ack.

Thanks

Ludovic

> ---
>  drivers/i2c/busses/i2c-at91-master.c | 20 ++++++++++++++++++++
>  drivers/i2c/busses/i2c-at91.h        |  6 +++++-
>  2 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index a3fcc35ffd3b..5f544a16db96 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -599,6 +599,26 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
>  		at91_twi_write(dev, AT91_TWI_CR,
>  			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
>  	}
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
> +	}
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
> index 499b506f6128..ffb870f3ffc6 100644
> --- a/drivers/i2c/busses/i2c-at91.h
> +++ b/drivers/i2c/busses/i2c-at91.h
> @@ -36,6 +36,7 @@
>  #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
>  #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
>  #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
> +#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
>  #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
>  #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
>  #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
> @@ -69,6 +70,8 @@
>  #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>  #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
>  #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
> +#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
> +#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
>  
>  #define	AT91_TWI_INT_MASK \
>  	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
> @@ -81,7 +84,8 @@
>  #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
>  
>  #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
> -#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
> +#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
> +#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
>  #define	AT91_TWI_ACR_DIR	BIT(8)
>  
>  #define	AT91_TWI_FMR		0x0050	/* FIFO Mode Register */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
