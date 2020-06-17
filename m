Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7DE1FCF92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssoRNQMv9TEgq2vyjA88j5LJyjvVwsyQ0+TQZf+s+Yk=; b=B3JtvropK9GBKM
	VlA+MGO8HZ8Mu/DgA2bttW6tLCPLyZ4jkLzPnngCEO1UcfC0aiq3V1y+xGlBpy2eJggA3k1C669x1
	jcvnM4b5Ivusxek6Q+TP9YG+pQiSTT7DxkwILvoqsCzNH88D7S3gHi3k8vZu9OxV11y05MVmpFxZx
	rYpKpb9Hn3iy4olWUcVmAIVqLaTJUJUJYNEaGCBJYvjHxJkiU14zgC8/wqMzjb+tHWLgZ3IzNF0y2
	2uSm+wxaulbKY45cFawQKtG1pqk47ozVdMxxlbpleYqXnNpFGzW5UUSfOkZCacMpeqYCat+/yco+A
	M2z0pcNn1Vs1/ZnYGKXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZ5Z-0003gD-Su; Wed, 17 Jun 2020 14:30:54 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZ5K-0003fZ-Oi
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:30:40 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-144-tRDTNmFJP0-XS1WZyvnh3A-1; Wed, 17 Jun 2020 15:30:32 +0100
X-MC-Unique: tRDTNmFJP0-XS1WZyvnh3A-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 17 Jun 2020 15:30:31 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 17 Jun 2020 15:30:31 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Wolfram Sang' <wsa@kernel.org>, "wu000273@umn.edu" <wu000273@umn.edu>
Subject: RE: [PATCH] i2c: xiic: Fix reference count leaks.
Thread-Topic: [PATCH] i2c: xiic: Fix reference count leaks.
Thread-Index: AQHWQiuTE76LjToEc02VHcgO+GXIWKjc4oTg
Date: Wed, 17 Jun 2020 14:30:31 +0000
Message-ID: <8aa8ee3d005f4a7e9a4dfa6654cc2732@AcuMS.aculab.com>
References: <20200613215923.2611-1-wu000273@umn.edu>
 <20200614090950.GB2878@kunai>
In-Reply-To: <20200614090950.GB2878@kunai>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_073039_078372_207B5A07 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.82.80.151 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [207.82.80.151 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>, "kjlu@umn.edu" <kjlu@umn.edu>,
 Michal Simek <michal.simek@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wolfram Sang
> Sent: 14 June 2020 10:10
> 
> On Sat, Jun 13, 2020 at 04:59:23PM -0500, wu000273@umn.edu wrote:
> > From: Qiushi Wu <wu000273@umn.edu>
> >
> > pm_runtime_get_sync() increments the runtime PM usage counter even
> > when it returns an error code. Thus call pm_runtime_put_noidle()
> > if pm_runtime_get_sync() fails.
> 
> Can you point me to a discussion where it was decided that this is a
> proper fix? I'd think we rather should fix pm_runtime_get_sync() but
> maybe there are technical reasons against it.

Or, if there is one place that actually needs the reference split the
code so that unusual case keeps the reference.

In one of the patches I also spotted:
	ret = pm_runtime_get_sync();
	if (ret < 0 && ret != _EAGAIN)
		...

(I think it was EAGAIN.)
I can't help feeling that is just wrong somewhere.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
