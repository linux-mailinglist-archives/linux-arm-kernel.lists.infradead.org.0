Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF9B3453
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRJ/O0RFdanznPk9+yf2aVvnfHffVB+e73RRTWkcxss=; b=NabOICxxIizo1k
	iNmSeWribgCE3rzq7wv2Moi1v2u19Q0YaDXf6w/Y78fYv48yzOy//oAzBn13dfKkD694Lw8hBk+Oo
	iV4NMmn22bzjjCNUhFjkOW4vYH56DpvtgFOLcfNTvNrGcJmX/E/ES2RKwHuk+zvdJWRKXWaVz9vP1
	X8iyOXDNr+j8oOp6JZyll6ut0JFoOsOwDmXNQvkfTWx/r4hfI5zdI4D6xdc752qISpZDbibBuM3f0
	UXWnpSWynjllsH5YGmIFRxXmUZVdC5GEYwo9tzOuTjGij84x3B1QtrWvshB4uA/YLD60fzTKIHcph
	6vKFoTkLUdghmsor7Oeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jR5-0000Kc-29; Mon, 16 Sep 2019 05:20:27 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jQu-0000In-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 05:20:19 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hsZtTv6iLjB/4OqBiGD/FHYumadEXsdR7xFEX3Z/khgLKZm5cLyNhsyZOWlUo6WT1zXnmuwx2Y
 xGWoad3WsbCwtjYhZYO0oSZgu0jPzyZ0d72oDTCYjb+GdUK2KOSMoLYy2r9vvKrHNRn6pkg3a6
 rOGG8Hvyx/khBSQM2XB5sz7n+v6ggbs6uB6GoBupLImLLibsHdZY+uy2i+UpMSwKgk2+c1Fah7
 PTv8GDzjCURaAYheQmvrz0aPsrPGT0nDpn2Gh/dCJKj8yoE7IH5b3l/qhhIV964frYwLjMREH3
 qO8=
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="49175969"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Sep 2019 22:20:13 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 15 Sep 2019 22:20:13 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 15 Sep 2019 22:20:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxJfXxwXyTi5xcPWLiOe+KaDnEGl2iFcEeYKaZAIPtizsNrj5kyUFJ88r3dWMUzxus4wCdycSSliJfmKdx0tCcNy8Q3it2Vy0r0bLvNoLChOjh1HnlO36QgQ0Q2nFHPtEg42kgUo5ntqbq86bVEwXDCV/LCpqVLvN4LJYKSPnlxJkLLj7E4k4prP91bbkB5ZvNYi2wFjd2UfZTxSRZgxtoRU6hjRSar4rn30YwpMCSqNvn/+LA6ZSEAA96jUMnX0Ylyh8oJvQMlVguNJP/rl22kJkwco+Yg+J9PNb9bLDmpucT450wNc2SlmPiPPh78+6ZH/1d4CzIJcJSRIlCLRUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K30q7VOGoWQ57c0Zr+XqPpsPRuz/PvxPixG2A4pj1f0=;
 b=dVsFbjjNDLJ8dG2Lpkofgp8qgugAO5AMBKXdIQQxqbOqtVLKsFNJWtLbrBZtwRhV+x2VW2jXU8NjjyESt1NOoGe542c8v8sOBITQJD9kGQYAYV+l96ast7bYEIzUqGmMe2hKNI+xkrD+NLGv5u/8IeTB3szhOpSseQSSaDN8npx7giRKDI11a1U0ysaAVbUOHkh9dhuZwQUchHFHaHPS7sXx4Q19B0VBCdIQ+2FeN8H6wDw3GPjH1moDkum6z8sp1F/o6mKwMISx6GYFvdD1dt7777eMxTPY+l/NJD11gFc8J4uNS+9Z/dE4JebEgNs0S3FO115J0Qq5Nm6oxgtY8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K30q7VOGoWQ57c0Zr+XqPpsPRuz/PvxPixG2A4pj1f0=;
 b=IfZARf53+7Xs8YJu9v1QE87a8n9jalgCrGvxnXXLdTMZ9Cmh8jWaWTrIFFurtGHKm++KvLan2q0RrID8ntR35RSbIoKy+eZMA621fKppqReZqc9rgLZJ2AW4n2DVnD9Q/wTw+iM4TR+Qw1MvA5xRoWZsmoshGyVhZLdlAcx0z8U=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1342.namprd11.prod.outlook.com (10.169.231.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Mon, 16 Sep 2019 05:20:11 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c%12]) with mapi id 15.20.2263.023; Mon, 16 Sep
 2019 05:20:10 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Codrin.Ciubotariu@microchip.com>, <linux-i2c@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] i2c: at91: Send bus clear command if SCL or SDA is down
Thread-Topic: [PATCH] i2c: at91: Send bus clear command if SCL or SDA is down
Thread-Index: AQHVbE5pEIol6mz2t0SkZ2v6ztaQGw==
Date: Mon, 16 Sep 2019 05:20:10 +0000
Message-ID: <1d634b5d-c71b-bc75-0e77-1823db084eab@microchip.com>
References: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20190911095854.5141-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0155.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::48) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190916082001241
x-originating-ip: [86.120.236.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b25927b-b4ec-43ad-7c43-08d73a658b56
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1342; 
x-ms-traffictypediagnostic: MWHPR11MB1342:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13420B3EA6DAEEC3E83477F0878C0@MWHPR11MB1342.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(136003)(346002)(376002)(366004)(199004)(189003)(53936002)(66066001)(31696002)(86362001)(81156014)(81166006)(256004)(2201001)(14444005)(14454004)(54906003)(25786009)(316002)(5660300002)(31686004)(4326008)(8936002)(110136005)(478600001)(64756008)(446003)(11346002)(486006)(66556008)(66476007)(6246003)(66446008)(66946007)(2501003)(229853002)(52116002)(2906002)(476003)(2616005)(99286004)(386003)(6506007)(6512007)(3846002)(6116002)(53546011)(102836004)(7736002)(6436002)(71190400001)(186003)(6486002)(305945005)(26005)(71200400001)(76176011)(8676002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1342;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jdVASLg54L0QTHx6oPq7sjnoj5IQAz3Y1ihj86fYIMeQE6xYnz/+vK2SY+pZhUc//E+qbzyxr/R1DLvGkNbRDSbS7GCMFNK2KAt1eJgCep6fdQ9tpRjweSAJVcfLpBI5YhHIi5+HqyhJ+zuy+rWzrmdgoHn1hSMTFGx5P6uBK6Ld6HPdJ7xbk+ffPbjKnylwD4T69qJM0z53a7N1nyTpBJ1b8vX4Yk4+zGYRLXb+YwldWpe0TYinj4Pp+vZiKlAdT9nCH2jkRRb2SIkz7GH911DgVTfsF7g6GiGvmnmeTKU7fHIINxwQj4zWyFtVKX2t5CE8VB8J/8GjJkXXhBppOmg0S9Sq02QoRt32z5/HnzHFKehcS0r1WEYxXPWW7QIhogBH6SKvtz1tpKUmkS+G6T8DiCqtmzUd9clDT/bWQ+8=
Content-ID: <65345012C46F634D92545244C8ACDE72@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b25927b-b4ec-43ad-7c43-08d73a658b56
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 05:20:10.6490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zV3Uig03meuY3JLX7sljp7w1Wwx8OD8+xuqUGGzKP2fXfV90dXYH+2GjaSjUPTnNWtIaSnUCmrA/FJVu0QyeBtOztTFnAAppEYR9ueDG7xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1342
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_222016_801422_42298389 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ludovic.Desroches@microchip.com, alexandre.belloni@bootlin.com,
 wsa@the-dreams.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11.09.2019 12:58, Codrin Ciubotariu wrote:
> External E-Mail
> 
> 
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SCL or the SDA pins. We can generate a bus clear command, hoping that
> the slave might release the pins.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

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
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
