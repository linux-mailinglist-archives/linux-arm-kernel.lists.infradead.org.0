Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45041F953D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+anElHkxEqvLcsErlDcQsGavcyqaqwXHb1PBVtaaf3k=; b=iz8UBzrK1MQ9f+
	QmgZzjBkZjYPx6RJF4E5WEHnnJOFYeSLatUw7VChUqFybuTNychWOy0a43T4juYakncYZHy0EGhh3
	TLbDInB0XlgGRGekjBmh5a3CtVmw0sPgFjIa5a/YrnxHXzGoi6RaRN8axh3UQ/No7F5PFA9lEJE6n
	n/mmfJmLXIr3c9EHZuqWnFS4OFbxxaYS97Z9fwIpq35IvpMXx4CHrZrz/jl7IiC5BLcHTXFMS98ID
	QjciozTW52qczMHLgrEVVURmAwsoFvDBDPOADWQwKnJP3gMHpeawc81CYrA28rX5KHHVIyEKNS3c7
	cCmX3VZJXco9vM8FyXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknCX-0006b8-VQ; Mon, 15 Jun 2020 11:22:54 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.86.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknCO-0006aL-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:22:46 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-47-9KR430kxM7Czl-jMyYnSMw-1; Mon, 15 Jun 2020 12:22:36 +0100
X-MC-Unique: 9KR430kxM7Czl-jMyYnSMw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 15 Jun 2020 12:22:35 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Mon, 15 Jun 2020 12:22:35 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Al Viro' <viro@zeniv.linux.org.uk>, afzal mohammed
 <afzal.mohd.ma@gmail.com>
Subject: RE: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Thread-Topic: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Thread-Index: AQHWQZeuKY4+jVw3gESBYOJARK44Q6jZh6/w
Date: Mon, 15 Jun 2020 11:22:35 +0000
Message-ID: <3ef1b43f182041bc9585f5fd462a092f@AcuMS.aculab.com>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc> <20200613125126.GE23230@ZenIV.linux.org.uk>
 <20200613125615.GF23230@ZenIV.linux.org.uk> <20200613134236.GA4086@afzalpc>
 <20200613153102.GG23230@ZenIV.linux.org.uk>
In-Reply-To: <20200613153102.GG23230@ZenIV.linux.org.uk>
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
X-CRM114-CacheID: sfid-20200615_042245_189621_6AB230C1 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.58.86.151 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.58.86.151 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Al Viro
> Sent: 13 June 2020 16:31
> On Sat, Jun 13, 2020 at 07:12:36PM +0530, afzal mohammed wrote:
> > Hi,
> >
> > On Sat, Jun 13, 2020 at 01:56:15PM +0100, Al Viro wrote:
> >
> > > Incidentally, what about get_user()/put_user()?  _That_ is where it's
> > > going to really hurt...
> >
> > All other uaccess routines are also planned to be added, posting only
> > copy_{from,to}_user() was to get early feedback (mentioned in the
> > cover letter)
> 
> Sure, but what I mean is that I'd expect the performance loss to be
> dominated by that, not by copy_from_user/copy_to_user on large amounts
> of data.  Especially on the loads like kernel builds - a lot of stat()
> and getdents() calls there.

Or any network traffic where the number of usercopies involved in,
for example, sendmsg() gives a measurable performance decrease when
HARDENED_USERCOPY is enabled.

Do you have issues with cache aliasing?
(Is aliasing the right term?)
Where potentially the temporary kernel map doesn't use the same
cache lines as the user processes map.

I'm not sure what problem you are trying to solve, but for 64bit
systems it may be possible to map all of physical memory into the
kernel address map, them you (loosely) only have to find the KVA
that matches the user-VA to do the copy.

IIRC our SYSV kernels used to do that - until we had 384MB of physical
memory and ran out of kernel address space.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
