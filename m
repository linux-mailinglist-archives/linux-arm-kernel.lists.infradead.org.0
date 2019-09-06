Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E6DAB496
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 11:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58ETm3kdFELxNuzkltsgckvUByo9+8DOAvOkm+vQppI=; b=ckMcQ6Tt0pYkVr
	S66wD0MsqkHRcmvahhGYNR6xLaiXXO7tPheNR/qU5KtApKp6fCx7jGUW9nJ/KakSZorbvRoiKetA4
	J2pctfI2qKqgID51vSl6H/gcRXi5fYr47Pa4fNsoID5/Dq6Cn4fmyouoOiPVvMwy8C9gcp7FrpuxM
	xswuEQRpm2LMAnJ+8kt6en10neYq6Vwb2QWwv7UZbaKWOFebeLzUELl5Ypmdwew+rlm59I5fA8Fuf
	6wS8WQKYfKdAaJ6rtjeMv0129zGNgsUeMrRkfC2BslobLEp3ZsJVoSxZIAjtBL/dmqp4y79tEXdb+
	UdIFNVznYyfS+0XjlxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ACp-0005U7-Ch; Fri, 06 Sep 2019 09:06:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ACS-0005U0-KX
 for linux-arm-kernel@bombadil.infradead.org; Fri, 06 Sep 2019 09:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GfN/V+Yc+h0te0Z6ikGXVIUvJVwtPblumB+546EMC3s=; b=B3F/5RNJEV6iXtgYC6w0BDchQL
 rBXoO3jWfLOGCMFU1J5CmUv6/82vZtZfey2B9LrSgJU8siStt/vU6CNcYtIYXtlefAKNmbwnjSuyk
 BPNv4rfQe/dEU3cqdTXQwB15S9qO7zX0Gy+mZR+9o1ZGQg/yd6sHCmFmZvufwkdhrKy/Y6P1VVyQc
 AlvpRXcuPTS8b7UidLrHqVXpL46PDWYClCEmELTL39gaiwnZ+ZOKQMMib0bVBgHRrGNjHSJXcWPlV
 A6xnXE7wzvpsJuTA2zUvuG46jn84wxY3f0zxUw3SSk9BP/6c9keQuHRiVojwgxMiKlG2nL9iAe1NQ
 mwepCK4Q==;
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ACj-0002hE-5l
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 09:06:56 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-39-q--cHczUMTKFUx84CmEraQ-1; Fri, 06 Sep 2019 10:05:37 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 6 Sep 2019 10:05:36 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 6 Sep 2019 10:05:36 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Alexandre Belloni' <alexandre.belloni@bootlin.com>, Linus Walleij
 <linus.walleij@linaro.org>
Subject: RE: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Topic: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Thread-Index: AQHVY/kRQYKuMyjlyU+DkxaSF5MIvaceWwkA
Date: Fri, 6 Sep 2019 09:05:36 +0000
Message-ID: <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
References: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: q--cHczUMTKFUx84CmEraQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100653_247009_B9BFDE7C 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Claudiu.Beznea@microchip.com" <Claudiu.Beznea@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni
> Implement .get_multiple and .set_multiple to allow reading or setting
> multiple pins simultaneously. Pins in the same bank will all be switched at
> the same time, improving synchronization and performances.

Actually it won't 'improve synchronisation', instead it will lead to
random synchronisation errors and potential metastability if one
pin is used as a clock and another as data, or if the code is reading
a free-flowing counter.

It will improve performance though.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
