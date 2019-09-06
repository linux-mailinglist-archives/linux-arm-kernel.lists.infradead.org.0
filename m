Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B6AB518
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 11:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=He9LaoofHJmQ5yy+6AwEP6IEVxMfNUSvFUKqnDX/624=; b=s38B0HW2yc+CSS
	HMW80T4keEBR79wt/4xENI18bUICwnGSjiHK+hEXMgaVl04ADtWpgWaiXVIs/ixKfwY/Bhvkmuvx1
	sNT4UJhZDLoYCe0Bv7gWlZfHp1uTNA8m7SLh76sfCR69BOh8faC98AeE5cvw90dvi2UvLZbJc+ZBO
	O2rlNKUqIxMbhl2PmzeoEGsZ2YznFlbJGL/qwfzNA7H+81rcQWWwO2VWHPuMoSumspCt9ZyGinnY6
	RpqTFkHpU4Auh0fP2oKSmLp3X3uva6urdayumwye+NmaDJb7V4C+w5DPQosyYCyz+oTDbXwdOPB39
	FyedhrJTRFEwIfAQQnXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Aox-0003mg-IS; Fri, 06 Sep 2019 09:46:23 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Aoj-0003lw-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 09:46:11 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-104-eKY-JNlwMq6UlZLFLzlduw-1; Fri, 06 Sep 2019 10:46:02 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 6 Sep 2019 10:46:02 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 6 Sep 2019 10:46:02 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alexandre Belloni' <alexandre.belloni@bootlin.com>
Subject: RE: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Topic: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Index: AQHVY/kRQYKuMyjlyU+DkxaSF5MIvaceWwkA///ylwCAABEjEA==
Date: Fri, 6 Sep 2019 09:46:02 +0000
Message-ID: <b010053340ef48dfa244ff48c8decd38@AcuMS.aculab.com>
References: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
 <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
 <20190906091212.GF21254@piout.net>
In-Reply-To: <20190906091212.GF21254@piout.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: eKY-JNlwMq6UlZLFLzlduw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_024610_027961_9A79B59E 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [207.82.80.151 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Claudiu.Beznea@microchip.com" <Claudiu.Beznea@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni
> Sent: 06 September 2019 10:12
> On 06/09/2019 09:05:36+0000, David Laight wrote:
> > From: Alexandre Belloni
> > > Implement .get_multiple and .set_multiple to allow reading or setting
> > > multiple pins simultaneously. Pins in the same bank will all be switched at
> > > the same time, improving synchronization and performances.
> >
> > Actually it won't 'improve synchronisation', instead it will lead to
> > random synchronisation errors and potential metastability if one
> > pin is used as a clock and another as data, or if the code is reading
> > a free-flowing counter.
> >
> 
> It does improve gpio switching synchronisation when they are in the same
> bank as it will remove the 250ns delay. Of course, if you need this
> delay between clk and data, then the consumer driver should ensure the
> delay is present.

With multiple requests the output pin changes will always be in the
same order and will be separated by (say) 250ns.
This is a guaranteed synchronisation.

If you change multiple pins with the same 'iowrite()' then the pins
will change at approximately the same time.
But the actual order will depend on internal device delays (which
may depend on the actual silicon and temperature).
You then have to take account of varying track lengths and the
target devices input stage properties before knowing which change
arrives first.
The delays might be sub-nanosecond, but they matter if you are
talking about synchronisation.

IIRC both SMBus and I2C now quote 0ns setup time.
Changing both clock and data with the same IOW isn't enough to
guarantee this.
(In practise the I2C setup time required by a device is probably
slightly negative (In order to support 0ns inputs) so a very small
-ve setup will (mostly) work.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
