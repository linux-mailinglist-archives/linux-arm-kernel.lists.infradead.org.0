Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D2C1F60C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaCZB+0VfyX7yaXe7TM2wWfeJMfe2uSHyFFWBGOdaRI=; b=AY9Cx9gmWjjJlk
	73WKQ3Z7eNo4AR6lJPl14ta+8z1wr03EScntEGy3g1t4EpiKI9WJ74UrvrmH/lxKsQ+af2VpvrNAP
	xzuo0nA2wgghCHBD5wvwsNxyCLfRntWLgrzo4jIFAyL/a9PpXDOctB4VF5xiDui1DQS+/GKtzqdW3
	2HZ7QkSMTHxBWDi7+6JrutWzKORVsTzRjo/SYKGHq6bixTaQpRy/OAmDA/Fg8UOamxHAbgSHoa/Z7
	BMI4m9xpHyLMnARqcn+0HMrquokHatXLdvCCUc3vqLQZu12fDMbLQRSFbbpRjmsEtPneZjsWDW1Nm
	PdMy0TJ1fgO/tmpH5BvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuMu-0002Zo-0b; Wed, 15 May 2019 13:54:52 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuMj-0002Yy-RJ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:54:45 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-3-OyRg268PPrOZk6NUYmL0yQ-1;
 Wed, 15 May 2019 14:54:38 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 15 May 2019 14:54:37 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 15 May 2019 14:54:37 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Robin Murphy' <robin.murphy@arm.com>, 'Will Deacon' <will.deacon@arm.com>
Subject: RE: [PATCH] arm64: do_csum: implement accelerated scalar version
Thread-Topic: [PATCH] arm64: do_csum: implement accelerated scalar version
Thread-Index: AQHVCwMrtYHa1Y0LVUWOb1uB691U/KZr90eg///8CQCAABRdMIAACBiAgAAenMA=
Date: Wed, 15 May 2019 13:54:37 +0000
Message-ID: <b69d404a5de74e3db115c335e56a21af@AcuMS.aculab.com>
References: <20190218230842.11448-1-ard.biesheuvel@linaro.org>
 <d7a16ebd-073f-f50e-9651-68606d10b01c@hisilicon.com>
 <20190412095243.GA27193@fuggles.cambridge.arm.com>
 <41b30c72-c1c5-14b2-b2e1-3507d552830d@arm.com>
 <20190515094704.GC24357@fuggles.cambridge.arm.com>
 <6e755b2daaf341128cb3b54f36172442@AcuMS.aculab.com>
 <3d4fdbb5-7c7f-9331-187e-14c09dd1c18d@arm.com>
 <9f72aecd99e74c1a939df6562ed9c18c@AcuMS.aculab.com>
 <083f8222-971c-0d8e-4650-0d88b193e316@arm.com>
In-Reply-To: <083f8222-971c-0d8e-4650-0d88b193e316@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: OyRg268PPrOZk6NUYmL0yQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_065442_158928_76305EAC 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [146.101.78.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "huanglingyan \(A\)" <huanglingyan2@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "steve.capper@arm.com" <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy
> Sent: 15 May 2019 13:40
> On 15/05/2019 12:13, David Laight wrote:
> > From: Robin Murphy
> >> Sent: 15 May 2019 11:58
> >> To: David Laight; 'Will Deacon'
> >> Cc: Zhangshaokun; Ard Biesheuvel; linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org;
> >> ilias.apalodimas@linaro.org; huanglingyan (A); steve.capper@arm.com
> >> Subject: Re: [PATCH] arm64: do_csum: implement accelerated scalar version
> >>
> >> On 15/05/2019 11:15, David Laight wrote:
> >>> ...
> >>>>> 	ptr = (u64 *)(buff - offset);
> >>>>> 	shift = offset * 8;
> >>>>>
> >>>>> 	/*
> >>>>> 	 * Head: zero out any excess leading bytes. Shifting back by the same
> >>>>> 	 * amount should be at least as fast as any other way of handling the
> >>>>> 	 * odd/even alignment, and means we can ignore it until the very end.
> >>>>> 	 */
> >>>>> 	data = *ptr++;
> >>>>> #ifdef __LITTLE_ENDIAN
> >>>>> 	data = (data >> shift) << shift;
> >>>>> #else
> >>>>> 	data = (data << shift) >> shift;
> >>>>> #endif
> >>>
> >>> I suspect that
> >>> #ifdef __LITTLE_ENDIAN
> >>> 	data &= ~0ull << shift;
> >>> #else
> >>> 	data &= ~0ull >> shift;
> >>> #endif
> >>> is likely to be better.
> >>
> >> Out of interest, better in which respects? For the A64 ISA at least,
> >> that would take 3 instructions plus an additional scratch register, e.g.:
> >>
> >> 	MOV	x2, #~0
> >> 	LSL	x2, x2, x1
> >> 	AND	x0, x0, x1
> 
> [That should have been "AND x0, x1, x2", obviously...]
> 
> >>
> >> (alternatively "AND x0, x0, x1 LSL x2" to save 4 bytes of code, but that
> >> will typically take as many cycles if not more than just pipelining the
> >> two 'simple' ALU instructions)
> >>
> >> Whereas the original is just two shift instruction in-place.
> >>
> >> 	LSR	x0, x0, x1
> >> 	LSL	x0, x0, x1
> >>
> >> If the operation were repeated, the constant generation could certainly
> >> be amortised over multiple subsequent ANDs for a net win, but that isn't
> >> the case here.
> >
> > On a superscaler processor you reduce the register dependency
> > chain by one instruction.
> > The original code is pretty much a single dependency chain so
> > you are likely to be able to generate the mask 'for free'.
> 
> Gotcha, although 'free' still means additional I$ and register rename
> footprint, vs. (typically) just 1 extra cycle to forward an ALU result.
> It's an interesting consideration, but in our case there are almost
> certainly far more little in-order cores out in the wild than big OoO
> ones, and the double-shift will always be objectively better for those.

Is there a pipeline delay before the result of the memory read (*ptr)
can be used? (Even assuming the data is in the L1 cache??)
Even on an in-order cpu that can give you a spare cycle or two
that the code may not normally fill.

FWIW I've been known to use (++ptr)[-1] (instead of *ptr++) to move
the increment into an available delay slot (of an earlier load).

Anyway it isn't that obvious that it is the fastest way.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
