Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E34BC5C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4+D1jturfuf8OK9j9IMDkCyrfTSIdpyX1qzZTEDbVQ=; b=rqg4zq25dtpoCK
	X30KoGBnv/Kewr/aNBeknDEMYXXEocZ4rQF5TvzrzpeqZLWwoWUCOc+kZDCufZALwAD1hpB6m9yjy
	o5aKYGRUts/fLMaHrwpdquZL9ltFRIOIf7vL7y8Up5yqf/jpBIpW9hAOv4dHRM50ssQ9nFImBrp0v
	DCRF05DV7FuSoih5DCTzdgxmvqYzvVE/RFSrip9O5dDuEbZp2WQ6AT5Z5Adk5+MvWF2mCO2w1y2yg
	zN+3uUW3jDEJ+pP8ZQ+Z7aDhhN2EfuK51RvKn2u9p0MA91Y2/tt5+/YWBD0mFDoUonYnd7aXVA86H
	15iLI101gvflHr3D1V7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiIN-0006KW-Bn; Tue, 24 Sep 2019 10:43:47 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiIF-0006Ja-Fz
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:43:41 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-116-9Hi8Jc8kPpqqOwcPCfmVPQ-1; Tue, 24 Sep 2019 11:43:36 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 24 Sep 2019 11:43:35 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 24 Sep 2019 11:43:35 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Anson Huang' <anson.huang@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Topic: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Index: AQHVcra7p8HS4HCHSk+GwFkUo51L56c6k17Q///1BACAABgw0A==
Date: Tue, 24 Sep 2019 10:43:35 +0000
Message-ID: <37b2481ac9094f27bf21325e2770abdb@AcuMS.aculab.com>
References: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
 <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
 <DB3PR0402MB3916FFD66797DAC0AB1110D8F5840@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916FFD66797DAC0AB1110D8F5840@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: 9Hi8Jc8kPpqqOwcPCfmVPQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_034339_802878_C8AAF884 
X-CRM114-Status: GOOD (  17.03  )
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang
> Sent: 24 September 2019 11:03
> Hi, David
> 
> > Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
> > repeatedly
> >
> > From: Anson Huang
> > > Sent: 24 September 2019 10:00
> > > Add helper variable dev = &pdev->dev to simply the code.
> > >
...
> > >  static int pwm_imx27_probe(struct platform_device *pdev)  {
> > > +	struct device *dev = &pdev->dev;
> > >  	struct pwm_imx27_chip *imx;
> > >
> > > -	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> > > +	imx = devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
...
> > Hopefully the compiler will optimise this back otherwise you've added
> > another local variable which may cause spilling to stack.
> > For a setup function it probably doesn't matter, but in general it might have a
> > small negative performance impact.
> >
> > In any case this doesn't shorten any lines enough to remove line-wrap and
> > using &pdev->dev is really one less variable to mentally track when reading
> > the code.
> 
> Do we know which compiler will optimize this? I saw many of the patches doing
> this to avoid a lot of dereference, I understand it does NOT save lines, but my intention
> is to avoid dereference which might save some instructions.
> 
> I thought saving instructions is more important. So now there are different opinion about
> doing this?

Remember &pdev->dev is just 'pdev + constant'.
Assuming 'pdev' is held in a callee saved register (which you want it to be) then to access
dev->foo the compiler can remember the constant and use an offset from 'pdev' instead of
an extra 'dev' variable.
On most modern ABI the first function call arguments are passed in registers.
So an add  instruction (probably lea) can be used to add the constant offset at the same
time as the value is moved into the argument register.

However your extra variable could easily get spilled out to the stack.
So you get an extra memory read rather than (at most) an extra 'add' instruction.

Even if pdev->dev were a pointer, repeatedly reading it from pdev->dev could
easily generate better code than having an extra variable that would mean the
value was repeatedly read from the stack.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
