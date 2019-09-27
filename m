Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3836C02C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/xi4uZjq/5XgYhai4xwVX2/s/cA2Ho7mTdFuocwjMo=; b=ZiGs5dtgZooMRI
	gL6lYlgMklCp+A/tQ+EkWSIHeSogeDsYqnrXvTm8KzXfgdkQjscDMcdD2ydT3h/R8Rfy43T2EE3kU
	r3ELDlxqsNPkHq0t6JRZy7JOu/V1s7zFOnh13t4tY33bylVvNmgkBweGDBnpB2o7Xv3jcIm+5C3g/
	1CyV7dsf7cwGOupYnnJ5HWAptuIZW9WWjcW295aElU4LG+EDFCRBftPGoWh3A1FtLZeZ4RIT9ma/b
	2K82FRrCFKcUNrAZ4YxpIuA1RL4wpHvgyXWxZoeTQtTURqrInSIBBxbkIlYS2xR3iO+x8s9VReWZ0
	0YXQiUbf7iAUVZXZRM9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDn1D-0005F8-63; Fri, 27 Sep 2019 09:58:31 +0000
Received: from mail-eopbgr820085.outbound.protection.outlook.com
 ([40.107.82.85] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDn11-0005Ee-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:58:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kpFNo5GDi7K+WzKsjgbHJHiPzkCaJZ+r+o6uOph2hGxjdv1QfTnh1Xj4uPdJFjl8AWl9CKL/QUuyghQQk4JJi1T3KLO/KA/Z+gz8TrMMmXMFuGhOz2z82K485E8/ldrC2qacRc96hDQguLSyw/0x+T/8eg6+skFIkf3DG5LtCyB8AX56W2B3k0keTCMOHF4wrnfOQc/LwZhSRdqo64DsAfFFrdvkMj1LmNucwuWEDkmwbBLpyYbc9/i8wZM6F2iqVh5O2d/MHvkRUKmDVhguRCftKRJhJlsEM4c8Zmj6KgBWyJpb8uzTH9cXAF19Kf97E7Mub83M86pM/zdvZNI2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMDIvb9NeIlMDZuU2PsznMOTy19tJFw7Pd/egTBFSVs=;
 b=kMjdANn/qXVy0wWxzkgCiEszU51do7yCxImfFmlC9+H/svQmObfZ8WAXq+rdGs37Czf+h9ytlhLqwcPZADBI+jxiN6bIVEj5YtxVAHS4bh0SJwEgtKY+CAowGBsIvgiMccMNytLJT6OhGz/eMmfgXEYn0SIZGqf5SefuTzJdaxHWEnv9KlAz0IOgbcH0jTY4iHwB78EZyDNoooYuwnvhxqaL+PQNp8uUHoJAAq2zsnuYaOMw+3ADAHBk6G+31rmV0nV0McZRy8ZB6jpfd+MYju7KzHmaLqBYM2GmHEdYMkPhRH1AqzeN61rhfknh7OHIAL25qOzsFKW3zf1WD9fHDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMDIvb9NeIlMDZuU2PsznMOTy19tJFw7Pd/egTBFSVs=;
 b=Gscg+GAOsXBJxGj87YE4DY26Qi2zmKm6njFekdG2z//JWOF+HzWa1eRboyVlVWmAJtNUXglg+h2e2+DjuAbrZMT17M7NGlOUEco5r21hBVfeWHvkqyAy8EXUhLX/H7KWctrYyQVx5qQocKl5CqKmNScrTZRKs6jiqCsXr8qzwe8=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2255.namprd20.prod.outlook.com (20.179.148.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Fri, 27 Sep 2019 09:58:15 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 09:58:14 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfwgABabYCAAFofIA==
Date: Fri, 27 Sep 2019 09:58:14 +0000
Message-ID: <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
In-Reply-To: <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53947770-cfec-41d9-5cf6-08d74331368f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR20MB2255; 
x-ms-traffictypediagnostic: MN2PR20MB2255:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB225534075D1A0CC7F88DF68ACA810@MN2PR20MB2255.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(136003)(396003)(39850400004)(189003)(199004)(52314003)(33656002)(7736002)(305945005)(102836004)(478600001)(6506007)(52536014)(71190400001)(71200400001)(7416002)(66946007)(30864003)(186003)(2906002)(66476007)(66556008)(66574012)(86362001)(99286004)(66446008)(64756008)(76116006)(14444005)(5024004)(256004)(8676002)(26005)(6916009)(6116002)(6246003)(54906003)(8936002)(5660300002)(3846002)(476003)(486006)(229853002)(7696005)(81166006)(9686003)(81156014)(55016002)(74316002)(446003)(11346002)(15974865002)(4326008)(14454004)(25786009)(76176011)(316002)(6436002)(66066001)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2255;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: azPvzuulGwaiqIkw1NcWT9vG6HVHpV2g485aXI7lpCeN1q5gPZYYpXL2mc7nep+uCswuYfGX0X34zFOMy2s+TdFt1/9bjufaGTec8taLuDU3R3L/nCmcXRUP6s+Yd/q2zM9bccaX4Uioof7TALUwQzIr3uGQBhX0GIckunxf3jam2dc2P3ELYutxI6rIdxbDk7IDmmhQRACKWJmYWZHDSrLOXThNMea/mTsMo1wn3sVoBZ2LUogZkkGw3RBPlo/QRVzmzNIMPv+BRSVQNaEhNWXke22BGY8PMXm30X5QmMEjVHMHWU8eqtXReEHhUKuVAkcE4Du114hZZukiBx4o0gsp0rq6It33kM98ydDiLEsj7TqT3keLllF2L+3Rpz8CJv3tiGGpMUaEPxLsdKRW5cRnUyshPRAbOn58Ppy4MkA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53947770-cfec-41d9-5cf6-08d74331368f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 09:58:14.1749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G4ukyIluZf8bOJ3SwhGLSy+NgkRCg5XXuO0CehcrehhVSCn24IuPN30QqMkx2l/KeolgJJO2h3g7lpIB1wsVU639ypFxsDLZm0ph2fJuBBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_025819_514737_2270790C 
X-CRM114-Status: GOOD (  28.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.82.85 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> > That remark is just very stupid. The hardware ALREADY exists, and
> > more hardware is in the pipeline. Once this stuff is designed in, it
> > usually stays in for many years to come. And these are chips sold in
> > _serious_ quantities, to be used in things like wireless routers and
> > DSL, cable and FTTH modems, 5G base stations, etc. etc.
> 
> Yes, I very much mentioned routers. I believe those can happen much
> more quickly.
> 
> But I would very much hope that that is not the only situation where
> you'd see wireguard used.
> 
Same here

> I'd want to see wireguard in an end-to-end situation from the very
> client hardware. So laptops, phones, desktops. Not the untrusted (to
> me) hw in between.
> 
I don't see why the crypto HW would deserve any less trust than, say,
the CPU itself. I would say CPU's don't deserve that trust at the moment.

> > No, these are just the routers going into *everyone's* home. And 5G
> > basestations arriving at every other street corner. I wouldn't call
> > that rare, exactly.
> 
> That's fine for a corporate tunnel between devices. Which is certainly
> one use case for wireguard.
> 
> But if you want VPN for your own needs for security, you want it at
> the _client_. Not at the router box. So that case really does matter.
> 
Personally, I would really like it in my router box so my CPU is free
to do useful work instead of boring crypto. And I know there's nothing
untrusted in between my client and the router box, so I don't need to
worry about security there. But hey, that's just me.

> And I really don't see the hardware happening in that space. So the
> bad crypto interfaces only make the client _worse_.
> 
Fully agree. We don't focus on the client side with our HW anyway.
(but than there may be that router box in between that can help out)

> See?
> 
> But on to the arguments that we actually agree on:
> 
> > Hey, no argument there. I don't see any good reason why the key can't
> > be on the stack. I doubt any hardware would be able to DMA that as-is
> > directly, and in any case, key changes should be infrequent, so copying
> > it to some DMA buffer should not be a performance problem.
> > So maybe that's an area for improvement: allow that to be on the stack.
> 
> It's not even just the stack. It's really that the crypto interfaces
> are *designed* so that you have to allocate things separately, and
> can't embed these things in your own data structures.
> 
> And they are that way, because the crypto interfaces aren't actually
> about (just) hiding the hardware interface: they are about hiding
> _all_ the encryption details.
> 
Well, that's the general idea of abstraction. It also allows for 
swapping in any other cipher with minimal effort just _because_ the 
details were hidden from the application. So it may cost you some 
effort initially, but it may save you effort later.

> There's no way to say "hey, I know the crypto I use, I know the key
> size I have, I know the state size it needs, I can preallocate those
> AS PART of my own data structures".
> 
> Because the interface is designed to be so "generic" that you simply
> can't do those things, they are all external allocations, which is
> inevitably slower when you don't have hardware.
> 
Hmm, Ok, I see your point here. But most of those data structures 
(like the key) should be allocated infrequently anyway, so you can
amortize that cost over _many_ crypto operations.

You _do_ realize that performing the key schedule for e.g. AES with
AES-NI also takes quite a lot of time? So you should keep your keys
alive and not reload them all the time anyway.

But I already agreed with you that there may be cases where you just
want to call the library function directly. Wireguard just isn't one
of those cases, IMHO.

> And you've shown that you don't care about that "don't have hardware"
> situation, and seem to think it's the only case that matters. That's
> your job, after all.
> 
I don't recall putting it that strongly ... and I certainly never said
the HW acceleration thing is the _only_ case that matters. But it does
matter _significantly_ to me, for blatantly obvious reasons.

> But however much you try to claim otherwise, there's all these
> situations where the hardware just isn't there, and the crypto
> interface just forces nasty overhead for absolutely no good reason.
> 
> > I already explained the reasons for _not_ doing direct calls above.
> 
> And I've tried to explain how direct calls that do the synchronous
> thing efficiently would be possible, but then _if_ there is hardware,
> they can then fall back to an async interface.
> 
OK, I did not fully get that latter part. I would be fine with such an
approach for use cases (i.e. fixed, known crypto) where that makes sense.
It would actually be better than calling the SW-only library directly
(which was my suggestion) as it would still allow HW acceleration as
an option ... 

> > > So there is absolutely NO DOWNSIDE for hw accelerated crypto to just
> > > do it right, and use an interface like this:
> > >
> > >        if (!chacha20poly1305_decrypt_sg(sg, sg, skb->len, NULL, 0,
> > >                                         PACKET_CB(skb)->nonce, key->key,
> > >                                         simd_context))
> > >                return false;
> > >
> > Well, for one thing, a HW API should not expect the result to be
> > available when the function call returns. (if that's what you
> > mean here). That would just be WRONG.
> 
> Right. But that also shouldn't mean that when you have synchronous
> hardware (ie CPU) you have to set everything up even though it will
> never be used.
> 
> Put another way: even with hardware acceleration, the queuing
> interface should be a simple "do this" interface.
> 
OK, I don't think we disagree there. I _like_ simple. As long as it
doesn't sacrifice functionality I care about.

> The current crypto interface is basically something that requires all
> the setup up-front, whether it's needed or not. And it forces those
> very inconvenient and slow external allocations.
> 
But you should do the setup work (if by "setup" you mean things like
cipher allocation, key setup and request allocation) only _once_ in a 
_long_ while. You can just keep using it for the lifetime of the 
application (or key, for the key setup part).

If I look at my cipher fallback  paths in the driver (the only places
where I actually get to _use_ the API from the "other" side), per 
actual indivual request they _only_ do - the rest is all preallocated
earlier:

_set_callback()
_set_crypt()
_set_ad()
_encrypt() or _decrypt()

And now that I look at that, I think the _set_callback()  could
move to the setup phase as it's always the same callback function.
Probably, in case of Wireguard, you could even move the _set_ad()
there as it's always zero and  the crypto driver is not allowed 
to overwrite it in the request struct anyway.

Also, I already agreed with you that _set_crypt(), _set_ad()
and _encrypt()/_decrypt() _could_ be conveniently wrapped into
one API call instead of 3 separate ones if we think that's worth it.

BUT ... actually ... I just looked at the actual _implementation_
and it turns out these are _inlineable_ functions defined in the
header file that _just_ write to some struct fields. So they 
should not end up being function calls at all(!!).
_Only_ the _encrypt()/_decrypt() invocation will end up with a
true (indirect) function call.

So where are all those allocations you mention? Have you ever
actually _used_ the Crypto API for anything?

Yes, if you actually want to _queue_ requests you need to use one
request struct for every queued operation, but you could just
preallocate an array of them that you cycle through. No need to do
those allocations in the hot path.

So is your problem really with the API _itself_ or with incorrect/
inefficient _use_ of the API in some places?

> And I'm saying that causes problems, because it fundamentally means
> that you can't do a good job for the common CPU  case, because you're
> paying all those costs even when you need absolutely none of them.
> Both at setup time, but also at run-time due to the extra indirection
> and cache misses etc.
> 
There is some cost sure, but is it _significant_ for any use case that
_matters_? You started bringing up optimization rules, so how about
Amdahls law?

> > Again, HW acceleration does not depend on the indirection _at all_,
> > that's there for entirely different purposes I explained above.
> > HW acceleration _does_ depend greatly on a truly async ifc though.
> 
> Can you realize that the world isn't just all hw acceleration?
> 
Sure. But there's also a lot of HW acceleration _already out there_
that _could_ have been used if only the proper SW API's had existed.
Welcome to _my_ world.

> Can you admit that the current crypto interface is just horrid for the
> non-accelerated case?
> 
Is agreeing that it is not perfect sufficient for you? :-)

> Can you perhaps then also think that "maybe there are better models".
> 
Sure. There's always better. There's also good enough though ...

> > So queue requests on one side, handle results from the other side
> > in some callback func off of an interrupt handler.
> 
> Actually, what you can do - and what people *have* done - is to admit
> that the synchronous case is real and important, and then design
> interfaces that work for that one too.
> 
But they _do_ work for that case as well. I still haven't seen any
solid evidence that they are as horribly inefficient as you are 
implying for _real life_ use cases. And even if they are, then there's
the question whether that is the fault of the API or incorrect use 
thereof.

> You don't need to allocate resources ahead of time, and you don't have
> to disallow just having the state buffer allocated by the caller.
> 
> So here's the *wrong* way to do it (and the way that crypto does it):
> 
>  - dynamically allocate buffers at "init time"
> 
Why is that so "wrong"? It sure beats doing allocations on the hot path.
But yes, some stuff should be allowed to live on the stack. Some other
stuf can't be on the stack though, as that's gone when the calling 
function exits while the background crypto processing still needs it.

And you don't want to have it on the stack initially and then have
to _copy_ it to some DMA-able location that you allocate on the fly
on the hot path if you _do_ want HW acceleration.

>  - fill in "callback fields" etc before starting the crypto, whether
> they are needed or not
> 
I think this can be done _once_ at request allocation time.
But it's just one function pointer write anyway. Is that significant? 
Or: _if_ that is significant, you  shouldn't be using the Crypto API for 
that use case in the first place.

>  - call a "decrypt" function that then uses the indirect functions you
> set up at init time, and possibly waits for it (or calls the callbacks
> you set up)
> 
> note how it's all this "state machine" model where you add data to the
> state machine, and at some point you say "execute" and then either you
> wait for things or you get callbacks.
> 
Not sure how splitting data setup over a few seperate "function" calls
suddenly makes it a "state machine model" ...

But yes, I can understand why the completion handling through this
callback function seems like unnecessary complication for the SW case.

> That makes sense for a hw crypto engine. It's how a lot of them work, after all.
> 
Oh really?

Can't speak for other people stuff, but for our hardware you post a
request to it and then go off do other stuff while the HW does its thing
after which it will inform you it's done by means of an interrupt.
I don't see how this relates to the "statemachine model" above, there
is no persistent state involved, it's all included in the request.
The _only_ thing that matters is that you realize it's a pipeline that
needs to be kept filled and has latency >> throughput, just like your 
CPU pipeline.

> But it makes _zero_ sense for the synchronous case. You did a lot of
> extra work for that case, and because it was all a styate machine, you
> did it particularly inefficiently: not only do you have those separate
> allocations with pointer following, the "decrypt()" call ends up doing
> an indirect call to the CPU implementation, which is just quite slow
> to begin with, particularly in this day and age with retpoline etc.
> 
> So what's the alternative?
> 
> I claim that a good interface would accept that "Oh, a lot of cases
> will be synchronous, and a lot of cases use one fixed
> encryption/decryption model".
> 
> And it's quite doable. Instead of having those callback fields and
> indirection etc, you could have something more akin to this:
> 
>  - let the caller know what the state size is and allocate the
> synchronous state in its own data structures
> 
>  - let the caller just call a static "decrypt_xyz()" function for xyz
> decryptrion.
> 
Fine for those few cases where the algorithm is known and fixed.
(You do realize that the primary use cases are IPsec, dmcrypt and
fscrypt where that is most definitely _not_ the case?)

Also, you're still ignoring the fact that there is not one, single,
optimal, CPU implementation either. You have to select that as well,
based on CPU features. So it's either an indirect function call that
would be well predictable - as it's always the same at that point in
the program - or it's a deep if-else tree (which might actually be
implemented by the compiler as an indirect (table) jump ...) 
selecting the fastest implementation, either SW _or_ HW.

>  - if you end up doing it synchronously, that function just returns
> "done". No overhead. No extra allocations. No unnecessary stuff. Just
> do it, using the buffers provided. End of story. Efficient and simple.
> 
I don't see which "extra allocations" you would be saving here.
Those shouldn't happen in the hot path either way.

>  - BUT.
> 
>  - any hardware could have registered itself for "I can do xyz", and
> the decrypt_xyz() function would know about those, and *if* it has a
> list of accelerators (hopefully sorted by preference etc), it would
> try to use them. And if they take the job (they might not - maybe
> their queues are full, maybe they don't have room for new keys at the
> moment, which might be a separate setup from the queues), the
> "decrypt_xyz()" function returns a _cookie_ for that job. It's
> probably a pre-allocated one (the hw accelerator might preallocate a
> fixed number of in-progress data structures).
> 
> And once you have that cookie, and you see "ok, I didn't get the
> answer immediately" only THEN do you start filling in things like
> callback stuff, or maybe you set up a wait-queue and start waiting for
> it, or whatever".
> 
I don't see the point of saving that single callback pointer write.
I mean, it's just _one_ CPU word memory write. Likely to the L1 cache.

But I can see the appeal of getting a "done" response on the _encrypt()/
_decrypt() call and then being able to immediately continue processing
the result data and having the async response handling separated off. 

I think it should actually be possible to change the API to work like
that without breaking backward compatibility, i.e. define some flag
specifying you actually _want_ this behavior and then define some
return code that says "I'm done processing, carry on please".

> See the difference in models? One forces that asynchronous model, and
> actively penalizes the synchronous one.
> 
> The other _allows_ an asynchronous model, but is fine with a synchronous one.
> 
> > >        aead_request_set_callback(req, 0, NULL, NULL);
> > >
> > This is just inevitable for HW acceration ...
> 
> See above. It really isn't. You could do it *after* the fact,
>
Before ... after ... the point was you need it. And it's a totally
insignificant saving anyway.

> when
> you've gotten that ticket from the hardware. Then you say "ok, if the
> ticket is done, use these callbacks". Or "I'll now wait for this
> ticket to be done" (which is what the above does by setting the
> callbacks to zero).
> 
> Wouldn't that be lovely for a user?
> 
Yes and no.
Because the user would _still_ need to handle the case of callbacks.
In case the request _does_ go to the HW accelerator.

So you keep the main processing path clean I suppose, saving some 
cycles there, but you still have this case of callbacks and having
multiple requests queued you need to handle as well. Which now 
becomes a separate _exception_ case.  You now have  two distinct 
processing paths you have to manage from your application.
How is that an _improvement_ for the user? (not withstanding that
it may be an improvement to SW only performance)

> I suspect it would be a nice model for a hw accelerator too. If you
> have full queues or have problems allocating new memory or whatever,
> you just let the code fall back to the synchronous interface.
> 
HW drivers typically _do_ use SW fallback for cases they cannot
handle. Actually, that works very nicely with the current API,
with the fallback cipher just being attached to the original
requests' callback function ... i.e. just do a tail call to 
the fallback cipher request.

> > Trust me, I have whole list of things I don't like about the
> > API myself, it's not exacty ideal for HW acceleration  either.
> 
> That';s the thing. It's actively detrimental for "I have no HW acceleration".
> 
You keep asserting that with no evidence whatsoeever.

> And apparently it's not optimal for you guys either.
> 
True, but I accept the fact that it needs to be that way because some
_other_ HW may drive that requirement. I accept the fact that I'm not
alone in the world.

> > But the point is - there are those case where you _don't_ know and
> > _that_ is what the Crypto API is for. And just generally, crypto
> > really _should_ be switchable.
> 
> It's very much not what wireguard does.
> 
And that's very much a part of Wireguard that is _broken_. I like
Wireguard for a lot of things, but it's single cipher focus is not
one of them. Especially since all crypto it uses comes from a single
source (DJB), which is frowned upon in the industry.

Crypto agility is a very important _security_ feature and the whole
argument Jason makes that it is actually a weakness is _bullshit_.
(Just because SSL _implemented_ this horribly wrong doesn't mean 
it's a bad thing to do - it's not, it's actually _necessary_. As 
the alternative would be to either continue using broken crypto
or wait _months_ for a new implementation to reach your devices
when the crypto gets broken somehow. Not good.)

> And honestly, most of the switchable ones have caused way more
> security problems than they have "fixed" by being switchable.
> 
"most of the switchable ones"
You mean _just_ SSL/TLS. SSL/TLS before 1.3 just sucked security
wise, on so many levels. That has _nothing_ to do with the very
desirable feature of crypto agility. It _can_ be done properly and 
securely. (for one thing, it does not _need_ to be negotiable)

>                  Linus

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
