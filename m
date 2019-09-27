Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835A2BFC34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 02:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyjzWuFN71AO1CxnBEYJ3suPSKw5hYS1EnPtfHyUnyo=; b=nzDO+ribhh2xpT
	tktmGj3emdleHrpjkolLFt+0N9uDXLqjktWLJavaxE4XUy7FKh3DISk+sQd3zMehfkBzOp8/KV6Vt
	cBjcKjNVCn8eDX1bogtF7XJAWkvYgR2pa3/U8p2UJUNeSU1sOe0KB82QnY+6Oefj0KC6bduhMTBZH
	HjMMmvq7aPB8p2XjocEZhJjSGEloXvLsZOds+W/ig1AdGcUomJ03MBNQQTFpEoLSyad57mzl87AQs
	kMplWPSS49yO5mvThWrC5jNScHeJZVK54PjB/7PnaF8eqXc6wEtuRvhtcgeEDZgpUbTHoj4ZFRBAi
	kvpNkiXW4YTIl/LJrPNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdv0-0001WY-0o; Fri, 27 Sep 2019 00:15:30 +0000
Received: from mail-eopbgr680055.outbound.protection.outlook.com
 ([40.107.68.55] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdul-0001Vs-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 00:15:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jm/Jnah57CV1D9gAQdqhEfvJFBLYEy8BxfXt+01Jy7LWZhZMD+DkTnKC0TiIG3M03YzYGISVN5tu/ojd0w5Dj2rdvnO3ZCafuBIOYLi1cuZ0+P3zgtaVpMfRTw9/k+JffYf0gsRhtRr4JCIePrzMFcgTDbuuSpPaG2tuFRJGIfRdwQ2KsqxIUeBK3skEPmQhRYEzsMzwJWce3qvWHdIhSTEUg82OkykNLRLduw7CZZCvhO1UTUqFI0ekLd1psf/Ou4/Tw78Q0/89lcMnaH+Gn86NziFYgRxrMvJ4QJjkrrEXkpfWiccdGodTd/kLtiVUCT/pG7yCGzQnWCozQMP5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zL2ACOWH1vRnrsLNAFFoAXqHhmRgSO3UdS1u1tHYGqU=;
 b=SDgg4c5MfJdqGdXMJ1NMZDKXHNbUS029CIlwl53NCy2mnrzpCUgGKA6Spu1u4k+BI6dgNxG/UCvQJCZOFY+xLWQDKtCYAtVs7+s2BPWxYnSQ9sctQqrbcklCEYyuAdVYfrYuKJuntP8Oahj5bXISqcXPEULYjs7hEZytICs6OgXzVSGj5PufFCsWQ2D0EYfGRjFOFJXVGBJtE6kI1Etoi/8a3ECgOSbHLdt0YHTnDkdQtMXb6PTK/wo6IrSC3jwAzPP40+zT2VTN82ngYRPyJBA4Gyw1SjZXVHbHif6xWNcnnDKBA3hW+U9p3XhXR+v+LjWdgDh++EId9i80TxABOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zL2ACOWH1vRnrsLNAFFoAXqHhmRgSO3UdS1u1tHYGqU=;
 b=Dby3jXN9fuLObGC2mZyS4g9RAe3x/Kb10p+kFm9etVaW2Q/j4Q7yUw3bSyeGs0vCxpOvNxRAO5vz8NSRhdN6uzgRE4mHYG4tQJmrhluGZ9siZ4sZ8oIF1096a6veM3Js7s4ktCRnz0QO0vZ10ciFTZWSaqSzzNsQ61V8M6F4CCU=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2992.namprd20.prod.outlook.com (52.132.172.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.18; Fri, 27 Sep 2019 00:15:12 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 00:15:12 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfw
Date: Fri, 27 Sep 2019 00:15:12 +0000
Message-ID: <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
In-Reply-To: <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81f61b33-f500-4e86-92f7-08d742dfc3bb
x-ms-traffictypediagnostic: MN2PR20MB2992:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB299228CF71719F60A89052C4CA810@MN2PR20MB2992.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(39850400004)(396003)(376002)(199004)(189003)(13464003)(52314003)(6246003)(53546011)(6916009)(6506007)(316002)(71200400001)(15974865002)(71190400001)(229853002)(7416002)(102836004)(7736002)(74316002)(86362001)(54906003)(305945005)(64756008)(76116006)(26005)(66446008)(66476007)(66946007)(66556008)(99286004)(81156014)(81166006)(8936002)(4326008)(55016002)(25786009)(52536014)(6436002)(14454004)(446003)(8676002)(7696005)(2906002)(33656002)(9686003)(76176011)(186003)(6116002)(30864003)(14444005)(478600001)(3846002)(476003)(11346002)(66066001)(5660300002)(256004)(486006)(559001)(579004)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2992;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xCQXnwg4v5yp06k45SliBCpV4DqIuGuu03QAuLxGcKZF55VquSafXF7x/YF3XkN6tIFPcRVummQnZIgnkFKe+XLa4ipmIfVQPHXsrYCj2Umts6cSRxkuwAzOeNM+QXN9rwuoCK4I280MFEoRraTE8B8wRBLFXImlXlWHKLfabMN8wutYuMu6KLBzpJNJGmxGYCk2Oz/u6B4msvYMxRvFy4h+RgsVgg76Zjs+/snfCHLXyQPpHUypn90e1DcKzmL38Hk8gCa5ope2K57Ath9h6uxXipN6hS9LoMokjSKCQrkhIThdqNNLAgQy4Er2a+ejANl3PZVqBr6OOusjq2Xfze9bHaKG5djoTi/DIRn8gaIsVz2QTtSr67iEUY7Lpipo9FvqwLgXWDDjPM4phgxK2TzzNnMV6/dsEnMvkz+jYkM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81f61b33-f500-4e86-92f7-08d742dfc3bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 00:15:12.2336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8an06Dv4jzGrpT4NDTCnHTUWeGvcTiMEwl9WomZGvG1lB5f+GpTvZBv9YVK1ZDaaQy3EqWkuV+wHAkjfFX2nu0VQ+aSTn0lpaj4J+Fs2QY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2992
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_171515_822975_F18194B2 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linus Torvalds <torvalds@linux-foundation.org>
> Sent: Thursday, September 26, 2019 6:35 PM
> To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Linux Crypto Mailing List <linux-
> crypto@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Herbert Xu
> <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> <gregkh@linuxfoundation.org>; Jason A . Donenfeld <Jason@zx2c4.com>; Samuel Neves
> <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann <arnd@arndb.de>;
> Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>; Will Deacon
> <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas <catalin.marinas@arm.com>
> Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for packet encryption
> 
> On Thu, Sep 26, 2019 at 2:40 AM Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
> >
> > While I agree with the principle of first merging Wireguard without
> > hooking it up to the Crypto API and doing the latter in a later,
> > separate patch, I DONT'T agree with your bashing of the Crypto API
> > or HW crypto acceleration in general.
> 
> I'm not bashing hardware crypto acceleration.
> 
> But I *am* bashing bad interfaces to it.
> 
And I'm arguing the interface is not that bad, it is the way it is
for good reasons. I think we all agree it's not suitable for the
occasional crypto operation using a fixed algorithm. For that, by
all means use direct library calls. No one is arguing against that.

However, I dare you to come up with something better that would
provide the same flexibility for doing configurable crypto and
offloading these (combined) operations to crypto acceleration 
hardware, depending on its actual capabilities.

i.e. something that would allow offloading rfc7539esp to
accelerators capable of doing that whole transform, while also being
able to offload separate chacha and/or poly operations to less
capable hardware. While actually being able to keep those deep HW
pipelines filled.

> Honestly, you need to face a few facts, Pascal.
> 
> Really.
> 
> First off: availability.
> 
>  (a) hardware doesn't exist right now outside your lab
> 
> This is a fact.
> 
Actually, that's _not_ a fact at all. For three reaons:

a) I don't even have real hardware (for this). We're an IP provider, 
   we don't make actual hardware. True, I have an FPGA dev board
   for prototyping but an ASIC guy like me considers that "just SW".
b) The actual hardware is in our customers labs, so definitely 
   outside of "my" lab. I don't even _have_ a lab. Just a full desk :-)
c) NXP Layerscape chips supporting Poly-Chacha acceleration can be bought
   right now (i.e NXP LX2160A, look it up). CAAM support for Poly-Chacha
   has been in mainline since kernel 5.0. So there's your hardware.

And does it matter that it doesn't exist today if it is a known fact
it *will* be there in just a few months? The general idea is that you
make sure the SW support is ready *before* you start selling the HW.

>  (b) hardware simply WILL NOT exist in any huge number for years,
> possibly decades. If ever,
> 
That remark is just very stupid. The hardware ALREADY exists, and
more hardware is in the pipeline. Once this stuff is designed in, it
usually stays in for many years to come. And these are chips sold in
_serious_ quantities, to be used in things like wireless routers and
DSL, cable and FTTH modems, 5G base stations, etc. etc.

> This is just reality, Pascal. 
>
I guess you must live in a different reality from mine? Because I see
some clear mismatch with _known facts_ in *my* reality. But then again,
I'm in this business so I know exactly what's out there. Unlike you.

> Even if you release your hardware tomorrow, 
>
We actually released this hardware a looooong time ago, it just takes
very long for silicon to reach the market. And that time is soon.

> where do you think it will exists? Laptops? PC's? Phones?
>
I already answered this above. Many embedded networking use cases.

> No. No. And no.
> 
Shouting "no" many times won't make it go away ;-)

> Phones are likely the strongest argument for power use, but phones
> won't really start using it until it's on the SoC, because while they
> care deeply about power, they care even more deeply about a lot of
> other things a whole lot more. Form factor, price, and customers that
> care.
> So phones aren't happening. Not for years, and not until it's a big
> deal and standard IP that everybody wants.
>
It will likely not be OUR HW, as the Qualcomms, Samsungs and Mediateks
of this world are very tough cookies to crack for an IP provider, but 
I would expect them to do their own at some point. I would also NOT
expect them to upstream any driver code for that. It may already exist!

> Laptops and PC's? No. Look at all the crypto acceleration they have today.
> 
No argument there. If an Intel or AMD adds crypto acceleration, they will
add it to the CPU core itself, for obvious reasons. If you don't actually
design the CPU, you don't have that choice though. (and from a power
consumption perspective, it's actually not that great of a solution)

> That was sarcasm, btw, just to make it clear. It's simply not a market.
> 
Eh ... we've been selling into that market for more than 20 years and
we still exist today? How is that possible if it doesn't exist?

> End result: even with hardware, the hardware will be very rare. Maybe
> routers that want to sell particular features in the near future.
> 
No, these are just the routers going into *everyone's* home. And 5G
basestations arriving at every other street corner. I wouldn't call 
that rare, exactly.

> Again, this isn't theory. This is that pesky little thing called
> "reality". It sucks, I know.
> 
You very obviously have absolutely NO idea what you're talking about.
Either that or you're living in some alternate reality.

> But even if you *IGNORE* the fact that hardware doesn't exist right
> now
>
Which I've proven to be FALSE

>, and won't be widely available for years (or longer),
>
Which again doesn't match the FACTS.

> there's another little fact that you are ignoring:
> 
> The async crypto interfaces are badly designed. Full stop.
> 
They may not be perfect. I think you are free to come up with solutions
to improve on that? But if such a solution would make it impossible to
offload to crypto hardware then *that* would be truly bad interface 
design. Do you have similar arguments about the interfacing to e.g.
graphics processing on the GPU? I'm sure those could be simplified to
be  easier to use and make a full SW implementation run that much more
efficiently ... (/sarcasm)

> Seriously. This isn't rocket science. This is very very basic Computer
> Science 101.
> 
I know. Rocket science is _easy_ ;-)

> Tell me, what's _the_ most important part about optimizing something?
> 	
> Yeah, it's "you optimize for the common case". But let's ignore that
> part, since I already said that hardware isn't the common case but I
> promised that I'd ignore that part.
> 
> The _other_ most important part of optimization is that you optimize
> for the case that _matters_.
> 
Matters to _whom_. What matters to someone running a fat desktop or
server CPU is _not_ what matters to someone running on a relatively
weak embedded CPU that _does_ have powerful crypto acceleration on the
side.
And when it comes to the _common_ case: there's actually a heck of a 
lot more embedded SoCs out there than x86 server/desktop CPU's. Fact!
You probably just don't know much about most of them.

But if you're arguing that the API should be lightweight and not add
significant overhead to a pure SW implementation, then I can agree.
However, I have not seen any PROOF (i.e. actual measurements, not 
theory) that it actually DOES add a lot of overhead. Nor any suggestions 
(beyond the hopelessly naive) for improving it.

> And the async crypto case got that completely wrong, and the wireguard
> patch shows that issue very clearly.
> 
> The fact is, even you admit that a few CPU cycles don't matter for the
> async case where you have hardware acceleration, because the real cost
> is going to be in the IO - whether it's DMA, cache coherent
> interconnects, or some day some SoC special bus.
>
I was talking _latency_ not _throughput_. I am _very_ interested in
reducing (API/driver) CPU overhead, if only because it doesn't allow
our HW to reach it's full potential. I'm working hard on optimizing our
driver for that right now.
And if something can be improved in the Crypto API itself there, without 
compromising it's functionality and flexibility, then I'm all for that.

> The CPU cycles just don't matter, they are entirely in the noise.
> 
> What does that mean?  Think about it.
> 
> [ Time passes ]
> 
> Ok, I'll tell you: it means that the interface shouldn't be designed
> for async hw-assisted crypto. 
>
If you don't design them with that in mind, you simply won't be able
to effectively use the HW-assisted crypto at all. Just like you don't
design an API to a GPU for running a software implementation on the 
CPU, but for minimizing state changes and batch-queuing large strips
of triangles as that's what the _HW_ needs to be efficiently used.
Just sayin'.

> The interface should be designed for the
> case that _does_ care about CPU cycles, and then the async hw-assisted
> crypto should be hidden by a conditional, and its (extra) data
> structures should be the ones that are behind some indirect pointers
> etc.  Because, as we agreed, the async external hw case really doesn't
> care. It it has to traverse a pointer or two, and if it has to have a
> *SEPARATE* keystore that has longer lifetimes, then the async code can
> set that up on its own, but that should not affect the case that
> cares.
> 
What the hardware cares about is that you can batch queue your requests
and not busy-wait for any results. What the hardware cares about is 
that you don't send separate requests for encryption, authentication,
IV generation, etc, but combine this in a single request, hence the
templates in the Crypto API. What the hardware may care about, is that
you keep your key changes limited to just those actually required.
That is _fundamental_ to getting performance. 
Note that many SW implementations that require multiple independent
operations in flight to achieve maximum efficiency due to deep
(dual) pipelines, and/or spend significant cycles on running the key 
scheduling will ALSO benefit from these properties.
An async interface also makes it possible to run the actual crypto ops 
in multiple independent threads, on multiple CPUs, although I'm not
sure if the current Crypto API actually leverages that right now.

> Really, this is fundamental, and really, the crypto interfaces got this wrong.
> 
> This is in fact _so_ fundamental that the only possible reason you can
> disagree is because you don't care about reality or fundamentals, and
> you only care about the small particular hardware niche you work in
> and nothing else.
> 
Well, to be completely honest, I for sure don't care about making the SW
implementations run faster at the expense of HW offload capabilities.
Which is obvious, as I make a _living_ creating HW offload solutions.
Why would I actively work towards obsoleting my work?

FACT is that dedicated HW, in many cases, is still MUCH faster than the
CPU. At much lower consumption to boot. So why would you NOT want to 
leverage that, if it's available? That would just be dumb.

Again, I don't see you making the same argument about moving graphics
functionality from the GPU to the CPU. So why does crypto *have* to be
on the CPU? I just don't understand _why_ you care about that so much.

> You really should think about this a bit.
> 
I've been thinking about this daily for about 19 years now. It's my job.

> > However, if you're doing bulk crypto like network packet processing
> > (as Wireguard does!) or disk/filesystem encryption, then that cipher
> > allocation only happens once every blue moon and the overhead for
> > that is totally *irrelevant* as it is amortized over many hours or
> > days of runtime.
> 
> This is not true. It's not true because the overhead happens ALL THE TIME.
> 
The overhead for the _cipher allocation_ (because that's what _I_ was
talking about specifically) happens all the time? You understand you
really only need to do that twice per connection? (once per direction)

But there will be some overhead on the cipher requests themselves,
sure. A small compromise to make for the _possibility_ to use HW 
offload when it IS available. I would agree that if that overhead
turns out to be very significant, then something needs to be done
about that. But then PROVE that that's the case and provide solutions
that do not immediately make HW offload downright impossible.
As our HW is _for sure_ much faster than the CPU cluster (yes, all
CPU's combined at full utilization) it is _usually_ paired with.

> And in 99.9% of all cases there are no upsides from the hw crypto,
> because the hardware DOES NOT EXIST.
> 
Which is a _false_ assumption, we covered that several times before.

> You think the "common case" is that hardware encryption case, but see
> above. It's really not.
> 
See my argument above about there being many more embedded SoC's out
there than x86 CPU's. Which usually have some form of crypto accel
on the side. Which will, eventually, have Chacha-Poly support 
because that's what the industry is currently gravitating towards.
So define _common_ case.

> And when you _do_ have HW encryption, you could do the indirection.
> 
Again, not if the API was not architected to do so from the get-go.

> But that's not an argument for always having the indirection.
> 
> What indirection am I talking about?
> 
> There's multiple levels of indirection in the existing bad crypto interfaces:
> 
>  (a) the data structures themselves. This is things like keys and
> state storage, both of which are (often) small enough that they would
> be better off on a stack, or embedded in the data structures of the
> callers.
> 
>  (b) the calling conventions. This is things like indirection -
> usually several levels - just to find the function pointer to call to,
> and then an indirect call to that function pointer.
> 
> and both of those are actively bad things when you don't have those
> hardware accelerators.
> 
I would say those things are not required just for hardware acceleration,
so perhaps something can be improved there in the existing code.
Ever tried suggesting these to the Crypto API maintainers before?

> When you *do* have them, you don't care. Everybody agrees about that.
> But you're ignoring the big white elephant in the room, which is that
> the hw really is very rare in the end, even if it were to exist at
> all.
> 
Crypto acceleration in general is _not_ rare, almost any embedded SoC
has it. The big white elephant in the room is _actually_ that there 
never were decent, standard, ubiquitous API's available to use them
so most of them could only be used from dedicated in-house applications.
Which seriously hampered general acceptance and actual _use_.

> > While I generally dislike this whole hype of storing stuff in
> > textual formats like XML and JSON and then wasting lots of CPU
> > cycles on parsing that, I've learned to appreciate the power of
> > these textual Crypto API templates, as they allow a hardware
> > accelerator to advertise complex combined operations as single
> > atomic calls, amortizing the communication overhead between SW
> > and HW. It's actually very flexible and powerful!
> 
> BUT IT IS FUNDAMENTALLY BADLY DESIGNED!
> 
> Really.
> 
> You can get the advantages of hw-accelerated crypto with good designs.
> The current crypto layer is not that.
> 
> The current crypto layer simply has indirection at the wrong level.
> 
> Here's how it should have been done:
> 
>  - make the interfaces be direct calls to the crypto you know you want.
> 
Which wouldn't work for stuff like IPsec and dmcrypt, where you want
to be able to configure the crypto to be used, i.e. it's _not_ fixed.
And you don't want to have to modify those applications _everytime_ a
new algorithm is added. As the application shouldn't care about that,
it should just be able to leverage it for what it is.

Also, for combined operations, there needs to be some central place
where they are decomposed into optimal sub-operations, if necessary, 
without bothering the actual applications with that.

Having a simple direct crypto call is just a very naive solution
that would require changing _every_ application (for which this is
relevant) anytime you add a ciphersuite. It does not scale.

Yes, that will - by necessity - involve some indirection but as long as
you don't process anything crazy short, a single indirect call (or 2)
should really not be that significant on the total operation.
(and modern CPU's can predict indirect branches pretty well, too)

Note that all these arguments have actually _nothing_ to do with
supporting HW acceleration, they apply just as well to SW only.

>  - make the basic key and state buffer be explicit and let people
> allocate them on their own stacks or whatever
> 
Hey, no argument there. I don't see any good reason why the key can't
be on the stack. I doubt any hardware would be able to DMA that as-is
directly, and in any case, key changes should be infrequent, so copying
it to some DMA buffer should not be a performance problem.
So maybe that's an area for improvement: allow that to be on the stack.

> "But what about hw acceleration?"
> 
>  - add a single indirect private pointer that the direct calls can use
> for their own state IF THEY HAVE REASON TO
> 
>  - make the direct crypto calls just have a couple of conditionals
> inside of them
> 
> Why? Direct calls with a couple of conditionals are really cheap for
> the non-accelerated case. MUCH cheaper than the indirection overhead
> (both on a state level and on a "crypto description" level) that the
> current code has.
> 
I already explained the reasons for _not_ doing direct calls above.

> Seriously. The hw accelerated crypto won't care about the "call a
> static routine" part.
>
Correct! It's totally unrelated.

> The hw accelerated crypto won't care about the
> "I need to allocate a copy of the key because I can't have it on
> stack, and need to have it in a DMA'able region". 
>
Our HW surely won't, some HW might care but copying it should be OK.

> The hw accelerated
> crypto won't care about the two extra instructions that do "do I have
> any extra state at all, or should I just do the synchronous CPU
> version" before it gets called through some indirect pointer.
> 
Actually, here I _do_ care. I want minimal CPU overhead just a much
as you do, probably even more desperately. But OK, I would be able to
live with that, if that were the _only_ downside.

> So there is absolutely NO DOWNSIDE for hw accelerated crypto to just
> do it right, and use an interface like this:
> 
>        if (!chacha20poly1305_decrypt_sg(sg, sg, skb->len, NULL, 0,
>                                         PACKET_CB(skb)->nonce, key->key,
>                                         simd_context))
>                return false;
> 
Well, for one thing, a HW API should not expect the result to be
available when the function call returns. (if that's what you
mean here). That would just be WRONG.
HW offload doesn't work like that. Results come much later, and 
you need to keep dispatching more requests until the HW starts
asserting backpressure. You need to keep that HW pipeline filled.

> because for the hw accelerated case the costs are all elsewhere.
> 
> But for synchronous encryption code on the CPU? Avoiding the
> indirection can be a huge win. Avoiding allocations, extra cachelines,
> all that overhead. Avoiding indirect calls entirely, because doing a
> few conditional branches (that will predict perfectly) on the state
> will be a lot more efficient, both in direct CPU cycles and in things
> like I$ etc.
> 
Again, HW acceleration does not depend on the indirection _at all_,
that's there for entirely different purposes I explained above.
HW acceleration _does_ depend greatly on a truly async ifc though.
So queue requests on one side, handle results from the other side
in some callback func off of an interrupt handler. (with proper
interrupt coalescing, of course, and perhaps some NAPI-like 
functionality to further reduce interrupt rates when busy)

> In contrast, forcing people to use this model:
> 
>        if (unlikely(crypto_aead_reqsize(key->tfm) > 0)) {
>                req = aead_request_alloc(key->tfm, GFP_ATOMIC);
>                if (!req)
>                        return false;
>        } else {
>                req = &stackreq;
>                aead_request_set_tfm(req, key->tfm);
>        }
> 
Agree that is fishy, but it is something that could be fixed.

>        aead_request_set_ad(req, 0);
>
I'd rather see this being part of the set_crypt call as well.
I never said I liked _all_ decisions made in the API.
Likely this is because AEAD was added as an afterthought.

>        aead_request_set_callback(req, 0, NULL, NULL);
>
This is just inevitable for HW acceration ...

>        aead_request_set_crypt(req, sg, sg, skb->len,
>                               (u8 *)&PACKET_CB(skb)->ivpad);
>        err = crypto_aead_decrypt(req);
>
It would probably be more efficient if set_crypt and _decrypt 
could be combined in a single call (together with _set_ad). 
No argument there and these decisions have _nothing_ to do
with being able to do HW acceleration or not.

Trust me, I have whole list of things I don't like about the
API myself, it's not exacty ideal for HW acceleration  either.
(Note that SW overhead actually matters _more_ when you do HW 
acceleration, as the HW is often so fast that the SW is the 
actual bottleneck!).

But I have faith that, over time, I may be able to get some
improvements in (which should improve both HW _and_ SW use
cases by the way). By working _with_ the Crypto API people
and being _patient_. Not by telling them they suck.

>        if (unlikely(req != &stackreq))
>                aead_request_free(req);
>        if (err)
>                return false;
> 
> isn't going to help anybody. It sure as hell doesn't help the
> CPU-synchronous case, and see above: it doesn't even help the hw
> accelerated case. It could have had _all_ that "tfm" work behind a
> private pointer that the CPU case never touches except to see "ok,
> it's NULL, I don't have any".
> 
> See?
> 
Yes, I agree with the point you have here. So let's fix that.

> The interface *should* be that chacha20poly1305_decrypt_sg() library
> interface, just give it a private pointer it can use and update. Then,
> *internally* if can do something like
> 
>      bool chacha20poly1305_decrypt_sg(...)
>      {
>              struct cc20p1305_ptr *state = *state_p;
>              if (state) {
>                      .. do basically the above complex thing ..
>                      return ret; .. or fall back to sw if the hw
> queues are full..
>              }
>              .. do the CPU only thing..
>      }
> 
But even the CPU only thing may have several implementations, of which
you want to select the fastest one supported by the _detected_ CPU
features (i.e. SSE, AES-NI, AVX, AVX512, NEON, etc. etc.)
Do you think this would still be efficient if that would be some
large if-else tree? Also, such a fixed implementation wouldn't scale.

> and now you'd have no extra obverhead for the no-hw-accel case, you'd
> have a more pleasant interface to use, and you could still use hw
> accel if you wanted to.
> 
I still get the impression you're mostly interested in the "pleasant
interface" while I don't see why that should be more important than
being able to use HW crypto efficiently. That reminds me of way back
when I was a junior designer and some - more senior - software
engineer forced me to implement a full hardware divider(!) for some
parameter that needed to be set only once at initialization time, just
because he was too lazy to do a few simple precomputes in the driver.
He considered that to be "unpleasant" as well. 

> THIS is why I say that the crypto interface is bad. It was designed
> for the wrong objectives. It was designed purely for a SSL-like model
> where you do a complex key and algorithm exchange dance, and you
> simply don't know ahead of time what crypto you are even using.
> 
I guess it was designed for that, sure. And that's how the IPsec stack
and dmcrypt (to name a few examples) need it. It's also how Wireguard
_will_ need it when we start adding more ciphersuites to Wireguard.
Which is a MUST anyway, if Wireguard wants to be taken seriously:
there MUST be a fallback ciphersuite. At least one. Just in case 
Chacha-Poly gets broken overnight somehow, in which case you need to
switch over instantly and can't wait for some new implementation.

If you really _don't_ need that, but just need bit of fixed algorithm
crypto, then by all means, don't go through the Crypto API. I've a
already argued that on many occasions. I think people like Ard are
_already_ working on doing such crypto calls directly.

> And yes, that "I'm doing the SSL thing" used to be a major use of
> encryption. I understand why it happened. It was what people did in
> the 90's. People thought it was a good idea back then, and it was also
> most of the hw acceleration world.
> 
> And yes, in that model of "I don't have a clue of what crypto I'm even
> using" the model works fine. But honestly, if you can't admit to
> yourself that it's wrong for the case where you _do_ know the
> algorithm, you have some serious blinders on.
> 
But the point is - there are those case where you _don't_ know and
_that_ is what the Crypto API is for. And just generally, crypto
really _should_ be switchable. So you don't need to wait for a
fix to ripple through a kernel release cycle when an algorithm gets
broken. I don't know many use cases for just one fixed algorithm.

> Just from a user standpoint, do you seriously think users _like_
> having to do the above 15+ lines of code, vs the single function call?
> 
I know I wouldn't. I also know I would do it anyway as I would 
understand _why_ I would be doing it. 

> The crypto interface really isn't pleasant, and you're wrong to
> believe that it really helps. The hw acceleration capability could
> have been abstracted away, instead of making that indirection be front
> and center.
> 
Again, the Crypto API aims to do more than just allow for HW
acceleration and your main gripes actually seem to be with the
"other" stuff.

> And again - I do realize the historical reasons for it. But
> understanding that doesn't magically make it wonderful.
> 
No one said it was wonderful. Or pleasant. Or perfect.
You definitely raised some points that I think _could_ be 
improved without compromising any functionality.
But some stuff you don't like just has good reasons to exist.
Reasons you may not agree with, but that doesn't make them invalid.

>                  Linus

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
